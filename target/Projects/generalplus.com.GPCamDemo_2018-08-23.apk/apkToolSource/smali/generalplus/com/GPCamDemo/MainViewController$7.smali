.class Lgeneralplus/com/GPCamDemo/MainViewController$7;
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
    .line 391
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->isRecordoCcaptureClick()Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1200(Lgeneralplus/com/GPCamDemo/MainViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->isFastClick()Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$700(Lgeneralplus/com/GPCamDemo/MainViewController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    :cond_2
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1300()I

    move-result v0

    if-nez v0, :cond_3

    .line 402
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1002(Z)Z

    .line 403
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1402(Z)Z

    .line 404
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1502(Z)Z

    .line 405
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRecordCmd()I

    goto :goto_0

    .line 406
    :cond_3
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1300()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 407
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_ChangeToAnotherModeDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1002(Z)Z

    .line 408
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1402(Z)Z

    .line 409
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1502(Z)Z

    .line 410
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_4

    .line 411
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Context:Landroid/content/Context;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1700(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1602(Lgeneralplus/com/GPCamDemo/MainViewController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 412
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 413
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 415
    :cond_4
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$7;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 416
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendCapturePicture()I

    goto :goto_0
.end method
