.class Lgeneralplus/com/GPCamDemo/MainViewController$18;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->ShowTime(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

.field final synthetic val$strSecRemain:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 1176
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$18;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    iput-object p2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$18;->val$strSecRemain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$18;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->tv_time_remain:Landroid/widget/TextView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$2700(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$18;->val$strSecRemain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    return-void
.end method
