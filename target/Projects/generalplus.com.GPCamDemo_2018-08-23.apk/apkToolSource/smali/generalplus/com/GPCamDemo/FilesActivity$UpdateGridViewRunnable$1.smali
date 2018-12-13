.class Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;

    .prologue
    .line 507
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 509
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 510
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->UpdateGridView()V
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2800(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    .line 511
    :cond_0
    return-void
.end method
