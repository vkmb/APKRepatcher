.class Lgeneralplus/com/GPCamDemo/SettingActivity$4;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity;->getListPreference(II)Landroid/preference/ListPreference;
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
    .line 302
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 307
    move-object v7, p2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v7, p2

    .line 308
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 311
    .local v2, "i32KeyValue":I
    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v7, v7, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v7, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v7, v11, v7

    div-int v1, v2, v7

    .line 313
    .local v1, "i32CategoryIndex":I
    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v7, v7, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v7, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v7, v11, v7

    mul-int/2addr v7, v1

    sub-int v7, v2, v7

    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v8, v8, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v8, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int v8, v11, v8

    div-int v4, v7, v8

    .line 316
    .local v4, "i32SettingIndex":I
    const/4 v5, 0x0

    .line 317
    .local v5, "i32Value":I
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 320
    const/4 v6, 0x0

    .local v6, "i32ValueIndex":I
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v7

    .line 321
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    move-object v7, p2

    .line 324
    check-cast v7, Ljava/lang/String;

    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v8

    .line 325
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v8, v8, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 326
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v8, v8, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v8, v8, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    .line 328
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 330
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v7

    .line 331
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 332
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueID:Ljava/lang/String;

    .line 334
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-static {v7, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 341
    .end local v6    # "i32ValueIndex":I
    :cond_0
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v7

    .line 342
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 343
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    .line 344
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    invoke-static {v7, v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 345
    .local v3, "i32SettingID":I
    new-array v0, v11, [B

    int-to-byte v7, v5

    aput-byte v7, v0, v12

    .line 346
    .local v0, "byData":[B
    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/SettingActivity;->SendSetParameter(II[B)I
    invoke-static {v7, v3, v11, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$100(Lgeneralplus/com/GPCamDemo/SettingActivity;II[B)I

    .line 347
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v7, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 348
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    const-string v8, "0x%02X "

    new-array v9, v11, [Ljava/lang/Object;

    .line 349
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    .line 351
    return v11

    .line 323
    .end local v0    # "byData":[B
    .end local v3    # "i32SettingID":I
    .restart local v6    # "i32ValueIndex":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
