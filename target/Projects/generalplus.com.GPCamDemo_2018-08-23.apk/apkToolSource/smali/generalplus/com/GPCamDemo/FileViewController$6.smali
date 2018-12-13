.class Lgeneralplus/com/GPCamDemo/FileViewController$6;
.super Landroid/os/Handler;
.source "FileViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/FileViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FileViewController;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FileViewController;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FileViewController;

    .prologue
    .line 372
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$6;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 376
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 386
    :goto_0
    return-void

    .line 379
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 380
    .local v0, "data":Landroid/os/Bundle;
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FileViewController$6;->this$0:Lgeneralplus/com/GPCamDemo/FileViewController;

    # invokes: Lgeneralplus/com/GPCamDemo/FileViewController;->ParseGPCamStatus(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lgeneralplus/com/GPCamDemo/FileViewController;->access$800(Lgeneralplus/com/GPCamDemo/FileViewController;Landroid/os/Bundle;)V

    .line 381
    const/4 p1, 0x0

    .line 382
    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
