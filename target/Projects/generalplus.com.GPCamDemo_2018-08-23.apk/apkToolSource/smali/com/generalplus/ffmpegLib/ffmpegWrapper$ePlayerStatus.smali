.class public final enum Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;
.super Ljava/lang/Enum;
.source "ffmpegWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ffmpegWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ePlayerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

.field public static final enum E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

.field public static final enum E_PlayerStatus_Stoped:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

.field public static final enum E_PlayerStatus_Stoping:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    const-string v1, "E_PlayerStatus_Stoped"

    invoke-direct {v0, v1, v2}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Stoped:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    .line 49
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    const-string v1, "E_PlayerStatus_Playing"

    invoke-direct {v0, v1, v3}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    .line 50
    new-instance v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    const-string v1, "E_PlayerStatus_Stoping"

    invoke-direct {v0, v1, v4}, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Stoping:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Stoped:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Playing:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->E_PlayerStatus_Stoping:Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    return-object v0
.end method

.method public static values()[Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->$VALUES:[Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    invoke-virtual {v0}, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/generalplus/ffmpegLib/ffmpegWrapper$ePlayerStatus;

    return-object v0
.end method
