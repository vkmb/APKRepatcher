.class Lgeneralplus/com/GPCamDemo/MainViewController$19;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->ShowModePIC(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

.field final synthetic val$bRecordMode:Z


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 1188
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    iput-boolean p2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->val$bRecordMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1192
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->val$bRecordMode:Z

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_mode:Landroid/widget/ImageButton;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2800(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1195
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_audio:Landroid/widget/ImageButton;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2900(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1202
    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_mode:Landroid/widget/ImageButton;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2800(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1200
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$19;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgbtn_audio:Landroid/widget/ImageButton;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2900(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
