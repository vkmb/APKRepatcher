.class Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayVLCRunnable"
.end annotation


# instance fields
.field private i32RepeatCount:I

.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 1
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 582
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    const/4 v0, 0x3

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->i32RepeatCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 589
    const/4 v2, 0x1

    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1902(Z)Z

    .line 590
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2000()Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_0

    .line 592
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {v3, v4}, Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 593
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2000()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 597
    :cond_0
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->i32RepeatCount:I

    if-ltz v2, :cond_2

    .line 605
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naStatus()I

    move-result v2

    sget-object v3, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 607
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->initStreaming()V

    .line 612
    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 617
    :goto_1
    iget v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->i32RepeatCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$PlayVLCRunnable;->i32RepeatCount:I

    goto :goto_0

    .line 598
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 619
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2100()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 620
    const/4 v2, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->PlayVLCThread:Ljava/lang/Thread;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2102(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 621
    return-void
.end method
