.class Lgeneralplus/com/GPCamDemo/MainViewController$21;
.super Ljava/lang/Object;
.source "MainViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainViewController;->AnimateRecord(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

.field final synthetic val$bEnableRecord:Z


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainViewController;Z)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainViewController;

    .prologue
    .line 1234
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainViewController$21;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    iput-boolean p2, p0, Lgeneralplus/com/GPCamDemo/MainViewController$21;->val$bEnableRecord:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1239
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$21;->val$bEnableRecord:Z

    if-eqz v0, :cond_2

    .line 1240
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$21;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_record_status:Landroid/widget/ImageView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3400(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;

    move-result-object v3

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3300()Ljava/util/ArrayList;

    move-result-object v0

    .line 1242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;

    iget v0, v0, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;->RecordResIndex:I

    .line 1241
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1246
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3200()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3202(Z)Z

    .line 1253
    :goto_2
    return-void

    .line 1244
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$21;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_record_status:Landroid/widget/ImageView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3400(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;

    move-result-object v3

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3300()Ljava/util/ArrayList;

    move-result-object v0

    .line 1245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;

    iget v0, v0, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;->RecordResIndex:I

    .line 1244
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1246
    goto :goto_1

    .line 1249
    :cond_2
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainViewController$21;->this$0:Lgeneralplus/com/GPCamDemo/MainViewController;

    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->imgview_record_status:Landroid/widget/ImageView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3400(Lgeneralplus/com/GPCamDemo/MainViewController;)Landroid/widget/ImageView;

    move-result-object v1

    .line 1250
    # getter for: Lgeneralplus/com/GPCamDemo/MainViewController;->m_RecordList:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3300()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;

    iget v0, v0, Lgeneralplus/com/GPCamDemo/MainViewController$RecordRes;->RecordResIndex:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1251
    # setter for: Lgeneralplus/com/GPCamDemo/MainViewController;->isAnimating:Z
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainViewController;->access$3202(Z)Z

    goto :goto_2
.end method
