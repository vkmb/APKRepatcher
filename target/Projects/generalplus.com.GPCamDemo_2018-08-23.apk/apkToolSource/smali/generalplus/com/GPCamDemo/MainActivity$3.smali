.class Lgeneralplus/com/GPCamDemo/MainActivity$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MainActivity.java"


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

.field final synthetic val$connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainActivity;Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    iput-object p2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$3;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 163
    const-string v0, "test"

    const-string v1, "\u5df2\u6839\u636e\u529f\u80fd\u548c\u4f20\u8f93\u7c7b\u578b\u627e\u5230\u5408\u9002\u7684\u7f51\u7edc"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$3;->val$connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    goto :goto_0
.end method
