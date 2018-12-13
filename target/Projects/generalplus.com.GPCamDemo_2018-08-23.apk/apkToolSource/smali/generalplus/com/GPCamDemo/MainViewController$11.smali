.class Lgeneralplus/com/GPCamDemo/MainViewController$11;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->onResume()V
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
    .line 697
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$11;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$11;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    const/4 v1, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_bDelay:Z
    invoke-static {v0, v1}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$102(Lgeneralplus/com/GPCamDemo/MainViewController;Z)Z

    .line 701
    return-void
.end method
