.class Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    .prologue
    .line 435
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 439
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->access$1100(Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    const-class v4, Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v2, "toVlcPlayer":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "SetTime"

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v4, v4, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$500(Lgeneralplus/com/GPCamDemo/MainActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 445
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-virtual {v3, v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 458
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "toVlcPlayer":Landroid/content/Intent;
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$200(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v4, v4, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-virtual {v4}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 452
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-virtual {v3, v1}, Lgeneralplus/com/GPCamDemo/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
