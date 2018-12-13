.class Lgeneralplus/com/GPCamDemo/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseCategoriesData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;

    .prologue
    .line 386
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 390
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedCategoryIndex:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$400()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 391
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedSettingIndex:I
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$300()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    const/4 v3, 0x2

    .line 392
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 394
    .local v1, "i32SettingID":I
    const/4 v2, 0x1

    new-array v0, v2, [B

    aput-byte v4, v0, v4

    .line 395
    .local v0, "byData":[B
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/SettingActivity;->SendSetParameter(II[B)I
    invoke-static {v2, v1, v4, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$100(Lgeneralplus/com/GPCamDemo/SettingActivity;II[B)I

    .line 396
    const/4 v0, 0x0

    .line 398
    const/16 v2, 0x208

    if-ne v2, v1, :cond_1

    .line 399
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$500()Ljava/lang/Thread;

    move-result-object v2

    if-nez v2, :cond_0

    .line 400
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_strFilePath:Ljava/lang/String;
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$600(Lgeneralplus/com/GPCamDemo/SettingActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 401
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$500()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/16 v2, 0x206

    if-ne v2, v1, :cond_0

    .line 405
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$5;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-virtual {v2}, Lgeneralplus/com/GPCamDemo/SettingActivity;->clearApplicationData()V

    goto :goto_0
.end method
