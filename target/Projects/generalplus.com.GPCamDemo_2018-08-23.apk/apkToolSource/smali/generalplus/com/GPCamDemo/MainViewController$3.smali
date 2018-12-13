.class Lgeneralplus/com/GPCamDemo/MainViewController$3;
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
    .line 337
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->isFastClick()Z
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$700(Lgeneralplus/com/GPCamDemo/MainViewController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->stopStreaming()V
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$800(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    .line 345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    const-class v2, Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v1, v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
