.class Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;

    .prologue
    .line 449
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-virtual {v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->clearApplicationData()V

    .line 452
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 453
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable$1;->this$1:Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-virtual {v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->UpdateSettingListView()V

    .line 454
    :cond_0
    return-void
.end method
