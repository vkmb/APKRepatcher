.class Lgeneralplus/com/GPCamDemo/FilesActivity$5;
.super Landroid/os/Handler;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 855
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 858
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 859
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 869
    :goto_0
    return-void

    .line 862
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 863
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3400(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/os/Bundle;)V

    .line 864
    const/4 p1, 0x0

    .line 865
    goto :goto_0

    .line 859
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
