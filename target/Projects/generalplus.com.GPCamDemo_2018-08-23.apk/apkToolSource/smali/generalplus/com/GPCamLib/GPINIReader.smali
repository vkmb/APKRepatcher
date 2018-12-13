.class public Lgeneralplus/com/GPCamLib/GPINIReader;
.super Ljava/lang/Object;
.source "GPINIReader.java"


# static fields
.field private static final INIReader_SaveLog:Ljava/lang/String; = "SaveLog"

.field private static final INIReader_ShowLog:Ljava/lang/String; = "ShowLog"

.field private static TAG:Ljava/lang/String;

.field private static _EnableSaveLog:Z

.field private static _EnableShowLog:Z

.field private static m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;


# instance fields
.field private configuration:Ljava/util/Properties;

.field private configurationFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    const-string v0, "GPINIReader"

    sput-object v0, Lgeneralplus/com/GPCamLib/GPINIReader;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lgeneralplus/com/GPCamLib/GPINIReader;->m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;

    .line 18
    sput-boolean v1, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableShowLog:Z

    .line 19
    sput-boolean v1, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableSaveLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v5, ""

    iput-object v5, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    .line 25
    sput-object p0, Lgeneralplus/com/GPCamLib/GPINIReader;->m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;

    .line 26
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configuration:Ljava/util/Properties;

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GoPlusCam"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GoPlusCamConf.ini"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    .line 31
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 35
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    iget-object v5, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "fw":Ljava/io/FileWriter;
    const-string v4, ""

    .line 37
    .local v4, "strTemp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%s = false\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "SaveLog"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%s = false\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ShowLog"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v4    # "strTemp":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgeneralplus/com/GPCamLib/GPINIReader;->load()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 48
    const-string v5, "SaveLog"

    invoke-virtual {p0, v5}, Lgeneralplus/com/GPCamLib/GPINIReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "strProperty":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    sput-boolean v10, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableSaveLog:Z

    .line 52
    :cond_1
    const-string v5, "ShowLog"

    invoke-virtual {p0, v5}, Lgeneralplus/com/GPCamLib/GPINIReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    const-string v5, "ShowLog"

    .line 54
    invoke-virtual {p0, v5}, Lgeneralplus/com/GPCamLib/GPINIReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRUE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    sput-boolean v10, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableShowLog:Z

    .line 58
    .end local v3    # "strProperty":Ljava/lang/String;
    :cond_2
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lgeneralplus/com/GPCamLib/GPINIReader;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lgeneralplus/com/GPCamLib/GPINIReader;->m_Instance:Lgeneralplus/com/GPCamLib/GPINIReader;

    return-object v0
.end method


# virtual methods
.method public IsEnableSaveLog()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableSaveLog:Z

    return v0
.end method

.method public IsEnableShowLog()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lgeneralplus/com/GPCamLib/GPINIReader;->_EnableShowLog:Z

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configuration:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Z
    .locals 5

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 76
    .local v1, "retval":Z
    :try_start_0
    iget-object v2, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configuration:Ljava/util/Properties;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lgeneralplus/com/GPCamLib/GPINIReader;->configurationFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v1, 0x1

    .line 81
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
