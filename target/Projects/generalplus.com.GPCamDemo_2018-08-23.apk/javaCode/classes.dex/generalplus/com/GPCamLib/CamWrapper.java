package generalplus.com.GPCamLib;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

public class CamWrapper {
    public static String COMMAND_URL = "192.168.25.1";
    public static final int COMMAN_PORT = 8081;
    public static final String CamDefaulFolderName = "GoPlusCam";
    public static final String ConfigFileName = "GoPlusCamConf.ini";
    public static final String DEFAULT_MAPPING_STR = "A=MOVI,avi;J=PICT,jpg;L=LOCK,avi;S=SOS0,avi";
    public static final String DefaultParameterFileName = "Default_Menu.xml";
    public static final int Error_FullStorage = 65527;
    public static final int Error_GetFileListFail = 65529;
    public static final int Error_GetThumbnailFail = 65528;
    public static final int Error_InvalidCommand = 65534;
    public static final int Error_LostConnection = 65472;
    public static final int Error_ModeError = 65532;
    public static final int Error_NoFile = 65523;
    public static final int Error_NoStorage = 65531;
    public static final int Error_RequestTimeOut = 65533;
    public static final int Error_ServerIsBusy = 65535;
    public static final int Error_SocketClosed = 65473;
    public static final int Error_WriteFail = 65530;
    public static final String EventMessgae_SMS = "android.provider.Telephony.SMS_RECEIVED";
    public static final String GP22_DEFAULT_MAPPING_STR = "A=MOVI,mov;J=PICT,jpg;L=LOCK,mov;S=SOS0,mov";
    public static final int GPBATTERTY_GHARGE = 5;
    public static final int GPBATTERTY_LEVEL0 = 0;
    public static final int GPBATTERTY_LEVEL1 = 1;
    public static final int GPBATTERTY_LEVEL2 = 2;
    public static final int GPBATTERTY_LEVEL3 = 3;
    public static final int GPBATTERTY_LEVEL4 = 4;
    public static final String GPCALLBACKSTATUSTYPE_CMDID = "CmdID";
    public static final String GPCALLBACKSTATUSTYPE_CMDINDEX = "CmdIndex";
    public static final String GPCALLBACKSTATUSTYPE_CMDMODE = "CmdMode";
    public static final String GPCALLBACKSTATUSTYPE_CMDTYPE = "CmdType";
    public static final String GPCALLBACKSTATUSTYPE_DATA = "Data";
    public static final String GPCALLBACKSTATUSTYPE_DATASIZE = "DataSize";
    public static final int GPCALLBACKTYPE_CAMDATA = 1;
    public static final int GPCALLBACKTYPE_CAMSTATUS = 0;
    public static final int GPDEVICEMODE_Capture = 1;
    public static final int GPDEVICEMODE_Menu = 3;
    public static final int GPDEVICEMODE_Playback = 2;
    public static final int GPDEVICEMODE_Record = 0;
    public static final int GPDEVICEMODE_USB = 4;
    public static final String GPFILECALLBACKTYPE_FILEFLAG = "FileFlag";
    public static final String GPFILECALLBACKTYPE_FILEINDEX = "FileIndex";
    public static final String GPFILECALLBACKTYPE_FILEURL = "FileURL";
    public static final int GPFILEFLAG_AVISTREAMING = 1;
    public static final int GPFILEFLAG_JPGSTREAMING = 2;
    public static final int GPSOCK_CapturePicture_CMD_Capture = 0;
    public static final int GPSOCK_Firmware_CMD_Download = 0;
    public static final int GPSOCK_Firmware_CMD_SendRawData = 1;
    public static final int GPSOCK_Firmware_CMD_Upgrade = 2;
    public static final int GPSOCK_General_CMD_AuthDevice = 5;
    public static final int GPSOCK_General_CMD_GetDeviceStatus = 1;
    public static final int GPSOCK_General_CMD_GetParameterFile = 2;
    public static final int GPSOCK_General_CMD_Poweroff = 3;
    public static final int GPSOCK_General_CMD_RestartStreaming = 4;
    public static final int GPSOCK_General_CMD_SetMode = 0;
    public static final int GPSOCK_MODE_CapturePicture = 2;
    public static final int GPSOCK_MODE_Firmware = 5;
    public static final int GPSOCK_MODE_General = 0;
    public static final int GPSOCK_MODE_Menu = 4;
    public static final int GPSOCK_MODE_Playback = 3;
    public static final int GPSOCK_MODE_Record = 1;
    public static final int GPSOCK_MODE_Vendor = 255;
    public static final int GPSOCK_Menu_CMD_GetParameter = 0;
    public static final int GPSOCK_Menu_CMD_SetParameter = 1;
    public static final int GPSOCK_Playback_CMD_DeleteFile = 8;
    public static final int GPSOCK_Playback_CMD_ERROR = 255;
    public static final int GPSOCK_Playback_CMD_GetFileCount = 2;
    public static final int GPSOCK_Playback_CMD_GetNameList = 3;
    public static final int GPSOCK_Playback_CMD_GetRawData = 5;
    public static final int GPSOCK_Playback_CMD_GetSpecficName = 7;
    public static final int GPSOCK_Playback_CMD_GetThumbnail = 4;
    public static final int GPSOCK_Playback_CMD_Pause = 1;
    public static final int GPSOCK_Playback_CMD_Start = 0;
    public static final int GPSOCK_Playback_CMD_Stop = 6;
    public static final int GPSOCK_Record_CMD_Audio = 1;
    public static final int GPSOCK_Record_CMD_Start = 0;
    public static final int GPSOCK_Vendor_CMD_Vendor = 0;
    public static final int GPTYPE_ConnectionStatus_Connected = 2;
    public static final int GPTYPE_ConnectionStatus_Connecting = 1;
    public static final int GPTYPE_ConnectionStatus_DisConnected = 3;
    public static final int GPTYPE_ConnectionStatus_Idle = 0;
    public static final int GPTYPE_ConnectionStatus_SocketClosed = 10;
    public static final int GPVIEW_FILELIST = 2;
    public static final int GPVIEW_MENU = 1;
    public static final int GPVIEW_STREAMING = 0;
    public static final int GP_SOCK_TYPE_ACK = 2;
    public static final int GP_SOCK_TYPE_CMD = 1;
    public static final int GP_SOCK_TYPE_NAK = 3;
    public static final String ParameterFileName = "Menu.xml";
    public static final String RTSP_STREAMING_URL = "rtsp://%s:8080/?action=stream";
    public static final int STREAMING_PORT = 8080;
    public static final String STREAMING_URL = "http://%s:8080/?action=stream";
    public static final String SaveFileToDevicePath = "/DCIM/Camera/";
    public static final String SaveLogFileName = "GoPlusCamCmdLog";
    public static final int SupportMaxLogLength = 65536;
    public static final int SupportMaxShowLogLength = 200;
    private static final String TAG = "CamWrapper";
    public static boolean bIsDefault = false;
    private static CamWrapper m_ComWrapperInstance;
    private static Handler m_NowViewHandler;
    private static int m_NowViewIndex;
    private static String m_ParameterFileName;
    private static String m_ParameterFilePath;
    private static boolean m_bNewFile = false;

    private native int GPCamSendGetParameterFile(String str);

    private native void GPCamSetDownloadPath(String str);

    public native int GPCamAbort(int i);

    public native void GPCamClearCommandQueue();

    public native int GPCamConnectToDevice(String str, int i);

    public native void GPCamDisconnect();

    public native byte GPCamGetFileExt(int i);

    public native byte[] GPCamGetFileExtraInfo(int i);

    public native int GPCamGetFileIndex(int i);

    public native String GPCamGetFileName(int i);

    public native int GPCamGetFileSize(int i);

    public native boolean GPCamGetFileTime(int i, byte[] bArr);

    public native int GPCamGetStatus();

    public native int GPCamSendAudioOnOff(boolean z);

    public native int GPCamSendCapturePicture();

    public native int GPCamSendDeleteFile(int i);

    public native int GPCamSendFirmwareDownload(long j, long j2);

    public native int GPCamSendFirmwareRawData(long j, byte[] bArr);

    public native int GPCamSendFirmwareUpgrade();

    public native int GPCamSendGetFileRawdata(int i);

    public native int GPCamSendGetFileThumbnail(int i);

    public native int GPCamSendGetFullFileList();

    public native int GPCamSendGetParameter(int i);

    public native int GPCamSendGetStatus();

    public native int GPCamSendPausePlayback();

    public native int GPCamSendPowerOff();

    public native int GPCamSendRecordCmd();

    public native int GPCamSendRestartStreaming();

    public native int GPCamSendSetMode(int i);

    public native int GPCamSendSetParameter(int i, int i2, byte[] bArr);

    public native int GPCamSendStartPlayback(int i);

    public native int GPCamSendStopPlayback();

    public native int GPCamSendVendorCmd(byte[] bArr, int i);

    public native boolean GPCamSetFileNameMapping(String str);

    public native int GPCamSetNextPlaybackFileListIndex(int i);

    static {
        try {
            Log.i(TAG, "Trying to load GPCam.so ...");
            System.loadLibrary("GPCam");
        } catch (UnsatisfiedLinkError Ule) {
            Log.e(TAG, "Cannot load GPCam.so ...");
            Ule.printStackTrace();
        }
    }

    public CamWrapper() {
        m_ComWrapperInstance = this;
    }

    public void SetViewHandler(Handler ViewHandler, int ViewIndex) {
        m_NowViewHandler = ViewHandler;
        m_NowViewIndex = ViewIndex;
    }

    public static CamWrapper getComWrapperInstance() {
        return m_ComWrapperInstance;
    }

    void GPCamDataCallBack(boolean bIsWrite, int i32DataSize, byte[] pbyData) {
    }

    void GPCamStatusCallBack(int i32CMDIndex, int i32Type, int i32Mode, int i32CMDID, int i32DataSize, byte[] pbyData) {
        if (m_NowViewHandler != null) {
            Message msg = new Message();
            msg.what = 0;
            Bundle bundle = new Bundle();
            bundle.putInt(GPCALLBACKSTATUSTYPE_CMDINDEX, i32CMDIndex);
            bundle.putInt(GPCALLBACKSTATUSTYPE_CMDTYPE, i32Type);
            bundle.putInt(GPCALLBACKSTATUSTYPE_CMDMODE, i32Mode);
            bundle.putInt(GPCALLBACKSTATUSTYPE_CMDID, i32CMDID);
            bundle.putInt(GPCALLBACKSTATUSTYPE_DATASIZE, i32DataSize);
            bundle.putByteArray(GPCALLBACKSTATUSTYPE_DATA, pbyData);
            msg.setData(bundle);
            m_NowViewHandler.sendMessage(msg);
        }
    }

    public void SetGPCamSetDownloadPath(String FilePath) {
        m_ParameterFilePath = FilePath;
        GPCamSetDownloadPath(m_ParameterFilePath);
    }

    public String GetGPCamSetDownloadPath() {
        return m_ParameterFilePath;
    }

    public void SetGPCamSendGetParameterFile(String FileName) {
        m_ParameterFileName = FileName;
        GPCamSendGetParameterFile(m_ParameterFileName);
    }

    public String GetGPCamSendGetParameterFile() {
        return m_ParameterFileName;
    }

    public void setIsNewFile(boolean bNewFile) {
        m_bNewFile = bNewFile;
    }

    public boolean getIsNewFile() {
        return m_bNewFile;
    }
}
