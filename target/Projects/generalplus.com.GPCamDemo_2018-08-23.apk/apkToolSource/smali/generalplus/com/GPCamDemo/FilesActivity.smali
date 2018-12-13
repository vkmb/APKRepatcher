.class public Lgeneralplus/com/GPCamDemo/FilesActivity;
.super Landroid/app/Activity;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;,
        Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;
    }
.end annotation


# static fields
.field public static final DownloadFlag_Completed:I = 0x3

.field public static final DownloadFlag_Downloading:I = 0x1

.field public static final DownloadFlag_Init:I = 0x0

.field public static final DownloadFlag_Stopping:I = 0x2

.field public static final FileFlag_AVIStreaming:I = 0x1

.field public static final FileFlag_JPGStreaming:I = 0x2

.field public static final FileFlag_LocalFile:I = 0x3

.field public static final FileFlag_Unknown:I = 0x0

.field private static final FileTag_FileBroken:I = 0xa6

.field public static final FileTag_FileCount:I = 0x0

.field private static final FileTag_FileDeviceInit:I = 0xa0

.field private static final FileTag_FileDeviceReady:I = 0xa1

.field private static final FileTag_FileDownload:I = 0xa4

.field private static final FileTag_FileGettingThumbnail:I = 0xa2

.field private static final FileTag_FileGotThumbnail:I = 0xa3

.field private static final FileTag_FileGotThumbnailEnd:I = 0xa7

.field public static final FileTag_FileName:I = 0x1

.field private static final FileTag_FilePalying:I = 0xa5

.field private static final TAG:Ljava/lang/String; = "FilesActivity"

.field private static _bSetModeDone:Z

.field private static _i32GettingThumbnailFileIndex:I

.field private static bIsStopUpdateThumbnail:Z

.field private static bSaveImageItem:Z

.field private static listImageItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m_DownloadDialog:Landroid/app/ProgressDialog;

.field private static m_FilesActivityInstance:Lgeneralplus/com/GPCamDemo/FilesActivity;

.field private static m_UpdateGridVierThread:Ljava/lang/Thread;

.field private static m_UpdateThumbnailThread:Ljava/lang/Thread;

.field public static m_bCanDeleteSDFile:Z

.field private static m_bPendingGetThumbnail:Z

.field private static m_bRunCreateGridViewDone:Z

.field private static m_i32DownlaodStatus:I


# instance fields
.field private CharSequenceItemsDefault:[Ljava/lang/CharSequence;

.field private CharSequenceItemsDelete:[Ljava/lang/CharSequence;

.field private CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

.field private final MAPKEY_FileName:Ljava/lang/String;

.field private final MAPKEY_FileSize:Ljava/lang/String;

.field private final MAPKEY_FileStatus:Ljava/lang/String;

.field private final MAPKEY_FileTime:Ljava/lang/String;

.field private final MAPKEY_ThumbnailFilePath:Ljava/lang/String;

.field private _bUserLeaveHint:Z

.field private _firstVisibleItem:I

.field private _i32CommandIndex:I

.field private _i32ErrorCount:I

.field private _i32GotThumbnailFileIndex:I

.field private _i32SelectedFirstItem:I

.field private _i32WaitGettingThumbnailCount:I

.field private _scrollState:I

.field private bIsCopingFile:Z

.field private i32GetThumbnailCount:I

.field private mLastClickTime:J

.field private m_Context:Landroid/content/Context;

.field private m_Dialog:Landroid/app/ProgressDialog;

.field private m_FromWrapperHandler:Landroid/os/Handler;

.field private m_Gridview:Landroid/widget/GridView;

.field private m_bCheckboxArray:[Z

.field private m_handler:Landroid/os/Handler;

.field private m_iDeleteSDposition:I

.field private m_saImageItems:Landroid/widget/SimpleAdapter;

.field private strDevicePICLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    sput-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 75
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z

    .line 77
    sput-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    .line 79
    sput-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 80
    sput-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    .line 81
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 82
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z

    .line 84
    const/4 v0, 0x3

    sput v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    .line 85
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    .line 92
    const/4 v0, -0x1

    sput v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GettingThumbnailFileIndex:I

    .line 101
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bSetModeDone:Z

    .line 103
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCanDeleteSDFile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_handler:Landroid/os/Handler;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bUserLeaveHint:Z

    .line 46
    const-string v0, "ThumbnailFilePath"

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->MAPKEY_ThumbnailFilePath:Ljava/lang/String;

    .line 47
    const-string v0, "FileName"

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->MAPKEY_FileName:Ljava/lang/String;

    .line 48
    const-string v0, "FileSize"

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->MAPKEY_FileSize:Ljava/lang/String;

    .line 49
    const-string v0, "FileTime"

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->MAPKEY_FileTime:Ljava/lang/String;

    .line 50
    const-string v0, "FileStatus"

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->MAPKEY_FileStatus:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsCopingFile:Z

    .line 87
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->i32GetThumbnailCount:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    .line 89
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    .line 90
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32ErrorCount:I

    .line 91
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I

    .line 93
    iput v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    .line 94
    iput v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I

    .line 95
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_firstVisibleItem:I

    .line 96
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_scrollState:I

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    .line 98
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z

    .line 105
    iput-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    .line 106
    iput v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_iDeleteSDposition:I

    .line 854
    new-instance v0, Lgeneralplus/com/GPCamDemo/FilesActivity$5;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$5;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    return-void

    .line 104
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method private FinishToMainController()V
    .locals 3

    .prologue
    .line 1231
    const-string v1, "FilesActivity"

    const-string v2, "Finish ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    .line 1233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1235
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1236
    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->startActivity(Landroid/content/Intent;)V

    .line 1237
    return-void
.end method

.method private IsDownloading()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 674
    sget v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    if-eq v1, v0, :cond_0

    sget v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 676
    :cond_0
    new-instance v1, Lgeneralplus/com/GPCamDemo/FilesActivity$4;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$4;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 684
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ParseGPCamStatus(Landroid/os/Bundle;)V
    .locals 31
    .param p1, "StatusBundle"    # Landroid/os/Bundle;

    .prologue
    .line 874
    const-string v24, "CmdIndex"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 875
    .local v10, "i32CmdIndex":I
    const-string v24, "CmdType"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 876
    .local v11, "i32CmdType":I
    const-string v24, "CmdMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 877
    .local v18, "i32Mode":I
    const-string v24, "CmdID"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 878
    .local v9, "i32CmdID":I
    const-string v24, "DataSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 879
    .local v12, "i32DataSize":I
    const-string v24, "Data"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 882
    .local v20, "pbyData":[B
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v11, v0, :cond_14

    .line 883
    sparse-switch v18, :sswitch_data_0

    .line 1228
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 885
    :sswitch_0
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 888
    :pswitch_1
    const/16 v24, 0x1

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bSetModeDone:Z

    .line 889
    const-string v24, "FilesActivity"

    const-string v25, "_bSetModeDone = true"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 900
    :sswitch_1
    const-string v24, "FilesActivity"

    const-string v25, "GPSOCK_MODE_Record ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 903
    :sswitch_2
    const-string v24, "FilesActivity"

    const-string v25, "GPSOCK_MODE_CapturePicture ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 906
    :sswitch_3
    const-string v24, "FilesActivity"

    const-string v25, "GPSOCK_MODE_Playback ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    packed-switch v9, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 911
    :pswitch_3
    sget-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z

    if-nez v24, :cond_0

    .line 914
    const/16 v24, 0x0

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x1

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    or-int v14, v24, v25

    .line 915
    .local v14, "i32FileCount":I
    if-lez v14, :cond_0

    .line 918
    const/16 v24, -0x1

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GettingThumbnailFileIndex:I

    .line 919
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    .line 920
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->i32GetThumbnailCount:I

    .line 921
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    if-eqz v24, :cond_1

    .line 922
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 924
    :cond_1
    const/16 v24, 0x0

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 925
    const/16 v24, 0x3

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    .line 927
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_2

    .line 928
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 929
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "ThumbnailFilePath"

    const v25, 0x7f06004f

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v24, "FileName"

    const-string v25, "Unknown"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v24, "FileSize"

    const-string v25, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v24, "FileTime"

    const-string v25, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v24, "FileStatus"

    const/16 v25, 0xa0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 937
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-direct/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->UpdateGridView()V

    goto/16 :goto_0

    .line 942
    .end local v8    # "i":I
    .end local v14    # "i32FileCount":I
    :pswitch_4
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    if-nez v24, :cond_3

    .line 943
    const/16 v24, 0x1

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    goto/16 :goto_0

    .line 947
    :cond_3
    move-object/from16 v0, p0

    iput v10, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    .line 949
    const/16 v24, 0x0

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x1

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int v15, v24, v25

    .line 950
    .local v15, "i32FileIndex":I
    const/16 v24, 0x2

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v14, v0, 0xff

    .line 952
    .restart local v14    # "i32FileCount":I
    sget-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    if-eqz v24, :cond_4

    .line 953
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 954
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    goto/16 :goto_0

    .line 958
    :cond_4
    add-int v24, v15, v14

    sget-object v25, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_5

    .line 959
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    sub-int v14, v24, v15

    .line 961
    :cond_5
    sget-object v25, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    monitor-enter v25

    .line 962
    move v8, v15

    .restart local v8    # "i":I
    :goto_2
    add-int v24, v14, v15

    move/from16 v0, v24

    if-ge v8, v0, :cond_9

    .line 963
    const/16 v24, 0x6

    :try_start_0
    move/from16 v0, v24

    new-array v6, v0, [B

    .line 965
    .local v6, "byTimeData":[B
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileName(I)Ljava/lang/String;

    move-result-object v23

    .line 966
    .local v23, "strName":Ljava/lang/String;
    if-nez v23, :cond_6

    .line 967
    const-string v23, ""

    .line 969
    :cond_6
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 971
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "FileName"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string v24, "FileSize"

    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileSize(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v6}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileTime(I[B)Z

    .line 975
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .local v21, "sb":Ljava/lang/StringBuilder;
    array-length v0, v6

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    aget-byte v5, v6, v24

    .line 977
    .local v5, "b":B
    const-string v27, "%02d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 979
    .end local v5    # "b":B
    :cond_7
    const-string v24, "FileTime"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v24, "FileStatus"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0xa0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 981
    const-string v24, "FileStatus"

    const/16 v26, 0xa1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    :cond_8
    const/4 v6, 0x0

    .line 984
    const-string v24, "ThumbnailFilePath"

    const v26, 0x7f06004f

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 962
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 987
    .end local v6    # "byTimeData":[B
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "sb":Ljava/lang/StringBuilder;
    .end local v23    # "strName":Ljava/lang/String;
    :cond_9
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    const/16 v24, 0x0

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 991
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez v24, :cond_0

    .line 992
    new-instance v24, Ljava/lang/Thread;

    new-instance v25, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-direct/range {v24 .. v25}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 994
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 987
    :catchall_0
    move-exception v24

    :try_start_1
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v24

    .line 1000
    .end local v8    # "i":I
    .end local v14    # "i32FileCount":I
    .end local v15    # "i32FileIndex":I
    :pswitch_5
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    if-nez v24, :cond_a

    .line 1001
    const/16 v24, 0x1

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    goto/16 :goto_0

    .line 1005
    :cond_a
    const/16 v24, 0x0

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x1

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int v15, v24, v25

    .line 1007
    .restart local v15    # "i32FileIndex":I
    const/16 v24, 0x2

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x3

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int v17, v24, v25

    .line 1009
    .local v17, "i32Len":I
    move/from16 v0, v17

    new-array v4, v0, [C

    .line 1011
    .local v4, "StringValus":[C
    const/16 v24, 0x0

    const/16 v25, 0x0

    aput-char v25, v4, v24

    .line 1012
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v8, v0, :cond_b

    .line 1013
    add-int/lit8 v24, v8, 0x4

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v4, v8

    .line 1012
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1015
    :cond_b
    move-object/from16 v0, p0

    iput v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    .line 1016
    move-object/from16 v0, p0

    iput v10, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    .line 1018
    sget-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    if-eqz v24, :cond_c

    .line 1019
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 1020
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    goto/16 :goto_0

    .line 1024
    :cond_c
    sget-object v25, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    monitor-enter v25

    .line 1025
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v24, v0

    sget-object v26, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 1026
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1027
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "FileStatus"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0xa2

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->i32GetThumbnailCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->i32GetThumbnailCount:I

    .line 1030
    :cond_d
    const-string v24, "ThumbnailFilePath"

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string v24, "FileStatus"

    const/16 v26, 0xa3

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_e
    monitor-exit v25

    .line 1035
    const/4 v4, 0x0

    .line 1036
    goto/16 :goto_0

    .line 1034
    :catchall_1
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v24

    .line 1040
    .end local v4    # "StringValus":[C
    .end local v8    # "i":I
    .end local v15    # "i32FileIndex":I
    .end local v17    # "i32Len":I
    :pswitch_6
    move-object/from16 v0, p0

    iput v10, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    .line 1049
    const-string v24, "FilesActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GetRawData ... 0 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    aget-byte v26, v20, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "   1 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    aget-byte v26, v20, v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/16 v24, 0x0

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 1051
    .local v16, "i32Finish":I
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 1053
    const/16 v24, 0x1

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x2

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int v15, v24, v25

    .line 1054
    .restart local v15    # "i32FileIndex":I
    const/16 v24, 0x3

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x4

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int v17, v24, v25

    .line 1055
    .restart local v17    # "i32Len":I
    move/from16 v0, v17

    new-array v4, v0, [C

    .line 1056
    .restart local v4    # "StringValus":[C
    const/16 v24, 0x0

    const/16 v25, 0x0

    aput-char v25, v4, v24

    .line 1057
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v8, v0, :cond_f

    .line 1058
    add-int/lit8 v24, v8, 0x5

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v24, v0

    aput-char v24, v4, v8

    .line 1057
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1059
    :cond_f
    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v22

    .line 1061
    .local v22, "strFilePath":Ljava/lang/String;
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v24, :cond_10

    .line 1062
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0008

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1063
    :cond_10
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsCopingFile:Z

    .line 1065
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_0

    .line 1066
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1067
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "FileName"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1068
    .restart local v23    # "strName":Ljava/lang/String;
    new-instance v24, Ljava/lang/Thread;

    new-instance v25, Lgeneralplus/com/GPCamDemo/FilesActivity$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lgeneralplus/com/GPCamDemo/FilesActivity$6;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v24 .. v25}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1085
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1088
    .end local v4    # "StringValus":[C
    .end local v8    # "i":I
    .end local v15    # "i32FileIndex":I
    .end local v17    # "i32Len":I
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22    # "strFilePath":Ljava/lang/String;
    .end local v23    # "strName":Ljava/lang/String;
    :cond_11
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsCopingFile:Z

    .line 1089
    const/16 v24, 0x1

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v7, v0

    .line 1090
    .local v7, "fPercent":F
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v24, :cond_12

    .line 1091
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0010

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1092
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    float-to-int v0, v7

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1094
    :cond_12
    const/16 v24, 0x1

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    goto/16 :goto_0

    .line 1100
    .end local v7    # "fPercent":F
    .end local v16    # "i32Finish":I
    :pswitch_7
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-eqz v24, :cond_13

    .line 1101
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->interrupt()V

    .line 1102
    const/16 v24, 0x0

    sput-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 1104
    :cond_13
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_iDeleteSDposition:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1106
    new-instance v24, Ljava/lang/Thread;

    new-instance v25, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-direct/range {v24 .. v25}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 1107
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1111
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 1121
    :sswitch_4
    const-string v24, "FilesActivity"

    const-string v25, "GPSOCK_MODE_Menu ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1124
    :sswitch_5
    const-string v24, "FilesActivity"

    const-string v25, "GPSOCK_MODE_Vendor ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1128
    :cond_14
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v11, v0, :cond_0

    .line 1130
    packed-switch v18, :pswitch_data_2

    .line 1143
    :cond_15
    :goto_6
    const/16 v24, 0x0

    aget-byte v24, v20, v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    const/16 v25, 0x1

    aget-byte v25, v20, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x8

    add-int v13, v24, v25

    .line 1145
    .local v13, "i32ErrorCode":I
    sparse-switch v13, :sswitch_data_1

    goto/16 :goto_0

    .line 1214
    :sswitch_6
    const-string v24, "FilesActivity"

    const-string v25, "Error_LostConnection ..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-direct/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->FinishToMainController()V

    goto/16 :goto_0

    .line 1132
    .end local v13    # "i32ErrorCode":I
    :pswitch_8
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v9, v0, :cond_15

    .line 1133
    const/16 v24, 0x0

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1137
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    goto :goto_6

    .line 1148
    .restart local v13    # "i32ErrorCode":I
    :sswitch_7
    const-string v24, "FilesActivity"

    const-string v25, "Error_ServerIsBusy ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32ErrorCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32ErrorCount:I

    .line 1151
    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32ErrorCount:I

    move/from16 v24, v0

    const/16 v25, 0x14

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 1152
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32ErrorCount:I

    .line 1153
    const/16 v24, 0x3

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    .line 1154
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 1155
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0018

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 1157
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1161
    :sswitch_8
    const-string v24, "FilesActivity"

    const-string v25, "Error_InvalidCommand ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/16 v24, 0x0

    sput-boolean v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z

    .line 1163
    sget-object v25, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    monitor-enter v25

    .line 1164
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    sget-object v26, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    sget v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 1165
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1166
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "FileStatus"

    const/16 v26, 0xa6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1169
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_16
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1170
    const/16 v24, 0x3

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    goto/16 :goto_0

    .line 1169
    :catchall_2
    move-exception v24

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v24

    .line 1173
    :sswitch_9
    const-string v24, "FilesActivity"

    const-string v25, "Error_RequestTimeOut ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/16 v24, 0x3

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    goto/16 :goto_0

    .line 1177
    :sswitch_a
    const-string v24, "FilesActivity"

    const-string v25, "Error_ModeError ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1180
    :sswitch_b
    const-string v24, "FilesActivity"

    const-string v25, "Error_NoStorage ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v24, Lgeneralplus/com/GPCamDemo/FilesActivity$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$7;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1187
    const/16 v24, 0x3

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    goto/16 :goto_0

    .line 1190
    :sswitch_c
    const-string v24, "FilesActivity"

    const-string v25, "Error_WriteFail ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const/16 v24, 0x3

    sput v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    goto/16 :goto_0

    .line 1194
    :sswitch_d
    const-string v24, "FilesActivity"

    const-string v25, "Error_GetFileListFail ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1197
    :sswitch_e
    const-string v24, "FilesActivity"

    const-string v25, "Error_GetThumbnailFail ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-object v25, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    monitor-enter v25

    .line 1199
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    sget-object v26, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    sget v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    const/16 v26, 0x3

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_17

    .line 1200
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 1201
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v24, "FileStatus"

    const/16 v26, 0xa6

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v24, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1204
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_17
    monitor-exit v25

    goto/16 :goto_0

    :catchall_3
    move-exception v24

    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v24

    .line 1207
    :sswitch_f
    const-string v24, "FilesActivity"

    const-string v25, "Error_FullStorage ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1210
    :sswitch_10
    const-string v24, "FilesActivity"

    const-string v25, "Error_SocketClosed ... "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    invoke-direct/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->FinishToMainController()V

    goto/16 :goto_0

    .line 1218
    :sswitch_11
    const-string v24, "FilesActivity"

    const-string v25, "Error_NoFile ..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    new-instance v24, Lgeneralplus/com/GPCamDemo/FilesActivity$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$8;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 883
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 907
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 1130
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_8
    .end packed-switch

    .line 1145
    :sswitch_data_1
    .sparse-switch
        0xffc0 -> :sswitch_6
        0xffc1 -> :sswitch_10
        0xfff3 -> :sswitch_11
        0xfff7 -> :sswitch_f
        0xfff8 -> :sswitch_e
        0xfff9 -> :sswitch_d
        0xfffa -> :sswitch_c
        0xfffb -> :sswitch_b
        0xfffc -> :sswitch_a
        0xfffd -> :sswitch_9
        0xfffe -> :sswitch_8
        0xffff -> :sswitch_7
    .end sparse-switch
.end method

.method private UpdateGridView()V
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$3;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method static synthetic access$002(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_scrollState:I

    return p1
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamDemo/FilesActivity;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I

    return v0
.end method

.method static synthetic access$1000(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I

    return p1
.end method

.method static synthetic access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lgeneralplus/com/GPCamDemo/FilesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->IsDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lgeneralplus/com/GPCamDemo/FilesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bUserLeaveHint:Z

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z

    return p0
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z

    return p0
.end method

.method static synthetic access$200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_firstVisibleItem:I

    return v0
.end method

.method static synthetic access$2000()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 39
    sput-object p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_firstVisibleItem:I

    return p1
.end method

.method static synthetic access$2100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsCopingFile:Z

    return v0
.end method

.method static synthetic access$2200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 39
    sput p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    return p0
.end method

.method static synthetic access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z

    return-object v0
.end method

.method static synthetic access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 39
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2602(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_iDeleteSDposition:I

    return p1
.end method

.method static synthetic access$2700(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$2702(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # Landroid/widget/SimpleAdapter;

    .prologue
    .line 39
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$2800(Lgeneralplus/com/GPCamDemo/FilesActivity;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->UpdateGridView()V

    return-void
.end method

.method static synthetic access$2900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 39
    sput-object p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$3102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 39
    sput p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GettingThumbnailFileIndex:I

    return p0
.end method

.method static synthetic access$3200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I

    return v0
.end method

.method static synthetic access$3202(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I

    return p1
.end method

.method static synthetic access$3208(Lgeneralplus/com/GPCamDemo/FilesActivity;)I
    .locals 2
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I

    return v0
.end method

.method static synthetic access$3302(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I

    return p1
.end method

.method static synthetic access$3400(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3500(Lgeneralplus/com/GPCamDemo/FilesActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 39
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 39
    sput-object p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    return-object v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "OutputPath"    # Ljava/lang/String;

    .prologue
    .line 781
    const/4 v4, 0x0

    .line 782
    .local v4, "in":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 784
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 785
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 786
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 788
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 789
    .end local v4    # "in":Ljava/io/InputStream;
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 791
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 793
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 794
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 806
    .end local v0    # "buffer":[B
    .end local v8    # "read":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .line 807
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .local v3, "fnfe1":Ljava/io/FileNotFoundException;
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_1
    const-string v9, "FilesActivity"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v3    # "fnfe1":Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 796
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 797
    const/4 v4, 0x0

    .line 799
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 800
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 801
    const/4 v6, 0x0

    .line 803
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :try_start_5
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 804
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 803
    invoke-virtual {p0, v9}, Lgeneralplus/com/GPCamDemo/FilesActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 806
    .end local v0    # "buffer":[B
    .end local v1    # "dir":Ljava/io/File;
    .end local v8    # "read":I
    :catch_1
    move-exception v3

    goto :goto_1

    .line 808
    :catch_2
    move-exception v2

    .line 809
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v9, "FilesActivity"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 808
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :catch_5
    move-exception v2

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 806
    .end local v0    # "buffer":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v8    # "read":I
    .restart local v5    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    goto :goto_1

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "read":I
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private exitFileActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 704
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 706
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    .line 708
    const-wide/16 v2, 0x320

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_1
    :goto_0
    sput-object v4, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 716
    sput-object v4, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;

    .line 718
    const/4 v1, 0x0

    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z

    .line 719
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 720
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lgeneralplus/com/GPCamDemo/FilesActivity;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_FilesActivityInstance:Lgeneralplus/com/GPCamDemo/FilesActivity;

    return-object v0
.end method

.method private isFastClick()Z
    .locals 6

    .prologue
    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 663
    .local v0, "currentTime":J
    iget-wide v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->mLastClickTime:J

    sub-long v2, v0, v4

    .line 664
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x5dc

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 665
    const/4 v4, 0x1

    .line 669
    :goto_0
    return v4

    .line 668
    :cond_0
    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->mLastClickTime:J

    .line 669
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearApplicationData()V
    .locals 7

    .prologue
    .line 821
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 822
    .local v1, "cache":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 824
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "children":[Ljava/lang/String;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    .line 826
    .local v3, "s":Ljava/lang/String;
    const-string v6, "lib"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "shared_prefs"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 827
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lgeneralplus/com/GPCamDemo/FilesActivity;->deleteDir(Ljava/io/File;)Z

    .line 825
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 831
    .end local v2    # "children":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 834
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 835
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "children":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 837
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 838
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Menu.xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    .line 839
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Crash"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    .line 840
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Logcat"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    .line 841
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GoPlusCamCmdLog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v1

    .line 842
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GoPlusCamConf.ini"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 843
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lgeneralplus/com/GPCamDemo/FilesActivity;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 844
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 845
    const/4 v3, 0x0

    .line 851
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 837
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 851
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 689
    const-string v0, "FilesActivity"

    const-string v1, "onBackPressed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bSetModeDone:Z

    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->isFastClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->IsDownloading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->exitFileActivity()V

    .line 700
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 776
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 777
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0b0022

    const v7, 0x7f0b001a

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 113
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 114
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 116
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 117
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 118
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 120
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 121
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 122
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 123
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 125
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->setContentView(I)V

    .line 126
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->setRequestedOrientation(I)V

    .line 128
    iput-object p0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;

    .line 129
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_handler:Landroid/os/Handler;

    .line 137
    :cond_0
    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    .line 138
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    new-instance v2, Lgeneralplus/com/GPCamDemo/FilesActivity$1;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$1;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 170
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Gridview:Landroid/widget/GridView;

    new-instance v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 436
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z

    if-nez v1, :cond_3

    .line 438
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    .line 440
    :cond_1
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 443
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    sput-boolean v4, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bSetModeDone:Z

    .line 450
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 453
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFullFileList()I

    .line 471
    :cond_2
    :goto_1
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    sput-boolean v4, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bSetModeDone:Z

    .line 458
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 461
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFullFileList()I

    .line 463
    sput-boolean v4, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z

    .line 464
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    .line 465
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 467
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 740
    const-string v1, "FilesActivity"

    const-string v2, "onDestroy ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 742
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    sget-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 744
    const/4 v1, 0x0

    sput-object v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 747
    :cond_0
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z

    if-nez v1, :cond_1

    .line 748
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoPlusCam"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v0, "appGoPlusCamDir":Ljava/io/File;
    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->deleteDir(Ljava/io/File;)Z

    .line 753
    const/4 v1, 0x3

    sput v1, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I

    .line 756
    .end local v0    # "appGoPlusCamDir":Ljava/io/File;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 757
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 724
    const-string v0, "FilesActivity"

    const-string v1, "onResume ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 726
    const/4 v0, 0x0

    sput-boolean v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z

    .line 727
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 729
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    .line 733
    sget-object v0, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 736
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 761
    const-string v0, "FilesActivity"

    const-string v1, "onUserLeaveHint ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity;->_bUserLeaveHint:Z

    .line 770
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 771
    return-void
.end method
