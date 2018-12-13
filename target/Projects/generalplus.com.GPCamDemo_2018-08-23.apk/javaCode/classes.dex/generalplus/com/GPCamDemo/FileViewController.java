package generalplus.com.GPCamDemo;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.generalplus.ffmpegLib.ffmpegWrapper;
import com.generalplus.ffmpegLib.ffmpegWrapper.ePlayerStatus;
import generalplus.com.GPCamLib.CamWrapper;

public class FileViewController extends Activity implements Callback {
    private static Thread PlayVLCThread = null;
    private static final int SURFACE_16_9 = 4;
    private static final int SURFACE_4_3 = 5;
    private static final int SURFACE_BEST_FIT = 0;
    private static final int SURFACE_FILL = 3;
    private static final int SURFACE_FIT_HORIZONTAL = 1;
    private static final int SURFACE_FIT_VERTICAL = 2;
    private static final int SURFACE_ORIGINAL = 6;
    private static String TAG = "FileViewController";
    private static final int VideoSizeChanged = -1;
    private static boolean _bIsPause = false;
    private static boolean _bRunVLC = false;
    private static int mSarDen;
    private static int mSarNum;
    private static int mVideoHeight;
    private static int mVideoVisibleHeight;
    private static int mVideoVisibleWidth;
    private static int mVideoWidth;
    private int _FileFlag;
    private int _FileIndex;
    private String _urlToStream;
    private Handler handlerOverlay;
    private ImageButton imgbtn_playpause;
    private int mCurrentSize = 0;
    private long mLastClickTime;
    private GLSurfaceView mSurfaceView;
    private Handler m_FromWrapperHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    FileViewController.this.ParseGPCamStatus(msg.getData());
                    return;
                default:
                    return;
            }
        }
    };
    private Runnable runnableOverlay;
    private final long timeToDisappear = 10000;
    private LinearLayout vlcContainer;
    private FrameLayout vlcOverlay;

    class PlayVLCRunnable implements Runnable {
        private int i32RepeatCount = 30;

        PlayVLCRunnable() {
        }

        public void run() {
            FileViewController._bRunVLC = true;
            if (FileViewController.this._FileFlag == 1) {
                try {
                    ffmpegWrapper.getInstance();
                    ffmpegWrapper.naStop();
                    Thread.sleep(50);
                } catch (InterruptedException e1) {
                    e1.printStackTrace();
                }
            }
            while (FileViewController._bRunVLC && this.i32RepeatCount >= 0) {
                ffmpegWrapper.getInstance();
                if (ffmpegWrapper.naStatus() != ePlayerStatus.E_PlayerStatus_Playing.ordinal()) {
                    ffmpegWrapper.getInstance();
                    ffmpegWrapper.naPlay();
                }
                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                this.i32RepeatCount--;
            }
            FileViewController.PlayVLCThread = null;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_files_vlc_player);
        getWindow().addFlags(128);
        setRequestedOrientation(4);
        this.vlcContainer = (LinearLayout) findViewById(R.id.vlc_container);
        this.mSurfaceView = (GLSurfaceView) findViewById(R.id.vlc_surface);
        this.vlcOverlay = (FrameLayout) findViewById(R.id.vlc_overlay);
        this.imgbtn_playpause = (ImageButton) findViewById(R.id.imgbtn_playpause);
        this.mSurfaceView.setEGLContextClientVersion(2);
        this.mSurfaceView.setRenderer(ffmpegWrapper.getInstance());
        this.mSurfaceView.setKeepScreenOn(true);
    }

    private void setupControls() {
        getActionBar().hide();
        this.vlcContainer.setVisibility(0);
        this.handlerOverlay = new Handler();
        this.runnableOverlay = new Runnable() {
            public void run() {
                FileViewController.this.vlcOverlay.setVisibility(8);
            }
        };
        this.handlerOverlay.postDelayed(this.runnableOverlay, 10000);
        this.vlcOverlay.setVisibility(8);
        toggleFullscreen(true);
        this.vlcContainer.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                if (FileViewController.this.vlcOverlay.getVisibility() == 0) {
                    FileViewController.this.vlcOverlay.setVisibility(8);
                } else {
                    FileViewController.this.vlcOverlay.setVisibility(0);
                }
                FileViewController.this.handlerOverlay.removeCallbacks(FileViewController.this.runnableOverlay);
                FileViewController.this.handlerOverlay.postDelayed(FileViewController.this.runnableOverlay, 10000);
            }
        });
        this.imgbtn_playpause.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                FileViewController.this.stopStreaming();
            }
        });
    }

    private void playLocalFile() {
        ffmpegWrapper.getInstance();
        ffmpegWrapper.naSetStreaming(false);
        ffmpegWrapper.getInstance();
        ffmpegWrapper.naInitAndPlay(this._urlToStream, "");
    }

    private void playVideoStreaming() {
        new Thread(new Runnable() {
            public void run() {
                String urlToStream = "";
                if (MainViewController.m_bRtsp) {
                    urlToStream = String.format(CamWrapper.RTSP_STREAMING_URL, new Object[]{CamWrapper.COMMAND_URL});
                } else {
                    urlToStream = String.format(CamWrapper.STREAMING_URL, new Object[]{CamWrapper.COMMAND_URL});
                }
                ffmpegWrapper.getInstance();
                ffmpegWrapper.naStop();
                CamWrapper.getComWrapperInstance().GPCamSendRestartStreaming();
                CamWrapper.getComWrapperInstance().GPCamSendStartPlayback(FileViewController.this._FileIndex);
                ffmpegWrapper.getInstance();
                ffmpegWrapper.naInitAndPlay(urlToStream, "timeout=-1;stimeout=-1");
            }
        }).start();
    }

    private void playPictureStreaming() {
        new Thread(new Runnable() {
            public void run() {
                String urlToStream = "";
                if (MainViewController.m_bRtsp) {
                    urlToStream = String.format(CamWrapper.RTSP_STREAMING_URL, new Object[]{CamWrapper.COMMAND_URL});
                } else {
                    urlToStream = String.format(CamWrapper.STREAMING_URL, new Object[]{CamWrapper.COMMAND_URL});
                }
                ffmpegWrapper.getInstance();
                ffmpegWrapper.naStop();
                CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
                CamWrapper.getComWrapperInstance().GPCamSendRestartStreaming();
                ffmpegWrapper.getInstance();
                ffmpegWrapper.naInitAndPlay(urlToStream, "");
                for (int i = 0; i < 4; i++) {
                    CamWrapper.getComWrapperInstance().GPCamSendStartPlayback(FileViewController.this._FileIndex);
                }
            }
        }).start();
    }

    private void stopStreaming() {
        boolean z = true;
        if (this._FileFlag == 1 && this._urlToStream.isEmpty()) {
            ffmpegWrapper.getInstance();
            if (ffmpegWrapper.naStatus() == ePlayerStatus.E_PlayerStatus_Playing.ordinal()) {
                CamWrapper.getComWrapperInstance().GPCamSendPausePlayback();
            } else {
                playVideoStreaming();
            }
        } else if (this._FileFlag == 1 && !this._urlToStream.isEmpty()) {
            if (_bIsPause) {
                ffmpegWrapper.getInstance();
                ffmpegWrapper.naResume();
            } else {
                ffmpegWrapper.getInstance();
                ffmpegWrapper.naPause();
            }
            if (_bIsPause) {
                z = false;
            }
            _bIsPause = z;
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

    protected void onResume() {
        super.onResume();
        Bundle b = getIntent().getExtras();
        this._urlToStream = b.getString(CamWrapper.GPFILECALLBACKTYPE_FILEURL, null);
        this._FileFlag = b.getInt(CamWrapper.GPFILECALLBACKTYPE_FILEFLAG, 0);
        this._FileIndex = b.getInt(CamWrapper.GPFILECALLBACKTYPE_FILEINDEX, 0);
        setupControls();
        initStreaming();
        this.imgbtn_playpause.setVisibility(0);
        if (this._urlToStream.isEmpty()) {
            CamWrapper.getComWrapperInstance().SetViewHandler(this.m_FromWrapperHandler, 0);
            ffmpegWrapper.getInstance();
            ffmpegWrapper.naSetStreaming(true);
            if (this._FileFlag == 2) {
                playPictureStreaming();
                this.imgbtn_playpause.setVisibility(4);
            } else {
                playVideoStreaming();
            }
        } else {
            playLocalFile();
        }
        this.mSurfaceView.onResume();
    }

    protected void onPause() {
        Log.e(TAG, "onPause ...");
        super.onPause();
        this.mSurfaceView.onPause();
    }

    private boolean isFastClick() {
        long currentTime = System.currentTimeMillis();
        long time = currentTime - this.mLastClickTime;
        if (0 < time && time < 5000) {
            return true;
        }
        this.mLastClickTime = currentTime;
        return false;
    }

    public void onBackPressed() {
        if (!isFastClick()) {
            super.onBackPressed();
            CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
            if (this._urlToStream.isEmpty()) {
                Log.e(TAG, "GPCamSendStopPlayback ...");
                CamWrapper.getComWrapperInstance().GPCamSendStopPlayback();
                try {
                    Thread.sleep(800);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            Finish();
        }
    }

    private void Finish() {
        Log.e(TAG, "Finish ...");
        ffmpegWrapper.getInstance();
        ffmpegWrapper.naStop();
    }

    public void surfaceCreated(SurfaceHolder holder) {
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int format, int width, int height) {
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder) {
    }

    public void initStreaming() {
        ffmpegWrapper.getInstance();
        if (ffmpegWrapper.naStatus() != ePlayerStatus.E_PlayerStatus_Playing.ordinal()) {
        }
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
                        case 1:
                        case 2:
                            return;
                        default:
                            return;
                    }
                case 1:
                    Log.e(TAG, "GPSOCK_MODE_Record ... ");
                    return;
                case 2:
                    Log.e(TAG, "GPSOCK_MODE_CapturePicture ... ");
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
            switch ((pbyData[0] & 255) + ((pbyData[1] & 255) << 8)) {
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
        ffmpegWrapper.getInstance();
        ffmpegWrapper.naStop();
        Intent intent = new Intent(this, MainActivity.class);
        intent.setFlags(67108864);
        intent.addFlags(536870912);
        startActivity(intent);
    }
}
