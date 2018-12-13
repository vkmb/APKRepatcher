.class Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;
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
    name = "GetGPCamStatusRunnable"
.end annotation


# instance fields
.field private i32DelayTime:I

.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 1
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 625
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    const/16 v0, 0x1f4

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;->i32DelayTime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 632
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bRunVLC:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    .line 636
    :try_start_0
    iget v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$GetGPCamStatusRunnable;->i32DelayTime:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2000()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 643
    const/4 v1, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->GetGPCamStatusThread:Ljava/lang/Thread;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 644
    return-void
.end method
