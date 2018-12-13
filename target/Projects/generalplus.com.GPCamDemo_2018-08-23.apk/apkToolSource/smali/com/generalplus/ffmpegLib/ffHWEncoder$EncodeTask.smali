.class Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;
.super Ljava/util/TimerTask;
.source "ffHWEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/generalplus/ffmpegLib/ffHWEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;


# direct methods
.method private constructor <init>(Lcom/generalplus/ffmpegLib/ffHWEncoder;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/generalplus/ffmpegLib/ffHWEncoder;Lcom/generalplus/ffmpegLib/ffHWEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;
    .param p2, "x1"    # Lcom/generalplus/ffmpegLib/ffHWEncoder$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;-><init>(Lcom/generalplus/ffmpegLib/ffHWEncoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # getter for: Lcom/generalplus/ffmpegLib/ffHWEncoder;->mStop:Z
    invoke-static {v6}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$100(Lcom/generalplus/ffmpegLib/ffHWEncoder;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # invokes: Lcom/generalplus/ffmpegLib/ffHWEncoder;->EncodeData([B)V
    invoke-static {v6, v7}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$200(Lcom/generalplus/ffmpegLib/ffHWEncoder;[B)V

    .line 161
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # getter for: Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;
    invoke-static {v6}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$300(Lcom/generalplus/ffmpegLib/ffHWEncoder;)Ljava/util/Timer;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 162
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # getter for: Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;
    invoke-static {v6}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$300(Lcom/generalplus/ffmpegLib/ffHWEncoder;)Ljava/util/Timer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 163
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # setter for: Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;
    invoke-static {v6, v7}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$302(Lcom/generalplus/ffmpegLib/ffHWEncoder;Ljava/util/Timer;)Ljava/util/Timer;

    .line 165
    :cond_0
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # invokes: Lcom/generalplus/ffmpegLib/ffHWEncoder;->Release()V
    invoke-static {v6}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$400(Lcom/generalplus/ffmpegLib/ffHWEncoder;)V

    .line 217
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naGetDecodeFrame()Lcom/generalplus/ffmpegLib/ffDecodeFrame;

    move-result-object v1

    .line 170
    .local v1, "decodeFrame":Lcom/generalplus/ffmpegLib/ffDecodeFrame;
    iget v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->width:I

    iget v7, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->height:I

    mul-int v5, v6, v7

    .line 171
    .local v5, "i32Y":I
    iget v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->width:I

    iget v7, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->height:I

    mul-int/2addr v6, v7

    div-int/lit8 v3, v6, 0x4

    .line 172
    .local v3, "i32U":I
    iget v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->width:I

    iget v7, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->height:I

    mul-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x4

    .line 174
    .local v4, "i32V":I
    add-int v6, v5, v3

    add-int/2addr v6, v4

    new-array v0, v6, [B

    .line 177
    .local v0, "YUV420Data":[B
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # getter for: Lcom/generalplus/ffmpegLib/ffHWEncoder;->mColorFormat:I
    invoke-static {v6}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$500(Lcom/generalplus/ffmpegLib/ffHWEncoder;)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 181
    :sswitch_0
    iget-object v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    aget-object v6, v6, v8

    invoke-static {v6, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    aget-object v6, v6, v9

    invoke-static {v6, v8, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget-object v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    aget-object v6, v6, v10

    add-int v7, v5, v3

    invoke-static {v6, v8, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    :cond_2
    :sswitch_1
    iget-object v6, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;->this$0:Lcom/generalplus/ffmpegLib/ffHWEncoder;

    # invokes: Lcom/generalplus/ffmpegLib/ffHWEncoder;->EncodeData([B)V
    invoke-static {v6, v0}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->access$200(Lcom/generalplus/ffmpegLib/ffHWEncoder;[B)V

    goto :goto_0

    .line 192
    :sswitch_2
    iget-object v6, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    aget-object v6, v6, v8

    invoke-static {v6, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 197
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    iget-object v7, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    aget-object v7, v7, v9

    aget-byte v7, v7, v2

    aput-byte v7, v0, v6

    .line 198
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v1, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    aget-object v7, v7, v10

    aget-byte v7, v7, v2

    aput-byte v7, v0, v6

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x27 -> :sswitch_1
        0x7f000100 -> :sswitch_1
    .end sparse-switch
.end method
