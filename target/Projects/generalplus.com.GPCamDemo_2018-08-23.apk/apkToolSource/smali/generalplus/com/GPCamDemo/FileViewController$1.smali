.class Lgeneralplus/com/GPCamDemo/FileViewController$1;
.super Ljava/lang/Object;
.source "FileViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 91
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$1;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$1;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/FileViewController;->vlcOverlay:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$000(Lgeneralplus/com/GPCamDemo/FileViewController;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 95
    return-void
.end method
