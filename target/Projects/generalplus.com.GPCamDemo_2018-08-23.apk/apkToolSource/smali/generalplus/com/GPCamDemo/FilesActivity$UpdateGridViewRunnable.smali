.class Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateGridViewRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 499
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 504
    const-string v1, "FilesActivity"

    const-string v2, "UpdateGridViewRunnable ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$1;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$1;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 515
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$2;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable$2;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    const-string v1, "FilesActivity"

    const-string v2, "UpdateGridViewRunnable ... Done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v1, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 530
    return-void
.end method
