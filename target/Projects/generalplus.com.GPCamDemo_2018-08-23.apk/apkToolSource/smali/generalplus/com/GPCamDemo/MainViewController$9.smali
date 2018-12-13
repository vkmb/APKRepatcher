.class Lgeneralplus/com/GPCamDemo/MainViewController$9;
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
    .line 464
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$9;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method
