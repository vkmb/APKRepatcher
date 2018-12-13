.class Lgeneralplus/com/GPCamDemo/MainViewController$16;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->ShowMultiShot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

.field final synthetic val$bMultiShot:Z


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 1078
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$16;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    iput-boolean p2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$16;->val$bMultiShot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1082
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$16;->val$bMultiShot:Z

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$16;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_multi_shot_status:Landroid/widget/ImageView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2500(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$16;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_multi_shot_status:Landroid/widget/ImageView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2500(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
