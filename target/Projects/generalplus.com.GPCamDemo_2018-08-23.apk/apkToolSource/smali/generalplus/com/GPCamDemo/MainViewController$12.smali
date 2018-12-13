.class Lgeneralplus/com/GPCamDemo/MainViewController$12;
.super Landroid/os/Handler;
.source "MainViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 750
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$12;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 753
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 754
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 764
    :goto_0
    return-void

    .line 757
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 758
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$12;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/MainViewController;->ParseGPCamStatus(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2200(Lgeneralplus/com/GPCamDemo/MainViewController;Landroid/os/Bundle;)V

    .line 759
    const/4 p1, 0x0

    .line 760
    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
