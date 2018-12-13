.class Lgeneralplus/com/GPCamDemo/MainViewController$10;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->playStreaming()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 522
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$10;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 526
    const/16 v1, 0x32

    .line 528
    .local v1, "i32RetryCount":I
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$202(Z)Z

    .line 529
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$302(Z)Z

    .line 531
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playStreaming SendSetMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1300()I

    move-result v3

    invoke-virtual {v2, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 533
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$200()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 536
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$302(Z)Z

    .line 547
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRestartStreaming()I

    .line 548
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$10;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->playVLC()V
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1800(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    .line 550
    :cond_1
    return-void
.end method
