.class Lgeneralplus/com/GPCamDemo/MainViewController$14;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->ParseGPCamStatus(Landroid/os/Bundle;)V
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
    .line 971
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$14;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 974
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$14;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$1700(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$14;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-virtual {v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 975
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 976
    return-void
.end method
