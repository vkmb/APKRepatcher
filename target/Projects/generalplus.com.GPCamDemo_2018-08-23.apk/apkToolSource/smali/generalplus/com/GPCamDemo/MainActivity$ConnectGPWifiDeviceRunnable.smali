.class Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectGPWifiDeviceRunnable"
.end annotation


# instance fields
.field private bCheckConnectStatus:Z

.field private bCheckWifiStatus:Z

.field private i32CheckWifiStatusDelayTime:I

.field private i32RetryCheckWifiStatusCount:I

.field private i32RetryCount:I

.field private i32Status:I

.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V
    .locals 2
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    const/4 v1, 0x0

    .line 315
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 319
    const/16 v0, 0x64

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCheckWifiStatusCount:I

    .line 320
    const/16 v0, 0xc8

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32CheckWifiStatusDelayTime:I

    .line 323
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 326
    const/16 v0, 0x14

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    return-void
.end method

.method static synthetic access$1100(Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;

    .prologue
    .line 315
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 331
    iget-boolean v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    if-ne v9, v5, :cond_0

    .line 333
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$200(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 341
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 342
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 344
    .local v1, "ipAddress":I
    if-nez v1, :cond_3

    .line 345
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 376
    .end local v1    # "ipAddress":I
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    if-eqz v5, :cond_5

    .line 378
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v5

    sget-object v6, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    const/16 v7, 0x1f91

    invoke-virtual {v5, v6, v7}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamConnectToDevice(Ljava/lang/String;I)I

    .line 379
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    if-eqz v5, :cond_5

    .line 382
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    :goto_3
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetStatus()I

    move-result v5

    iput v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32Status:I

    .line 388
    iget v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32Status:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 391
    :pswitch_1
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 392
    iput-boolean v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    goto :goto_2

    .line 334
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "ipAddress":I
    .restart local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v4    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    .line 351
    :cond_4
    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 352
    .local v2, "ipByteArray":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v6, v2, v8

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v9

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lgeneralplus/com/GPCamLib/CamWrapper;->COMMAND_URL:Ljava/lang/String;

    .line 354
    iput-boolean v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    goto/16 :goto_1

    .line 383
    .end local v1    # "ipAddress":I
    .end local v2    # "ipByteArray":[B
    :catch_1
    move-exception v0

    .line 385
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 395
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :pswitch_2
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 396
    iput-boolean v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    goto :goto_2

    .line 399
    :pswitch_3
    iput-boolean v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 400
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 401
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v5

    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->strSaveDirectory:Ljava/lang/String;
    invoke-static {v6}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$1000(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgeneralplus/com/GPCamLib/CamWrapper;->SetGPCamSetDownloadPath(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetStatus()I

    goto/16 :goto_2

    .line 406
    :pswitch_4
    iget v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    .line 407
    iget v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    if-nez v5, :cond_2

    .line 409
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 410
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 411
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    goto/16 :goto_2

    .line 416
    :pswitch_5
    iget v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    .line 417
    iget v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->i32RetryCount:I

    if-nez v5, :cond_2

    .line 419
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckConnectStatus:Z

    .line 420
    iput-boolean v8, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->bCheckWifiStatus:Z

    .line 421
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamDisconnect()V

    goto/16 :goto_2

    .line 429
    :cond_5
    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 430
    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 431
    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 432
    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v10}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$102(Lgeneralplus/com/GPCamDemo/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 435
    :cond_6
    iget-object v5, p0, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    new-instance v6, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;

    invoke-direct {v6, p0}, Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable$1;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;)V

    invoke-virtual {v5, v6}, Lgeneralplus/com/GPCamDemo/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 461
    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;
    invoke-static {v10}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 462
    return-void

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
