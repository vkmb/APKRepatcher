.class Lgeneralplus/com/GPCamDemo/FileViewController$3;
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
    .line 114
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FileViewController$3;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/FileViewController;->stopStreaming()V
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$300(Lgeneralplus/com/GPCamDemo/FileViewController;)V

    .line 119
    return-void
.end method
