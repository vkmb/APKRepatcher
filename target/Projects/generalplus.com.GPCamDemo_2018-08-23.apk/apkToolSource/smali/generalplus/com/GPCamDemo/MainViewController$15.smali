.class Lgeneralplus/com/GPCamDemo/MainViewController$15;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->ShowBattery(BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

.field final synthetic val$battery:Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 1050
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$15;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    iput-object p2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$15;->val$battery:Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$15;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_battery_status:Landroid/widget/ImageView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2400(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$15;->val$battery:Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;

    iget v1, v1, Lgeneralplus/com/GPCamDemo/MainViewController$BatteryRes;->BatterResIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    return-void
.end method
