.class Lgeneralplus/com/GPCamDemo/MainViewController$6;
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
    .line 381
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$6;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$6;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->stopStreaming()V
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$800(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    .line 386
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$6;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->Finish()V
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1100(Lgeneralplus/com/GPCamDemo/MainViewController;)V

    .line 387
    return-void
.end method
