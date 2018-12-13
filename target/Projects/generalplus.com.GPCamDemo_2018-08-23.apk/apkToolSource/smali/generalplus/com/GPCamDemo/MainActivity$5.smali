.class Lgeneralplus/com/GPCamDemo/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainActivity;->showSaveLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 254
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    const/4 v2, 0x1

    .line 256
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_inputSelection:I
    invoke-static {v0, p2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$602(Lgeneralplus/com/GPCamDemo/MainActivity;I)I

    .line 258
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/MainActivity;->runnableRecordLogCat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    const/4 v1, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->bWriteLogCatFile:Z
    invoke-static {v0, v1}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$702(Lgeneralplus/com/GPCamDemo/MainActivity;Z)Z

    .line 260
    if-ne v2, p2, :cond_0

    .line 261
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-virtual {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->isExternalStorageWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->bWriteLogCatFile:Z
    invoke-static {v0, v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$702(Lgeneralplus/com/GPCamDemo/MainActivity;Z)Z

    .line 263
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/MainActivity;->runnableRecordLogCat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    return-void
.end method
