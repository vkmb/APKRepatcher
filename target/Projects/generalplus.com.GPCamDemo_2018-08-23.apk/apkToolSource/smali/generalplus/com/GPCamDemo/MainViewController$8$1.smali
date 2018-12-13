.class Lgeneralplus/com/GPCamDemo/MainViewController$8$1;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/MainViewController$8;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController$8;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/MainViewController$8;

    .prologue
    .line 434
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$8$1;->this$1:Lgeneralplus/com/GPCamDemo/MainViewController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 438
    packed-switch p2, :pswitch_data_0

    .line 452
    :goto_0
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_CurrentMode:I
    invoke-static {p2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1302(I)I

    .line 453
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 454
    return-void

    .line 440
    :pswitch_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_Capturing:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendCapturePicture()I

    .line 442
    :cond_0
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$202(Z)Z

    .line 443
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    goto :goto_0

    .line 446
    :pswitch_1
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_Recording:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendRecordCmd()I

    .line 448
    :cond_1
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->_bSetModeDone:Z
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$202(Z)Z

    .line 449
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
