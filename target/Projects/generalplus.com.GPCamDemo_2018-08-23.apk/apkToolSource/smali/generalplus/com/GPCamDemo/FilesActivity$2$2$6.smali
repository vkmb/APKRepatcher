.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;
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
    .line 391
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 395
    const-string v1, "FilesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 2= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z

    move-result-object v3

    aget-boolean v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-boolean v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$fbFileExist:Z

    if-eqz v1, :cond_0

    .line 398
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    const-string v3, "FileName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "deviceDirDelete":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 400
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    .end local v0    # "deviceDirDelete":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 404
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 406
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    const/4 v2, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2502(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 409
    :cond_1
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2502(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 410
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2500(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 414
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v1, v1, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_iDeleteSDposition:I
    invoke-static {v1, v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2602(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 415
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z
    invoke-static {v7}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1902(Z)Z

    .line 416
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 417
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget v2, v2, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    invoke-virtual {v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendDeleteFile(I)I

    .line 419
    :cond_2
    return-void
.end method
