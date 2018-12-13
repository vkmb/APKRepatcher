.class Lgeneralplus/com/GPCamDemo/FilesActivity$6;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

.field final synthetic val$strFilePath:Ljava/lang/String;

.field final synthetic val$strName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 1068
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    iput-object p2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->val$strFilePath:Ljava/lang/String;

    iput-object p3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->val$strName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1070
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->val$strFilePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->val$strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->copyFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3500(Lgeneralplus/com/GPCamDemo/FilesActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FilesActivity$6$1;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$6$1;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$6;)V

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method
