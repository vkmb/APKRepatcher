.class Lgeneralplus/com/GPCamDemo/FileViewController$5;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FileViewController;->playPictureStreaming()V
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
    .line 158
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$5;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 161
    const-string v1, ""

    .line 162
    .local v1, "urlToStream":Ljava/lang/String;
    sget-boolean v2, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bRtsp:Z

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "rtsp://%s:8080/?action=stream"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 168
    :goto_0
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 169
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 170
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRestartStreaming()I

    .line 171
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naInitAndPlay(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 178
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FileViewController$5;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->_FileIndex:I
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$400(Lgeneralplus/com/GPCamDemo/FileViewController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendStartPlayback(I)I

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "i":I
    :cond_0
    const-string v2, "http://%s:8080/?action=stream"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 179
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method
