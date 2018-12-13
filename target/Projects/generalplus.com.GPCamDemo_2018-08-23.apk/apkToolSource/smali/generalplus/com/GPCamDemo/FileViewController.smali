.class public Lgeneralplus/com/GPCamDemo/FileViewController;
.super Landroid/app/Activity;
.source "FileViewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;
    }
.end annotation


# static fields
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

.field private static _bIsPause:Z

.field private static _bRunVLC:Z

.field private static mSarDen:I

.field private static mSarNum:I

.field private static mVideoHeight:I

.field private static mVideoVisibleHeight:I

.field private static mVideoVisibleWidth:I

.field private static mVideoWidth:I


# instance fields
.field private _FileFlag:I

.field private _FileIndex:I

.field private _urlToStream:Ljava/lang/String;

.field private handlerOverlay:Landroid/os/Handler;

.field private imgbtn_playpause:Landroid/widget/ImageButton;

.field private mCurrentSize:I

.field private mLastClickTime:J

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private m_FromWrapperHandler:Landroid/os/Handler;

.field private runnableOverlay:Ljava/lang/Runnable;

.field private final timeToDisappear:J

.field private vlcContainer:Landroid/widget/LinearLayout;

.field private vlcOverlay:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string v0, "FileViewController"

    sput-object v0, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    .line 60
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FileViewController;->_bRunVLC:Z

    .line 61
    sput-boolean v1, Lgeneralplus/com/GPCamDemo/FileViewController;->_bIsPause:Z

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamDemo/FileViewController;->PlayVLCThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mCurrentSize:I

    .line 59
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->timeToDisappear:J

    .line 371
    new-instance v0, Lgeneralplus/com/GPCamDemo/FileViewController$6;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/FileViewController$6;-><init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->m_FromWrapperHandler:Landroid/os/Handler;

    return-void
.end method

.method private Finish()V
    .locals 2

    .prologue
    .line 352
    sget-object v0, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v1, "Finish ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 354
    return-void
.end method

.method private FinishToMainController()V
    .locals 3

    .prologue
    .line 479
    sget-object v1, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v2, "Finish ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    .line 481
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void
.end method

.method private ParseGPCamStatus(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "StatusBundle"    # Landroid/os/Bundle;

    .prologue
    .line 393
    const-string v7, "CmdIndex"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, "i32CmdIndex":I
    const-string v7, "CmdType"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 395
    .local v2, "i32CmdType":I
    const-string v7, "CmdMode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 396
    .local v5, "i32Mode":I
    const-string v7, "CmdID"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 397
    .local v0, "i32CmdID":I
    const-string v7, "DataSize"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 398
    .local v3, "i32DataSize":I
    const-string v7, "Data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 401
    .local v6, "pbyData":[B
    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 402
    sparse-switch v5, :sswitch_data_0

    .line 476
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 404
    :sswitch_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 417
    :sswitch_1
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "GPSOCK_MODE_Record ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :sswitch_2
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "GPSOCK_MODE_CapturePicture ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :sswitch_3
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "GPSOCK_MODE_Playback ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    :sswitch_4
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "GPSOCK_MODE_Menu ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :sswitch_5
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "GPSOCK_MODE_Vendor ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_1
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    .line 435
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int v4, v7, v8

    .line 437
    .local v4, "i32ErrorCode":I
    sparse-switch v4, :sswitch_data_1

    goto :goto_0

    .line 471
    :sswitch_6
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_LostConnection ..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->FinishToMainController()V

    goto :goto_0

    .line 440
    :sswitch_7
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_ServerIsBusy ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :sswitch_8
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_InvalidCommand ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :sswitch_9
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_RequestTimeOut ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :sswitch_a
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_ModeError ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :sswitch_b
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_NoStorage ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :sswitch_c
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_WriteFail ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :sswitch_d
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_GetFileListFail ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :sswitch_e
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_GetThumbnailFail ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 464
    :sswitch_f
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_FullStorage ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 467
    :sswitch_10
    sget-object v7, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v8, "Error_SocketClosed ... "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->FinishToMainController()V

    goto/16 :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 437
    :sswitch_data_1
    .sparse-switch
        0xffc0 -> :sswitch_6
        0xffc1 -> :sswitch_10
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

.method static synthetic access$000(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 25
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamDemo/FileViewController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 25
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->runnableOverlay:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 25
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->handlerOverlay:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lgeneralplus/com/GPCamDemo/FileViewController;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 25
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->stopStreaming()V

    return-void
.end method

.method static synthetic access$400(Lgeneralplus/com/GPCamDemo/FileViewController;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 25
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileIndex:I

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lgeneralplus/com/GPCamDemo/FileViewController;->_bRunVLC:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_bRunVLC:Z

    return p0
.end method

.method static synthetic access$600(Lgeneralplus/com/GPCamDemo/FileViewController;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 25
    iget v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileFlag:I

    return v0
.end method

.method static synthetic access$702(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 25
    sput-object p0, Lgeneralplus/com/GPCamDemo/FileViewController;->PlayVLCThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$800(Lgeneralplus/com/GPCamDemo/FileViewController;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FileViewController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/FileViewController;->ParseGPCamStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method private isFastClick()Z
    .locals 6

    .prologue
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 320
    .local v0, "currentTime":J
    iget-wide v4, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mLastClickTime:J

    sub-long v2, v0, v4

    .line 321
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 322
    const/4 v4, 0x1

    .line 326
    :goto_0
    return v4

    .line 325
    :cond_0
    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mLastClickTime:J

    .line 326
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private playLocalFile()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 127
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_urlToStream:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private playPictureStreaming()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FileViewController$5;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FileViewController$5;-><init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    return-void
.end method

.method private playVideoStreaming()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FileViewController$4;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FileViewController$4;-><init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method private setupControls()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 87
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->vlcContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->handlerOverlay:Landroid/os/Handler;

    .line 91
    new-instance v0, Lgeneralplus/com/GPCamDemo/FileViewController$1;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/FileViewController$1;-><init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->runnableOverlay:Ljava/lang/Runnable;

    .line 98
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->handlerOverlay:Landroid/os/Handler;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->runnableOverlay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->toggleFullscreen(Z)V

    .line 101
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->vlcContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FileViewController$2;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FileViewController$2;-><init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FileViewController$3;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FileViewController$3;-><init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method private stopStreaming()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 185
    iget v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileFlag:I

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 189
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendPausePlayback()I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->playVideoStreaming()V

    goto :goto_0

    .line 196
    :cond_2
    iget v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileFlag:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/FileViewController;->_bIsPause:Z

    if-nez v1, :cond_3

    .line 200
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naPause()I

    .line 207
    :goto_1
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/FileViewController;->_bIsPause:Z

    if-nez v1, :cond_4

    :goto_2
    sput-boolean v0, Lgeneralplus/com/GPCamDemo/FileViewController;->_bIsPause:Z

    goto :goto_0

    .line 204
    :cond_3
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naResume()I

    goto :goto_1

    .line 207
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private toggleFullscreen(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .prologue
    .line 251
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 252
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 254
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 266
    :goto_0
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 267
    return-void

    .line 264
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
    .line 367
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v0

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 369
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 332
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->isFastClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 336
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 337
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    sget-object v1, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v2, "GPCamSendStopPlayback ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendStopPlayback()I

    .line 341
    const-wide/16 v2, 0x320

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_1
    :goto_1
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->Finish()V

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 271
    sget-object v0, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->setRequestedOrientation(I)V

    .line 72
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->vlcContainer:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 75
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;

    .line 76
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    .line 78
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 79
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 80
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setKeepScreenOn(Z)V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lgeneralplus/com/GPCamDemo/FileViewController;->TAG:Ljava/lang/String;

    const-string v1, "onPause ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 313
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 280
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "FileURL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_urlToStream:Ljava/lang/String;

    .line 282
    const-string v1, "FileFlag"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileFlag:I

    .line 283
    const-string v1, "FileIndex"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileIndex:I

    .line 284
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->setupControls()V

    .line 285
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->initStreaming()V

    .line 287
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_urlToStream:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->m_FromWrapperHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 292
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetStreaming(Z)I

    .line 294
    iget v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->_FileFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 296
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->playPictureStreaming()V

    .line 297
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->imgbtn_playpause:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 306
    :goto_0
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 307
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->playVideoStreaming()V

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FileViewController;->playLocalFile()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "surfaceholder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 361
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 357
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceholder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 364
    return-void
.end method
