.class Lgeneralplus/com/GPCamDemo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 98
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$000()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$200(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$102(Lgeneralplus/com/GPCamDemo/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 106
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 107
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-virtual {v1}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 111
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {v1, v2}, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 112
    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$000()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    :cond_1
    return-void
.end method
