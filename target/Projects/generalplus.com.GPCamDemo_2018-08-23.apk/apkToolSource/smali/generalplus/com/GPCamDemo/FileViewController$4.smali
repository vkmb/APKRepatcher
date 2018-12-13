.class Lgeneralplus/com/GPCamDemo/FileViewController$4;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FileViewController;->playVideoStreaming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FileViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 132
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 135
    const-string v0, ""

    .line 136
    .local v0, "urlToStream":Ljava/lang/String;
    sget-boolean v1, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bRtsp:Z

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "rtsp://%s:8080/?action=stream"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 143
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRestartStreaming()I

    .line 144
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FileViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->_FileIndex:I
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$400(Lgeneralplus/com/GPCamDemo/FileViewController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendStartPlayback(I)I

    .line 145
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v1, "timeout=-1;stimeout=-1"

    invoke-static {v0, v1}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 140
    :cond_0
    const-string v1, "http://%s:8080/?action=stream"

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
