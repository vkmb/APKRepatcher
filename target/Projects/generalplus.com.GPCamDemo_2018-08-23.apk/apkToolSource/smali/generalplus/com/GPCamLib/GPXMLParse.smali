.class public Lgeneralplus/com/GPCamLib/GPXMLParse;
.super Ljava/lang/Object;
.source "GPXMLParse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;,
        Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;,
        Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;
    }
.end annotation


# static fields
.field public static CaptureResolution_Setting_ID:I

.field public static CategoryLevel:I

.field private static GPTag:Ljava/lang/String;

.field public static RecordResolution_Setting_ID:I

.field public static SettingLevel:I

.field public static ValueLevel:I

.field public static Version_Setting_ID:I

.field public static Version_Value_Index:I

.field private static m_aryListGPXMLCategroies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static m_aryListGPXMLSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;",
            ">;"
        }
    .end annotation
.end field

.field private static m_aryListGPXMLValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

.field private m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

.field private m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const/16 v0, 0xc

    sput v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    .line 17
    const/4 v0, 0x6

    sput v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    .line 18
    sput v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->ValueLevel:I

    .line 21
    sput v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->RecordResolution_Setting_ID:I

    .line 22
    const/16 v0, 0x100

    sput v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->CaptureResolution_Setting_ID:I

    .line 23
    const/16 v0, 0x209

    sput v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->Version_Setting_ID:I

    .line 24
    sput v1, Lgeneralplus/com/GPCamLib/GPXMLParse;->Version_Value_Index:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    .line 32
    const-string v0, "GPXMLParseLog"

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->GPTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    .line 37
    :cond_0
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 39
    :cond_1
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    .line 41
    :cond_2
    return-void
.end method


# virtual methods
.method public GetCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    sget-object v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetGPXMLInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 53
    .param p1, "FilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    new-instance v52, Ljava/io/File;

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v52, "xmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v21

    .line 114
    .local v21, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 115
    .local v12, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v52

    invoke-virtual {v12, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 118
    .local v13, "doc":Lorg/w3c/dom/Document;
    const-string v3, "Categories"

    .line 119
    invoke-interface {v13, v3}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 121
    .local v28, "nodeList_Categories":Lorg/w3c/dom/NodeList;
    const-string v48, ""

    .local v48, "strCategoryName":Ljava/lang/String;
    const-string v5, ""

    .local v5, "strSettingName":Ljava/lang/String;
    const-string v6, ""

    .local v6, "strSettingID":Ljava/lang/String;
    const-string v7, ""

    .local v7, "strSettingType":Ljava/lang/String;
    const-string v8, ""

    .local v8, "strSettingReflash":Ljava/lang/String;
    const-string v9, ""

    .local v9, "strSettingDefault":Ljava/lang/String;
    const-string v51, ""

    .local v51, "strValueName":Ljava/lang/String;
    const-string v50, ""

    .local v50, "strValueID":Ljava/lang/String;
    const-string v49, ""

    .line 122
    .local v49, "strTemp":Ljava/lang/String;
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/16 v22, 0x0

    .line 125
    .local v22, "i32CategoriesIndex":I
    :goto_0
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_10

    .line 127
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v42

    .line 129
    .local v42, "node_Categories":Lorg/w3c/dom/Node;
    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 130
    move-object/from16 v0, v42

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v15, v0

    .line 133
    .local v15, "element_Categories":Lorg/w3c/dom/Element;
    const-string v3, "Category"

    .line 134
    invoke-interface {v15, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 136
    .local v29, "nodeList_Category":Lorg/w3c/dom/NodeList;
    const/16 v23, 0x0

    .line 137
    .local v23, "i32CategoryIndex":I
    :goto_1
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_f

    .line 140
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v43

    .line 142
    .local v43, "node_Category":Lorg/w3c/dom/Node;
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 143
    move-object/from16 v0, v43

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v16, v0

    .line 144
    .local v16, "element_Category":Lorg/w3c/dom/Element;
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 147
    const-string v3, "Name"

    .line 148
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 149
    .local v30, "nodeList_CategoryName":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_1

    .line 150
    const/4 v3, 0x0

    .line 151
    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v48

    .line 157
    :goto_2
    const-string v3, "Settings"

    .line 158
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 160
    .local v37, "nodeList_Settings":Lorg/w3c/dom/NodeList;
    const/16 v25, 0x0

    .line 161
    .local v25, "i32SettingsIndex":I
    :goto_3
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_d

    .line 163
    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v45

    .line 164
    .local v45, "node_Settings":Lorg/w3c/dom/Node;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 165
    move-object/from16 v0, v45

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v18, v0

    .line 168
    .local v18, "element_Settings":Lorg/w3c/dom/Element;
    const-string v3, "Setting"

    .line 169
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 171
    .local v31, "nodeList_Setting":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .line 172
    .local v24, "i32SettingIndex":I
    :goto_4
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_c

    .line 174
    move-object/from16 v0, v31

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    .line 175
    .local v44, "node_Setting":Lorg/w3c/dom/Node;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 176
    move-object/from16 v0, v44

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v17, v0

    .line 177
    .local v17, "element_Setting":Lorg/w3c/dom/Element;
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 180
    const-string v3, "Name"

    .line 181
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 183
    .local v34, "nodeList_SettingName":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    .line 184
    const/4 v3, 0x0

    .line 185
    move-object/from16 v0, v34

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 186
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 187
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 188
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 193
    :goto_5
    const-string v3, "ID"

    .line 194
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 195
    .local v33, "nodeList_SettingID":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    .line 196
    const/4 v3, 0x0

    .line 197
    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 198
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 199
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 200
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 205
    :goto_6
    const-string v3, "Type"

    .line 206
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    .line 208
    .local v36, "nodeList_SettingType":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_4

    .line 209
    const/4 v3, 0x0

    .line 210
    move-object/from16 v0, v36

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 211
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 212
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 213
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 218
    :goto_7
    const-string v3, "Reflash"

    .line 219
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 221
    .local v35, "nodeList_SettingReflash":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_5

    .line 222
    const/4 v3, 0x0

    .line 223
    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 224
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 225
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 226
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_8
    const-string v3, "Default"

    .line 232
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 234
    .local v32, "nodeList_SettingDefault":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_6

    .line 235
    const/4 v3, 0x0

    .line 236
    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 237
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 238
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 239
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 244
    :goto_9
    const-string v3, "Values"

    .line 245
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 247
    .local v41, "nodeList_Values":Lorg/w3c/dom/NodeList;
    const/16 v27, 0x0

    .line 248
    .local v27, "i32ValuesIndex":I
    :goto_a
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_a

    .line 250
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    .line 251
    .local v47, "node_Values":Lorg/w3c/dom/Node;
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 252
    move-object/from16 v0, v47

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v20, v0

    .line 255
    .local v20, "element_Values":Lorg/w3c/dom/Element;
    const-string v3, "Value"

    .line 256
    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    .line 257
    .local v38, "nodeList_Value":Lorg/w3c/dom/NodeList;
    const/16 v26, 0x0

    .line 258
    .local v26, "i32ValueIndex":I
    :goto_b
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_9

    .line 260
    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v46

    .line 262
    .local v46, "node_Value":Lorg/w3c/dom/Node;
    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 263
    move-object/from16 v0, v46

    check-cast v0, Lorg/w3c/dom/Element;

    move-object/from16 v19, v0

    .line 266
    .local v19, "element_Value":Lorg/w3c/dom/Element;
    const-string v3, "Name"

    .line 267
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v40

    .line 269
    .local v40, "nodeList_ValueName":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_7

    .line 270
    const/4 v3, 0x0

    .line 271
    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 272
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 273
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 274
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v51

    .line 279
    :goto_c
    const-string v3, "ID"

    .line 280
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 282
    .local v39, "nodeList_ValueID":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_8

    .line 283
    const/4 v3, 0x0

    .line 284
    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 285
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    .line 286
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 287
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v50

    .line 291
    :goto_d
    new-instance v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    const/4 v4, 0x1

    sget v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int/2addr v4, v10

    mul-int v4, v4, v23

    const/4 v10, 0x1

    sget v11, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int/2addr v10, v11

    mul-int v10, v10, v24

    add-int/2addr v4, v10

    const/4 v10, 0x1

    sget v11, Lgeneralplus/com/GPCamLib/GPXMLParse;->ValueLevel:I

    shl-int/2addr v10, v11

    mul-int v10, v10, v26

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-direct {v3, v0, v1, v2, v4}, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;-><init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    .line 297
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    .line 298
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLValue:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    .line 258
    .end local v19    # "element_Value":Lorg/w3c/dom/Element;
    .end local v39    # "nodeList_ValueID":Lorg/w3c/dom/NodeList;
    .end local v40    # "nodeList_ValueName":Lorg/w3c/dom/NodeList;
    :cond_0
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_b

    .line 154
    .end local v17    # "element_Setting":Lorg/w3c/dom/Element;
    .end local v18    # "element_Settings":Lorg/w3c/dom/Element;
    .end local v20    # "element_Values":Lorg/w3c/dom/Element;
    .end local v24    # "i32SettingIndex":I
    .end local v25    # "i32SettingsIndex":I
    .end local v26    # "i32ValueIndex":I
    .end local v27    # "i32ValuesIndex":I
    .end local v31    # "nodeList_Setting":Lorg/w3c/dom/NodeList;
    .end local v32    # "nodeList_SettingDefault":Lorg/w3c/dom/NodeList;
    .end local v33    # "nodeList_SettingID":Lorg/w3c/dom/NodeList;
    .end local v34    # "nodeList_SettingName":Lorg/w3c/dom/NodeList;
    .end local v35    # "nodeList_SettingReflash":Lorg/w3c/dom/NodeList;
    .end local v36    # "nodeList_SettingType":Lorg/w3c/dom/NodeList;
    .end local v37    # "nodeList_Settings":Lorg/w3c/dom/NodeList;
    .end local v38    # "nodeList_Value":Lorg/w3c/dom/NodeList;
    .end local v41    # "nodeList_Values":Lorg/w3c/dom/NodeList;
    .end local v44    # "node_Setting":Lorg/w3c/dom/Node;
    .end local v45    # "node_Settings":Lorg/w3c/dom/Node;
    .end local v46    # "node_Value":Lorg/w3c/dom/Node;
    .end local v47    # "node_Values":Lorg/w3c/dom/Node;
    :cond_1
    const-string v48, ""

    goto/16 :goto_2

    .line 190
    .restart local v17    # "element_Setting":Lorg/w3c/dom/Element;
    .restart local v18    # "element_Settings":Lorg/w3c/dom/Element;
    .restart local v24    # "i32SettingIndex":I
    .restart local v25    # "i32SettingsIndex":I
    .restart local v31    # "nodeList_Setting":Lorg/w3c/dom/NodeList;
    .restart local v34    # "nodeList_SettingName":Lorg/w3c/dom/NodeList;
    .restart local v37    # "nodeList_Settings":Lorg/w3c/dom/NodeList;
    .restart local v44    # "node_Setting":Lorg/w3c/dom/Node;
    .restart local v45    # "node_Settings":Lorg/w3c/dom/Node;
    :cond_2
    const-string v5, ""

    goto/16 :goto_5

    .line 202
    .restart local v33    # "nodeList_SettingID":Lorg/w3c/dom/NodeList;
    :cond_3
    const-string v6, ""

    goto/16 :goto_6

    .line 215
    .restart local v36    # "nodeList_SettingType":Lorg/w3c/dom/NodeList;
    :cond_4
    const-string v7, ""

    goto/16 :goto_7

    .line 228
    .restart local v35    # "nodeList_SettingReflash":Lorg/w3c/dom/NodeList;
    :cond_5
    const-string v8, ""

    goto/16 :goto_8

    .line 241
    .restart local v32    # "nodeList_SettingDefault":Lorg/w3c/dom/NodeList;
    :cond_6
    const-string v9, ""

    goto/16 :goto_9

    .line 276
    .restart local v19    # "element_Value":Lorg/w3c/dom/Element;
    .restart local v20    # "element_Values":Lorg/w3c/dom/Element;
    .restart local v26    # "i32ValueIndex":I
    .restart local v27    # "i32ValuesIndex":I
    .restart local v38    # "nodeList_Value":Lorg/w3c/dom/NodeList;
    .restart local v40    # "nodeList_ValueName":Lorg/w3c/dom/NodeList;
    .restart local v41    # "nodeList_Values":Lorg/w3c/dom/NodeList;
    .restart local v46    # "node_Value":Lorg/w3c/dom/Node;
    .restart local v47    # "node_Values":Lorg/w3c/dom/Node;
    :cond_7
    const-string v51, ""

    goto :goto_c

    .line 289
    .restart local v39    # "nodeList_ValueID":Lorg/w3c/dom/NodeList;
    :cond_8
    const-string v50, ""

    goto :goto_d

    .line 248
    .end local v19    # "element_Value":Lorg/w3c/dom/Element;
    .end local v20    # "element_Values":Lorg/w3c/dom/Element;
    .end local v26    # "i32ValueIndex":I
    .end local v38    # "nodeList_Value":Lorg/w3c/dom/NodeList;
    .end local v39    # "nodeList_ValueID":Lorg/w3c/dom/NodeList;
    .end local v40    # "nodeList_ValueName":Lorg/w3c/dom/NodeList;
    .end local v46    # "node_Value":Lorg/w3c/dom/Node;
    :cond_9
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 305
    .end local v47    # "node_Values":Lorg/w3c/dom/Node;
    :cond_a
    new-instance v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    sget v4, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v4, v23, v4

    sget v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int v10, v24, v10

    or-int/2addr v10, v4

    sget-object v11, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLValues:Ljava/util/ArrayList;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;-><init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    .line 313
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    .line 314
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLSetting:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    .line 172
    .end local v17    # "element_Setting":Lorg/w3c/dom/Element;
    .end local v27    # "i32ValuesIndex":I
    .end local v32    # "nodeList_SettingDefault":Lorg/w3c/dom/NodeList;
    .end local v33    # "nodeList_SettingID":Lorg/w3c/dom/NodeList;
    .end local v34    # "nodeList_SettingName":Lorg/w3c/dom/NodeList;
    .end local v35    # "nodeList_SettingReflash":Lorg/w3c/dom/NodeList;
    .end local v36    # "nodeList_SettingType":Lorg/w3c/dom/NodeList;
    .end local v41    # "nodeList_Values":Lorg/w3c/dom/NodeList;
    :cond_b
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 161
    .end local v18    # "element_Settings":Lorg/w3c/dom/Element;
    .end local v24    # "i32SettingIndex":I
    .end local v31    # "nodeList_Setting":Lorg/w3c/dom/NodeList;
    .end local v44    # "node_Setting":Lorg/w3c/dom/Node;
    :cond_c
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 320
    .end local v45    # "node_Settings":Lorg/w3c/dom/Node;
    :cond_d
    new-instance v3, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    sget v4, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v4, v23, v4

    sget-object v10, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v3, v0, v1, v4, v10}, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;-><init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    .line 324
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_GPXMLCategory:Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v16    # "element_Category":Lorg/w3c/dom/Element;
    .end local v25    # "i32SettingsIndex":I
    .end local v30    # "nodeList_CategoryName":Lorg/w3c/dom/NodeList;
    .end local v37    # "nodeList_Settings":Lorg/w3c/dom/NodeList;
    :cond_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 125
    .end local v15    # "element_Categories":Lorg/w3c/dom/Element;
    .end local v23    # "i32CategoryIndex":I
    .end local v29    # "nodeList_Category":Lorg/w3c/dom/NodeList;
    .end local v43    # "node_Category":Lorg/w3c/dom/Node;
    :cond_f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 330
    .end local v5    # "strSettingName":Ljava/lang/String;
    .end local v6    # "strSettingID":Ljava/lang/String;
    .end local v7    # "strSettingType":Ljava/lang/String;
    .end local v8    # "strSettingReflash":Ljava/lang/String;
    .end local v9    # "strSettingDefault":Ljava/lang/String;
    .end local v12    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "doc":Lorg/w3c/dom/Document;
    .end local v21    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v22    # "i32CategoriesIndex":I
    .end local v28    # "nodeList_Categories":Lorg/w3c/dom/NodeList;
    .end local v42    # "node_Categories":Lorg/w3c/dom/Node;
    .end local v48    # "strCategoryName":Ljava/lang/String;
    .end local v49    # "strTemp":Ljava/lang/String;
    .end local v50    # "strValueID":Ljava/lang/String;
    .end local v51    # "strValueName":Ljava/lang/String;
    .end local v52    # "xmlFile":Ljava/io/File;
    :catch_0
    move-exception v14

    .line 331
    .local v14, "e":Ljava/lang/Exception;
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->GPTag:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_10
    sget-object v3, Lgeneralplus/com/GPCamLib/GPXMLParse;->m_aryListGPXMLCategroies:Ljava/util/ArrayList;

    return-object v3
.end method
