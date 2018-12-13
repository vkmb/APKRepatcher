package generalplus.com.GPCamDemo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import generalplus.com.GPCamLib.CamWrapper;
import generalplus.com.GPCamLib.GPINIReader;
import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteOrder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeoutException;

public class MainActivity extends Activity {
    private static String TAG = "MainActivity";
    private static Thread m_connectGPWifiDeviceThread = null;
    int MAX_LOGCAT_TIMES = 500;
    private boolean bWriteLogCatFile = false;
    int i32RecordLogCatCounter = 0;
    private ImageButton imgbtn_connect;
    private Context mContext;
    private CamWrapper m_CamWrapper;
    private ProgressDialog m_Dialog;
    private GPINIReader m_GPINIReader;
    private int m_iSetTime = 0;
    private int m_inputSelection = 0;
    Handler recordLogCatHandler = new Handler();
    Runnable runnableRecordLogCat = new Runnable() {
        public void run() {
            if (MainActivity.this.bWriteLogCatFile) {
                MainActivity mainActivity = MainActivity.this;
                mainActivity.i32RecordLogCatCounter++;
                if (MainActivity.this.i32RecordLogCatCounter >= MainActivity.this.MAX_LOGCAT_TIMES) {
                    MainActivity.this.strFileName = "";
                    MainActivity.this.i32RecordLogCatCounter = 0;
                }
                try {
                    MainActivity.this.strFileName = MainActivity.this.GetFileName();
                    Runtime.getRuntime().exec("logcat -v time -f " + MainActivity.this.strFileName);
                    MainActivity.this.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + new File(MainActivity.this.strFileName).getAbsolutePath())));
                } catch (IOException e) {
                    MainActivity.this.strFileName = "";
                    Toast.makeText(MainActivity.this.getApplicationContext(), "Save File Fail", 0).show();
                    e.printStackTrace();
                }
                MainActivity.this.recordLogCatHandler.postDelayed(this, 1000);
                return;
            }
            MainActivity.this.recordLogCatHandler.removeCallbacks(MainActivity.this.runnableRecordLogCat);
        }
    };
    private String strFileName = "";
    private String strSaveDirectory;

    class ConnectGPWifiDeviceRunnable implements Runnable {
        private boolean bCheckConnectStatus = false;
        private boolean bCheckWifiStatus = false;
        private int i32CheckWifiStatusDelayTime = CamWrapper.SupportMaxShowLogLength;
        private int i32RetryCheckWifiStatusCount = 100;
        private int i32RetryCount = 20;
        private int i32Status;

        ConnectGPWifiDeviceRunnable() {
        }

        public void run() {
            if (true == this.bCheckConnectStatus) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            WifiManager wifiManager = (WifiManager) MainActivity.this.mContext.getSystemService("wifi");
            if (wifiManager.getConnectionInfo() != null) {
                int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
                if (ipAddress == 0) {
                    this.bCheckWifiStatus = false;
                } else {
                    if (ByteOrder.nativeOrder().equals(ByteOrder.LITTLE_ENDIAN)) {
                        ipAddress = Integer.reverseBytes(ipAddress);
                    }
                    byte[] ipByteArray = BigInteger.valueOf((long) ipAddress).toByteArray();
                    CamWrapper.COMMAND_URL = (ipByteArray[0] & 255) + "." + (ipByteArray[1] & 255) + "." + (ipByteArray[2] & 255) + ".1";
                    this.bCheckWifiStatus = true;
                }
            }
            if (this.bCheckWifiStatus) {
                CamWrapper.getComWrapperInstance().GPCamConnectToDevice(CamWrapper.COMMAND_URL, CamWrapper.COMMAN_PORT);
                while (this.bCheckWifiStatus) {
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    this.i32Status = CamWrapper.getComWrapperInstance().GPCamGetStatus();
                    switch (this.i32Status) {
                        case 0:
                            this.bCheckConnectStatus = false;
                            this.bCheckWifiStatus = true;
                            break;
                        case 1:
                            this.bCheckConnectStatus = false;
                            this.bCheckWifiStatus = true;
                            break;
                        case 2:
                            this.bCheckConnectStatus = true;
                            this.bCheckWifiStatus = false;
                            CamWrapper.getComWrapperInstance().SetGPCamSetDownloadPath(MainActivity.this.strSaveDirectory);
                            CamWrapper.getComWrapperInstance().GPCamGetStatus();
                            break;
                        case 3:
                            this.i32RetryCount--;
                            if (this.i32RetryCount != 0) {
                                break;
                            }
                            this.bCheckConnectStatus = false;
                            this.bCheckWifiStatus = false;
                            CamWrapper.getComWrapperInstance().GPCamDisconnect();
                            break;
                        case 10:
                            this.i32RetryCount--;
                            if (this.i32RetryCount != 0) {
                                break;
                            }
                            this.bCheckConnectStatus = false;
                            this.bCheckWifiStatus = false;
                            CamWrapper.getComWrapperInstance().GPCamDisconnect();
                            break;
                        default:
                            break;
                    }
                }
            }
            if (MainActivity.this.m_Dialog != null && MainActivity.this.m_Dialog.isShowing()) {
                MainActivity.this.m_Dialog.dismiss();
                MainActivity.this.m_Dialog = null;
            }
            MainActivity.this.runOnUiThread(new Runnable() {
                public void run() {
                    if (ConnectGPWifiDeviceRunnable.this.bCheckConnectStatus) {
                        Intent toVlcPlayer = new Intent(MainActivity.this, MainViewController.class);
                        Bundle b = new Bundle();
                        b.putInt("SetTime", MainActivity.this.m_iSetTime);
                        toVlcPlayer.putExtras(b);
                        MainActivity.this.startActivity(toVlcPlayer);
                        return;
                    }
                    Toast.makeText(MainActivity.this.mContext, MainActivity.this.getResources().getString(R.string.Please_connect_message), 0).show();
                    try {
                        MainActivity.this.startActivity(new Intent("android.net.wifi.PICK_WIFI_NETWORK"));
                    } catch (Exception e) {
                    }
                }
            });
            MainActivity.m_connectGPWifiDeviceThread = null;
        }
    }

    private static class Worker extends Thread {
        private Integer exit;
        private final Process process;

        private Worker(Process process) {
            this.process = process;
        }

        public void run() {
            try {
                this.exit = Integer.valueOf(this.process.waitFor());
            } catch (InterruptedException e) {
            }
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getIntent().getBooleanExtra("EXIT", false)) {
            finish();
        }
        setContentView(R.layout.activity_main);
        getWindow().addFlags(128);
        getActionBar().setDisplayShowHomeEnabled(false);
        this.mContext = this;
        if (!shouldAskPermission()) {
            crateDirectory();
        } else if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, CamWrapper.SupportMaxShowLogLength);
        } else {
            crateDirectory();
        }
        if (this.m_CamWrapper == null) {
            this.m_CamWrapper = new CamWrapper();
        }
        if (this.m_GPINIReader == null) {
            this.m_GPINIReader = new GPINIReader();
        }
        this.imgbtn_connect = (ImageButton) findViewById(R.id.imgbtn_connect);
        this.imgbtn_connect.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (MainActivity.m_connectGPWifiDeviceThread == null) {
                    if (MainActivity.this.m_Dialog == null) {
                        MainActivity.this.m_Dialog = new ProgressDialog(MainActivity.this.mContext);
                        MainActivity.this.m_Dialog.setCanceledOnTouchOutside(false);
                        MainActivity.this.m_Dialog.setMessage(MainActivity.this.getResources().getString(R.string.Connecting));
                    }
                    MainActivity.this.m_Dialog.show();
                    MainActivity.m_connectGPWifiDeviceThread = new Thread(new ConnectGPWifiDeviceRunnable());
                    MainActivity.m_connectGPWifiDeviceThread.start();
                }
            }
        });
        this.m_iSetTime = getSharedPreferences(CamWrapper.GPCALLBACKSTATUSTYPE_DATA, 0).getInt("SetTime", 0);
        if (isExternalStorageWritable()) {
            this.recordLogCatHandler.postDelayed(this.runnableRecordLogCat, 0);
        }
        ((TextView) findViewById(R.id.tv_version)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                List<String> lunch = new ArrayList();
                lunch.add(MainActivity.this.getResources().getString(R.string.Set_Wifi_sport_Cam_Time));
                lunch.add(MainActivity.this.getResources().getString(R.string.Save_Log));
                new Builder(MainActivity.this).setTitle(MainActivity.this.getResources().getString(R.string.Setting)).setItems((CharSequence[]) lunch.toArray(new String[lunch.size()]), new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        if (which == 0) {
                            MainActivity.this.showSetTimeDialog();
                        } else {
                            MainActivity.this.showSaveLogDialog();
                        }
                        dialog.dismiss();
                    }
                }).show();
            }
        });
        Log.e(TAG, "Version = " + getResources().getString(R.string.app_version));
        if (VERSION.SDK_INT >= 21) {
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(1);
            final ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService("connectivity");
            connectivityManager.registerNetworkCallback(builder.build(), new NetworkCallback() {
                @TargetApi(23)
                public void onAvailable(Network network) {
                    super.onAvailable(network);
                    Log.i("test", "已根据功能和传输类型找到合适的网络");
                    if (VERSION.SDK_INT >= 23) {
                        connectivityManager.bindProcessToNetwork(network);
                    } else {
                        ConnectivityManager.setProcessDefaultNetwork(network);
                    }
                }
            });
        }
    }

    private void showSetTimeDialog() {
        CharSequence[] items = new CharSequence[]{getResources().getString(R.string.Disable), getResources().getString(R.string.Enable)};
        Builder builder = new Builder(this);
        builder.setTitle(getResources().getString(R.string.Set_Wifi_sport_Cam_Time));
        builder.setSingleChoiceItems(items, this.m_iSetTime, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) {
                if (MainActivity.this.m_iSetTime != item) {
                    Editor editor = MainActivity.this.getSharedPreferences(CamWrapper.GPCALLBACKSTATUSTYPE_DATA, 0).edit();
                    editor.putInt("SetTime", item);
                    editor.commit();
                    MainActivity.this.m_iSetTime = item;
                }
                dialog.dismiss();
            }
        });
        builder.show();
    }

    private void crateDirectory() {
        this.strSaveDirectory = Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName;
        new File(this.strSaveDirectory).mkdirs();
        File CameraFileDirectory = new File(Environment.getExternalStorageDirectory().getPath() + CamWrapper.SaveFileToDevicePath);
        if (!CameraFileDirectory.exists()) {
            CameraFileDirectory.mkdirs();
        }
    }

    public void onRequestPermissionsResult(int permsRequestCode, String[] permissions, int[] grantResults) {
        switch (permsRequestCode) {
            case CamWrapper.SupportMaxShowLogLength /*200*/:
                boolean writeAccepted;
                if (grantResults[0] == 0) {
                    writeAccepted = true;
                } else {
                    writeAccepted = false;
                }
                if (writeAccepted) {
                    crateDirectory();
                    return;
                } else if (shouldAskPermission()) {
                    ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, permsRequestCode);
                    return;
                } else {
                    return;
                }
            default:
                return;
        }
    }

    private boolean shouldAskPermission() {
        return VERSION.SDK_INT > 22;
    }

    private void showSaveLogDialog() {
        CharSequence[] items = new CharSequence[]{getResources().getString(R.string.Disable), getResources().getString(R.string.Enable)};
        Builder builder = new Builder(this);
        builder.setTitle(getResources().getString(R.string.Save_Log));
        builder.setSingleChoiceItems(items, this.m_inputSelection, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) {
                MainActivity.this.m_inputSelection = item;
                MainActivity.this.recordLogCatHandler.removeCallbacks(MainActivity.this.runnableRecordLogCat);
                MainActivity.this.bWriteLogCatFile = false;
                if (1 == item && MainActivity.this.isExternalStorageWritable()) {
                    MainActivity.this.bWriteLogCatFile = true;
                    MainActivity.this.recordLogCatHandler.postDelayed(MainActivity.this.runnableRecordLogCat, 0);
                }
                dialog.dismiss();
            }
        });
        builder.show();
    }

    public static int executeCommandLine(String commandLine, long timeout) throws IOException, InterruptedException, TimeoutException {
        Process process = Runtime.getRuntime().exec(commandLine);
        Worker worker = new Worker(process);
        worker.start();
        try {
            worker.join(timeout);
            if (worker.exit != null) {
                int intValue = worker.exit.intValue();
                process.destroy();
                return intValue;
            }
            throw new TimeoutException();
        } catch (InterruptedException ex) {
            worker.interrupt();
            Thread.currentThread().interrupt();
            throw ex;
        } catch (Throwable th) {
            process.destroy();
        }
    }

    protected void onDestroy() {
        Log.e(TAG, "onDestroy ...");
        if (this.m_Dialog != null && this.m_Dialog.isShowing()) {
            this.m_Dialog.dismiss();
            this.m_Dialog = null;
        }
        this.recordLogCatHandler.removeCallbacks(this.runnableRecordLogCat);
        super.onDestroy();
    }

    private String GetFileName() {
        if (this.strFileName.compareToIgnoreCase("") == 0) {
            String TrimTimeStamp = new SimpleDateFormat("yyyy MM dd HH mm ss", Locale.CHINESE).format(Calendar.getInstance().getTime()).replace(" ", "");
            String strYear = TrimTimeStamp.substring(0, 4);
            String strMonth = TrimTimeStamp.substring(4, 6);
            String strDay = TrimTimeStamp.substring(6, 8);
            String strHour = TrimTimeStamp.substring(8, 10);
            String strMinute = TrimTimeStamp.substring(10, 12);
            String strSecond = TrimTimeStamp.substring(12, 14);
            File logDirectory = new File(Environment.getExternalStorageDirectory() + "/LOGCAT");
            if (!logDirectory.exists()) {
                logDirectory.mkdir();
            }
            this.strFileName = "/sdcard/LOGCAT/LOGCAT_" + strYear + "_" + strMonth + "_" + strDay + "_" + strHour + "_" + strMinute + "_" + strSecond + "_Log.txt";
        }
        return this.strFileName;
    }

    public boolean isExternalStorageWritable() {
        if ("mounted".equals(Environment.getExternalStorageState())) {
            return true;
        }
        return false;
    }
}
