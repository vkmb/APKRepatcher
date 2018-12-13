.class public Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;
.super Ljava/lang/Object;
.source "GPXMLParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamLib/GPXMLParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPXMLSetting"
.end annotation


# instance fields
.field public aryListGPXMLValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;",
            ">;"
        }
    .end annotation
.end field

.field public i32TreeLevel:I

.field public strXMLSettingCurrent:Ljava/lang/String;

.field public strXMLSettingDefaultValue:Ljava/lang/String;

.field public strXMLSettingID:Ljava/lang/String;

.field public strXMLSettingName:Ljava/lang/String;

.field public strXMLSettingReflash:Ljava/lang/String;

.field public strXMLSettingType:Ljava/lang/String;

.field final synthetic this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;


# direct methods
.method public constructor <init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lgeneralplus/com/GPCamLib/GPXMLParse;
    .param p2, "SettingName"    # Ljava/lang/String;
    .param p3, "SettingID"    # Ljava/lang/String;
    .param p4, "SettingType"    # Ljava/lang/String;
    .param p5, "SettingReflash"    # Ljava/lang/String;
    .param p6, "SettingDefaultValue"    # Ljava/lang/String;
    .param p7, "TreeLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p8, "XMLValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;>;"
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingCurrent:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingType:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingReflash:Ljava/lang/String;

    .line 80
    iput-object p6, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    .line 81
    if-eqz p8, :cond_0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 83
    invoke-virtual {p8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueID:Ljava/lang/String;

    invoke-virtual {v1, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    iput-object v1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingCurrent:Ljava/lang/String;

    .line 90
    .end local v0    # "i":I
    :cond_0
    iput p7, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->i32TreeLevel:I

    .line 91
    invoke-virtual {p8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 92
    return-void

    .line 82
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
