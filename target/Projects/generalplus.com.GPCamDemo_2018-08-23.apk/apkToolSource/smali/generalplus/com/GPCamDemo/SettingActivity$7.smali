.class Lgeneralplus/com/GPCamDemo/SettingActivity$7;
.super Landroid/os/Handler;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;

    .prologue
    .line 545
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$7;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 549
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 559
    :goto_0
    return-void

    .line 552
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 553
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$7;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$900(Lgeneralplus/com/GPCamDemo/SettingActivity;Landroid/os/Bundle;)V

    .line 554
    const/4 p1, 0x0

    .line 555
    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
