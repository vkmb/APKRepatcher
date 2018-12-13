.class Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "IncomingCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamLib/IncomingCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamLib/IncomingCall;


# direct methods
.method private constructor <init>(Lgeneralplus/com/GPCamLib/IncomingCall;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;->this$0:Lgeneralplus/com/GPCamLib/IncomingCall;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgeneralplus/com/GPCamLib/IncomingCall;Lgeneralplus/com/GPCamLib/IncomingCall$1;)V
    .locals 0
    .param p1, "x0"    # Lgeneralplus/com/GPCamLib/IncomingCall;
    .param p2, "x1"    # Lgeneralplus/com/GPCamLib/IncomingCall$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;-><init>(Lgeneralplus/com/GPCamLib/IncomingCall;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lgeneralplus/com/GPCamLib/IncomingCall$MyPhoneStateListener;->this$0:Lgeneralplus/com/GPCamLib/IncomingCall;

    # getter for: Lgeneralplus/com/GPCamLib/IncomingCall;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lgeneralplus/com/GPCamLib/IncomingCall;->access$100(Lgeneralplus/com/GPCamLib/IncomingCall;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " incoming no:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
