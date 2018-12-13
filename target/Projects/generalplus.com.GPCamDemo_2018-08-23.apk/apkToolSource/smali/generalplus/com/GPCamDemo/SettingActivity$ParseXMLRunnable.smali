.class Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParseXMLRunnable"
.end annotation


# instance fields
.field private m_strXMLFilePath:Ljava/lang/String;

.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/SettingActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;
    .param p2, "XMLFilePath"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p2, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->m_strXMLFilePath:Ljava/lang/String;

    .line 426
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$700(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 427
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 431
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 432
    :cond_0
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v3, v3, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->m_strXMLFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lgeneralplus/com/GPCamLib/GPXMLParse;->GetGPXMLInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    # setter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 434
    :cond_1
    const/4 v1, 0x0

    .local v1, "i32CategoryIndex":I
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    .line 435
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 436
    const/4 v2, 0x0

    .local v2, "i32SettingIndex":I
    :goto_1
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 437
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    .line 438
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v3, v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    .line 437
    invoke-virtual {v4, v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetParameter(I)I

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 435
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v2    # "i32SettingIndex":I
    :cond_3
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_2
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_handler:Landroid/os/Handler;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$800(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable$1;

    invoke-direct {v4, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable$1;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$500()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 458
    # setter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;
    invoke-static {v8}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 459
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$700(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 460
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$700(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 461
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$700(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v8}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$702(Lgeneralplus/com/GPCamDemo/SettingActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 465
    :cond_4
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
