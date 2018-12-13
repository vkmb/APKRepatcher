.class public Lgeneralplus/com/GPCamLib/IncomingCall;
.super Landroid/content/BroadcastReceiver;
.source "IncomingCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private m_Context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    const-string v0, "IncomingCall"

    iput-object v0, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lgeneralplus/com/GPCamLib/IncomingCall;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamLib/IncomingCall;

    .prologue
    .line 11
    iget-object v0, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->m_Context:Landroid/content/Context;

    .line 22
    :try_start_0
    const-string v3, "phone"

    .line 23
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 26
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    new-instance v0, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;-><init>(Lgeneralplus/com/GPCamLib/IncomingCall;Lgeneralplus/com/GPCamLib/IncomingCall$1;)V

    .line 29
    .local v0, "PhoneListener":Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;
    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "PhoneListener":Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;
    .end local v2    # "tmgr":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
