package generalplus.com.GPCamDemo;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewCompat;
import android.text.format.Time;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.generalplus.ffmpegLib.ffmpegWrapper;
import com.generalplus.ffmpegLib.ffmpegWrapper.ePlayerStatus;
import generalplus.com.GPCamLib.CamWrapper;
import generalplus.com.GPCamLib.GPXMLParse;
import generalplus.com.GPCamLib.GPXMLParse.GPXMLCategory;
import generalplus.com.GPCamLib.GPXMLParse.GPXMLSetting;
import generalplus.com.GPCamLib.GPXMLParse.GPXMLValue;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;

public class MainViewController extends Activity implements Callback {
    private static Thread GetGPCamStatusThread = null;
    private static Thread PlayVLCThread = null;
    private static final int SURFACE_16_9 = 4;
    private static final int SURFACE_4_3 = 5;
    private static final int SURFACE_BEST_FIT = 0;
    private static final int SURFACE_FILL = 3;
    private static final int SURFACE_FIT_HORIZONTAL = 1;
    private static final int SURFACE_FIT_VERTICAL = 2;
    private static final int SURFACE_ORIGINAL = 6;
    private static String TAG = "MainViewController";
    private static final int VideoSizeChanged = -1;
    private static boolean _Capturing = false;
    private static boolean _ChangeToAnotherModeDone = true;
    private static int _CurrentMode = 0;
    private static boolean _Recording = false;
    private static boolean _bCurrentAudio = true;
    private static boolean _bRunVLC = false;
    private static boolean _bSetModeDone = false;
    private static boolean _bSetRestartStreamingDone = false;
    private static boolean isAnimating = false;
    private static int mMainSarDen = 0;
    private static int mMainSarNum = 0;
    private static int mMainVideoHeight = 0;
    private static int mMainVideoVisibleHeight = 0;
    private static int mMainVideoVisibleWidth = 0;
    private static int mMainVideoWidth = 0;
    private static ArrayList<BatteryRes> m_BatteryList;
    private static ArrayList<RecordRes> m_RecordList;
    public static boolean m_bRtsp = false;
    private static ArrayList<GPXMLCategory> m_xmlGategory = null;
    private int FW_Old_Number = ViewCompat.MEASURED_STATE_TOO_SMALL;
    private Handler handlerOverlay;
    private Handler handlerSeekbar;
    private ImageButton imgbtn_audio;
    private ImageButton imgbtn_disconnect;
    private ImageButton imgbtn_file;
    private ImageButton imgbtn_menu;
    private ImageButton imgbtn_mode;
    private ImageButton imgbtn_recordorcapture;
    private ImageView imgview_audio_status;
    private ImageView imgview_battery_status;
    private ImageView imgview_multi_shot_status;
    private ImageView imgview_record_status;
    private int mCurrentSize = 0;
    private long mLastCapClickTime;
    private long mLastClickTime;
    private GLSurfaceView mSurfaceView;
    private int mVideoHeight;
    private int mVideoWidth;
    private Context m_Context;
    private ProgressDialog m_Dialog = null;
    private Handler m_FromWrapperHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    MainViewController.this.ParseGPCamStatus(msg.getData());
                    return;
                default:
                    return;
            }
        }
    };
    private GPXMLParse m_GPXMLParse;
    private Handler m_StatusHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 0 || msg.what != 1) {
            }
        }
    };
    private boolean m_bDelay = false;
    private boolean m_bVendorID = true;
    private Runnable runnableOverlay;
    private Runnable runnableSeekbar;
    private final long timeToDisappear = 10000;
    private TextView tv_res_status;
    private TextView tv_time_remain;
    private String urlToStream = null;
    private LinearLayout vlcContainer;
    private FrameLayout vlcOverlay;

    private static class BatteryRes {
        int BatterResIndex;
        int BatteryIndex;

        private BatteryRes() {
        }
    }

    class GetGPCamStatusRunnable implements Runnable {
        private int i32DelayTime = 500;

        GetGPCamStatusRunnable() {
        }

        public void run() {
            while (MainViewController._bRunVLC) {
                CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
                try {
                    Thread.sleep((long) this.i32DelayTime);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            MainViewController.GetGPCamStatusThread.interrupt();
            MainViewController.GetGPCamStatusThread = null;
        }
    }

    class PlayVLCRunnable implements Runnable {
        private int i32RepeatCount = 3;

        PlayVLCRunnable() {
        }

        public void run() {
            MainViewController._bRunVLC = true;
            if (MainViewController.GetGPCamStatusThread == null) {
                MainViewController.GetGPCamStatusThread = new Thread(new GetGPCamStatusRunnable());
                MainViewController.GetGPCamStatusThread.start();
            }
            try {
                Thread.sleep(300);
            } catch (InterruptedException e1) {
                e1.printStackTrace();
            }
            while (MainViewController._bRunVLC && this.i32RepeatCount >= 0) {
                ffmpegWrapper.getInstance();
                if (ffmpegWrapper.naStatus() != ePlayerStatus.E_PlayerStatus_Playing.ordinal()) {
                    MainViewController.this.initStreaming();
                }
                try {
                    Thread.sleep(500);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                this.i32RepeatCount--;
            }
            MainViewController.PlayVLCThread.interrupt();
            MainViewController.PlayVLCThread = null;
        }
    }

    private static class RecordRes {
        int RecordResIndex;

        private RecordRes() {
        }
    }

    private boolean ReadDefaultMenu() {
        String strXMLFilePath = String.format(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/" + CamWrapper.ParameterFileName, new Object[0]);
        if (this.m_GPXMLParse == null) {
            this.m_GPXMLParse = new GPXMLParse();
        }
        this.m_GPXMLParse.GetCategories();
        if (m_xmlGategory != null || this.m_GPXMLParse.GetGPXMLInfo(strXMLFilePath).size() <= 0) {
            CamWrapper.bIsDefault = true;
            File file = new File(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/", CamWrapper.DefaultParameterFileName);
            if (!file.exists()) {
                try {
                    InputStream fIn = getAssets().open(CamWrapper.DefaultParameterFileName);
                    OutputStream os = new FileOutputStream(file);
                    byte[] buffer = new byte[1024];
                    while (true) {
                        int bytesRead = fIn.read(buffer);
                        if (bytesRead == -1) {
                            break;
                        }
                        os.write(buffer, 0, bytesRead);
                    }
                    fIn.close();
                    os.close();
                } catch (IOException e) {
                    Log.e("tag", e.getMessage());
                }
            }
            ReadXml(String.format(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/" + CamWrapper.DefaultParameterFileName, new Object[0]));
            return false;
        }
        CamWrapper.bIsDefault = false;
        ReadXml(strXMLFilePath);
        return true;
    }

    private void ReadXml(String strXMLFilePath) {
        if (this.m_GPXMLParse == null) {
            this.m_GPXMLParse = new GPXMLParse();
        }
        if (m_xmlGategory == null) {
            ArrayList<GPXMLCategory> xmlTempGategory = this.m_GPXMLParse.GetGPXMLInfo(strXMLFilePath);
            m_xmlGategory = new ArrayList();
            m_xmlGategory.addAll(xmlTempGategory);
            String strFirmwareVersion = getFirmwareVersion();
            if (strFirmwareVersion.length() == 0) {
                CamWrapper.getComWrapperInstance().setIsNewFile(true);
                return;
            }
            String[] array = strFirmwareVersion.split("V");
            if (2 == array.length) {
                try {
                    String[] dotArray = array[1].split("\\.");
                    int _FWVersion = 0;
                    int i32Shift = 24;
                    for (String valueOf : dotArray) {
                        _FWVersion |= Integer.valueOf(valueOf).intValue() << i32Shift;
                        i32Shift -= 8;
                        if (i32Shift < 0) {
                            break;
                        }
                    }
                    if (_FWVersion <= this.FW_Old_Number) {
                        CamWrapper.getComWrapperInstance().setIsNewFile(false);
                    } else {
                        CamWrapper.getComWrapperInstance().setIsNewFile(true);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.e(TAG, "onCreate ...");
        setContentView(R.layout.activity_main_vlc_player);
        setRequestedOrientation(4);
        this.m_Context = this;
        getWindow().addFlags(128);
        if (1 == getIntent().getExtras().getInt("SetTime", 0)) {
            setVendorTime();
        }
        CamWrapper.getComWrapperInstance().SetViewHandler(this.m_FromWrapperHandler, 0);
        CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
        CamWrapper.getComWrapperInstance().SetGPCamSendGetParameterFile(CamWrapper.ParameterFileName);
        this.vlcContainer = (LinearLayout) findViewById(R.id.vlc_container);
        this.mSurfaceView = (GLSurfaceView) findViewById(R.id.vlc_surface);
        this.vlcOverlay = (FrameLayout) findViewById(R.id.vlc_overlay);
        this.tv_res_status = (TextView) findViewById(R.id.tv_res_status);
        this.tv_time_remain = (TextView) findViewById(R.id.tv_time_remain);
        this.imgbtn_file = (ImageButton) findViewById(R.id.imgbtn_file);
        this.imgbtn_audio = (ImageButton) findViewById(R.id.imgbtn_audio);
        this.imgbtn_menu = (ImageButton) findViewById(R.id.imgbtn_menu);
        this.imgbtn_disconnect = (ImageButton) findViewById(R.id.imgbtn_disconnect);
        this.imgbtn_recordorcapture = (ImageButton) findViewById(R.id.imgbtn_recordorcapture);
        this.imgbtn_mode = (ImageButton) findViewById(R.id.imgbtn_mode);
        this.imgview_battery_status = (ImageView) findViewById(R.id.imgview_battery_status);
        this.imgview_multi_shot_status = (ImageView) findViewById(R.id.imgview_multi_shot_status);
        this.imgview_record_status = (ImageView) findViewById(R.id.imgview_record_status);
        this.imgview_audio_status = (ImageView) findViewById(R.id.imgview_audio_status);
        this.mSurfaceView.setEGLContextClientVersion(2);
        this.mSurfaceView.setRenderer(ffmpegWrapper.getInstance());
        this.mSurfaceView.setKeepScreenOn(true);
    }

    private void setVendorID() {
        CamWrapper.getComWrapperInstance().GPCamSendVendorCmd(new byte[]{(byte) 86, (byte) 69, (byte) 78, (byte) 68, (byte) 79, (byte) 82, (byte) 73, (byte) 68}, 8);
    }

    private void setVendorTime() {
        byStringData = new byte[17];
        Time today = new Time(Time.getCurrentTimezone());
        today.setToNow();
        byStringData[10] = (byte) today.year;
        byStringData[11] = (byte) (today.year >>> 8);
        byStringData[12] = (byte) (today.month + 1);
        byStringData[13] = (byte) today.monthDay;
        byStringData[14] = (byte) today.hour;
        byStringData[15] = (byte) today.minute;
        byStringData[16] = (byte) today.second;
        CamWrapper.getComWrapperInstance().GPCamSendVendorCmd(byStringData, 17);
    }

    private void setupControls() {
        getActionBar().hide();
        this.vlcContainer.setVisibility(0);
        this.handlerOverlay = new Handler();
        this.runnableOverlay = new Runnable() {
            public void run() {
                MainViewController.this.vlcOverlay.setVisibility(8);
            }
        };
        this.handlerOverlay.postDelayed(this.runnableOverlay, 10000);
        this.vlcOverlay.setVisibility(8);
        toggleFullscreen(true);
        this.vlcContainer.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (!MainViewController.this.m_bDelay || (MainViewController._bSetModeDone && MainViewController._bSetRestartStreamingDone)) {
                    if (MainViewController.this.vlcOverlay.getVisibility() == 0) {
                        MainViewController.this.vlcOverlay.setVisibility(8);
                    } else {
                        MainViewController.this.vlcOverlay.setVisibility(0);
                    }
                    Log.e(MainViewController.TAG, "vlcContainer setOnClickListener");
                    MainViewController.this.handlerOverlay.removeCallbacks(MainViewController.this.runnableOverlay);
                    MainViewController.this.handlerOverlay.postDelayed(MainViewController.this.runnableOverlay, 10000);
                    return;
                }
                Log.e(MainViewController.TAG, "return vlcContainer setOnClickListener _bSetModeDone = " + String.valueOf(MainViewController._bSetModeDone) + " _bSetRestartStreamingDone = " + String.valueOf(MainViewController._bSetRestartStreamingDone));
            }
        });
        this.imgbtn_file.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (!MainViewController.this.isFastClick()) {
                    MainViewController.this.stopStreaming();
                    Intent intent = new Intent();
                    intent.setClass(MainViewController.this, FilesActivity.class);
                    MainViewController.this.startActivity(intent);
                }
            }
        });
        this.imgbtn_audio.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                MainViewController.this.handlerOverlay.removeCallbacks(MainViewController.this.runnableOverlay);
                MainViewController.this.handlerOverlay.postDelayed(MainViewController.this.runnableOverlay, 10000);
                CamWrapper.getComWrapperInstance().GPCamSendAudioOnOff(MainViewController._bCurrentAudio);
                MainViewController._bCurrentAudio = !MainViewController._bCurrentAudio;
            }
        });
        this.imgbtn_menu.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                if (MainViewController._ChangeToAnotherModeDone && !MainViewController.this.isFastClick()) {
                    MainViewController.this.stopStreaming();
                    Intent intent = new Intent();
                    intent.setClass(MainViewController.this, SettingActivity.class);
                    MainViewController.this.startActivity(intent);
                }
            }
        });
        this.imgbtn_disconnect.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                MainViewController.this.stopStreaming();
                MainViewController.this.Finish();
            }
        });
        this.imgbtn_recordorcapture.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                MainViewController.this.handlerOverlay.removeCallbacks(MainViewController.this.runnableOverlay);
                MainViewController.this.handlerOverlay.postDelayed(MainViewController.this.runnableOverlay, 10000);
                if (!MainViewController.this.isRecordoCcaptureClick()) {
                    if (MainViewController.this.isFastClick()) {
                    }
                    if (MainViewController._CurrentMode == 0) {
                        MainViewController._ChangeToAnotherModeDone = false;
                        MainViewController._Recording = true;
                        MainViewController._Capturing = false;
                        CamWrapper.getComWrapperInstance().GPCamSendRecordCmd();
                    } else if (MainViewController._CurrentMode == 1) {
                        MainViewController._ChangeToAnotherModeDone = false;
                        MainViewController._Recording = false;
                        MainViewController._Capturing = true;
                        if (MainViewController.this.m_Dialog == null) {
                            MainViewController.this.m_Dialog = new ProgressDialog(MainViewController.this.m_Context);
                            MainViewController.this.m_Dialog.setCanceledOnTouchOutside(false);
                            MainViewController.this.m_Dialog.setMessage(MainViewController.this.getResources().getString(R.string.Capture));
                        }
                        MainViewController.this.m_Dialog.show();
                        CamWrapper.getComWrapperInstance().GPCamSendCapturePicture();
                    }
                }
            }
        });
        this.imgbtn_mode.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                MainViewController.this.handlerOverlay.removeCallbacks(MainViewController.this.runnableOverlay);
                MainViewController.this.handlerOverlay.postDelayed(MainViewController.this.runnableOverlay, 10000);
                CharSequence[] mode = new CharSequence[]{MainViewController.this.getResources().getString(R.string.Record), MainViewController.this.getResources().getString(R.string.Capture)};
                Builder builder = new Builder(MainViewController.this.m_Context);
                builder.setTitle(MainViewController.this.getResources().getString(R.string.Mode));
                builder.setSingleChoiceItems(mode, MainViewController._CurrentMode, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                if (MainViewController._Capturing) {
                                    CamWrapper.getComWrapperInstance().GPCamSendCapturePicture();
                                }
                                MainViewController._bSetModeDone = false;
                                CamWrapper.getComWrapperInstance().GPCamSendSetMode(0);
                                break;
                            case 1:
                                if (MainViewController._Recording) {
                                    CamWrapper.getComWrapperInstance().GPCamSendRecordCmd();
                                }
                                MainViewController._bSetModeDone = false;
                                CamWrapper.getComWrapperInstance().GPCamSendSetMode(1);
                                break;
                        }
                        MainViewController._CurrentMode = which;
                        dialog.dismiss();
                    }
                });
                builder.show();
            }
        });
    }

    private boolean isRecordoCcaptureClick() {
        long currentTime = System.currentTimeMillis();
        long time = currentTime - this.mLastCapClickTime;
        if (0 < time && time < 500) {
            return true;
        }
        this.mLastCapClickTime = currentTime;
        return false;
    }

    private boolean isFastClick() {
        long currentTime = System.currentTimeMillis();
        long time = currentTime - this.mLastClickTime;
        if (0 < time && time < 1500) {
            return true;
        }
        this.mLastClickTime = currentTime;
        return false;
    }

    public void initStreaming() {
        ffmpegWrapper.getInstance();
        if (ffmpegWrapper.naStatus() != ePlayerStatus.E_PlayerStatus_Playing.ordinal()) {
            this.mSurfaceView.onPause();
            ffmpegWrapper.getInstance();
            ffmpegWrapper.naSetStreaming(true);
            ffmpegWrapper.getInstance();
            ffmpegWrapper.naInitAndPlay(this.urlToStream, "");
            this.mSurfaceView.onResume();
        }
    }

    private void playStreaming() {
        ffmpegWrapper.getInstance();
        if (ffmpegWrapper.naStatus() != ePlayerStatus.E_PlayerStatus_Playing.ordinal()) {
            new Thread(new Runnable() {
                public void run() {
                    int i32RetryCount = 50;
                    MainViewController._bSetModeDone = false;
                    MainViewController._bSetRestartStreamingDone = false;
                    Log.e(MainViewController.TAG, "playStreaming SendSetMode = " + MainViewController._CurrentMode);
                    CamWrapper.getComWrapperInstance().GPCamSendSetMode(MainViewController._CurrentMode);
                    while (!MainViewController._bSetModeDone && i32RetryCount > 0) {
                        try {
                            Thread.sleep(100);
                            i32RetryCount--;
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    if (MainViewController._bSetModeDone) {
                        MainViewController._bSetRestartStreamingDone = false;
                        CamWrapper.getComWrapperInstance().GPCamSendRestartStreaming();
                        MainViewController.this.playVLC();
                    }
                }
            }).start();
        }
    }

    private void stopStreaming() {
        Log.e(TAG, "stopStreaming");
        if (_Capturing) {
            CamWrapper.getComWrapperInstance().GPCamSendCapturePicture();
        }
        if (_Recording) {
            CamWrapper.getComWrapperInstance().GPCamSendRecordCmd();
        }
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        _bRunVLC = false;
        ffmpegWrapper.getInstance();
        ffmpegWrapper.naStop();
        Log.e(TAG, "stopStreaming mLibVLC.stop();");
    }

    private void playVLC() {
        if (PlayVLCThread == null) {
            PlayVLCThread = new Thread(new PlayVLCRunnable());
            PlayVLCThread.start();
        }
    }

    private void toggleFullscreen(boolean fullscreen) {
        LayoutParams attrs = getWindow().getAttributes();
        if (fullscreen) {
            attrs.flags |= 1024;
        } else {
            attrs.flags &= -1025;
        }
        getWindow().setAttributes(attrs);
    }

    public void onConfigurationChanged(Configuration newConfig) {
        Log.e(TAG, "onConfigurationChanged ...");
        super.onConfigurationChanged(newConfig);
    }

    public void surfaceCreated(SurfaceHolder holder) {
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int format, int width, int height) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder) {
    }

    protected void onResume() {
        Log.e(TAG, "onResume ...");
        super.onResume();
        setupControls();
        if (this.urlToStream != null) {
            playStreaming();
        }
        CamWrapper.getComWrapperInstance().SetViewHandler(this.m_FromWrapperHandler, 0);
        this.m_bDelay = true;
        new Handler().postDelayed(new Runnable() {
            public void run() {
                MainViewController.this.m_bDelay = false;
            }
        }, 10000);
        this.mSurfaceView.onResume();
    }

    public void onBackPressed() {
        if (!this.m_bDelay || (_bSetModeDone && _bSetRestartStreamingDone)) {
            stopStreaming();
            Finish();
            super.onBackPressed();
        }
    }

    protected void onPause() {
        Log.e(TAG, "onPause ...");
        super.onPause();
        CamWrapper.getComWrapperInstance().SetViewHandler(null, 0);
        this.mSurfaceView.onPause();
    }

    protected void onDestroy() {
        Log.e(TAG, "onDestroy ...");
        if (m_xmlGategory != null) {
            m_xmlGategory.clear();
            m_xmlGategory = null;
        }
        dismissProgressDialog();
        super.onDestroy();
        Finish();
    }

    private void Finish() {
        CamWrapper.getComWrapperInstance().GPCamDisconnect();
        ffmpegWrapper.getInstance();
        ffmpegWrapper.naStop();
        finish();
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
                case 0:
                    switch (i32CmdID) {
                        case 0:
                            _bSetModeDone = true;
                            Log.e(TAG, "_bSetModeDone = true");
                            return;
                        case 1:
                            boolean bParseSendSetMode = false;
                            switch (pbyData[0] & 255) {
                                case 0:
                                    _CurrentMode = 0;
                                    if ((pbyData[1] & 1) == 0) {
                                        AnimateRecord(false);
                                        _Recording = false;
                                    } else {
                                        AnimateRecord(true);
                                        _Recording = true;
                                    }
                                    AnimateAudio((((pbyData[1] & 255) >> 1) & 1) == 0);
                                    ShowMultiShot(false);
                                    ShowResource(pbyData[4] & 255, true);
                                    ShowTime((((pbyData[5] & 255) + ((pbyData[6] & 255) << 8)) + ((pbyData[7] & 255) << 16)) + ((pbyData[8] & 255) << 24), true);
                                    ShowModePIC(true);
                                    break;
                                case 1:
                                    _CurrentMode = 1;
                                    AnimateRecord(false);
                                    if ((pbyData[1] & 1) == 0) {
                                        _Capturing = false;
                                        ShowMultiShot(false);
                                    } else {
                                        _Capturing = true;
                                        ShowMultiShot(true);
                                    }
                                    AnimateAudio(false);
                                    ShowResource(pbyData[9] & 255, false);
                                    ShowTime((((pbyData[10] & 255) + ((pbyData[11] & 255) << 8)) + ((pbyData[12] & 255) << 16)) + ((pbyData[13] & 255) << 24), false);
                                    ShowModePIC(false);
                                    break;
                                default:
                                    if (_CurrentMode != (pbyData[0] & 255)) {
                                        _bSetModeDone = false;
                                        Log.e(TAG, "GetDeviceStatus SendSetMode = " + _CurrentMode);
                                        bParseSendSetMode = true;
                                        CamWrapper.getComWrapperInstance().GPCamSendSetMode(_CurrentMode);
                                    }
                                    AnimateRecord(false);
                                    AnimateAudio(false);
                                    ShowMultiShot(false);
                                    ShowModePIC(false);
                                    break;
                            }
                            if ((((pbyData[1] & 255) >> 7) & 1) == 1) {
                                _bRunVLC = false;
                                try {
                                    Thread.sleep(200);
                                } catch (InterruptedException e) {
                                    e.printStackTrace();
                                }
                                if (PlayVLCThread == null) {
                                    _bRunVLC = true;
                                    PlayVLCThread = new Thread(new PlayVLCRunnable());
                                    PlayVLCThread.start();
                                    Log.e(TAG, "Reset VLC.");
                                }
                                runOnUiThread(new Runnable() {
                                    public void run() {
                                        Toast.makeText(MainViewController.this.m_Context, MainViewController.this.getResources().getString(R.string.Reset_VLC), 0).show();
                                    }
                                });
                            }
                            if (this.urlToStream == null) {
                                if (1 == ((pbyData[2] & 255) >> 7)) {
                                    this.urlToStream = String.format(CamWrapper.RTSP_STREAMING_URL, new Object[]{CamWrapper.COMMAND_URL});
                                    CamWrapper.getComWrapperInstance().GPCamSetFileNameMapping(CamWrapper.GP22_DEFAULT_MAPPING_STR);
                                    m_bRtsp = true;
                                } else {
                                    this.urlToStream = String.format(CamWrapper.STREAMING_URL, new Object[]{CamWrapper.COMMAND_URL});
                                    CamWrapper.getComWrapperInstance().GPCamSetFileNameMapping(CamWrapper.DEFAULT_MAPPING_STR);
                                    m_bRtsp = false;
                                }
                                playStreaming();
                            }
                            ShowBattery((byte) ((pbyData[2] & 255) - (((pbyData[2] & 255) >> 7) * 128)), (pbyData[3] & 1) != 0);
                            if (!bParseSendSetMode) {
                                _CurrentMode = pbyData[0] & 255;
                            }
                            if (1 == ((pbyData[3] & 255) >> 7)) {
                                FilesActivity.m_bCanDeleteSDFile = true;
                                return;
                            } else {
                                FilesActivity.m_bCanDeleteSDFile = false;
                                return;
                            }
                        case 2:
                            ReadDefaultMenu();
                            return;
                        case 4:
                            _bSetRestartStreamingDone = true;
                            return;
                        default:
                            return;
                    }
                case 1:
                    Log.e(TAG, "GPSOCK_MODE_Record ... ");
                    try {
                        Thread.sleep(800);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    _ChangeToAnotherModeDone = true;
                    return;
                case 2:
                    Log.e(TAG, "GPSOCK_MODE_CapturePicture ... ");
                    try {
                        Thread.sleep(800);
                    } catch (InterruptedException e22) {
                        e22.printStackTrace();
                    }
                    _ChangeToAnotherModeDone = true;
                    dismissProgressDialog();
                    return;
                case 3:
                    Log.e(TAG, "GPSOCK_MODE_Playback ... ");
                    return;
                case 4:
                    Log.e(TAG, "GPSOCK_MODE_Menu ... ");
                    return;
                case 255:
                    Log.e(TAG, "GPSOCK_MODE_Vendor ... ");
                    return;
                default:
                    return;
            }
        } else if (i32CmdType == 3) {
            int i32ErrorCode = (pbyData[0] & 255) + ((pbyData[1] & 255) << 8);
            if (_Recording || _Capturing) {
                _ChangeToAnotherModeDone = true;
            }
            switch (i32ErrorCode) {
                case CamWrapper.Error_LostConnection /*65472*/:
                    Log.e(TAG, "Error_LostConnection ...");
                    Finish();
                    break;
                case CamWrapper.Error_SocketClosed /*65473*/:
                    Log.e(TAG, "Error_SocketClosed ... ");
                    Finish();
                    break;
                case CamWrapper.Error_FullStorage /*65527*/:
                    Log.e(TAG, "Error_FullStorage ... ");
                    break;
                case CamWrapper.Error_GetThumbnailFail /*65528*/:
                    Log.e(TAG, "Error_GetThumbnailFail ... ");
                    break;
                case CamWrapper.Error_GetFileListFail /*65529*/:
                    Log.e(TAG, "Error_GetFileListFail ... ");
                    break;
                case CamWrapper.Error_WriteFail /*65530*/:
                    Log.e(TAG, "Error_WriteFail ... ");
                    break;
                case CamWrapper.Error_NoStorage /*65531*/:
                    Log.e(TAG, "Error_NoStorage ... ");
                    if (_Recording || _Capturing) {
                        runOnUiThread(new Runnable() {
                            public void run() {
                                Toast.makeText(MainViewController.this.m_Context, MainViewController.this.getResources().getString(R.string.No_Storage), 0).show();
                            }
                        });
                        break;
                    }
                case CamWrapper.Error_ModeError /*65532*/:
                    Log.e(TAG, "Error_ModeError ... ");
                    break;
                case CamWrapper.Error_RequestTimeOut /*65533*/:
                    Log.e(TAG, "Error_RequestTimeOut ... ");
                    break;
                case CamWrapper.Error_InvalidCommand /*65534*/:
                    Log.e(TAG, "Error_InvalidCommand ... ");
                    break;
                case 65535:
                    Log.e(TAG, "Error_ServerIsBusy ... ");
                    break;
            }
            dismissProgressDialog();
        }
    }

    private void ShowBattery(byte byLevel, boolean bCharge) {
        if (m_BatteryList == null) {
            m_BatteryList = new ArrayList();
            BatteryRes battery0 = new BatteryRes();
            battery0.BatterResIndex = 0;
            battery0.BatterResIndex = R.drawable.battery_level0;
            m_BatteryList.add(battery0);
            BatteryRes battery1 = new BatteryRes();
            battery1.BatterResIndex = 1;
            battery1.BatterResIndex = R.drawable.battery_level1;
            m_BatteryList.add(battery1);
            BatteryRes battery2 = new BatteryRes();
            battery2.BatterResIndex = 2;
            battery2.BatterResIndex = R.drawable.battery_level2;
            m_BatteryList.add(battery2);
            BatteryRes battery3 = new BatteryRes();
            battery3.BatterResIndex = 3;
            battery3.BatterResIndex = R.drawable.battery_level3;
            m_BatteryList.add(battery3);
            BatteryRes battery4 = new BatteryRes();
            battery4.BatterResIndex = 4;
            battery4.BatterResIndex = R.drawable.battery_level4;
            m_BatteryList.add(battery4);
            BatteryRes battery5 = new BatteryRes();
            battery5.BatterResIndex = 5;
            battery5.BatterResIndex = R.drawable.battery_charge;
            m_BatteryList.add(battery5);
        }
        int i32Idx = byLevel;
        if (bCharge) {
            i32Idx = 5;
        }
        if (i32Idx > 5 || i32Idx < 0) {
            i32Idx = 5;
        }
        final BatteryRes battery = (BatteryRes) m_BatteryList.get(i32Idx);
        runOnUiThread(new Runnable() {
            public void run() {
                MainViewController.this.imgview_battery_status.setImageResource(battery.BatterResIndex);
            }
        });
    }

    private void ShowMultiShot(boolean bEnable) {
        final boolean bMultiShot = bEnable;
        runOnUiThread(new Runnable() {
            public void run() {
                if (bMultiShot) {
                    MainViewController.this.imgview_multi_shot_status.setVisibility(0);
                } else {
                    MainViewController.this.imgview_multi_shot_status.setVisibility(4);
                }
            }
        });
    }

    private void ShowResource(int ValuesIndex, boolean RecordMode) {
        if (this.m_GPXMLParse != null) {
            if (m_xmlGategory == null || m_xmlGategory.size() == 0) {
                ArrayList<GPXMLCategory> xmlTempGategory = this.m_GPXMLParse.GetGPXMLInfo(String.format(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName + "/" + CamWrapper.ParameterFileName, new Object[0]));
                if (m_xmlGategory == null) {
                    m_xmlGategory = new ArrayList();
                }
                m_xmlGategory.clear();
                m_xmlGategory.addAll(xmlTempGategory);
            }
            String strValueName = "";
            if (m_xmlGategory == null) {
                strValueName = "XML NULL";
            } else if (m_xmlGategory.size() <= 0) {
                strValueName = "XML length 0";
            }
            if (m_xmlGategory == null || m_xmlGategory.size() <= 0) {
                this.tv_res_status.setVisibility(4);
                return;
            }
            for (int i32CategoryIndex = 0; i32CategoryIndex < m_xmlGategory.size(); i32CategoryIndex++) {
                for (int i32SettingIndex = 0; i32SettingIndex < ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.size(); i32SettingIndex++) {
                    if (RecordMode) {
                        if (Long.decode(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingID).longValue() == ((long) GPXMLParse.RecordResolution_Setting_ID)) {
                            if (ValuesIndex >= ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.size()) {
                                strValueName = getResources().getString(R.string.Record_resolution_unknown);
                            } else {
                                strValueName = ((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.get(ValuesIndex)).strXMLValueName;
                            }
                        }
                    } else if (Long.decode(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingID).longValue() == ((long) GPXMLParse.CaptureResolution_Setting_ID)) {
                        if (ValuesIndex >= ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.size()) {
                            strValueName = getResources().getString(R.string.Capture_resolution_unknown);
                        } else {
                            strValueName = ((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.get(ValuesIndex)).strXMLValueName;
                        }
                    }
                }
            }
            final String strName = strValueName;
            runOnUiThread(new Runnable() {
                public void run() {
                    MainViewController.this.tv_res_status.setText(strName);
                }
            });
        }
    }

    private void ShowTime(int SecRemain, boolean RecordMode) {
        String strTempSecRemain = "";
        if (RecordMode) {
            int i32SecLeft = SecRemain % 60;
            int i32MinLeft = (SecRemain / 60) % 60;
            strTempSecRemain = String.format("%02d:%02d:%02d", new Object[]{Integer.valueOf(SecRemain / 3600), Integer.valueOf(i32MinLeft), Integer.valueOf(i32SecLeft)});
        } else {
            strTempSecRemain = String.format("%d", new Object[]{Integer.valueOf(SecRemain)});
        }
        final String strSecRemain = strTempSecRemain;
        runOnUiThread(new Runnable() {
            public void run() {
                MainViewController.this.tv_time_remain.setText(strSecRemain);
            }
        });
    }

    private void ShowModePIC(boolean RecordMode) {
        final boolean bRecordMode = RecordMode;
        runOnUiThread(new Runnable() {
            public void run() {
                if (bRecordMode) {
                    MainViewController.this.imgbtn_mode.setImageResource(R.drawable.mode_dv);
                    MainViewController.this.imgbtn_audio.setVisibility(0);
                    return;
                }
                MainViewController.this.imgbtn_mode.setImageResource(R.drawable.mode_dc);
                MainViewController.this.imgbtn_audio.setVisibility(4);
            }
        });
    }

    private void AnimateAudio(boolean bEnable) {
        final boolean bEnableAudio = bEnable;
        runOnUiThread(new Runnable() {
            public void run() {
                if (bEnableAudio) {
                    MainViewController.this.imgview_audio_status.setVisibility(0);
                } else {
                    MainViewController.this.imgview_audio_status.setVisibility(4);
                }
            }
        });
    }

    private void AnimateRecord(boolean bEnable) {
        if (m_RecordList == null) {
            m_RecordList = new ArrayList();
            RecordRes record0 = new RecordRes();
            record0.RecordResIndex = R.drawable.record_1;
            m_RecordList.add(record0);
            RecordRes record1 = new RecordRes();
            record1.RecordResIndex = R.drawable.record_2;
            m_RecordList.add(record1);
        }
        final boolean bEnableRecord = bEnable;
        runOnUiThread(new Runnable() {
            public void run() {
                if (bEnableRecord) {
                    boolean z;
                    if (MainViewController.isAnimating) {
                        MainViewController.this.imgview_record_status.setImageResource(((RecordRes) MainViewController.m_RecordList.get(1)).RecordResIndex);
                    } else {
                        MainViewController.this.imgview_record_status.setImageResource(((RecordRes) MainViewController.m_RecordList.get(0)).RecordResIndex);
                    }
                    if (MainViewController.isAnimating) {
                        z = false;
                    } else {
                        z = true;
                    }
                    MainViewController.isAnimating = z;
                    return;
                }
                MainViewController.this.imgview_record_status.setImageResource(((RecordRes) MainViewController.m_RecordList.get(0)).RecordResIndex);
                MainViewController.isAnimating = false;
            }
        });
    }

    private String getFirmwareVersion() {
        String strFirmwareVersion = "";
        if (m_xmlGategory != null && m_xmlGategory.size() > 0) {
            for (int i32CategoryIndex = 0; i32CategoryIndex < m_xmlGategory.size(); i32CategoryIndex++) {
                for (int i32SettingIndex = 0; i32SettingIndex < ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.size(); i32SettingIndex++) {
                    if (Long.decode(((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).strXMLSettingID).longValue() == ((long) GPXMLParse.Version_Setting_ID)) {
                        strFirmwareVersion = ((GPXMLValue) ((GPXMLSetting) ((GPXMLCategory) m_xmlGategory.get(i32CategoryIndex)).aryListGPXMLSettings.get(i32SettingIndex)).aryListGPXMLValues.get(GPXMLParse.Version_Value_Index)).strXMLValueName.toString();
                    }
                }
            }
        }
        return strFirmwareVersion;
    }

    private void dismissProgressDialog() {
        if (this.m_Dialog != null && this.m_Dialog.isShowing()) {
            Log.e(TAG, "m_Dialog.dismiss();");
            this.m_Dialog.dismiss();
            this.m_Dialog = null;
        }
    }
}
