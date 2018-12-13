.class Lgeneralplus/com/GPCamDemo/FilesActivity$6$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$6;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/FilesActivity$6;

    .prologue
    .line 1071
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$6$1;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1074
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1077
    const/4 v0, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1080
    :cond_0
    const/4 v0, 0x3

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2302(I)I

    .line 1081
    const/4 v0, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1902(Z)Z

    .line 1082
    return-void
.end method
