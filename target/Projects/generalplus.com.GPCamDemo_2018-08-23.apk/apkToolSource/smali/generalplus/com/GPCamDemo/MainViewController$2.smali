.class Lgeneralplus/com/GPCamDemo/MainViewController$2;
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
    .line 317
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$100(Lgeneralplus/com/GPCamDemo/MainViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$300()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return vlcContainer setOnClickListener _bSetModeDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$200()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _bSetRestartStreamingDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 323
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetRestartStreamingDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$300()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$000(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$000(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 331
    :goto_1
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->TAG:Ljava/lang/String;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vlcContainer setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$000(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
