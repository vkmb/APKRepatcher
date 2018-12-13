.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    .prologue
    .line 302
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsCopingFile:Z
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    .line 307
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    const-string v3, "FileName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "deviceDirDelete":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 311
    .end local v0    # "deviceDirDelete":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 312
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 313
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32CommandIndex:I
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamAbort(I)I

    .line 314
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetStatus()I

    .line 315
    return-void
.end method
