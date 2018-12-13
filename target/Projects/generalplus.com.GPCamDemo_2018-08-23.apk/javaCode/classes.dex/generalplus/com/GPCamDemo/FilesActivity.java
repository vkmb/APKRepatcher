package generalplus.com.GPCamDemo;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import generalplus.com.GPCamLib.CamWrapper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;

public class FilesActivity extends Activity {
    public static final int DownloadFlag_Completed = 3;
    public static final int DownloadFlag_Downloading = 1;
    public static final int DownloadFlag_Init = 0;
    public static final int DownloadFlag_Stopping = 2;
    public static final int FileFlag_AVIStreaming = 1;
    public static final int FileFlag_JPGStreaming = 2;
    public static final int FileFlag_LocalFile = 3;
    public static final int FileFlag_Unknown = 0;
    private static final int FileTag_FileBroken = 166;
    public static final int FileTag_FileCount = 0;
    private static final int FileTag_FileDeviceInit = 160;
    private static final int FileTag_FileDeviceReady = 161;
    private static final int FileTag_FileDownload = 164;
    private static final int FileTag_FileGettingThumbnail = 162;
    private static final int FileTag_FileGotThumbnail = 163;
    private static final int FileTag_FileGotThumbnailEnd = 167;
    public static final int FileTag_FileName = 1;
    private static final int FileTag_FilePalying = 165;
    private static final String TAG = "FilesActivity";
    private static boolean _bSetModeDone = false;
    private static int _i32GettingThumbnailFileIndex = -1;
    private static boolean bIsStopUpdateThumbnail = false;
    private static boolean bSaveImageItem = false;
    private static ArrayList<HashMap<String, Object>> listImageItem = null;
    private static ProgressDialog m_DownloadDialog = null;
    private static FilesActivity m_FilesActivityInstance;
    private static Thread m_UpdateGridVierThread = null;
    private static Thread m_UpdateThumbnailThread = null;
    public static boolean m_bCanDeleteSDFile = false;
    private static boolean m_bPendingGetThumbnail = false;
    private static boolean m_bRunCreateGridViewDone = false;
    private static int m_i32DownlaodStatus = 3;
    private CharSequence[] CharSequenceItemsDefault = new String[3];
    private CharSequence[] CharSequenceItemsDelete = new String[3];
    private CharSequence[] CharSequenceItemsSDdelete = new String[4];
    private final String MAPKEY_FileName = "FileName";
    private final String MAPKEY_FileSize = "FileSize";
    private final String MAPKEY_FileStatus = "FileStatus";
    private final String MAPKEY_FileTime = "FileTime";
    private final String MAPKEY_ThumbnailFilePath = "ThumbnailFilePath";
    private boolean _bUserLeaveHint = true;
    private int _firstVisibleItem = 0;
    private int _i32CommandIndex = 0;
    private int _i32ErrorCount = 0;
    private int _i32GotThumbnailFileIndex = -1;
    private int _i32SelectedFirstItem = -1;
    private int _i32WaitGettingThumbnailCount = 0;
    private int _scrollState = 0;
    private boolean bIsCopingFile = false;
    private int i32GetThumbnailCount = 0;
    private long mLastClickTime;
    private Context m_Context;
    private ProgressDialog m_Dialog = null;
    private Handler m_FromWrapperHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0:
                    FilesActivity.this.ParseGPCamStatus(msg.getData());
                    return;
                default:
                    return;
            }
        }
    };
    private GridView m_Gridview;
    private boolean[] m_bCheckboxArray = new boolean[]{false, true};
    private Handler m_handler = null;
    private int m_iDeleteSDposition = -1;
    private SimpleAdapter m_saImageItems;
    private String strDevicePICLocation = "";

    class UpdateGridViewRunnable implements Runnable {
        UpdateGridViewRunnable() {
        }

        public void run() {
            Log.e(FilesActivity.TAG, "UpdateGridViewRunnable ...");
            while (FilesActivity.m_UpdateThumbnailThread != null) {
                FilesActivity.this.m_handler.post(new Runnable() {
                    public void run() {
                        if (FilesActivity.listImageItem.size() >= 0) {
                            FilesActivity.this.UpdateGridView();
                        }
                    }
                });
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            FilesActivity.this.m_handler.post(new Runnable() {
                public void run() {
                    if (FilesActivity.listImageItem.size() >= 0) {
                        FilesActivity.this.UpdateGridView();
                    }
                }
            });
            Log.e(FilesActivity.TAG, "UpdateGridViewRunnable ... Done");
            FilesActivity.m_UpdateGridVierThread = null;
        }
    }

    class UpdateThumbnailRunnable implements Runnable {
        UpdateThumbnailRunnable() {
            Log.e(FilesActivity.TAG, "Create UpdateThumbnailRunnable ... ");
            if (FilesActivity.m_UpdateGridVierThread == null) {
                FilesActivity.m_UpdateGridVierThread = new Thread(new UpdateGridViewRunnable());
                FilesActivity.m_UpdateGridVierThread.start();
            }
            FilesActivity.bIsStopUpdateThumbnail = false;
            FilesActivity.m_bPendingGetThumbnail = false;
        }

        public void run() {
            while (!FilesActivity.m_bRunCreateGridViewDone && !FilesActivity.bIsStopUpdateThumbnail) {
                if (!FilesActivity.m_bPendingGetThumbnail) {
                    try {
                        Thread.sleep(50);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    synchronized (FilesActivity.listImageItem) {
                        FilesActivity.m_bRunCreateGridViewDone = false;
                        int index = 0;
                        if (CamWrapper.getComWrapperInstance().getIsNewFile() && -1 != FilesActivity.this._i32SelectedFirstItem) {
                            index = FilesActivity.this._i32SelectedFirstItem;
                        }
                        int i = index;
                        while (i < FilesActivity.listImageItem.size()) {
                            HashMap<String, Object> map = (HashMap) FilesActivity.listImageItem.get(i);
                            if (map.get("FileStatus") != null) {
                                if (((Integer) map.get("FileStatus")).intValue() == FilesActivity.FileTag_FileDeviceReady || ((Integer) map.get("FileStatus")).intValue() == FilesActivity.FileTag_FileDeviceInit) {
                                    if (CamWrapper.getComWrapperInstance().getIsNewFile() && -1 == CamWrapper.getComWrapperInstance().GPCamGetFileIndex(i)) {
                                        CamWrapper.getComWrapperInstance().GPCamSetNextPlaybackFileListIndex(i);
                                        try {
                                            Thread.sleep(2000);
                                        } catch (InterruptedException e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                    CamWrapper.getComWrapperInstance().GPCamSendGetFileThumbnail(i);
                                    FilesActivity._i32GettingThumbnailFileIndex = i;
                                    map.put("FileStatus", Integer.valueOf(FilesActivity.FileTag_FileGettingThumbnail));
                                    FilesActivity.listImageItem.set(i, map);
                                    Log.e(FilesActivity.TAG, "i = " + i + ", FileTag_FileGettingThumbnail...");
                                } else if (((Integer) map.get("FileStatus")).intValue() == FilesActivity.FileTag_FileGettingThumbnail) {
                                    FilesActivity.this._i32WaitGettingThumbnailCount = FilesActivity.this._i32WaitGettingThumbnailCount + 1;
                                    if (FilesActivity.this._i32WaitGettingThumbnailCount > 100) {
                                        FilesActivity.this._i32WaitGettingThumbnailCount = 0;
                                        if (CamWrapper.getComWrapperInstance().getIsNewFile() && -1 == CamWrapper.getComWrapperInstance().GPCamGetFileIndex(i)) {
                                            CamWrapper.getComWrapperInstance().GPCamSetNextPlaybackFileListIndex(i);
                                            try {
                                                Thread.sleep(2000);
                                            } catch (InterruptedException e22) {
                                                e22.printStackTrace();
                                            }
                                        }
                                        CamWrapper.getComWrapperInstance().GPCamSendGetFileThumbnail(i);
                                        map.put("FileStatus", Integer.valueOf(FilesActivity.FileTag_FileGettingThumbnail));
                                        FilesActivity.listImageItem.set(i, map);
                                    }
                                    FilesActivity._i32GettingThumbnailFileIndex = i;
                                } else if (((Integer) map.get("FileStatus")).intValue() == FilesActivity.FileTag_FileGotThumbnail) {
                                    FilesActivity.this._i32WaitGettingThumbnailCount = 0;
                                    map.put("FileStatus", Integer.valueOf(FilesActivity.FileTag_FileGotThumbnailEnd));
                                    FilesActivity.listImageItem.set(i, map);
                                    FilesActivity.this._i32GotThumbnailFileIndex = i;
                                    FilesActivity.m_bRunCreateGridViewDone = false;
                                    if (i == FilesActivity.listImageItem.size() - 1) {
                                        FilesActivity.m_bRunCreateGridViewDone = true;
                                    }
                                } else if (((Integer) map.get("FileStatus")).intValue() == FilesActivity.FileTag_FileBroken) {
                                    map.put("ThumbnailFilePath", Integer.valueOf(R.drawable.broken));
                                    FilesActivity.listImageItem.set(i, map);
                                    FilesActivity.this._i32GotThumbnailFileIndex = i;
                                    FilesActivity.m_bRunCreateGridViewDone = false;
                                    if (i == FilesActivity.listImageItem.size() - 1) {
                                        FilesActivity.m_bRunCreateGridViewDone = true;
                                    }
                                }
                            }
                            i++;
                        }
                    }
                }
            }
            Log.e(FilesActivity.TAG, "m_UpdateThumbnailThread = null");
            FilesActivity.this.UpdateGridView();
            FilesActivity.m_UpdateThumbnailThread = null;
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.CharSequenceItemsDefault[0] = getResources().getString(R.string.Play);
        this.CharSequenceItemsDefault[1] = getResources().getString(R.string.Download);
        this.CharSequenceItemsDefault[2] = getResources().getString(R.string.Info);
        this.CharSequenceItemsDelete[0] = getResources().getString(R.string.Play);
        this.CharSequenceItemsDelete[1] = getResources().getString(R.string.Delete);
        this.CharSequenceItemsDelete[2] = getResources().getString(R.string.Info);
        this.CharSequenceItemsSDdelete[0] = getResources().getString(R.string.Play);
        this.CharSequenceItemsSDdelete[1] = getResources().getString(R.string.Download);
        this.CharSequenceItemsSDdelete[2] = getResources().getString(R.string.Delete);
        this.CharSequenceItemsSDdelete[3] = getResources().getString(R.string.Info);
        setContentView(R.layout.activity_files);
        setRequestedOrientation(4);
        this.m_Context = this;
        getWindow().addFlags(128);
        this.strDevicePICLocation = Environment.getExternalStorageDirectory().getPath() + CamWrapper.SaveFileToDevicePath;
        if (this.m_handler == null) {
            this.m_handler = new Handler();
        }
        this.m_Gridview = (GridView) findViewById(R.id.gridView1);
        this.m_Gridview.setOnScrollListener(new OnScrollListener() {
            public void onScrollStateChanged(AbsListView view, int scrollState) {
                FilesActivity.this._scrollState = scrollState;
                if (scrollState == 0 && FilesActivity.this._i32SelectedFirstItem != FilesActivity.this._firstVisibleItem) {
                    FilesActivity.this._i32SelectedFirstItem = FilesActivity.this._firstVisibleItem;
                    FilesActivity.this.m_Gridview.setSelection(FilesActivity.this._i32SelectedFirstItem);
                    FilesActivity.m_bRunCreateGridViewDone = false;
                    if (FilesActivity.m_UpdateThumbnailThread != null) {
                        FilesActivity.m_UpdateThumbnailThread.interrupt();
                        FilesActivity.m_UpdateThumbnailThread = null;
                    }
                    FilesActivity.m_UpdateThumbnailThread = new Thread(new UpdateThumbnailRunnable());
                    FilesActivity.m_UpdateThumbnailThread.start();
                }
            }

            public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
                FilesActivity.this._firstVisibleItem = firstVisibleItem;
                Log.d("tag", "onScroll = " + firstVisibleItem);
            }
        });
        this.m_Gridview.setOnItemClickListener(new OnItemClickListener() {
            private CharSequence[] SetCharSequenceItems = null;
            private AdapterView m_Paramet;
            private long m_i64ID;
            private String strStreamFilePath = "";

            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                this.m_Paramet = parent;
                this.m_i64ID = id;
                if (position >= FilesActivity.listImageItem.size()) {
                    Log.d(FilesActivity.TAG, "position >= listImageItem.size()");
                    return;
                }
                final HashMap<String, Object> map = (HashMap) FilesActivity.listImageItem.get(position);
                int iFileStatus = ((Integer) map.get("FileStatus")).intValue();
                if (iFileStatus == FilesActivity.FileTag_FileGotThumbnail || iFileStatus == FilesActivity.FileTag_FileGotThumbnailEnd) {
                    if (FilesActivity.m_bCanDeleteSDFile) {
                        this.SetCharSequenceItems = FilesActivity.this.CharSequenceItemsSDdelete;
                    } else {
                        this.SetCharSequenceItems = FilesActivity.this.CharSequenceItemsDefault;
                    }
                    this.strStreamFilePath = "";
                    File dir = new File(FilesActivity.this.strDevicePICLocation + map.get("FileName"));
                    boolean bFileExist = false;
                    Log.e(FilesActivity.TAG, "dir.exists() = " + dir.exists() + ",dir.length() = " + dir.length() + ", dir.length() / 1024 = " + (dir.length() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + ", MAPKEY_FileSize = " + map.get("FileSize"));
                    if (dir.exists() && dir.length() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID == ((long) ((Integer) map.get("FileSize")).intValue())) {
                        this.SetCharSequenceItems = FilesActivity.this.CharSequenceItemsDelete;
                        this.strStreamFilePath = FilesActivity.this.strDevicePICLocation + map.get("FileName");
                        bFileExist = true;
                    }
                    final boolean fbFileExist = bFileExist;
                    Builder ChoseAlertDialog = new Builder(FilesActivity.this.m_Context);
                    ChoseAlertDialog.setNegativeButton(FilesActivity.this.getResources().getString(R.string.Cancel), new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.cancel();
                        }
                    });
                    final int i = position;
                    ChoseAlertDialog.setItems(this.SetCharSequenceItems, new OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            HashMap<String, Object> item = (HashMap) AnonymousClass2.this.m_Paramet.getItemAtPosition(i);
                            if (AnonymousClass2.this.SetCharSequenceItems[which].toString().contentEquals(FilesActivity.this.getResources().getString(R.string.Play))) {
                                if (!FilesActivity.this.IsDownloading()) {
                                    FilesActivity.this._bUserLeaveHint = false;
                                    FilesActivity.bIsStopUpdateThumbnail = true;
                                    FilesActivity.bSaveImageItem = true;
                                    Intent toVlcPlayer;
                                    Bundle b;
                                    if (!map.get("FileName").toString().contains(".jpg")) {
                                        toVlcPlayer = new Intent(FilesActivity.this, FileViewController.class);
                                        b = new Bundle();
                                        b.putString(CamWrapper.GPFILECALLBACKTYPE_FILEURL, AnonymousClass2.this.strStreamFilePath);
                                        b.putInt(CamWrapper.GPFILECALLBACKTYPE_FILEFLAG, 1);
                                        b.putInt(CamWrapper.GPFILECALLBACKTYPE_FILEINDEX, i);
                                        toVlcPlayer.putExtras(b);
                                        FilesActivity.this.startActivity(toVlcPlayer);
                                    } else if (AnonymousClass2.this.strStreamFilePath.isEmpty()) {
                                        toVlcPlayer = new Intent(FilesActivity.this, FileViewController.class);
                                        b = new Bundle();
                                        b.putString(CamWrapper.GPFILECALLBACKTYPE_FILEURL, AnonymousClass2.this.strStreamFilePath);
                                        b.putInt(CamWrapper.GPFILECALLBACKTYPE_FILEFLAG, 2);
                                        b.putInt(CamWrapper.GPFILECALLBACKTYPE_FILEINDEX, i);
                                        toVlcPlayer.putExtras(b);
                                        FilesActivity.this.startActivity(toVlcPlayer);
                                    } else {
                                        ImageView iv = new ImageView(FilesActivity.this.m_Context);
                                        try {
                                            iv.setImageURI(Uri.parse(AnonymousClass2.this.strStreamFilePath));
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        } catch (OutOfMemoryError e2) {
                                            e2.printStackTrace();
                                        }
                                        Builder ShowImgAlertDialog = new Builder(FilesActivity.this.m_Context);
                                        ShowImgAlertDialog.setView(iv);
                                        ShowImgAlertDialog.setNegativeButton(FilesActivity.this.getResources().getString(R.string.Cancel), new OnClickListener() {
                                            public void onClick(DialogInterface dialog, int which) {
                                                FilesActivity.bIsStopUpdateThumbnail = false;
                                            }
                                        });
                                        ShowImgAlertDialog.show();
                                    }
                                }
                            } else if (AnonymousClass2.this.SetCharSequenceItems[which].toString().contentEquals(FilesActivity.this.getResources().getString(R.string.Download))) {
                                if (!FilesActivity.this.IsDownloading()) {
                                    FilesActivity.m_bPendingGetThumbnail = true;
                                    if (FilesActivity.m_DownloadDialog == null) {
                                        FilesActivity.m_DownloadDialog = new ProgressDialog(FilesActivity.this.m_Context);
                                        FilesActivity.m_DownloadDialog.setMessage(FilesActivity.this.getResources().getString(R.string.Downloading));
                                        FilesActivity.m_DownloadDialog.setCanceledOnTouchOutside(false);
                                        FilesActivity.m_DownloadDialog.setMax(100);
                                        FilesActivity.m_DownloadDialog.setProgressStyle(1);
                                        FilesActivity.m_DownloadDialog.setButton(-2, FilesActivity.this.getResources().getString(R.string.Abort), new OnClickListener() {
                                            public void onClick(DialogInterface dialog, int which) {
                                                if (!FilesActivity.this.bIsCopingFile) {
                                                    new File(FilesActivity.this.strDevicePICLocation + map.get("FileName")).delete();
                                                }
                                                FilesActivity.m_DownloadDialog = null;
                                                CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
                                                CamWrapper.getComWrapperInstance().GPCamAbort(FilesActivity.this._i32CommandIndex);
                                                CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
                                            }
                                        });
                                        FilesActivity.m_DownloadDialog.setOnCancelListener(new OnCancelListener() {
                                            public void onCancel(DialogInterface dialog) {
                                                if (!FilesActivity.this.bIsCopingFile) {
                                                    new File(FilesActivity.this.strDevicePICLocation + map.get("FileName")).delete();
                                                }
                                                FilesActivity.m_DownloadDialog = null;
                                                CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
                                                CamWrapper.getComWrapperInstance().GPCamAbort(FilesActivity.this._i32CommandIndex);
                                                CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
                                            }
                                        });
                                        FilesActivity.m_DownloadDialog.show();
                                    }
                                    FilesActivity.m_i32DownlaodStatus = 0;
                                    CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
                                    CamWrapper.getComWrapperInstance().GPCamSendGetFileRawdata(i);
                                }
                            } else if (AnonymousClass2.this.SetCharSequenceItems[which].toString().contentEquals(FilesActivity.this.getResources().getString(R.string.Info))) {
                                if (!FilesActivity.this.IsDownloading()) {
                                    String strFileTime = (String) map.get("FileTime");
                                    Builder InfoAlertDialog = new Builder(FilesActivity.this.m_Context);
                                    String strInfoMsg = "";
                                    String strTime = "";
                                    strInfoMsg = "Name: " + map.get("FileName") + "\nTime: " + ("20" + strFileTime.substring(0, 2) + "/" + strFileTime.substring(2, 4) + "/" + strFileTime.substring(4, 6) + " " + strFileTime.substring(6, 8) + ":" + strFileTime.substring(8, 10) + ":" + strFileTime.substring(10, 12)) + "\nSize: " + String.valueOf(map.get("FileSize"));
                                    InfoAlertDialog.setTitle(FilesActivity.this.getResources().getString(R.string.Info));
                                    InfoAlertDialog.setMessage(strInfoMsg);
                                    InfoAlertDialog.setCancelable(true);
                                    InfoAlertDialog.show();
                                }
                            } else if (!AnonymousClass2.this.SetCharSequenceItems[which].toString().contentEquals(FilesActivity.this.getResources().getString(R.string.Delete))) {
                            } else {
                                if (FilesActivity.m_bCanDeleteSDFile) {
                                    Builder builder = new Builder(FilesActivity.this.m_Context);
                                    if (fbFileExist) {
                                        builder.setMultiChoiceItems(new String[]{FilesActivity.this.getResources().getString(R.string.Delete_SD_File), FilesActivity.this.getResources().getString(R.string.Delete_Phone_File)}, FilesActivity.this.m_bCheckboxArray, new OnMultiChoiceClickListener() {
                                            public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                                                if (1 == which) {
                                                    ((AlertDialog) dialog).getListView().setItemChecked(which, true);
                                                    FilesActivity.this.m_bCheckboxArray[which] = true;
                                                }
                                            }
                                        });
                                    } else {
                                        FilesActivity.this.m_bCheckboxArray[0] = true;
                                        builder.setMultiChoiceItems(new String[]{FilesActivity.this.getResources().getString(R.string.Delete_SD_File)}, new boolean[]{true}, new OnMultiChoiceClickListener() {
                                            public void onClick(DialogInterface dialog, int which, boolean isChecked) {
                                                if (which == 0) {
                                                    ((AlertDialog) dialog).getListView().setItemChecked(which, true);
                                                }
                                            }
                                        });
                                    }
                                    builder.setPositiveButton(R.string.Yes, new OnClickListener() {
                                        public void onClick(DialogInterface dialog, int which) {
                                            Log.e(FilesActivity.TAG, "1= " + FilesActivity.this.m_bCheckboxArray[0] + ", 2= " + FilesActivity.this.m_bCheckboxArray[1]);
                                            if (fbFileExist) {
                                                File deviceDirDelete = new File(FilesActivity.this.strDevicePICLocation + map.get("FileName"));
                                                deviceDirDelete.delete();
                                                FilesActivity.this.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + deviceDirDelete.getAbsolutePath())));
                                            }
                                            if (FilesActivity.this.m_bCheckboxArray[0]) {
                                                if (FilesActivity.this.m_Dialog != null && FilesActivity.this.m_Dialog.isShowing()) {
                                                    FilesActivity.this.m_Dialog.dismiss();
                                                    FilesActivity.this.m_Dialog = null;
                                                }
                                                FilesActivity.this.m_Dialog = new ProgressDialog(FilesActivity.this.m_Context);
                                                FilesActivity.this.m_Dialog.setMessage(FilesActivity.this.getResources().getString(R.string.Delete_SD_File));
                                                FilesActivity.this.m_Dialog.setCanceledOnTouchOutside(false);
                                                FilesActivity.this.m_Dialog.show();
                                                FilesActivity.this.m_iDeleteSDposition = i;
                                                FilesActivity.m_bPendingGetThumbnail = true;
                                                CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
                                                CamWrapper.getComWrapperInstance().GPCamSendDeleteFile(i);
                                            }
                                        }
                                    }).setNegativeButton(R.string.No, null);
                                    builder.create().show();
                                    return;
                                }
                                File deviceDirDelete = new File(FilesActivity.this.strDevicePICLocation + map.get("FileName"));
                                deviceDirDelete.delete();
                                FilesActivity.this.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + deviceDirDelete.getAbsolutePath())));
                            }
                        }
                    });
                    ChoseAlertDialog.setCancelable(false);
                    ChoseAlertDialog.show();
                }
            }
        });
        if (bSaveImageItem) {
            _bSetModeDone = false;
            CamWrapper.getComWrapperInstance().GPCamSendSetMode(2);
            CamWrapper.getComWrapperInstance().GPCamSendGetFullFileList();
            m_bRunCreateGridViewDone = false;
            if (m_UpdateThumbnailThread == null) {
                m_UpdateThumbnailThread = new Thread(new UpdateThumbnailRunnable());
                m_UpdateThumbnailThread.start();
                return;
            }
            return;
        }
        if (listImageItem == null) {
            listImageItem = new ArrayList();
        }
        listImageItem.clear();
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        _bSetModeDone = false;
        CamWrapper.getComWrapperInstance().GPCamSendSetMode(2);
        CamWrapper.getComWrapperInstance().GPCamSendGetFullFileList();
    }

    public static FilesActivity getInstance() {
        return m_FilesActivityInstance;
    }

    private void UpdateGridView() {
        runOnUiThread(new Runnable() {
            public void run() {
                if (FilesActivity.this.m_saImageItems == null) {
                    if (FilesActivity.listImageItem != null) {
                        FilesActivity.this.m_saImageItems = new SimpleAdapter(FilesActivity.this.m_Context, FilesActivity.listImageItem, R.layout.files_program_list, new String[]{"ThumbnailFilePath", "FileName"}, new int[]{R.id.imageView1, R.id.textView1});
                        FilesActivity.this.m_Gridview.setAdapter(FilesActivity.this.m_saImageItems);
                    } else {
                        return;
                    }
                }
                FilesActivity.this.m_saImageItems.notifyDataSetChanged();
            }
        });
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

    private boolean IsDownloading() {
        if (m_i32DownlaodStatus != 1 && m_i32DownlaodStatus != 2) {
            return false;
        }
        runOnUiThread(new Runnable() {
            public void run() {
                Toast.makeText(FilesActivity.this.m_Context, FilesActivity.this.getResources().getString(R.string.Download_wait), 0).show();
            }
        });
        return true;
    }

    public void onBackPressed() {
        Log.e(TAG, "onBackPressed ...");
        if (_bSetModeDone && !isFastClick() && !IsDownloading()) {
            exitFileActivity();
            super.onBackPressed();
        }
    }

    private void exitFileActivity() {
        if (!(m_UpdateThumbnailThread == null && m_UpdateGridVierThread == null)) {
            bIsStopUpdateThumbnail = true;
            try {
                Thread.sleep(800);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        m_UpdateThumbnailThread = null;
        m_UpdateGridVierThread = null;
        bSaveImageItem = false;
        CamWrapper.getComWrapperInstance().GPCamClearCommandQueue();
    }

    protected void onResume() {
        Log.e(TAG, "onResume ...");
        super.onResume();
        bIsStopUpdateThumbnail = false;
        CamWrapper.getComWrapperInstance().SetViewHandler(this.m_FromWrapperHandler, 2);
        if (listImageItem != null && m_UpdateThumbnailThread == null) {
            m_UpdateThumbnailThread = new Thread(new UpdateThumbnailRunnable());
            m_UpdateThumbnailThread.start();
        }
    }

    protected void onDestroy() {
        Log.e(TAG, "onDestroy ...");
        if (m_DownloadDialog != null && m_DownloadDialog.isShowing()) {
            m_DownloadDialog.dismiss();
            m_DownloadDialog = null;
        }
        if (!bSaveImageItem) {
            deleteDir(new File(Environment.getExternalStorageDirectory().getPath() + "/" + CamWrapper.CamDefaulFolderName));
            m_i32DownlaodStatus = 3;
        }
        super.onDestroy();
    }

    protected void onUserLeaveHint() {
        Log.e(TAG, "onUserLeaveHint ...");
        this._bUserLeaveHint = true;
        super.onUserLeaveHint();
    }

    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    private void copyFile(String inputPath, String OutputPath) {
        FileNotFoundException fnfe1;
        InputStream inputStream;
        Exception e;
        OutputStream outputStream;
        try {
            OutputStream out;
            File dir = new File(OutputPath);
            if (dir.exists() && dir.isFile()) {
                dir.delete();
            }
            InputStream in = new FileInputStream(inputPath);
            try {
                out = new FileOutputStream(OutputPath);
            } catch (FileNotFoundException e2) {
                fnfe1 = e2;
                inputStream = in;
                Log.e(TAG, fnfe1.getMessage());
            } catch (Exception e3) {
                e = e3;
                inputStream = in;
                Log.e(TAG, e.getMessage());
            }
            try {
                byte[] buffer = new byte[1024];
                while (true) {
                    int read = in.read(buffer);
                    if (read != -1) {
                        out.write(buffer, 0, read);
                    } else {
                        in.close();
                        try {
                            out.flush();
                            out.close();
                            sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + dir.getAbsolutePath())));
                            return;
                        } catch (FileNotFoundException e4) {
                            fnfe1 = e4;
                            outputStream = out;
                            Log.e(TAG, fnfe1.getMessage());
                        } catch (Exception e5) {
                            e = e5;
                            outputStream = out;
                            Log.e(TAG, e.getMessage());
                        }
                    }
                }
            } catch (FileNotFoundException e6) {
                fnfe1 = e6;
                outputStream = out;
                inputStream = in;
                Log.e(TAG, fnfe1.getMessage());
            } catch (Exception e7) {
                e = e7;
                outputStream = out;
                inputStream = in;
                Log.e(TAG, e.getMessage());
            }
        } catch (FileNotFoundException e8) {
            fnfe1 = e8;
            Log.e(TAG, fnfe1.getMessage());
        } catch (Exception e9) {
            e = e9;
            Log.e(TAG, e.getMessage());
        }
    }

    public void clearApplicationData() {
        File appDir = new File(getCacheDir().getParent());
        if (appDir.exists()) {
            for (String s : appDir.list()) {
                if (!(s.equals("lib") || s.equals("shared_prefs"))) {
                    deleteDir(new File(appDir, s));
                }
            }
        }
    }

    public boolean deleteDir(File dir) {
        if (dir != null && dir.isDirectory()) {
            String[] children = dir.list();
            if (children.length > 0) {
                int i = children.length - 1;
                while (i >= 0) {
                    if (!children[i].toString().contentEquals(CamWrapper.ParameterFileName) && !children[i].toString().contains("Crash") && !children[i].toString().contains("Logcat") && !children[i].toString().contains(CamWrapper.SaveLogFileName) && !children[i].toString().contentEquals(CamWrapper.ConfigFileName) && !deleteDir(new File(dir, children[i]))) {
                        return false;
                    }
                    i--;
                }
            }
        }
        return dir.delete();
    }

    private void ParseGPCamStatus(Bundle StatusBundle) {
        int i32CmdIndex = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDINDEX);
        int i32CmdType = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDTYPE);
        int i32Mode = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDMODE);
        int i32CmdID = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_CMDID);
        int i32DataSize = StatusBundle.getInt(CamWrapper.GPCALLBACKSTATUSTYPE_DATASIZE);
        byte[] pbyData = StatusBundle.getByteArray(CamWrapper.GPCALLBACKSTATUSTYPE_DATA);
        HashMap<String, Object> map;
        if (i32CmdType == 2) {
            switch (i32Mode) {
                case 0:
                    switch (i32CmdID) {
                        case 0:
                            _bSetModeDone = true;
                            Log.e(TAG, "_bSetModeDone = true");
                            return;
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
                    int i32FileCount;
                    int i;
                    int i32FileIndex;
                    int i32Len;
                    char[] StringValus;
                    switch (i32CmdID) {
                        case 2:
                            if (!bSaveImageItem) {
                                i32FileCount = (pbyData[0] & 255) | ((pbyData[1] & 255) << 8);
                                if (i32FileCount > 0) {
                                    _i32GettingThumbnailFileIndex = -1;
                                    this._i32GotThumbnailFileIndex = -1;
                                    this.i32GetThumbnailCount = 0;
                                    if (listImageItem != null) {
                                        listImageItem.clear();
                                    }
                                    m_bRunCreateGridViewDone = false;
                                    m_i32DownlaodStatus = 3;
                                    for (i = 0; i < i32FileCount; i++) {
                                        map = new HashMap();
                                        map.put("ThumbnailFilePath", Integer.valueOf(R.drawable.loading));
                                        map.put("FileName", "Unknown");
                                        map.put("FileSize", "0");
                                        map.put("FileTime", "0");
                                        map.put("FileStatus", Integer.valueOf(FileTag_FileDeviceInit));
                                        listImageItem.add(map);
                                    }
                                    UpdateGridView();
                                    return;
                                }
                                return;
                            }
                            return;
                        case 3:
                            if (listImageItem == null) {
                                m_bRunCreateGridViewDone = true;
                                return;
                            }
                            this._i32CommandIndex = i32CmdIndex;
                            i32FileIndex = (pbyData[0] & 255) + ((pbyData[1] & 255) << 8);
                            i32FileCount = pbyData[2] & 255;
                            if (bIsStopUpdateThumbnail) {
                                CamWrapper.getComWrapperInstance().GPCamAbort(this._i32CommandIndex);
                                CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
                                return;
                            }
                            if (i32FileIndex + i32FileCount > listImageItem.size()) {
                                i32FileCount = listImageItem.size() - i32FileIndex;
                            }
                            synchronized (listImageItem) {
                                for (i = i32FileIndex; i < i32FileCount + i32FileIndex; i++) {
                                    byte[] byTimeData = new byte[6];
                                    String strName = CamWrapper.getComWrapperInstance().GPCamGetFileName(i);
                                    if (strName == null) {
                                        strName = "";
                                    }
                                    map = (HashMap) listImageItem.get(i);
                                    map.put("FileName", strName);
                                    map.put("FileSize", Integer.valueOf(CamWrapper.getComWrapperInstance().GPCamGetFileSize(i)));
                                    CamWrapper.getComWrapperInstance().GPCamGetFileTime(i, byTimeData);
                                    StringBuilder sb = new StringBuilder();
                                    int length = byTimeData.length;
                                    for (int i2 = 0; i2 < length; i2++) {
                                        sb.append(String.format("%02d", new Object[]{Byte.valueOf(byTimeData[i2])}));
                                    }
                                    map.put("FileTime", sb.toString());
                                    if (((Integer) map.get("FileStatus")).intValue() == FileTag_FileDeviceInit) {
                                        map.put("FileStatus", Integer.valueOf(FileTag_FileDeviceReady));
                                    }
                                    map.put("ThumbnailFilePath", Integer.valueOf(R.drawable.loading));
                                    listImageItem.set(i, map);
                                }
                            }
                            m_bRunCreateGridViewDone = false;
                            if (m_UpdateThumbnailThread == null) {
                                m_UpdateThumbnailThread = new Thread(new UpdateThumbnailRunnable());
                                m_UpdateThumbnailThread.start();
                                return;
                            }
                            return;
                        case 4:
                            if (listImageItem == null) {
                                m_bRunCreateGridViewDone = true;
                                return;
                            }
                            i32FileIndex = (pbyData[0] & 255) + ((pbyData[1] & 255) << 8);
                            i32Len = (pbyData[2] & 255) + ((pbyData[3] & 255) << 8);
                            StringValus = new char[i32Len];
                            StringValus[0] = '\u0000';
                            for (i = 0; i < i32Len; i++) {
                                StringValus[i] = (char) (pbyData[i + 4] & 255);
                            }
                            this._i32GotThumbnailFileIndex = i32FileIndex;
                            this._i32CommandIndex = i32CmdIndex;
                            if (bIsStopUpdateThumbnail) {
                                CamWrapper.getComWrapperInstance().GPCamAbort(this._i32CommandIndex);
                                CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
                                return;
                            }
                            synchronized (listImageItem) {
                                if (this._i32GotThumbnailFileIndex < listImageItem.size()) {
                                    map = (HashMap) listImageItem.get(this._i32GotThumbnailFileIndex);
                                    if (((Integer) map.get("FileStatus")).intValue() == FileTag_FileGettingThumbnail) {
                                        this.i32GetThumbnailCount++;
                                    }
                                    map.put("ThumbnailFilePath", String.valueOf(StringValus));
                                    map.put("FileStatus", Integer.valueOf(FileTag_FileGotThumbnail));
                                    listImageItem.set(this._i32GotThumbnailFileIndex, map);
                                }
                            }
                            return;
                        case 5:
                            this._i32CommandIndex = i32CmdIndex;
                            Log.e(TAG, "GetRawData ... 0 = " + (pbyData[0] & 255) + "   1 = " + (pbyData[1] & 255));
                            if ((pbyData[0] & 255) == 1) {
                                i32FileIndex = (pbyData[1] & 255) + ((pbyData[2] & 255) << 8);
                                i32Len = (pbyData[3] & 255) + ((pbyData[4] & 255) << 8);
                                StringValus = new char[i32Len];
                                StringValus[0] = '\u0000';
                                for (i = 0; i < i32Len; i++) {
                                    StringValus[i] = (char) (pbyData[i + 5] & 255);
                                }
                                String strFilePath = String.valueOf(StringValus);
                                if (m_DownloadDialog != null) {
                                    m_DownloadDialog.setMessage(getResources().getString(R.string.Copy_file));
                                }
                                this.bIsCopingFile = true;
                                if (i32FileIndex < listImageItem.size()) {
                                    final String str = strFilePath;
                                    final String str2 = (String) ((HashMap) listImageItem.get(i32FileIndex)).get("FileName");
                                    new Thread(new Runnable() {
                                        public void run() {
                                            FilesActivity.this.copyFile(str, FilesActivity.this.strDevicePICLocation + str2);
                                            FilesActivity.this.runOnUiThread(new Runnable() {
                                                public void run() {
                                                    if (FilesActivity.m_DownloadDialog != null && FilesActivity.m_DownloadDialog.isShowing()) {
                                                        FilesActivity.m_DownloadDialog.dismiss();
                                                        FilesActivity.m_DownloadDialog = null;
                                                    }
                                                    FilesActivity.m_i32DownlaodStatus = 3;
                                                    FilesActivity.m_bPendingGetThumbnail = false;
                                                }
                                            });
                                        }
                                    }).start();
                                    return;
                                }
                                return;
                            }
                            this.bIsCopingFile = false;
                            float fPercent = (float) (pbyData[1] & 255);
                            if (m_DownloadDialog != null) {
                                m_DownloadDialog.setMessage(getResources().getString(R.string.Downloading));
                                m_DownloadDialog.setProgress((int) fPercent);
                            }
                            m_i32DownlaodStatus = 1;
                            return;
                        case 8:
                            if (m_UpdateThumbnailThread != null) {
                                m_UpdateThumbnailThread.interrupt();
                                m_UpdateThumbnailThread = null;
                            }
                            listImageItem.remove(this.m_iDeleteSDposition);
                            m_UpdateThumbnailThread = new Thread(new UpdateThumbnailRunnable());
                            m_UpdateThumbnailThread.start();
                            if (this.m_Dialog != null && this.m_Dialog.isShowing()) {
                                this.m_Dialog.dismiss();
                                this.m_Dialog = null;
                                return;
                            }
                            return;
                        default:
                            return;
                    }
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
            switch (i32Mode) {
                case 3:
                    if (i32CmdID == 8) {
                        m_bPendingGetThumbnail = false;
                        if (this.m_Dialog != null && this.m_Dialog.isShowing()) {
                            this.m_Dialog.dismiss();
                            this.m_Dialog = null;
                            break;
                        }
                    }
                    break;
            }
            switch ((pbyData[0] & 255) + ((pbyData[1] & 255) << 8)) {
                case CamWrapper.Error_LostConnection /*65472*/:
                    Log.e(TAG, "Error_LostConnection ...");
                    FinishToMainController();
                    return;
                case CamWrapper.Error_SocketClosed /*65473*/:
                    Log.e(TAG, "Error_SocketClosed ... ");
                    FinishToMainController();
                    return;
                case CamWrapper.Error_NoFile /*65523*/:
                    Log.e(TAG, "Error_NoFile ...");
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(FilesActivity.this.m_Context, FilesActivity.this.getResources().getString(R.string.No_File), 0).show();
                        }
                    });
                    return;
                case CamWrapper.Error_FullStorage /*65527*/:
                    Log.e(TAG, "Error_FullStorage ... ");
                    return;
                case CamWrapper.Error_GetThumbnailFail /*65528*/:
                    Log.e(TAG, "Error_GetThumbnailFail ... ");
                    synchronized (listImageItem) {
                        if (this._i32GotThumbnailFileIndex + 1 < listImageItem.size() && m_i32DownlaodStatus == 3) {
                            map = (HashMap) listImageItem.get(this._i32GotThumbnailFileIndex + 1);
                            map.put("FileStatus", Integer.valueOf(FileTag_FileBroken));
                            listImageItem.set(this._i32GotThumbnailFileIndex + 1, map);
                        }
                    }
                    return;
                case CamWrapper.Error_GetFileListFail /*65529*/:
                    Log.e(TAG, "Error_GetFileListFail ... ");
                    return;
                case CamWrapper.Error_WriteFail /*65530*/:
                    Log.e(TAG, "Error_WriteFail ... ");
                    m_i32DownlaodStatus = 3;
                    return;
                case CamWrapper.Error_NoStorage /*65531*/:
                    Log.e(TAG, "Error_NoStorage ... ");
                    runOnUiThread(new Runnable() {
                        public void run() {
                            Toast.makeText(FilesActivity.this.m_Context, FilesActivity.this.getResources().getString(R.string.No_Storage), 0).show();
                        }
                    });
                    m_i32DownlaodStatus = 3;
                    return;
                case CamWrapper.Error_ModeError /*65532*/:
                    Log.e(TAG, "Error_ModeError ... ");
                    return;
                case CamWrapper.Error_RequestTimeOut /*65533*/:
                    Log.e(TAG, "Error_RequestTimeOut ... ");
                    m_i32DownlaodStatus = 3;
                    return;
                case CamWrapper.Error_InvalidCommand /*65534*/:
                    Log.e(TAG, "Error_InvalidCommand ... ");
                    m_bPendingGetThumbnail = false;
                    synchronized (listImageItem) {
                        if (this._i32GotThumbnailFileIndex + 1 < listImageItem.size() && m_i32DownlaodStatus == 3) {
                            map = (HashMap) listImageItem.get(this._i32GotThumbnailFileIndex + 1);
                            map.put("FileStatus", Integer.valueOf(FileTag_FileBroken));
                            listImageItem.set(this._i32GotThumbnailFileIndex + 1, map);
                        }
                    }
                    m_i32DownlaodStatus = 3;
                    return;
                case 65535:
                    Log.e(TAG, "Error_ServerIsBusy ... ");
                    this._i32ErrorCount++;
                    if (this._i32ErrorCount > 20) {
                        this._i32ErrorCount = 0;
                        m_i32DownlaodStatus = 3;
                        CamWrapper.getComWrapperInstance().GPCamAbort(this._i32CommandIndex);
                        CamWrapper.getComWrapperInstance().GPCamSendGetStatus();
                        Toast.makeText(this.m_Context, getResources().getString(R.string.Get_Thumbnail_Failed), 0).show();
                        return;
                    }
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
}
