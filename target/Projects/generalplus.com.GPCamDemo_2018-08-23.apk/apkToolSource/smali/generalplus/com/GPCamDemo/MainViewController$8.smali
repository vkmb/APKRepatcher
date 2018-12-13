.class Lgeneralplus/com/GPCamDemo/MainViewController$8;
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
    .line 422
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 426
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$600(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$500(Lgeneralplus/com/GPCamDemo/MainViewController;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v3}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v3}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 430
    .local v1, "mode":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Context:Landroid/content/Context;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1700(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 431
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 433
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1300()I

    move-result v2

    new-instance v3, Lgeneralplus/com/GPCamDemo/MainViewController$8$1;

    invoke-direct {v3, p0}, Lgeneralplus/com/GPCamDemo/MainViewController$8$1;-><init>(Lgeneralplus/com/GPCamDemo/MainViewController$8;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 458
    return-void
.end method
