.class Lgeneralplus/com/GPCamDemo/SettingActivity$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity;->getEditTextPreference(II)Landroid/preference/EditTextPreference;
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
    .line 186
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 191
    move-object v6, p2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v6, p2

    .line 192
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 195
    .local v2, "i32KeyValue":I
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v6, v6, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v6, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v6, v8, v6

    div-int v1, v2, v6

    .line 196
    .local v1, "i32CategoryIndex":I
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v6, v6, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v6, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v6, v8, v6

    mul-int/2addr v6, v1

    sub-int v6, v2, v6

    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    iget-object v7, v7, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v7, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int v7, v8, v7

    div-int v5, v6, v7

    .line 197
    .local v5, "i32SettingIndex":I
    # getter for: Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    .line 197
    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "i32SettingID":I
    move-object v6, p2

    .line 200
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 201
    .local v3, "i32Len":I
    new-array v0, v3, [B

    .line 202
    .local v0, "byStringData":[B
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2, v9, v3, v0, v9}, Ljava/lang/String;->getBytes(II[BI)V

    .line 203
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    array-length v7, v0

    # invokes: Lgeneralplus/com/GPCamDemo/SettingActivity;->SendSetParameter(II[B)I
    invoke-static {v6, v4, v7, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->access$100(Lgeneralplus/com/GPCamDemo/SettingActivity;II[B)I

    .line 205
    const/4 v0, 0x0

    .line 206
    return v8
.end method
