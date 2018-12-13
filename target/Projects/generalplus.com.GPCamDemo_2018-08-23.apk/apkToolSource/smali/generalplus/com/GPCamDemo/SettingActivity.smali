.class public Lgeneralplus/com/GPCamDemo/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;
    }
.end annotation


# static fields
.field private static ParseXMLThread:Ljava/lang/Thread; = null

.field private static final TAG:Ljava/lang/String; = "SettingActivity"

.field private static i32IndexValue:I

.field private static i32SelectedCategoryIndex:I

.field private static i32SelectedSettingIndex:I

.field private static m_xmlGategory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ClearBuff_Setting_ID:I

.field public final Reflash_All_Setting_ID:I

.field public final SettingType_ConfirmAction:I

.field public final SettingType_ConfirmActionForDevice:I

.field public final SettingType_DisplayOnly:I

.field public final SettingType_EditText:I

.field public final SettingType_RadioButton:I

.field private m_Dialog:Landroid/app/ProgressDialog;

.field private m_FromWrapperHandler:Landroid/os/Handler;

.field m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

.field private m_bGoFWUpgrade:Z

.field private m_handler:Landroid/os/Handler;

.field private m_strFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;

    .line 252
    sput v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32IndexValue:I

    .line 361
    sput v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedCategoryIndex:I

    .line 362
    sput v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedSettingIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    const/16 v0, 0x208

    iput v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->Reflash_All_Setting_ID:I

    .line 51
    const/16 v0, 0x206

    iput v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ClearBuff_Setting_ID:I

    .line 53
    iput v1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->SettingType_RadioButton:I

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->SettingType_ConfirmAction:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->SettingType_EditText:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->SettingType_DisplayOnly:I

    .line 57
    const/4 v0, 0x4

    iput v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->SettingType_ConfirmActionForDevice:I

    .line 58
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_bGoFWUpgrade:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_strFilePath:Ljava/lang/String;

    .line 544
    new-instance v0, Lgeneralplus/com/GPCamDemo/SettingActivity$7;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$7;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    return-void
.end method

.method private FinishToMainController()V
    .locals 3

    .prologue
    .line 729
    const-string v1, "SettingActivity"

    const-string v2, "Finish ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 733
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 735
    return-void
.end method

.method private ParseCategoriesData(I)V
    .locals 10
    .param p1, "KeyValue"    # I

    .prologue
    const/4 v9, 0x1

    .line 365
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v6, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v6, v9, v6

    div-int v2, p1, v6

    .line 366
    .local v2, "i32CategoryIndex":I
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v6, Lgeneralplus/com/GPCamLib/GPXMLParse;->CategoryLevel:I

    shl-int v6, v9, v6

    mul-int/2addr v6, v2

    sub-int v6, p1, v6

    iget-object v7, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    sget v7, Lgeneralplus/com/GPCamLib/GPXMLParse;->SettingLevel:I

    shl-int v7, v9, v7

    div-int v4, v6, v7

    .line 368
    .local v4, "i32SettingIndex":I
    sget-object v6, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingType:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    .line 368
    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 371
    .local v3, "i32SelectSettingType":I
    if-eq v3, v9, :cond_0

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    .line 374
    :cond_0
    sput v2, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedCategoryIndex:I

    .line 375
    sput v4, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedSettingIndex:I

    .line 376
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 378
    .local v5, "tv":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v6, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v6, v6, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 378
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 383
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lgeneralplus/com/GPCamDemo/SettingActivity$5;

    invoke-direct {v7, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$5;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lgeneralplus/com/GPCamDemo/SettingActivity$6;

    invoke-direct {v7, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$6;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 417
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 419
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private ParseGPCamStatus(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "StatusBundle"    # Landroid/os/Bundle;

    .prologue
    .line 565
    const-string v16, "CmdIndex"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 566
    .local v6, "i32CmdIndex":I
    const-string v16, "CmdType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 567
    .local v7, "i32CmdType":I
    const-string v16, "CmdMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 568
    .local v12, "i32Mode":I
    const-string v16, "CmdID"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 569
    .local v5, "i32CmdID":I
    const-string v16, "DataSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 570
    .local v8, "i32DataSize":I
    const-string v16, "Data"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 573
    .local v15, "pbyData":[B
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v7, v0, :cond_7

    .line 574
    sparse-switch v12, :sswitch_data_0

    .line 697
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 576
    :sswitch_0
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 589
    :sswitch_1
    const-string v16, "SettingActivity"

    const-string v17, "GPSOCK_MODE_Record ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :sswitch_2
    const-string v16, "SettingActivity"

    const-string v17, "GPSOCK_MODE_CapturePicture ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :sswitch_3
    const-string v16, "SettingActivity"

    const-string v17, "GPSOCK_MODE_Playback ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :sswitch_4
    const-string v16, "SettingActivity"

    const-string v17, "GPSOCK_MODE_Menu ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez v5, :cond_6

    .line 600
    const/16 v16, 0x0

    aget-byte v16, v15, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x1

    aget-byte v17, v15, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    add-int v16, v16, v17

    const/16 v17, 0x2

    aget-byte v17, v15, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x10

    add-int v16, v16, v17

    const/16 v17, 0x3

    aget-byte v17, v15, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x18

    add-int v10, v16, v17

    .line 605
    .local v10, "i32ID":I
    sget-object v16, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    if-nez v16, :cond_1

    .line 606
    const-string v16, "SettingActivity"

    const-string v17, "CamWrapper.GPSOCK_Menu_CMD_GetParameter, null == m_xmlGategory"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_1
    const/4 v4, 0x0

    .local v4, "i32CategoryIndex":I
    :goto_1
    sget-object v16, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v4, v0, :cond_0

    .line 612
    const/4 v14, 0x0

    .local v14, "i32SettingIndex":I
    :goto_2
    sget-object v16, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    .line 614
    sget-object v16, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingID:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    .line 615
    .local v13, "i32SettingID":I
    if-ne v13, v10, :cond_5

    .line 617
    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v8, v0, :cond_3

    .line 618
    sget-object v16, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    const-string v17, "0x%02X"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    aget-byte v20, v15, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    .line 610
    .end local v13    # "i32SettingID":I
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 621
    .restart local v13    # "i32SettingID":I
    :cond_3
    int-to-double v0, v10

    move-wide/from16 v16, v0

    .line 622
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log10(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    sub-int v16, v8, v16

    add-int/lit8 v11, v16, -0x1

    .line 623
    .local v11, "i32Len":I
    new-array v2, v11, [C

    .line 624
    .local v2, "StringValus":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v11, :cond_4

    .line 625
    add-int/lit8 v16, v3, 0x4

    aget-byte v16, v15, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v16, v0

    aput-char v16, v2, v3

    .line 624
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 626
    :cond_4
    sget-object v16, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    goto :goto_3

    .line 612
    .end local v2    # "StringValus":[C
    .end local v3    # "i":I
    .end local v11    # "i32Len":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 634
    .end local v4    # "i32CategoryIndex":I
    .end local v10    # "i32ID":I
    .end local v13    # "i32SettingID":I
    .end local v14    # "i32SettingIndex":I
    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_0

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 638
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 644
    :sswitch_5
    const-string v16, "SettingActivity"

    const-string v17, "GPSOCK_MODE_Vendor ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 648
    :cond_7
    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v7, v0, :cond_0

    .line 650
    const/16 v16, 0x0

    aget-byte v16, v15, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x1

    aget-byte v17, v15, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x8

    add-int v9, v16, v17

    .line 652
    .local v9, "i32ErrorCode":I
    sparse-switch v9, :sswitch_data_1

    .line 690
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->dismiss()V

    .line 693
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 655
    :sswitch_6
    const-string v16, "SettingActivity"

    const-string v17, "Error_ServerIsBusy ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 658
    :sswitch_7
    const-string v16, "SettingActivity"

    const-string v17, "Error_InvalidCommand ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 661
    :sswitch_8
    const-string v16, "SettingActivity"

    const-string v17, "Error_RequestTimeOut ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 664
    :sswitch_9
    const-string v16, "SettingActivity"

    const-string v17, "Error_ModeError ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 667
    :sswitch_a
    const-string v16, "SettingActivity"

    const-string v17, "Error_NoStorage ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 670
    :sswitch_b
    const-string v16, "SettingActivity"

    const-string v17, "Error_WriteFail ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 673
    :sswitch_c
    const-string v16, "SettingActivity"

    const-string v17, "Error_GetFileListFail ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 676
    :sswitch_d
    const-string v16, "SettingActivity"

    const-string v17, "Error_GetThumbnailFail ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 679
    :sswitch_e
    const-string v16, "SettingActivity"

    const-string v17, "Error_FullStorage ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 682
    :sswitch_f
    const-string v16, "SettingActivity"

    const-string v17, "Error_SocketClosed ... "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-direct/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->FinishToMainController()V

    goto :goto_5

    .line 686
    :sswitch_10
    const-string v16, "SettingActivity"

    const-string v17, "Error_LostConnection ..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-direct/range {p0 .. p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->FinishToMainController()V

    goto/16 :goto_5

    .line 574
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xff -> :sswitch_5
    .end sparse-switch

    .line 576
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 652
    :sswitch_data_1
    .sparse-switch
        0xffc0 -> :sswitch_10
        0xffc1 -> :sswitch_f
        0xfff7 -> :sswitch_e
        0xfff8 -> :sswitch_d
        0xfff9 -> :sswitch_c
        0xfffa -> :sswitch_b
        0xfffb -> :sswitch_a
        0xfffc -> :sswitch_9
        0xfffd -> :sswitch_8
        0xfffe -> :sswitch_7
        0xffff -> :sswitch_6
    .end sparse-switch
.end method

.method private SendSetParameter(II[B)I
    .locals 3
    .param p1, "ID"    # I
    .param p2, "Size"    # I
    .param p3, "Data"    # [B

    .prologue
    .line 738
    const-string v0, "SettingActivity"

    const-string v1, "GPCamSendSetParameter ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    .line 741
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 744
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 745
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetParameter(II[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 41
    sput-object p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamDemo/SettingActivity;II[B)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->SendSetParameter(II[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lgeneralplus/com/GPCamDemo/SettingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseCategoriesData(I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedSettingIndex:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->i32SelectedCategoryIndex:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 41
    sput-object p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$600(Lgeneralplus/com/GPCamDemo/SettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_strFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lgeneralplus/com/GPCamDemo/SettingActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 41
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lgeneralplus/com/GPCamDemo/SettingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lgeneralplus/com/GPCamDemo/SettingActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 531
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 532
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 534
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/SettingActivity;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 535
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 536
    const/4 v3, 0x0

    .line 541
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 533
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private getEditTextPreference(II)Landroid/preference/EditTextPreference;
    .locals 6
    .param p1, "CategoryIndex"    # I
    .param p2, "SettingIndex"    # I

    .prologue
    .line 154
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "editTextPreference":Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lgeneralplus/com/GPCamDemo/SettingActivity$1;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$1;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 166
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 168
    sget-object v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    sget-object v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    sget-object v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 177
    sget-object v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->i32TreeLevel:I

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 181
    sget-object v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v1, v1, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 185
    new-instance v1, Lgeneralplus/com/GPCamDemo/SettingActivity$2;

    invoke-direct {v1, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$2;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    .line 186
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    return-object v0
.end method

.method private getListPreference(II)Landroid/preference/ListPreference;
    .locals 8
    .param p1, "CategoryIndex"    # I
    .param p2, "SettingIndex"    # I

    .prologue
    .line 255
    new-instance v2, Landroid/preference/ListPreference;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 257
    .local v2, "listPreference":Landroid/preference/ListPreference;
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 259
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 261
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 264
    .local v0, "charSequenceValues":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i32ValueIndex":I
    :goto_0
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 267
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 272
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    const/4 v6, 0x2

    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 272
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v5, v6

    if-ne v5, v1, :cond_0

    .line 278
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 279
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v4, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    .line 280
    .local v4, "strSettingName":Ljava/lang/String;
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v3, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    .line 283
    .local v3, "strSettingDefault":Ljava/lang/String;
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 284
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 285
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 286
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 288
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    .line 292
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    .end local v3    # "strSettingDefault":Ljava/lang/String;
    .end local v4    # "strSettingName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 296
    :cond_1
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 298
    sget-object v5, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 299
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget v5, v5, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->i32TreeLevel:I

    .line 299
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 301
    new-instance v5, Lgeneralplus/com/GPCamDemo/SettingActivity$4;

    invoke-direct {v5, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$4;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    .line 302
    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    .end local v0    # "charSequenceValues":[Ljava/lang/CharSequence;
    .end local v1    # "i32ValueIndex":I
    :goto_1
    return-object v2

    .line 357
    :cond_2
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getPreference(IIZ)Landroid/preference/Preference;
    .locals 4
    .param p1, "CategoryIndex"    # I
    .param p2, "SettingIndex"    # I
    .param p3, "bHasClickEvent"    # Z

    .prologue
    .line 216
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "preference":Landroid/preference/Preference;
    sget-object v2, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    sget-object v2, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v1, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingCurrent:Ljava/lang/String;

    .line 221
    .local v1, "strCurrent":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    :goto_0
    sget-object v2, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->i32TreeLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 234
    if-eqz p3, :cond_1

    .line 235
    new-instance v2, Lgeneralplus/com/GPCamDemo/SettingActivity$3;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/SettingActivity$3;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V

    .line 236
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 249
    :cond_1
    return-object v0

    .line 225
    :cond_2
    sget-object v2, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 227
    sget-object v2, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->aryListGPXMLValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;

    iget-object v2, v2, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static getXMLCategory()Ljava/util/ArrayList;
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
    .line 95
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public UpdateSettingListView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 107
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .local v1, "i32CategoryIndex":I
    :goto_0
    sget-object v4, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 108
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "category":Landroid/preference/PreferenceCategory;
    sget-object v4, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v4, v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->strXMLCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 112
    const/4 v2, 0x0

    .local v2, "i32SettingIndex":I
    :goto_1
    sget-object v4, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v4, v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 115
    sget-object v4, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v4, v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iget-object v4, v4, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingType:Ljava/lang/String;

    const/4 v5, 0x2

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    packed-switch v4, :pswitch_data_0

    .line 141
    invoke-direct {p0, v1, v2, v6}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getPreference(IIZ)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getListPreference(II)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 125
    :pswitch_1
    invoke-direct {p0, v1, v2, v7}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getPreference(IIZ)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 129
    :pswitch_2
    invoke-direct {p0, v1, v2}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getEditTextPreference(II)Landroid/preference/EditTextPreference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 133
    :pswitch_3
    invoke-direct {p0, v1, v2, v6}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getPreference(IIZ)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 137
    :pswitch_4
    invoke-direct {p0, v1, v2, v7}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getPreference(IIZ)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 149
    .end local v0    # "category":Landroid/preference/PreferenceCategory;
    .end local v2    # "i32SettingIndex":I
    :cond_1
    invoke-super {p0, v3}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 150
    return-void

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clearApplicationData()V
    .locals 9

    .prologue
    .line 512
    .line 513
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 514
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 515
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 518
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 519
    .local v1, "cache":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "children":[Ljava/lang/String;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v5, v2, v6

    .line 523
    .local v5, "s":Ljava/lang/String;
    const-string v8, "lib"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "shared_prefs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 524
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Lgeneralplus/com/GPCamDemo/SettingActivity;->deleteDir(Ljava/io/File;)Z

    .line 522
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 528
    .end local v2    # "children":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 478
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 508
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 63
    const-string v0, "SettingActivity"

    const-string v1, "onCreate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->setRequestedOrientation(I)V

    .line 69
    new-instance v0, Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {v0}, Lgeneralplus/com/GPCamLib/GPXMLParse;-><init>()V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_GPXMLParse:Lgeneralplus/com/GPCamLib/GPXMLParse;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_handler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GoPlusCam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Menu.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 73
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_strFilePath:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    sget-boolean v1, Lgeneralplus/com/GPCamLib/CamWrapper;->bIsDefault:Z

    if-ne v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GoPlusCam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Default_Menu.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 78
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_strFilePath:Ljava/lang/String;

    .line 81
    :cond_0
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    .line 84
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    :cond_1
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_strFilePath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lgeneralplus/com/GPCamDemo/SettingActivity$ParseXMLRunnable;-><init>(Lgeneralplus/com/GPCamDemo/SettingActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;

    .line 90
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->ParseXMLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/high16 v3, 0x7f0a0000

    .line 700
    const/4 v1, 0x1

    sget-boolean v2, Lgeneralplus/com/GPCamDemo/MainViewController;->m_bRtsp:Z

    if-ne v1, v2, :cond_0

    .line 701
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 702
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 703
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 711
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    return v1

    .line 706
    :cond_0
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 708
    .restart local v0    # "inflater":Landroid/view/MenuInflater;
    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 711
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 485
    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_Dialog:Landroid/app/ProgressDialog;

    .line 488
    :cond_0
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 489
    sput-object v1, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    .line 490
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->clearApplicationData()V

    .line 491
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 492
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 717
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 725
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 719
    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_bGoFWUpgrade:Z

    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 721
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x7f07000a
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 470
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 471
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_bGoFWUpgrade:Z

    .line 473
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_bGoFWUpgrade:Z

    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendSetMode(I)I

    .line 498
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/SettingActivity;->finish()V

    .line 501
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 502
    return-void
.end method

.method public setCategorySettingDefautValue(IILjava/lang/String;)V
    .locals 1
    .param p1, "CategoryIndex"    # I
    .param p2, "SettingIndex"    # I
    .param p3, "DefaultValue"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lgeneralplus/com/GPCamDemo/SettingActivity;->m_xmlGategory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;

    iget-object v0, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;

    iput-object p3, v0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;->strXMLSettingDefaultValue:Ljava/lang/String;

    .line 101
    return-void
.end method
