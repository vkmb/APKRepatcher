.class public Lgeneralplus/com/GPCamDemo/MainViewController;
.super Landroid/app/Activity;
.source "MainViewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;,
        Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;,
        Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;,
        Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    }
.end annotation


# static fields
.field private static GetGPCamStatusThread:Ljava/lang/Thread; = null

.field private static PlayVLCThread:Ljava/lang/Thread; = null

.field private static final SURFACE_16_9:I = 0x4

.field private static final SURFACE_4_3:I = 0x5

.field private static final SURFACE_BEST_FIT:I = 0x0

.field private static final SURFACE_FILL:I = 0x3

.field private static final SURFACE_FIT_HORIZONTAL:I = 0x1

.field private static final SURFACE_FIT_VERTICAL:I = 0x2

.field private static final SURFACE_ORIGINAL:I = 0x6

.field private static TAG:Ljava/lang/String; = null

.field private static final VideoSizeChanged:I = -0x1

.field private static _Capturing:Z

.field private static _ChangeToAnotherModeDone:Z

.field private static _CurrentMode:I

.field private static _Recording:Z

.field private static _bCurrentAudio:Z

.field private static _bRunVLC:Z

.field private static _bSetModeDone:Z

.field private static _bSetRestartStreamingDone:Z

.field private static isAnimating:Z

.field private static mMainSarDen:I

.field private static mMainSarNum:I

.field private static mMainVideoHeight:I

.field private static mMainVideoVisibleHeight:I

.field private static mMainVideoVisibleWidth:I

.field private static mMainVideoWidth:I

.field private static m_BatteryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;",
            ">;"
        }
    .end annotation
.end field

.field private static m_RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;",
            ">;"
        }
    .end annotation
.end field

.field public static m_bRtsp:Z

.field private static m_xmlGategory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FW_Old_Number:I

.field private handlerOverlay:Landroid/os/Handler;

.field private handlerSeekbar:Landroid/os/Handler;

.field private imgbtn_audio:Landroid/widget/ImageButton;

.field private imgbtn_disconnect:Landroid/widget/ImageButton;

.field private imgbtn_file:Landroid/widget/ImageButton;

.field private imgbtn_menu:Landroid/widget/ImageButton;

.field private imgbtn_mode:Landroid/widget/ImageButton;

.field private imgbtn_recordorcapture:Landroid/widget/ImageButton;

.field private imgview_audio_status:Landroid/widget/ImageView;

.field private imgview_battery_status:Landroid/widget/ImageView;

.field private imgview_multi_shot_status:Landroid/widget/ImageView;

.field private imgview_record_status:Landroid/widget/ImageView;

.field private mCurrentSize:I

.field private mLastCapClickTime:J

.field private mLastClickTime:J

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private m_Context:Landroid/content/Context;

.field private m_Dialog:Landroid/app/ProgressDialog;

.field private m_FromWrapperHandler:Landroid/os/Handler;

.field private m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

.field private m_StatusHandler:Landroid/os/Handler;

.field private m_bDelay:Z

.field private m_bVendorID:Z

.field private runnableOverlay:Ljava/lang/Runnable;

.field private runnableSeekbar:Ljava/lang/Runnable;

.field private final timeToDisappear:J

.field private tv_res_status:Landroid/widget/TextView;

.field private tv_time_remain:Landroid/widget/TextView;

.field private urlToStream:Ljava/lang/String;

.field private vlcContainer:Landroid/widget/LinearLayout;

.field private vlcOverlay:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    const-string v0, "MainViewController"

    sput-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    .line 90
    sput-object v2, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 91
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->mMainVideoWidth:I

    .line 92
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->mMainVideoVisibleWidth:I

    .line 93
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->mMainVideoHeight:I

    .line 94
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->mMainVideoVisibleHeight:I

    .line 95
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->mMainSarNum:I

    .line 96
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->mMainSarDen:I

    .line 100
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z

    .line 101
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z

    .line 102
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z

    .line 103
    sput v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    .line 104
    sput-boolean v3, Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z

    .line 105
    sput-boolean v3, Lgeneralplus/com/GPCamDemo/MainViewController;->_bCurrentAudio:Z

    .line 106
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    .line 107
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    .line 111
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bRtsp:Z

    .line 120
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z

    .line 581
    sput-object v2, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    .line 624
    sput-object v2, Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/high16 v0, 0x1000000

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->FW_Old_Number:I

    .line 80
    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    .line 88
    iput v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mCurrentSize:I

    .line 97
    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->urlToStream:Ljava/lang/String;

    .line 99
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->timeToDisappear:J

    .line 110
    iput-boolean v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bVendorID:Z

    .line 463
    new-instance v0, Lgeneralplus/com/GPCamDemo/MainViewController$9;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$9;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_StatusHandler:Landroid/os/Handler;

    .line 749
    new-instance v0, Lgeneralplus/com/GPCamDemo/MainViewController$12;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$12;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_FromWrapperHandler:Landroid/os/Handler;

    return-void
.end method

.method private AnimateAudio(Z)V
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 1207
    move v0, p1

    .line 1208
    .local v0, "bEnableAudio":Z
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$20;

    invoke-direct {v1, p0, v0}, Lgeneralplus/com/GPCamDemo/MainViewController$20;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1218
    return-void
.end method

.method private AnimateRecord(Z)V
    .locals 5
    .param p1, "bEnable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1221
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;

    .line 1223
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;

    invoke-direct {v1, v4}, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1224
    .local v1, "record0":Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;
    const v3, 0x7f060055

    iput v3, v1, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;->RecordResIndex:I

    .line 1225
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    new-instance v2, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;

    invoke-direct {v2, v4}, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1228
    .local v2, "record1":Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;
    const v3, 0x7f060056

    iput v3, v2, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;->RecordResIndex:I

    .line 1229
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    .end local v1    # "record0":Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;
    .end local v2    # "record1":Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;
    :cond_0
    move v0, p1

    .line 1234
    .local v0, "bEnableRecord":Z
    new-instance v3, Lgeneralplus/com/GPCamDemo/MainViewController$21;

    invoke-direct {v3, p0, v0}, Lgeneralplus/com/GPCamDemo/MainViewController$21;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V

    invoke-virtual {p0, v3}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1255
    return-void
.end method

.method private Finish()V
    .locals 1

    .prologue
    .line 740
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    .line 741
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 742
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->finish()V

    .line 743
    return-void
.end method

.method private ParseGPCamStatus(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "StatusBundle"    # Landroid/os/Bundle;

    .prologue
    .line 769
    const-string v10, "CmdIndex"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 770
    .local v4, "i32CmdIndex":I
    const-string v10, "CmdType"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 771
    .local v5, "i32CmdType":I
    const-string v10, "CmdMode"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 772
    .local v8, "i32Mode":I
    const-string v10, "CmdID"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 773
    .local v3, "i32CmdID":I
    const-string v10, "DataSize"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 774
    .local v6, "i32DataSize":I
    const-string v10, "Data"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 777
    .local v9, "pbyData":[B
    const/4 v10, 0x2

    if-ne v5, v10, :cond_c

    .line 778
    sparse-switch v8, :sswitch_data_0

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 780
    :sswitch_0
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 783
    :pswitch_1
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z

    .line 784
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "_bSetModeDone = true"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 787
    :pswitch_2
    const/4 v0, 0x0

    .line 788
    .local v0, "bParseSendSetMode":Z
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    packed-switch v10, :pswitch_data_1

    .line 828
    sget v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    const/4 v11, 0x0

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    if-eq v10, v11, :cond_1

    .line 829
    const/4 v10, 0x0

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z

    .line 830
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GetDeviceStatus SendSetMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, 0x1

    .line 832
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v10

    sget v11, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    invoke-virtual {v10, v11}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 834
    :cond_1
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateRecord(Z)V

    .line 835
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateAudio(Z)V

    .line 836
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowMultiShot(Z)V

    .line 837
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowModePIC(Z)V

    .line 840
    :goto_1
    const/4 v10, 0x1

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x7

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 842
    const/4 v10, 0x0

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z

    .line 844
    const-wide/16 v10, 0xc8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_2
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    if-nez v10, :cond_2

    .line 850
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z

    .line 851
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;

    invoke-direct {v11, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    .line 852
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 853
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Reset VLC."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_2
    new-instance v10, Lgeneralplus/com/GPCamDemo/MainViewController$13;

    invoke-direct {v10, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$13;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 864
    :cond_3
    iget-object v10, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->urlToStream:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 866
    const/4 v10, 0x1

    const/4 v11, 0x2

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x7

    if-ne v10, v11, :cond_9

    .line 867
    const-string v10, "rtsp://%s:8080/?action=stream"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->urlToStream:Ljava/lang/String;

    .line 868
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v10

    const-string v11, "A=MOVI,mov;J=PICT,jpg;L=LOCK,mov;S=SOS0,mov"

    invoke-virtual {v10, v11}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetFileNameMapping(Ljava/lang/String;)Z

    .line 869
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bRtsp:Z

    .line 877
    :goto_3
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->playStreaming()V

    .line 881
    :cond_4
    const/4 v10, 0x2

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x2

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x7

    mul-int/lit16 v11, v11, 0x80

    sub-int v1, v10, v11

    .line 882
    .local v1, "byLevel":I
    int-to-byte v11, v1

    const/4 v10, 0x3

    aget-byte v10, v9, v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_a

    const/4 v10, 0x0

    :goto_4
    invoke-direct {p0, v11, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowBattery(BZ)V

    .line 883
    if-nez v0, :cond_5

    .line 884
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    sput v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    .line 887
    :cond_5
    const/4 v10, 0x1

    const/4 v11, 0x3

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v11, v11, 0x7

    if-ne v10, v11, :cond_b

    .line 888
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCanDeleteSDFile:Z

    goto/16 :goto_0

    .line 791
    .end local v1    # "byLevel":I
    :pswitch_3
    const/4 v10, 0x0

    sput v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    .line 792
    const/4 v10, 0x1

    aget-byte v10, v9, v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_6

    .line 793
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateRecord(Z)V

    .line 794
    const/4 v10, 0x0

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    .line 799
    :goto_5
    const/4 v10, 0x1

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_7

    const/4 v10, 0x1

    :goto_6
    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateAudio(Z)V

    .line 801
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowMultiShot(Z)V

    .line 802
    const/4 v10, 0x4

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowResource(IZ)V

    .line 803
    const/4 v10, 0x5

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x6

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    const/4 v11, 0x7

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    const/16 v11, 0x8

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    add-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowTime(IZ)V

    .line 807
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowModePIC(Z)V

    goto/16 :goto_1

    .line 796
    :cond_6
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateRecord(Z)V

    .line 797
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    goto :goto_5

    .line 799
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 810
    :pswitch_4
    const/4 v10, 0x1

    sput v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    .line 811
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateRecord(Z)V

    .line 812
    const/4 v10, 0x1

    aget-byte v10, v9, v10

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_8

    .line 813
    const/4 v10, 0x0

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    .line 814
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowMultiShot(Z)V

    .line 819
    :goto_7
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateAudio(Z)V

    .line 820
    const/16 v10, 0x9

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowResource(IZ)V

    .line 821
    const/16 v10, 0xa

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xb

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v10, v11

    const/16 v11, 0xc

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v10, v11

    const/16 v11, 0xd

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    add-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowTime(IZ)V

    .line 825
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowModePIC(Z)V

    goto/16 :goto_1

    .line 816
    :cond_8
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    .line 817
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->ShowMultiShot(Z)V

    goto :goto_7

    .line 845
    :catch_0
    move-exception v2

    .line 847
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 872
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_9
    const-string v10, "http://%s:8080/?action=stream"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->urlToStream:Ljava/lang/String;

    .line 873
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v10

    const-string v11, "A=MOVI,avi;J=PICT,jpg;L=LOCK,avi;S=SOS0,avi"

    invoke-virtual {v10, v11}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetFileNameMapping(Ljava/lang/String;)Z

    .line 874
    const/4 v10, 0x0

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bRtsp:Z

    goto/16 :goto_3

    .line 882
    .restart local v1    # "byLevel":I
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 891
    :cond_b
    const/4 v10, 0x0

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCanDeleteSDFile:Z

    goto/16 :goto_0

    .line 895
    .end local v0    # "bParseSendSetMode":Z
    .end local v1    # "byLevel":I
    :pswitch_5
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->ReadDefaultMenu()Z

    goto/16 :goto_0

    .line 898
    :pswitch_6
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z

    goto/16 :goto_0

    .line 903
    :sswitch_1
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "GPSOCK_MODE_Record ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-wide/16 v10, 0x320

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 909
    :goto_8
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z

    goto/16 :goto_0

    .line 906
    :catch_1
    move-exception v2

    .line 907
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 912
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :sswitch_2
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "GPSOCK_MODE_CapturePicture ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-wide/16 v10, 0x320

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 918
    :goto_9
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z

    .line 919
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->dismissProgressDialog()V

    goto/16 :goto_0

    .line 915
    :catch_2
    move-exception v2

    .line 916
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 922
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :sswitch_3
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "GPSOCK_MODE_Playback ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 925
    :sswitch_4
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "GPSOCK_MODE_Menu ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 928
    :sswitch_5
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "GPSOCK_MODE_Vendor ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 946
    :cond_c
    const/4 v10, 0x3

    if-ne v5, v10, :cond_0

    .line 948
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x1

    aget-byte v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int v7, v10, v11

    .line 950
    .local v7, "i32ErrorCode":I
    sget-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    if-nez v10, :cond_d

    sget-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    if-eqz v10, :cond_e

    .line 951
    :cond_d
    const/4 v10, 0x1

    sput-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z

    .line 953
    :cond_e
    sparse-switch v7, :sswitch_data_1

    .line 1001
    :cond_f
    :goto_a
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->dismissProgressDialog()V

    goto/16 :goto_0

    .line 956
    :sswitch_6
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_ServerIsBusy ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 959
    :sswitch_7
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_InvalidCommand ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 962
    :sswitch_8
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_RequestTimeOut ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 965
    :sswitch_9
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_ModeError ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 968
    :sswitch_a
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_NoStorage ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    sget-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    if-nez v10, :cond_10

    sget-boolean v10, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    if-eqz v10, :cond_f

    .line 971
    :cond_10
    new-instance v10, Lgeneralplus/com/GPCamDemo/MainViewController$14;

    invoke-direct {v10, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$14;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {p0, v10}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 981
    :sswitch_b
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_WriteFail ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 984
    :sswitch_c
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_GetFileListFail ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 987
    :sswitch_d
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_GetThumbnailFail ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 990
    :sswitch_e
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_FullStorage ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 993
    :sswitch_f
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_SocketClosed ... "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->Finish()V

    goto :goto_a

    .line 997
    :sswitch_10
    sget-object v10, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v11, "Error_LostConnection ..."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->Finish()V

    goto :goto_a

    .line 778
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 788
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 953
    :sswitch_data_1
    .sparse-switch
        0xffc0 -> :sswitch_10
        0xffc1 -> :sswitch_f
        0xfff7 -> :sswitch_e
        0xfff8 -> :sswitch_d
        0xfff9 -> :sswitch_c
        0xfffa -> :sswitch_b
        0xfffb -> :sswitch_a
        0xfffc -> :sswitch_9
        0xfffd -> :sswitch_8
        0xfffe -> :sswitch_7
        0xffff -> :sswitch_6
    .end sparse-switch
.end method

.method private ReadDefaultMenu()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 127
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "GoPlusCam"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Menu.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "strXMLFilePath":Ljava/lang/String;
    iget-object v11, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    if-nez v11, :cond_0

    .line 129
    new-instance v11, Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {v11}, Lgeneralplus/com/GPCamLib/GPXMLParse;-><init>()V

    iput-object v11, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    .line 131
    :cond_0
    iget-object v11, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-virtual {v11}, Lgeneralplus/com/GPCamLib/GPXMLParse;->GetCategories()Ljava/util/ArrayList;

    .line 132
    sget-object v11, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-nez v11, :cond_1

    .line 133
    iget-object v11, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    .line 134
    invoke-virtual {v11, v7}, Lgeneralplus/com/GPCamLib/GPXMLParse;->GetGPXMLInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 136
    .local v8, "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 137
    sput-boolean v10, Lgeneralplus/com/GPCamLib/CamWrapper;->bIsDefault:Z

    .line 138
    invoke-direct {p0, v7}, Lgeneralplus/com/GPCamDemo/MainViewController;->ReadXml(Ljava/lang/String;)V

    .line 168
    .end local v8    # "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    :goto_0
    return v9

    .line 143
    :cond_1
    sput-boolean v9, Lgeneralplus/com/GPCamLib/CamWrapper;->bIsDefault:Z

    .line 144
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "GoPlusCam"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "Default_Menu.xml"

    invoke-direct {v5, v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 146
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 147
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 149
    .local v4, "fIn":Ljava/io/InputStream;
    :try_start_0
    const-string v9, "Default_Menu.xml"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 151
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v6, "os":Ljava/io/OutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 154
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 155
    .local v2, "bytesRead":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    .line 159
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 160
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v4    # "fIn":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_2
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "GoPlusCam"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "Default_Menu.xml"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lgeneralplus/com/GPCamDemo/MainViewController;->ReadXml(Ljava/lang/String;)V

    move v9, v10

    .line 168
    goto/16 :goto_0

    .line 156
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v4    # "fIn":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 161
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "tag"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private ReadXml(Ljava/lang/String;)V
    .locals 9
    .param p1, "strXMLFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 172
    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    if-nez v7, :cond_0

    .line 173
    new-instance v7, Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {v7}, Lgeneralplus/com/GPCamLib/GPXMLParse;-><init>()V

    iput-object v7, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    .line 174
    :cond_0
    sget-object v7, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    .line 175
    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    .line 176
    invoke-virtual {v7, p1}, Lgeneralplus/com/GPCamLib/GPXMLParse;->GetGPXMLInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 177
    .local v6, "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 178
    sget-object v7, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "strFirmwareVersion":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 182
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v7

    invoke-virtual {v7, v8}, Lgeneralplus/com/GPCamLib/CamWrapper;->setIsNewFile(Z)V

    .line 212
    .end local v5    # "strFirmwareVersion":Ljava/lang/String;
    .end local v6    # "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    :cond_1
    :goto_0
    return-void

    .line 185
    .restart local v5    # "strFirmwareVersion":Ljava/lang/String;
    .restart local v6    # "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    :cond_2
    const-string v7, "V"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "array":[Ljava/lang/String;
    const/4 v7, 0x2

    array-length v8, v1

    if-ne v7, v8, :cond_1

    .line 189
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v1, v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "dotArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, "_FWVersion":I
    const/16 v4, 0x18

    .line 193
    .local v4, "i32Shift":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v2

    if-ge v3, v7, :cond_3

    .line 194
    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-int/2addr v7, v4

    or-int/2addr v0, v7

    .line 195
    add-int/lit8 v4, v4, -0x8

    .line 196
    if-gez v4, :cond_4

    .line 200
    :cond_3
    iget v7, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->FW_Old_Number:I

    if-gt v0, v7, :cond_5

    .line 201
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lgeneralplus/com/GPCamLib/CamWrapper;->setIsNewFile(Z)V

    goto :goto_0

    .line 206
    .end local v0    # "_FWVersion":I
    .end local v2    # "dotArray":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "i32Shift":I
    :catch_0
    move-exception v7

    goto :goto_0

    .line 193
    .restart local v0    # "_FWVersion":I
    .restart local v2    # "dotArray":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "i32Shift":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    :cond_5
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lgeneralplus/com/GPCamLib/CamWrapper;->setIsNewFile(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private ShowBattery(BZ)V
    .locals 11
    .param p1, "byLevel"    # B
    .param p2, "bCharge"    # Z

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 1007
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    if-nez v8, :cond_0

    .line 1008
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    .line 1009
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {v1, v9}, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1010
    .local v1, "battery0":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    const/4 v8, 0x0

    iput v8, v1, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1011
    const v8, 0x7f060041

    iput v8, v1, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1012
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v2, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {v2, v9}, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1015
    .local v2, "battery1":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    const/4 v8, 0x1

    iput v8, v2, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1016
    const v8, 0x7f060042

    iput v8, v2, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1017
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    new-instance v3, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {v3, v9}, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1020
    .local v3, "battery2":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    const/4 v8, 0x2

    iput v8, v3, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1021
    const v8, 0x7f060043

    iput v8, v3, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1022
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v4, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {v4, v9}, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1025
    .local v4, "battery3":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    const/4 v8, 0x3

    iput v8, v4, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1026
    const v8, 0x7f060044

    iput v8, v4, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1027
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v5, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {v5, v9}, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1030
    .local v5, "battery4":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    const/4 v8, 0x4

    iput v8, v5, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1031
    const v8, 0x7f060045

    iput v8, v5, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1032
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v6, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {v6, v9}, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$1;)V

    .line 1035
    .local v6, "battery5":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    iput v10, v6, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1036
    const v8, 0x7f060040

    iput v8, v6, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    .line 1037
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    .end local v1    # "battery0":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    .end local v2    # "battery1":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    .end local v3    # "battery2":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    .end local v4    # "battery3":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    .end local v5    # "battery4":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    .end local v6    # "battery5":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    :cond_0
    move v7, p1

    .line 1042
    .local v7, "i32Idx":I
    if-eqz p2, :cond_1

    .line 1043
    const/4 v7, 0x5

    .line 1045
    :cond_1
    if-gt v7, v10, :cond_2

    if-gez v7, :cond_3

    .line 1046
    :cond_2
    const/4 v7, 0x5

    .line 1048
    :cond_3
    sget-object v8, Lgeneralplus/com/GPCamDemo/MainViewController;->m_BatteryList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    .line 1050
    .local v0, "battery":Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;
    new-instance v8, Lgeneralplus/com/GPCamDemo/MainViewController$15;

    invoke-direct {v8, p0, v0}, Lgeneralplus/com/GPCamDemo/MainViewController$15;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;)V

    invoke-virtual {p0, v8}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1058
    return-void
.end method

.method private ShowModePIC(Z)V
    .locals 2
    .param p1, "RecordMode"    # Z

    .prologue
    .line 1187
    move v0, p1

    .line 1188
    .local v0, "bRecordMode":Z
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$19;

    invoke-direct {v1, p0, v0}, Lgeneralplus/com/GPCamDemo/MainViewController$19;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1204
    return-void
.end method

.method private ShowMultiShot(Z)V
    .locals 2
    .param p1, "bEnable"    # Z

    .prologue
    .line 1077
    move v0, p1

    .line 1078
    .local v0, "bMultiShot":Z
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$16;

    invoke-direct {v1, p0, v0}, Lgeneralplus/com/GPCamDemo/MainViewController$16;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1088
    return-void
.end method

.method private ShowResource(IZ)V
    .locals 10
    .param p1, "ValuesIndex"    # I
    .param p2, "RecordMode"    # Z

    .prologue
    .line 1091
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    if-nez v6, :cond_0

    .line 1162
    :goto_0
    return-void

    .line 1094
    :cond_0
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 1095
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GoPlusCam"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Menu.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, "strXMLFilePath":Ljava/lang/String;
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    .line 1097
    invoke-virtual {v6, v4}, Lgeneralplus/com/GPCamLib/GPXMLParse;->GetGPXMLInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1098
    .local v5, "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 1099
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 1100
    :cond_2
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1101
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1104
    .end local v4    # "strXMLFilePath":Ljava/lang/String;
    .end local v5    # "xmlTempGategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;>;"
    :cond_3
    const-string v3, ""

    .line 1105
    .local v3, "strValueName":Ljava/lang/String;
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    .line 1106
    const-string v3, "XML NULL"

    .line 1114
    :cond_4
    :goto_1
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 1117
    const/4 v0, 0x0

    .local v0, "i32CategoryIndex":I
    :goto_2
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 1118
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    .line 1119
    const/4 v1, 0x0

    .local v1, "i32SettingIndex":I
    :goto_3
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 1120
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_a

    .line 1122
    if-eqz p2, :cond_8

    .line 1123
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1124
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    .line 1123
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v8, Lgeneralplus/com/GPCamLib/GPXMLParse;->RecordResolution_Setting_ID:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 1125
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1126
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_7

    .line 1127
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1120
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1109
    .end local v0    # "i32CategoryIndex":I
    .end local v1    # "i32SettingIndex":I
    :cond_6
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 1110
    const-string v3, "XML length 0"

    goto :goto_1

    .line 1130
    .restart local v0    # "i32CategoryIndex":I
    .restart local v1    # "i32SettingIndex":I
    :cond_7
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1131
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v3, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    goto :goto_4

    .line 1136
    :cond_8
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1137
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    .line 1136
    invoke-static {v6}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget v8, Lgeneralplus/com/GPCamLib/GPXMLParse;->CaptureResolution_Setting_ID:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 1138
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1139
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_9

    .line 1140
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1143
    :cond_9
    sget-object v6, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1144
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v3, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    goto/16 :goto_4

    .line 1118
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1151
    .end local v1    # "i32SettingIndex":I
    :cond_b
    move-object v2, v3

    .line 1152
    .local v2, "strName":Ljava/lang/String;
    new-instance v6, Lgeneralplus/com/GPCamDemo/MainViewController$17;

    invoke-direct {v6, p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController$17;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1160
    .end local v0    # "i32CategoryIndex":I
    .end local v2    # "strName":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->tv_res_status:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private ShowTime(IZ)V
    .locals 10
    .param p1, "SecRemain"    # I
    .param p2, "RecordMode"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1165
    const-string v4, ""

    .line 1166
    .local v4, "strTempSecRemain":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1167
    rem-int/lit8 v2, p1, 0x3c

    .line 1168
    .local v2, "i32SecLeft":I
    div-int/lit8 v5, p1, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    .line 1169
    .local v1, "i32MinLeft":I
    div-int/lit16 v0, p1, 0xe10

    .line 1170
    .local v0, "i32HourLeft":I
    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1170
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1175
    .end local v0    # "i32HourLeft":I
    .end local v1    # "i32MinLeft":I
    .end local v2    # "i32SecLeft":I
    :goto_0
    move-object v3, v4

    .line 1176
    .local v3, "strSecRemain":Ljava/lang/String;
    new-instance v5, Lgeneralplus/com/GPCamDemo/MainViewController$18;

    invoke-direct {v5, p0, v3}, Lgeneralplus/com/GPCamDemo/MainViewController$18;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lgeneralplus/com/GPCamDemo/MainViewController;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1183
    return-void

    .line 1173
    .end local v3    # "strSecRemain":Ljava/lang/String;
    :cond_0
    const-string v5, "%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic access$000(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamDemo/MainViewController;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z

    return p0
.end method

.method static synthetic access$102(Lgeneralplus/com/GPCamDemo/MainViewController;Z)Z
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z

    return p1
.end method

.method static synthetic access$1100(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->Finish()V

    return-void
.end method

.method static synthetic access$1200(Lgeneralplus/com/GPCamDemo/MainViewController;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->isRecordoCcaptureClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    return v0
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 43
    sput p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    return p0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    return p0
.end method

.method static synthetic access$1600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lgeneralplus/com/GPCamDemo/MainViewController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->playVLC()V

    return-void
.end method

.method static synthetic access$1900()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z

    return v0
.end method

.method static synthetic access$2000()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 43
    sput-object p0, Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z

    return p0
.end method

.method static synthetic access$2100()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 43
    sput-object p0, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$2200(Lgeneralplus/com/GPCamDemo/MainViewController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/MainViewController;->ParseGPCamStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2400(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_battery_status:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2500(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_multi_shot_status:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->tv_res_status:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->tv_time_remain:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_mode:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2900(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_audio:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z

    return v0
.end method

.method static synthetic access$3000(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_audio_status:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z

    return p0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z

    return v0
.end method

.method static synthetic access$3202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z

    return p0
.end method

.method static synthetic access$3300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_record_status:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lgeneralplus/com/GPCamDemo/MainViewController;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->isFastClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 43
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->stopStreaming()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bCurrentAudio:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bCurrentAudio:Z

    return p0
.end method

.method private dismissProgressDialog()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v1, "m_Dialog.dismiss();"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1285
    const/4 v0, 0x0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;

    .line 1288
    :cond_0
    return-void
.end method

.method private getFirmwareVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1258
    const-string v2, ""

    .line 1259
    .local v2, "strFirmwareVersion":Ljava/lang/String;
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1261
    const/4 v0, 0x0

    .local v0, "i32CategoryIndex":I
    :goto_0
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 1262
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1263
    const/4 v1, 0x0

    .local v1, "i32SettingIndex":I
    :goto_1
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 1264
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1266
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1267
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    .line 1266
    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->Version_Setting_ID:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 1268
    sget-object v3, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 1269
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 1270
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    sget v4, Lgeneralplus/com/GPCamLib/GPXMLParse;->Version_Value_Index:I

    .line 1271
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    .line 1272
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1264
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1277
    .end local v0    # "i32CategoryIndex":I
    .end local v1    # "i32SettingIndex":I
    :cond_2
    return-object v2
.end method

.method private isFastClick()Z
    .locals 6

    .prologue
    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 497
    .local v0, "currentTime":J
    iget-wide v4, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mLastClickTime:J

    sub-long v2, v0, v4

    .line 498
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x5dc

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 499
    const/4 v4, 0x1

    .line 503
    :goto_0
    return v4

    .line 502
    :cond_0
    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mLastClickTime:J

    .line 503
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isRecordoCcaptureClick()Z
    .locals 6

    .prologue
    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    .local v0, "currentTime":J
    iget-wide v4, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mLastCapClickTime:J

    sub-long v2, v0, v4

    .line 486
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 487
    const/4 v4, 0x1

    .line 491
    :goto_0
    return v4

    .line 490
    :cond_0
    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mLastCapClickTime:J

    .line 491
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private playStreaming()V
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$10;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$10;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 551
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private playVLC()V
    .locals 2

    .prologue
    .line 574
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    .line 577
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 579
    :cond_0
    return-void
.end method

.method private setVendorID()V
    .locals 5

    .prologue
    const/16 v4, 0x44

    const/16 v3, 0x8

    .line 262
    new-array v0, v3, [B

    .line 263
    .local v0, "byStringData":[B
    const/4 v1, 0x0

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    .line 264
    const/4 v1, 0x1

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    .line 265
    const/4 v1, 0x2

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    .line 266
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 267
    const/4 v1, 0x4

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    .line 268
    const/4 v1, 0x5

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    .line 269
    const/4 v1, 0x6

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    .line 270
    const/4 v1, 0x7

    aput-byte v4, v0, v1

    .line 271
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendVendorCmd([BI)I

    .line 272
    return-void
.end method

.method private setVendorTime()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 275
    new-array v0, v5, [B

    .line 276
    .local v0, "byStringData":[B
    const/16 v2, 0x47

    aput-byte v2, v0, v4

    .line 277
    const/4 v2, 0x1

    const/16 v3, 0x50

    aput-byte v3, v0, v2

    .line 278
    const/4 v2, 0x2

    const/16 v3, 0x56

    aput-byte v3, v0, v2

    .line 279
    const/4 v2, 0x3

    const/16 v3, 0x45

    aput-byte v3, v0, v2

    .line 280
    const/4 v2, 0x4

    const/16 v3, 0x4e

    aput-byte v3, v0, v2

    .line 281
    const/4 v2, 0x5

    const/16 v3, 0x44

    aput-byte v3, v0, v2

    .line 282
    const/4 v2, 0x6

    const/16 v3, 0x4f

    aput-byte v3, v0, v2

    .line 283
    const/4 v2, 0x7

    const/16 v3, 0x52

    aput-byte v3, v0, v2

    .line 284
    const/16 v2, 0x8

    aput-byte v4, v0, v2

    .line 285
    const/16 v2, 0x9

    aput-byte v4, v0, v2

    .line 287
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "today":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 290
    const/16 v2, 0xa

    iget v3, v1, Landroid/text/format/Time;->year:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 291
    const/16 v2, 0xb

    iget v3, v1, Landroid/text/format/Time;->year:I

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 292
    const/16 v2, 0xc

    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 293
    const/16 v2, 0xd

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 294
    const/16 v2, 0xe

    iget v3, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 295
    const/16 v2, 0xf

    iget v3, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 296
    const/16 v2, 0x10

    iget v3, v1, Landroid/text/format/Time;->second:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 297
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendVendorCmd([BI)I

    .line 298
    return-void
.end method

.method private setupControls()V
    .locals 4

    .prologue
    .line 301
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 303
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->vlcContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;

    .line 307
    new-instance v0, Lgeneralplus/com/GPCamDemo/MainViewController$1;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$1;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;

    .line 314
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->toggleFullscreen(Z)V

    .line 317
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->vlcContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$2;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$2;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_file:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$3;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$3;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_audio:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$4;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$4;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_menu:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$5;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$5;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_disconnect:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$6;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$6;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_recordorcapture:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$7;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$7;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_mode:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$8;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$8;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    return-void
.end method

.method private stopStreaming()V
    .locals 4

    .prologue
    .line 556
    sget-object v1, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v2, "stopStreaming"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z

    if-eqz v1, :cond_0

    .line 558
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendCapturePicture()I

    .line 559
    :cond_0
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z

    if-eqz v1, :cond_1

    .line 560
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRecordCmd()I

    .line 562
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z

    .line 568
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 569
    sget-object v1, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v2, "stopStreaming mLibVLC.stop();"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private toggleFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 649
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 650
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 652
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 665
    :goto_0
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 666
    return-void

    .line 663
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public initStreaming()V
    .locals 2

    .prologue
    .line 507
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 512
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 513
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->urlToStream:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z

    if-eqz v0, :cond_1

    .line 709
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->stopStreaming()V

    .line 714
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->Finish()V

    .line 715
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 670
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 672
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    sget-object v2, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v3, "onCreate ..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const v2, 0x7f09001c

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->setContentView(I)V

    .line 220
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->setRequestedOrientation(I)V

    .line 221
    iput-object p0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_Context:Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 224
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "SetTime"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, "iSetTime":I
    if-ne v5, v1, :cond_0

    .line 229
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->setVendorTime()V

    .line 232
    :cond_0
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_FromWrapperHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 233
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    .line 234
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    const-string v3, "Menu.xml"

    invoke-virtual {v2, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetGPCamSendGetParameterFile(Ljava/lang/String;)V

    .line 236
    const v2, 0x7f07006d

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->vlcContainer:Landroid/widget/LinearLayout;

    .line 237
    const v2, 0x7f07006f

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 239
    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    .line 241
    const v2, 0x7f070068

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->tv_res_status:Landroid/widget/TextView;

    .line 242
    const v2, 0x7f070069

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->tv_time_remain:Landroid/widget/TextView;

    .line 244
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_file:Landroid/widget/ImageButton;

    .line 245
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_audio:Landroid/widget/ImageButton;

    .line 246
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_menu:Landroid/widget/ImageButton;

    .line 247
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_disconnect:Landroid/widget/ImageButton;

    .line 248
    const v2, 0x7f070034

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_recordorcapture:Landroid/widget/ImageButton;

    .line 249
    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_mode:Landroid/widget/ImageButton;

    .line 251
    const v2, 0x7f070036

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_battery_status:Landroid/widget/ImageView;

    .line 252
    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_multi_shot_status:Landroid/widget/ImageView;

    .line 253
    const v2, 0x7f070038

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_record_status:Landroid/widget/ImageView;

    .line 254
    const v2, 0x7f070035

    invoke-virtual {p0, v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_audio_status:Landroid/widget/ImageView;

    .line 256
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 257
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 258
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v5}, Landroid/opengl/GLSurfaceView;->setKeepScreenOn(Z)V

    .line 259
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 728
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 730
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 731
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_xmlGategory:Ljava/util/ArrayList;

    .line 733
    :cond_0
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->dismissProgressDialog()V

    .line 734
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 735
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->Finish()V

    .line 736
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 720
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v1, "onPause ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 722
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 723
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 724
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 687
    sget-object v1, Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;

    const-string v2, "onResume ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 689
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->setupControls()V

    .line 690
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->urlToStream:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 691
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainViewController;->playStreaming()V

    .line 693
    :cond_0
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_FromWrapperHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 695
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z

    .line 696
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 697
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainViewController$11;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$11;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 703
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 704
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceholder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 679
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 675
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceholder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 683
    return-void
.end method
