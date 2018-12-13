.class public Lcom/generalplus/ffmpegLib/ffmpegWrapper;
.super Ljava/lang/Object;
.source "ffmpegWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$eEncodeContainer;,
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$eDisplayScale;,
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;,
        Lcom/generalplus/ffmpegLib/ffmpegWrapper$eFFMPEG_ERRCODE;
    }
.end annotation


# static fields
.field public static final CODEC_ID_H264:I = 0x1c

.field public static final CODEC_ID_MJPEG:I = 0x8

.field public static final CODEC_ID_NONE:I = 0x0

.field public static final EXTRACTOR_BUSY:I = 0x1

.field public static final EXTRACTOR_DECODEFAILED:I = 0x3

.field public static final EXTRACTOR_NOSUCHFRAME:I = 0x4

.field public static final EXTRACTOR_OK:I = 0x0

.field public static final EXTRACTOR_READFILEFAILED:I = 0x2

.field public static final FFMPEG_STATUS_PLAYING:I = 0x0

.field public static final FFMPEG_STATUS_SAVESNAPSHOTCOMPLETE:I = 0x2

.field public static final FFMPEG_STATUS_SAVEVIDEOCOMPLETE:I = 0x3

.field public static final FFMPEG_STATUS_STOPPED:I = 0x1

.field public static final LOW_LOADING_TRANSCODE_OPTIONS:Ljava/lang/String; = "qmin=15;qmax=35;b=400000;g=15;bf=0;refs=2;weightp=simple;level=2.2;x264-params=lookahead-threads=3:subme=4:chroma_qp_offset=0"

.field private static final TAG:Ljava/lang/String; = "ffmpegWrapper"

.field private static m_Instance:Lcom/generalplus/ffmpegLib/ffmpegWrapper;

.field private static m_NowViewHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    const-string v1, "ffmpegWrapper"

    const-string v2, "Trying to load ffmpeg.so ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v1, "ffmpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .local v0, "Ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 75
    .end local v0    # "Ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 76
    .restart local v0    # "Ule":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    const-string v1, "ffmpegWrapper"

    const-string v2, "Cannot load ffmpeg.so ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sput-object p0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_Instance:Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    .line 85
    return-void
.end method

.method public static getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_Instance:Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    return-object v0
.end method

.method public static native naDrawFrame()I
.end method

.method public static native naExtractFrame(Ljava/lang/String;Ljava/lang/String;J)I
.end method

.method public static native naGetDecodeFrame()Lcom/generalplus/ffmpegLib/ffDecodeFrame;
.end method

.method public static native naGetDuration()J
.end method

.method public static native naGetFrameCnt()J
.end method

.method public static native naGetPosition()J
.end method

.method public static native naGetRevSizeCnt()J
.end method

.method public static native naGetStreamCodecID()I
.end method

.method public static native naGetVideoRes()[I
.end method

.method public static native naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native naInitDrawFrame()I
.end method

.method public static native naPause()I
.end method

.method public static native naPlay()I
.end method

.method public static native naResume()I
.end method

.method public static native naSaveSnapshot(Ljava/lang/String;)I
.end method

.method public static native naSaveVideo(Ljava/lang/String;)I
.end method

.method public static native naSeek(J)I
.end method

.method public static native naSetCovertDecodeFrameFormat(I)I
.end method

.method public static native naSetDebugMessage(Z)I
.end method

.method public static native naSetDecodeOptions(Ljava/lang/String;)I
.end method

.method public static native naSetEncodeByLocalTime(Z)I
.end method

.method public static native naSetForceToTranscode(Z)I
.end method

.method public static native naSetRepeat(Z)I
.end method

.method public static native naSetScaleMode(I)I
.end method

.method public static native naSetStreaming(Z)I
.end method

.method public static native naSetTransCodeOptions(Ljava/lang/String;)I
.end method

.method public static native naSetZoomInRatio(F)I
.end method

.method public static native naSetup(II)I
.end method

.method public static native naStatus()I
.end method

.method public static native naStop()I
.end method

.method public static native naStopSaveVideo()I
.end method


# virtual methods
.method public SetViewHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "ViewHandler"    # Landroid/os/Handler;

    .prologue
    .line 121
    sput-object p1, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_NowViewHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method StatusChange(I)V
    .locals 2
    .param p1, "i32Status"    # I

    .prologue
    .line 137
    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_NowViewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 139
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 140
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 141
    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->m_NowViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 101
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naDrawFrame()I

    .line 103
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 107
    const-string v0, "ffmpegWrapper"

    const-string v1, "onSurfaceChanged ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p2, p3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetup(II)I

    .line 109
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "unused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 95
    const-string v0, "ffmpegWrapper"

    const-string v1, "onSurfaceCreated ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitDrawFrame()I

    .line 97
    return-void
.end method
