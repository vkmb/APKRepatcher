.class Lgeneralplus/com/GPCamDemo/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/MainActivity;
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
    .line 485
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 490
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->bWriteLogCatFile:Z
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$700(Lgeneralplus/com/GPCamDemo/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget v3, v2, Lgeneralplus/com/GPCamDemo/MainActivity;->i32RecordLogCatCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lgeneralplus/com/GPCamDemo/MainActivity;->i32RecordLogCatCounter:I

    .line 494
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget v2, v2, Lgeneralplus/com/GPCamDemo/MainActivity;->i32RecordLogCatCounter:I

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget v3, v3, Lgeneralplus/com/GPCamDemo/MainActivity;->MAX_LOGCAT_TIMES:I

    if-lt v2, v3, :cond_0

    .line 496
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    const-string v3, ""

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1202(Lgeneralplus/com/GPCamDemo/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iput v7, v2, Lgeneralplus/com/GPCamDemo/MainActivity;->i32RecordLogCatCounter:I

    .line 502
    :cond_0
    :try_start_0
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/MainActivity;->GetFileName()Ljava/lang/String;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1300(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1202(Lgeneralplus/com/GPCamDemo/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat -v time -f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1200(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 508
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1200(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "dir":Ljava/io/File;
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    invoke-virtual {v2, v3}, Lgeneralplus/com/GPCamDemo/MainActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    :goto_1
    return-void

    .line 514
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    const-string v3, ""

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1202(Lgeneralplus/com/GPCamDemo/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 517
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-virtual {v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Save File Fail"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 518
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 525
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/MainActivity;->runnableRecordLogCat:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
