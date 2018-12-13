.class Lgeneralplus/com/GPCamDemo/FileViewController$2;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FileViewController;->setupControls()V
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
    .line 101
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$000(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$000(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    :goto_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$200(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$100(Lgeneralplus/com/GPCamDemo/FileViewController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->handlerOverlay:Landroid/os/Handler;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$200(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->runnableOverlay:Ljava/lang/Runnable;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$100(Lgeneralplus/com/GPCamDemo/FileViewController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$2;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$000(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
