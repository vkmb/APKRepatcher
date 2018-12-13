.class Lgeneralplus/com/GPCamDemo/MainActivity$Worker;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private exit:Ljava/lang/Integer;

.field private final process:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;)V
    .locals 0
    .param p1, "process"    # Ljava/lang/Process;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 277
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->process:Ljava/lang/Process;

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Lgeneralplus/com/GPCamDemo/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Process;
    .param p2, "x1"    # Lgeneralplus/com/GPCamDemo/MainActivity$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;-><init>(Ljava/lang/Process;)V

    return-void
.end method

.method static synthetic access$900(Lgeneralplus/com/GPCamDemo/MainActivity$Worker;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/MainActivity$Worker;

    .prologue
    .line 272
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->exit:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$Worker;->exit:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "ignore":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
