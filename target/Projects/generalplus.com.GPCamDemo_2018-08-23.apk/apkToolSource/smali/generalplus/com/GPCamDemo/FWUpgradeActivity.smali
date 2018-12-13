.class public Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;
.super Landroid/app/Activity;
.source "FWUpgradeActivity.java"


# static fields
.field private static DEVICE_FW_HEADER:Ljava/lang/String; = null

.field private static DEVICE_FW_HEADER2:Ljava/lang/String; = null

.field private static final REQUEST_CHOOSE_FILE:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static m_DownloadDialog:Landroid/app/ProgressDialog;


# instance fields
.field private _bIsFinish:Z

.field private m_FromWrapperHandler:Landroid/os/Handler;

.field private m_bExit:Z

.field private m_byAryBinData:[B

.field private m_i32Index:I

.field private m_i32Left:I

.field private m_i32Total:I

.field private strFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "FWUpgradeActivity"

    sput-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "SPII"

    sput-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->DEVICE_FW_HEADER:Ljava/lang/String;

    .line 30
    const-string v0, "PGps"

    sput-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->DEVICE_FW_HEADER2:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    .line 38
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    .line 39
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    .line 40
    iput v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Total:I

    .line 41
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->_bIsFinish:Z

    .line 42
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_bExit:Z

    .line 73
    new-instance v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$1;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$1;-><init>(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    return-void
.end method

.method private DownloadComplete()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->SendRawData()V

    .line 134
    return-void
.end method

.method private FinishToMainController()V
    .locals 3

    .prologue
    .line 259
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v2, "Finish ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method private ParseGPCamStatus(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "StatusBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 167
    const-string v8, "CmdIndex"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "i32CmdIndex":I
    const-string v8, "CmdType"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 169
    .local v3, "i32CmdType":I
    const-string v8, "CmdMode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 170
    .local v6, "i32Mode":I
    const-string v8, "CmdID"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    .local v1, "i32CmdID":I
    const-string v8, "DataSize"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 172
    .local v4, "i32DataSize":I
    const-string v8, "Data"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 175
    .local v7, "pbyData":[B
    if-ne v3, v10, :cond_3

    .line 176
    packed-switch v6, :pswitch_data_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    if-nez v1, :cond_1

    .line 180
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->DownloadComplete()V

    goto :goto_0

    .line 182
    :cond_1
    if-ne v1, v9, :cond_2

    .line 184
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->RawDataComplete()V

    goto :goto_0

    .line 188
    :cond_2
    if-ne v1, v10, :cond_0

    .line 190
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->UpgradeComplete()V

    goto :goto_0

    .line 195
    :cond_3
    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    .line 197
    iget-boolean v8, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_bExit:Z

    if-nez v8, :cond_0

    .line 200
    const/4 v8, 0x0

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int v5, v8, v9

    .line 202
    .local v5, "i32ErrorCode":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0034

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0012

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0021

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 208
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_4

    .line 209
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 210
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    sput-object v11, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 215
    :cond_4
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 249
    :sswitch_0
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_LostConnection ..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->FinishToMainController()V

    goto/16 :goto_0

    .line 218
    :sswitch_1
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_ServerIsBusy ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    :sswitch_2
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_InvalidCommand ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 224
    :sswitch_3
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_RequestTimeOut ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 227
    :sswitch_4
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_ModeError ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :sswitch_5
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_NoStorage ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    :sswitch_6
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_WriteFail ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    :sswitch_7
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_GetFileListFail ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    :sswitch_8
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_GetThumbnailFail ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    :sswitch_9
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_FullStorage ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 245
    :sswitch_a
    sget-object v8, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v9, "Error_SocketClosed ... "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->FinishToMainController()V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch

    .line 215
    :sswitch_data_0
    .sparse-switch
        0xffc0 -> :sswitch_0
        0xffc1 -> :sswitch_a
        0xfff7 -> :sswitch_9
        0xfff8 -> :sswitch_8
        0xfff9 -> :sswitch_7
        0xfffa -> :sswitch_6
        0xfffb -> :sswitch_5
        0xfffc -> :sswitch_4
        0xfffd -> :sswitch_3
        0xfffe -> :sswitch_2
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method private RawDataComplete()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->SendRawData()V

    .line 138
    return-void
.end method

.method private SendRawData()V
    .locals 7

    .prologue
    .line 93
    sget-object v3, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Total:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "i32SendSize":I
    const/16 v2, 0x400

    .line 103
    .local v2, "i32Size":I
    new-array v0, v2, [B

    .line 104
    .local v0, "byData":[B
    iget v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    if-lez v3, :cond_2

    .line 106
    iget v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    if-le v3, v2, :cond_1

    .line 107
    move v1, v2

    .line 108
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    iget v4, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    iget v5, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    add-int/2addr v5, v2

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 115
    :goto_0
    iget v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    add-int/2addr v3, v1

    iput v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    .line 116
    iget v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    sub-int/2addr v3, v1

    iput v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    .line 118
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5, v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendFirmwareRawData(J[B)I

    .line 130
    .end local v0    # "byData":[B
    .end local v1    # "i32SendSize":I
    .end local v2    # "i32Size":I
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v0    # "byData":[B
    .restart local v1    # "i32SendSize":I
    .restart local v2    # "i32Size":I
    :cond_1
    iget v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    .line 112
    iget-object v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    iget v4, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    iget v5, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    iget v6, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    add-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    iget-boolean v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->_bIsFinish:Z

    if-nez v3, :cond_3

    .line 123
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-virtual {v3, v4, v5, v6}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendFirmwareRawData(J[B)I

    .line 124
    const/4 v3, 0x1

    iput-boolean v3, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->_bIsFinish:Z

    goto :goto_1

    .line 127
    :cond_3
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendFirmwareUpgrade()I

    goto :goto_1
.end method

.method private UpgradeComplete()V
    .locals 3

    .prologue
    .line 141
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 144
    const/4 v1, 0x0

    sput-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 148
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;-><init>(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->ParseGPCamStatus(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$102(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_bExit:Z

    return p1
.end method

.method private showDownloadDialog()V
    .locals 3

    .prologue
    .line 430
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 432
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 433
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 434
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 435
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 448
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public StartUpgradeFW()V
    .locals 15

    .prologue
    .line 313
    const/4 v9, 0x0

    iput v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Total:I

    .line 314
    const/4 v9, 0x0

    iput v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Index:I

    .line 315
    const/4 v9, 0x0

    iput-boolean v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->_bIsFinish:Z

    .line 317
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v6, v12

    .line 320
    .local v6, "i32fileLen":I
    const v9, 0x989680

    if-le v6, v9, :cond_0

    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0034

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 323
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b004b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0021

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 399
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v7, 0x0

    .line 331
    .local v7, "inputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-array v9, v6, [B

    iput-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    .line 332
    new-instance v7, Ljava/io/DataInputStream;

    .end local v7    # "inputStream":Ljava/io/DataInputStream;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    .restart local v7    # "inputStream":Ljava/io/DataInputStream;
    if-eqz v7, :cond_5

    .line 344
    :try_start_1
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    invoke-virtual {v7, v9}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 351
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    array-length v9, v9

    if-gtz v9, :cond_1

    .line 352
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b001b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 355
    :cond_1
    const/4 v9, 0x4

    new-array v1, v9, [B

    .line 356
    .local v1, "byData":[B
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v9, v12, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 358
    :try_start_2
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 359
    .local v8, "strTemp":Ljava/lang/String;
    sget-object v9, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->DEVICE_FW_HEADER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->DEVICE_FW_HEADER2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0034

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b004b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 363
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b0021

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 367
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v8    # "strTemp":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 369
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 371
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-boolean v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->_bIsFinish:Z

    if-eqz v9, :cond_3

    .line 375
    :cond_3
    const-wide/16 v10, 0x0

    .line 376
    .local v10, "ui32Checksum":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    array-length v9, v9

    if-ge v5, v9, :cond_4

    .line 377
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    aget-byte v9, v9, v5

    and-int/lit16 v9, v9, 0xff

    int-to-long v12, v9

    add-long/2addr v10, v12

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 333
    .end local v1    # "byData":[B
    .end local v5    # "i":I
    .end local v7    # "inputStream":Ljava/io/DataInputStream;
    .end local v10    # "ui32Checksum":J
    :catch_1
    move-exception v2

    .line 335
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 345
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "inputStream":Ljava/io/DataInputStream;
    :catch_2
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 380
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "byData":[B
    .restart local v5    # "i":I
    .restart local v10    # "ui32Checksum":J
    :cond_4
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    array-length v9, v9

    iput v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Left:I

    .line 381
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_byAryBinData:[B

    array-length v9, v9

    iput v9, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_i32Total:I

    .line 382
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->showDownloadDialog()V

    .line 383
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v9

    int-to-long v12, v6

    invoke-virtual {v9, v12, v13, v10, v11}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendFirmwareDownload(JJ)I

    .line 386
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 387
    :catch_3
    move-exception v2

    .line 389
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 396
    .end local v1    # "byData":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "i":I
    .end local v10    # "ui32Checksum":J
    :cond_5
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0b001b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 271
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 273
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 274
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 276
    invoke-static {p0, v0}, Lgeneralplus/com/GPCamDemo/FileHelper;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 278
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v2, "strFilePath = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "Path = null"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 296
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    return-void

    .line 282
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->showCheckAlert()V

    goto :goto_0

    .line 288
    :cond_1
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v2, "UnValid File Path"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 293
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    sget-object v1, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cancel Choose File"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->setContentView(I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->selectFile(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;

    .line 68
    :cond_0
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_FromWrapperHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetViewHandler(Landroid/os/Handler;I)V

    .line 57
    return-void
.end method

.method public selectFile(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0b002b

    const/4 v7, 0x0

    .line 403
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "*/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v3, "sIntent":Landroid/content/Intent;
    const-string v4, "CONTENT_TYPE"

    const-string v5, "*/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 415
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 416
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 423
    :goto_0
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v4}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    return-void

    .line 419
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "chooserIntent":Landroid/content/Intent;
    goto :goto_0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public showCheckAlert()V
    .locals 5

    .prologue
    .line 300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->strFilePath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$3;

    invoke-direct {v2, p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$3;-><init>(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 310
    return-void
.end method
