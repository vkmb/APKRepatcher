.class Lgeneralplus/com/GPCamDemo/MainViewController$4;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->setupControls()V
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
    .line 352
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$4;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bCurrentAudio:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$900()Z

    move-result v1

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendAudioOnOff(Z)I

    .line 359
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bCurrentAudio:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bCurrentAudio:Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$902(Z)Z

    .line 360
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
