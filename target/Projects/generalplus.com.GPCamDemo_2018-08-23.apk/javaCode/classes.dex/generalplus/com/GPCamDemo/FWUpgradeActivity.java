package generalplus.com.GPCamDemo;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import generalplus.com.GPCamLib.CamWrapper;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public class FWUpgradeActivity extends Activity {
    private static String DEVICE_FW_HEADER = "SPII";
    private static String DEVICE_FW_HEADER2 = "PGps";
    private static final int REQUEST_CHOOSE_FILE = 2;
    private static String TAG = "FWUpgradeActivity";
    private static ProgressDialog m_DownloadDialog = null;
    private boolean _bIsFinish = false;
    private Handler m_FromWrapperHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    FWUpgradeActivity.this.ParseGPCamStatus(msg.getData());
                    return;
                default:
                    return;
            }
        }
    };
    private boolean m_bExit = false;
    private byte[] m_byAryBinData = null;
    private int m_i32Index = 0;
    private int m_i32Left = 0;
    private int m_i32Total = 0;
    private String strFilePath = "";

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_fwgrade);
        selectFile(null);
        getWindow().addFlags(128);
    }

    protected void onResume() {
        Log.e(TAG, "onResume ...");
        super.onResume();
        CamWrapper.getComWrapperInstance().SetViewHandler(this.m_FromWrapperHandler, 0);
    }

    protected void onDestroy() {
        Log.e(TAG, "onDestroy ...");
        if (m_DownloadDialog != null && m_DownloadDialog.isShowing()) {
            m_DownloadDialog.dismiss();
            m_DownloadDialog = null;
        }
        CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
        super.onDestroy();
    }

    private void SendRawData() {
        if (m_DownloadDialog != null) {
            m_DownloadDialog.setProgress((this.m_i32Index * 100) / this.m_i32Total);
            byte[] byData = new byte[1024];
            if (this.m_i32Left > 0) {
                int i32SendSize;
                if (this.m_i32Left > 1024) {
                    i32SendSize = 1024;
                    byData = Arrays.copyOfRange(this.m_byAryBinData, this.m_i32Index, this.m_i32Index + 1024);
                } else {
                    i32SendSize = this.m_i32Left;
                    byData = Arrays.copyOfRange(this.m_byAryBinData, this.m_i32Index, this.m_i32Index + this.m_i32Left);
                }
                this.m_i32Index += i32SendSize;
                this.m_i32Left -= i32SendSize;
                CamWrapper.getComWrapperInstance().GPCamSendFirmwareRawData((long) i32SendSize, byData);
            } else if (this._bIsFinish) {
                CamWrapper.getComWrapperInstance().GPCamSendFirmwareUpgrade();
            } else {
                CamWrapper.getComWrapperInstance().GPCamSendFirmwareRawData(0, new byte[0]);
                this._bIsFinish = true;
            }
        }
    }

    private void DownloadComplete() {
        SendRawData();
    }

    private void RawDataComplete() {
        SendRawData();
    }

    private void UpgradeComplete() {
        if (m_DownloadDialog != null && m_DownloadDialog.isShowing()) {
            m_DownloadDialog.dismiss();
            m_DownloadDialog = null;
        }
        Builder builder = new Builder(this);
        builder.setTitle(getResources().getString(R.string.Upgrade_Firmware_successfully));
        builder.setMessage(getResources().getString(R.string.Please_reboot));
        builder.setPositiveButton(getResources().getString(R.string.OK), new OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                FWUpgradeActivity.this.m_bExit = true;
                Intent intent = new Intent(FWUpgradeActivity.this.getApplicationContext(), MainActivity.class);
                intent.setFlags(67108864);
                intent.putExtra("EXIT", true);
                FWUpgradeActivity.this.startActivity(intent);
                FWUpgradeActivity.this.finish();
            }
        });
        builder.show();
    }

    private void ParseGPCamStatus(Bundle StatusBundle) {
        int i32CmdIndex = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDINDEX);
        int i32CmdType = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDTYPE);
        int i32Mode = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDMODE);
        int i32CmdID = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDID);
        int i32DataSize = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_DATASIZE);
        byte[] pbyData = StatusBundle.getByteArray(CamWrapper.GPCALLBACKSTATUSTYPE_DATA);
        if (i32CmdType == 2) {
            switch (i32Mode) {
                case 5:
                    if (i32CmdID == 0) {
                        DownloadComplete();
                        return;
                    } else if (i32CmdID == 1) {
                        RawDataComplete();
                        return;
                    } else if (i32CmdID == 2) {
                        UpgradeComplete();
                        return;
                    } else {
                        return;
                    }
                default:
                    return;
            }
        } else if (i32CmdType == 3 && !this.m_bExit) {
            int i32ErrorCode = (pbyData[0] & 255) + ((pbyData[1] & 255) << 8);
            Builder builder = new Builder(this);
            builder.setTitle(getResources().getString(R.string.Upgrade_Firmware_failed));
            builder.setMessage(getResources().getString(R.string.Error_Code) + i32ErrorCode);
            builder.setPositiveButton(getResources().getString(R.string.OK), null);
            builder.show();
            if (m_DownloadDialog != null && m_DownloadDialog.isShowing()) {
                m_DownloadDialog.dismiss();
                m_DownloadDialog = null;
            }
            switch (i32ErrorCode) {
                case CamWrapper.Error_LostConnection /*65472*/:
                    Log.e(TAG, "Error_LostConnection ...");
                    FinishToMainController();
                    return;
                case CamWrapper.Error_SocketClosed /*65473*/:
                    Log.e(TAG, "Error_SocketClosed ... ");
                    FinishToMainController();
                    return;
                case CamWrapper.Error_FullStorage /*65527*/:
                    Log.e(TAG, "Error_FullStorage ... ");
                    return;
                case CamWrapper.Error_GetThumbnailFail /*65528*/:
                    Log.e(TAG, "Error_GetThumbnailFail ... ");
                    return;
                case CamWrapper.Error_GetFileListFail /*65529*/:
                    Log.e(TAG, "Error_GetFileListFail ... ");
                    return;
                case CamWrapper.Error_WriteFail /*65530*/:
                    Log.e(TAG, "Error_WriteFail ... ");
                    return;
                case CamWrapper.Error_NoStorage /*65531*/:
                    Log.e(TAG, "Error_NoStorage ... ");
                    return;
                case CamWrapper.Error_ModeError /*65532*/:
                    Log.e(TAG, "Error_ModeError ... ");
                    return;
                case CamWrapper.Error_RequestTimeOut /*65533*/:
                    Log.e(TAG, "Error_RequestTimeOut ... ");
                    return;
                case CamWrapper.Error_InvalidCommand /*65534*/:
                    Log.e(TAG, "Error_InvalidCommand ... ");
                    return;
                case 65535:
                    Log.e(TAG, "Error_ServerIsBusy ... ");
                    return;
                default:
                    return;
            }
        }
    }

    private void FinishToMainController() {
        Log.e(TAG, "Finish ...");
        CamWrapper.getComWrapperInstance().GPCamDisconnect();
        Intent intent = new Intent(this, MainActivity.class);
        intent.setFlags(67108864);
        intent.addFlags(536870912);
        startActivity(intent);
    }

    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == 2 && resultCode == -1) {
            Uri uri = data.getData();
            if (uri != null) {
                this.strFilePath = FileHelper.getPath(this, uri);
                if (this.strFilePath == null) {
                    Log.e(TAG, "strFilePath = null");
                    Toast.makeText(this, "Path = null", 0).show();
                } else {
                    Log.e(TAG, this.strFilePath);
                    showCheckAlert();
                }
            } else {
                Log.e(TAG, "UnValid File Path");
                Toast.makeText(this, getResources().getString(R.string.UnValid_File_Path), 0).show();
            }
        } else {
            Log.e(TAG, "Cancel Choose File");
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    public void showCheckAlert() {
        Builder builder = new Builder(this);
        builder.setTitle(getResources().getString(R.string.Upgrade_Firmware));
        builder.setMessage(String.format(getResources().getString(R.string.Upgrade_Firmware_File_Path), new Object[]{this.strFilePath}));
        builder.setPositiveButton(getResources().getString(R.string.OK), new OnClickListener() {
            public void onClick(DialogInterface dialog, int id) {
                FWUpgradeActivity.this.StartUpgradeFW();
            }
        });
        builder.setNegativeButton(getResources().getString(R.string.Cancel), null);
        builder.show();
    }

    public void StartUpgradeFW() {
        this.m_i32Total = 0;
        this.m_i32Index = 0;
        this._bIsFinish = false;
        File file = new File(this.strFilePath);
        int i32fileLen = (int) file.length();
        if (i32fileLen > 10000000) {
            Builder builder = new Builder(this);
            builder.setTitle(getResources().getString(R.string.Upgrade_Firmware_failed));
            builder.setMessage(String.format(getResources().getString(R.string.incorrect_firmware_file), new Object[]{this.strFilePath}));
            builder.setPositiveButton(getResources().getString(R.string.OK), null);
            builder.show();
            return;
        }
        try {
            this.m_byAryBinData = new byte[i32fileLen];
            DataInputStream inputStream = new DataInputStream(new FileInputStream(file));
            if (inputStream != null) {
                try {
                    long ui32Checksum;
                    inputStream.readFully(this.m_byAryBinData);
                    if (this.m_byAryBinData.length <= 0) {
                        Toast.makeText(this, getResources().getString(R.string.Load_File_Fail), 0).show();
                    }
                    byte[] byData = new byte[4];
                    try {
                        String strTemp = new String(Arrays.copyOfRange(this.m_byAryBinData, 0, 4), "UTF-8");
                        if (!(strTemp.equalsIgnoreCase(DEVICE_FW_HEADER) || strTemp.equalsIgnoreCase(DEVICE_FW_HEADER2))) {
                            builder = new Builder(this);
                            builder.setTitle(getResources().getString(R.string.Upgrade_Firmware_failed));
                            builder.setMessage(String.format(getResources().getString(R.string.incorrect_firmware_file), new Object[]{this.strFilePath}));
                            builder.setPositiveButton(getResources().getString(R.string.OK), null);
                            builder.show();
                            return;
                        }
                    } catch (UnsupportedEncodingException e1) {
                        e1.printStackTrace();
                    }
                    if (this._bIsFinish) {
                        ui32Checksum = 0;
                    } else {
                        ui32Checksum = 0;
                    }
                    for (byte b : this.m_byAryBinData) {
                        ui32Checksum += (long) (b & 255);
                    }
                    this.m_i32Left = this.m_byAryBinData.length;
                    this.m_i32Total = this.m_byAryBinData.length;
                    showDownloadDialog();
                    CamWrapper.getComWrapperInstance().GPCamSendFirmwareDownload((long) i32fileLen, ui32Checksum);
                    try {
                        inputStream.close();
                        return;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return;
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            Toast.makeText(this, getResources().getString(R.string.Load_File_Fail), 0).show();
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        }
    }

    public void selectFile(View view) {
        Intent chooserIntent;
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.addCategory("android.intent.category.OPENABLE");
        Intent sIntent = new Intent("com.sec.android.app.myfiles.PICK_DATA");
        sIntent.putExtra("CONTENT_TYPE", "*/*");
        sIntent.addCategory("android.intent.category.DEFAULT");
        if (getPackageManager().resolveActivity(sIntent, 0) != null) {
            chooserIntent = Intent.createChooser(sIntent, getResources().getString(R.string.Select_file_to_upgrade));
            chooserIntent.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent});
        } else {
            chooserIntent = Intent.createChooser(intent, getResources().getString(R.string.Select_file_to_upgrade));
        }
        try {
            startActivityForResult(chooserIntent, 2);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(getApplicationContext(), getResources().getString(R.string.No_suitable_File_Manager), 0).show();
        }
    }

    private void showDownloadDialog() {
        if (m_DownloadDialog == null) {
            m_DownloadDialog = new ProgressDialog(this);
            m_DownloadDialog.setMessage(getResources().getString(R.string.Downloading));
            m_DownloadDialog.setCanceledOnTouchOutside(false);
            m_DownloadDialog.setMax(100);
            m_DownloadDialog.setProgressStyle(1);
            m_DownloadDialog.show();
        }
    }
}
