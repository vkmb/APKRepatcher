.class Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/FileViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayVLCRunnable"
.end annotation


# instance fields
.field private i32RepeatCount:I

.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FileViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V
    .locals 1
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 212
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0x1e

    iput v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;->i32RepeatCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    # setter for: Lgeneralplus/com/GPCamDemo/FileViewController;->_bRunVLC:Z
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$502(Z)Z

    .line 221
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->_FileFlag:I
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$600(Lgeneralplus/com/GPCamDemo/FileViewController;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 224
    :try_start_0
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStop()I

    .line 225
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->_bRunVLC:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;->i32RepeatCount:I

    if-ltz v2, :cond_2

    .line 234
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v2

    sget-object v3, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 235
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naPlay()I

    .line 238
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_1
    iget v2, p0, Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;->i32RepeatCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgeneralplus/com/GPCamDemo/FileViewController$PlayVLCRunnable;->i32RepeatCount:I

    goto :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v2, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FileViewController;->PlayVLCThread:Ljava/lang/Thread;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$702(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 246
    return-void
.end method
