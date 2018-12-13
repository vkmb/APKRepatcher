.class public Lgeneralplus/com/GPCamDemo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamDemo/MainActivity$ConnectGPWifiDeviceRunnable;,
        Lgeneralplus/com/GPCamDemo/MainActivity$Worker;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_connectGPWifiDeviceThread:Ljava/lang/Thread;


# instance fields
.field MAX_LOGCAT_TIMES:I

.field private bWriteLogCatFile:Z

.field i32RecordLogCatCounter:I

.field private imgbtn_connect:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

.field private m_Dialog:Landroid/app/ProgressDialog;

.field private m_GPINIReader:Lgeneralplus/com/GPCamLib/GPINIReader;

.field private m_iSetTime:I

.field private m_inputSelection:I

.field recordLogCatHandler:Landroid/os/Handler;

.field runnableRecordLogCat:Ljava/lang/Runnable;

.field private strFileName:Ljava/lang/String;

.field private strSaveDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "MainActivity"

    sput-object v0, Lgeneralplus/com/GPCamDemo/MainActivity;->TAG:Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I

    .line 57
    iput v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_inputSelection:I

    .line 479
    iput-boolean v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->bWriteLogCatFile:Z

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;

    .line 482
    const/16 v0, 0x1f4

    iput v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->MAX_LOGCAT_TIMES:I

    .line 483
    iput v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->i32RecordLogCatCounter:I

    .line 484
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    .line 485
    new-instance v0, Lgeneralplus/com/GPCamDemo/MainActivity$6;

    invoke-direct {v0, p0}, Lgeneralplus/com/GPCamDemo/MainActivity$6;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->runnableRecordLogCat:Ljava/lang/Runnable;

    return-void
.end method

.method private GetFileName()Ljava/lang/String;
    .locals 13

    .prologue
    .line 533
    iget-object v11, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 536
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy MM dd HH mm ss"

    sget-object v12, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v2, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 537
    .local v2, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 538
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 539
    .local v9, "strTimeStamp":Ljava/lang/String;
    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "TrimTimeStamp":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 542
    .local v10, "strYear":Ljava/lang/String;
    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, "strMonth":Ljava/lang/String;
    const/4 v11, 0x6

    const/16 v12, 0x8

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "strDay":Ljava/lang/String;
    const/16 v11, 0x8

    const/16 v12, 0xa

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, "strHour":Ljava/lang/String;
    const/16 v11, 0xa

    const/16 v12, 0xc

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "strMinute":Ljava/lang/String;
    const/16 v11, 0xc

    const/16 v12, 0xe

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, "strSecond":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/LOGCAT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .local v3, "logDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 550
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 553
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/sdcard/LOGCAT/LOGCAT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_Log.txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;

    .line 557
    .end local v0    # "TrimTimeStamp":Ljava/lang/String;
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "logDirectory":Ljava/io/File;
    .end local v4    # "strDay":Ljava/lang/String;
    .end local v5    # "strHour":Ljava/lang/String;
    .end local v6    # "strMinute":Ljava/lang/String;
    .end local v7    # "strMonth":Ljava/lang/String;
    .end local v8    # "strSecond":Ljava/lang/String;
    .end local v9    # "strTimeStamp":Ljava/lang/String;
    .end local v10    # "strYear":Ljava/lang/String;
    :cond_1
    iget-object v11, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;

    return-object v11
.end method

.method static synthetic access$000()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Thread;

    .prologue
    .line 47
    sput-object p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_connectGPWifiDeviceThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strSaveDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lgeneralplus/com/GPCamDemo/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lgeneralplus/com/GPCamDemo/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lgeneralplus/com/GPCamDemo/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->GetFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lgeneralplus/com/GPCamDemo/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lgeneralplus/com/GPCamDemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->showSetTimeDialog()V

    return-void
.end method

.method static synthetic access$400(Lgeneralplus/com/GPCamDemo/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->showSaveLogDialog()V

    return-void
.end method

.method static synthetic access$500(Lgeneralplus/com/GPCamDemo/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    iget v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I

    return v0
.end method

.method static synthetic access$502(Lgeneralplus/com/GPCamDemo/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I

    return p1
.end method

.method static synthetic access$602(Lgeneralplus/com/GPCamDemo/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_inputSelection:I

    return p1
.end method

.method static synthetic access$700(Lgeneralplus/com/GPCamDemo/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->bWriteLogCatFile:Z

    return v0
.end method

.method static synthetic access$702(Lgeneralplus/com/GPCamDemo/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->bWriteLogCatFile:Z

    return p1
.end method

.method private crateDirectory()V
    .locals 4

    .prologue
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GoPlusCam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strSaveDirectory:Ljava/lang/String;

    .line 210
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->strSaveDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "SaveFileDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 213
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/Camera/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "CameraFileDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 216
    :cond_0
    return-void
.end method

.method public static executeCommandLine(Ljava/lang/String;J)I
    .locals 5
    .param p0, "commandLine"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 294
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 296
    .local v1, "process":Ljava/lang/Process;
    new-instance v3, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;-><init>(Ljava/lang/Process;Lgeneralplus/com/GPCamDemo/MainActivity$1;)V

    .line 297
    .local v3, "worker":Lgeneralplus/com/GPCamDemo/MainActivity$Worker;
    invoke-virtual {v3}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->start()V

    .line 299
    :try_start_0
    invoke-virtual {v3, p1, p2}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->join(J)V

    .line 300
    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->access$900(Lgeneralplus/com/GPCamDemo/MainActivity$Worker;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 301
    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->exit:Ljava/lang/Integer;
    invoke-static {v3}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->access$900(Lgeneralplus/com/GPCamDemo/MainActivity$Worker;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 309
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 301
    return v4

    .line 303
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->interrupt()V

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 307
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    throw v4
.end method

.method private shouldAskPermission()Z
    .locals 2

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSaveLogDialog()V
    .locals 5

    .prologue
    .line 247
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 250
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 253
    iget v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_inputSelection:I

    new-instance v3, Lgeneralplus/com/GPCamDemo/MainActivity$5;

    invoke-direct {v3, p0}, Lgeneralplus/com/GPCamDemo/MainActivity$5;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    return-void
.end method

.method private showSetTimeDialog()V
    .locals 5

    .prologue
    .line 185
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 188
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 191
    iget v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I

    new-instance v3, Lgeneralplus/com/GPCamDemo/MainActivity$4;

    invoke-direct {v3, p0}, Lgeneralplus/com/GPCamDemo/MainActivity$4;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 206
    return-void
.end method


# virtual methods
.method public isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 562
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    const/4 v1, 0x1

    .line 566
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "EXIT"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->finish()V

    .line 65
    :cond_0
    const v9, 0x7f09001b

    invoke-virtual {p0, v9}, Lgeneralplus/com/GPCamDemo/MainActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 67
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 68
    iput-object p0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->shouldAskPermission()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 71
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v9}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 73
    .local v8, "writePermission":I
    if-eqz v8, :cond_5

    .line 75
    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v10, v3, v9

    .line 77
    .local v3, "perms":[Ljava/lang/String;
    const/16 v4, 0xc8

    .line 79
    .local v4, "permsRequestCode":I
    invoke-static {p0, v3, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 89
    .end local v3    # "perms":[Ljava/lang/String;
    .end local v4    # "permsRequestCode":I
    .end local v8    # "writePermission":I
    :goto_0
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

    if-nez v9, :cond_1

    .line 91
    new-instance v9, Lgeneralplus/com/GPCamLib/CamWrapper;

    invoke-direct {v9}, Lgeneralplus/com/GPCamLib/CamWrapper;-><init>()V

    iput-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_CamWrapper:Lgeneralplus/com/GPCamLib/CamWrapper;

    .line 94
    :cond_1
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_GPINIReader:Lgeneralplus/com/GPCamLib/GPINIReader;

    if-nez v9, :cond_2

    .line 95
    new-instance v9, Lgeneralplus/com/GPCamLib/GPINIReader;

    invoke-direct {v9}, Lgeneralplus/com/GPCamLib/GPINIReader;-><init>()V

    iput-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_GPINIReader:Lgeneralplus/com/GPCamLib/GPINIReader;

    .line 97
    :cond_2
    const v9, 0x7f07002e

    invoke-virtual {p0, v9}, Lgeneralplus/com/GPCamDemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->imgbtn_connect:Landroid/widget/ImageButton;

    .line 98
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->imgbtn_connect:Landroid/widget/ImageButton;

    new-instance v10, Lgeneralplus/com/GPCamDemo/MainActivity$1;

    invoke-direct {v10, p0}, Lgeneralplus/com/GPCamDemo/MainActivity$1;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const-string v9, "Data"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lgeneralplus/com/GPCamDemo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 119
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "SetTime"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I

    .line 121
    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->isExternalStorageWritable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    iget-object v10, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->runnableRecordLogCat:Ljava/lang/Runnable;

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_3
    const v9, 0x7f07006a

    invoke-virtual {p0, v9}, Lgeneralplus/com/GPCamDemo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 124
    .local v7, "tv_version":Landroid/widget/TextView;
    new-instance v9, Lgeneralplus/com/GPCamDemo/MainActivity$2;

    invoke-direct {v9, p0}, Lgeneralplus/com/GPCamDemo/MainActivity$2;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    sget-object v9, Lgeneralplus/com/GPCamDemo/MainActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0049

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_4

    .line 152
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 154
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 156
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lgeneralplus/com/GPCamDemo/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 157
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v6

    .line 158
    .local v6, "request":Landroid/net/NetworkRequest;
    new-instance v1, Lgeneralplus/com/GPCamDemo/MainActivity$3;

    invoke-direct {v1, p0, v2}, Lgeneralplus/com/GPCamDemo/MainActivity$3;-><init>(Lgeneralplus/com/GPCamDemo/MainActivity;Landroid/net/ConnectivityManager;)V

    .line 178
    .local v1, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v2, v6, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 182
    .end local v0    # "builder":Landroid/net/NetworkRequest$Builder;
    .end local v1    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v6    # "request":Landroid/net/NetworkRequest;
    :cond_4
    return-void

    .line 82
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    .end local v7    # "tv_version":Landroid/widget/TextView;
    .restart local v8    # "writePermission":I
    :cond_5
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->crateDirectory()V

    goto/16 :goto_0

    .line 86
    .end local v8    # "writePermission":I
    :cond_6
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->crateDirectory()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lgeneralplus/com/GPCamDemo/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->m_Dialog:Landroid/app/ProgressDialog;

    .line 475
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->recordLogCatHandler:Landroid/os/Handler;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity;->runnableRecordLogCat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 477
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "permsRequestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 225
    :pswitch_0
    aget v4, p3, v3

    if-nez v4, :cond_1

    move v1, v2

    .line 226
    .local v1, "writeAccepted":Z
    :goto_1
    if-nez v1, :cond_2

    .line 227
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->shouldAskPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v3

    .line 230
    .local v0, "perms":[Ljava/lang/String;
    invoke-static {p0, v0, p1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "perms":[Ljava/lang/String;
    .end local v1    # "writeAccepted":Z
    :cond_1
    move v1, v3

    .line 225
    goto :goto_1

    .line 234
    .restart local v1    # "writeAccepted":Z
    :cond_2
    invoke-direct {p0}, Lgeneralplus/com/GPCamDemo/MainActivity;->crateDirectory()V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
