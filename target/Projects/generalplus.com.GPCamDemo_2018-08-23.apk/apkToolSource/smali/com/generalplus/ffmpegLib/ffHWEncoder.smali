.class public Lcom/generalplus/ffmpegLib/ffHWEncoder;
.super Landroid/test/AndroidTestCase;
.source "ffHWEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;
    }
.end annotation


# static fields
.field public static final HWENCODE_QUALITY_HIGH:I = 0x4

.field public static final HWENCODE_QUALITY_LOW:I = 0x1

.field public static final HWENCODE_QUALITY_MEDIUM:I = 0x2

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "ffHWEncoder"

.field private static final VERBOSE:Z


# instance fields
.field private mBitRate:I

.field private mColorFormat:I

.field private mEncoder:Landroid/media/MediaCodec;

.field private mFPS:I

.field private mFirstFrameTime:J

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mStop:Z

.field private mTrackIndex:I

.field private m_Encodetimer:Ljava/util/Timer;

.field private motionfactor:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFPS:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->motionfactor:I

    .line 40
    const v0, 0x5b8d80

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mBitRate:I

    .line 41
    iput-object v2, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 42
    iput-object v2, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 43
    iput v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mColorFormat:I

    .line 44
    iput-boolean v3, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxerStarted:Z

    .line 45
    iput v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mTrackIndex:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFirstFrameTime:J

    .line 47
    iput-boolean v3, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mStop:Z

    .line 48
    iput-object v2, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;

    return-void
.end method

.method private EncodeData([B)V
    .locals 19
    .param p1, "frameData"    # [B

    .prologue
    .line 222
    const/16 v9, 0x2710

    .line 223
    .local v9, "TIMEOUT_USEC":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 224
    .local v12, "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 225
    .local v13, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 228
    .local v15, "info":Landroid/media/MediaCodec$BufferInfo;
    const/16 v17, 0x0

    .line 229
    .local v17, "inputDone":Z
    const/4 v11, 0x0

    .line 230
    .local v11, "encoderDone":Z
    :cond_0
    :goto_0
    if-nez v11, :cond_e

    .line 238
    if-nez v17, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 241
    .local v3, "inputBufIndex":I
    if-ltz v3, :cond_1

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->computePresentationTimeMirco()J

    move-result-wide v6

    .line 244
    .local v6, "ptsUsec":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mStop:Z

    if-eqz v2, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 248
    const/16 v17, 0x1

    .line 275
    .end local v3    # "inputBufIndex":I
    .end local v6    # "ptsUsec":J
    :cond_1
    :goto_1
    if-nez v11, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v15, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    .line 277
    .local v14, "encoderStatus":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_4

    .line 280
    const/4 v11, 0x1

    goto :goto_0

    .line 253
    .end local v14    # "encoderStatus":I
    .restart local v3    # "inputBufIndex":I
    .restart local v6    # "ptsUsec":J
    :cond_2
    aget-object v16, v12, v3

    .line 255
    .local v16, "inputBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    move-object/from16 v0, p1

    array-length v4, v0

    if-lt v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->assertTrue(Z)V

    .line 256
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 257
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 260
    const/16 v17, 0x1

    goto :goto_1

    .line 255
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 281
    .end local v3    # "inputBufIndex":I
    .end local v6    # "ptsUsec":J
    .end local v16    # "inputBuf":Ljava/nio/ByteBuffer;
    .restart local v14    # "encoderStatus":I
    :cond_4
    const/4 v2, -0x3

    if-ne v14, v2, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    goto :goto_0

    .line 285
    :cond_5
    const/4 v2, -0x2

    if-ne v14, v2, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v18

    .line 291
    .local v18, "newFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxerStarted:Z

    if-eqz v2, :cond_6

    .line 292
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "format changed twice"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mTrackIndex:I

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    .line 298
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxerStarted:Z

    goto/16 :goto_0

    .line 300
    .end local v18    # "newFormat":Landroid/media/MediaFormat;
    :cond_7
    if-gez v14, :cond_8

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_8
    aget-object v10, v13, v14

    .line 304
    .local v10, "encodedData":Ljava/nio/ByteBuffer;
    if-nez v10, :cond_9

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoderOutputBuffer "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " was null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->fail(Ljava/lang/String;)V

    .line 308
    :cond_9
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 312
    const/4 v2, 0x0

    iput v2, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 320
    :goto_3
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_d

    .line 321
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxerStarted:Z

    if-nez v2, :cond_c

    .line 322
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "muxer hasn\'t started"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_a
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b

    const/4 v11, 0x1

    :goto_4
    goto :goto_3

    :cond_b
    const/4 v11, 0x0

    goto :goto_4

    .line 326
    :cond_c
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 327
    iget v2, v15, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v4

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mTrackIndex:I

    invoke-virtual {v2, v4, v10, v15}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 333
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 337
    .end local v10    # "encodedData":Ljava/nio/ByteBuffer;
    .end local v14    # "encoderStatus":I
    :cond_e
    return-void
.end method

.method private Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 142
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 143
    iput-object v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 148
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 149
    iput-object v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 151
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/generalplus/ffmpegLib/ffHWEncoder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mStop:Z

    return v0
.end method

.method static synthetic access$200(Lcom/generalplus/ffmpegLib/ffHWEncoder;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;
    .param p1, "x1"    # [B

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->EncodeData([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/generalplus/ffmpegLib/ffHWEncoder;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/generalplus/ffmpegLib/ffHWEncoder;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/generalplus/ffmpegLib/ffHWEncoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->Release()V

    return-void
.end method

.method static synthetic access$500(Lcom/generalplus/ffmpegLib/ffHWEncoder;)I
    .locals 1
    .param p0, "x0"    # Lcom/generalplus/ffmpegLib/ffHWEncoder;

    .prologue
    .line 27
    iget v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mColorFormat:I

    return v0
.end method

.method private computePresentationTimeMirco()J
    .locals 6

    .prologue
    .line 401
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFirstFrameTime:J

    sub-long v0, v2, v4

    .line 403
    .local v0, "Diff":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    return-wide v2
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1
    .param p0, "colorFormat"    # I

    .prologue
    .line 383
    sparse-switch p0, :sswitch_data_0

    .line 392
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 390
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    .line 346
    .local v3, "numCodecs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 347
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 348
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "types":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 353
    aget-object v5, v4, v2

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 358
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :goto_2
    return-object v0

    .line 352
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "j":I
    .restart local v4    # "types":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "j":I
    .end local v4    # "types":[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 368
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 369
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v3, v2

    .line 370
    .local v1, "colorFormat":I
    invoke-static {v1}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->isRecognizedFormat(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    .end local v1    # "colorFormat":I
    :goto_1
    return v1

    .line 368
    .restart local v1    # "colorFormat":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "colorFormat":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find a good color format for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->fail(Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public SetFPS(I)V
    .locals 1
    .param p1, "i32FPS"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFPS:I

    .line 54
    iget v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFPS:I

    if-gtz v0, :cond_0

    .line 55
    const/16 v0, 0xf

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFPS:I

    .line 56
    :cond_0
    return-void
.end method

.method public SetQuality(I)V
    .locals 2
    .param p1, "i32Q"    # I

    .prologue
    const/4 v1, 0x4

    .line 60
    iput p1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->motionfactor:I

    .line 61
    iget v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->motionfactor:I

    if-le v0, v1, :cond_0

    .line 62
    iput v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->motionfactor:I

    .line 64
    :cond_0
    return-void
.end method

.method public Start(Ljava/lang/String;)V
    .locals 13
    .param p1, "outputPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naGetVideoRes()[I

    move-result-object v12

    .line 71
    .local v12, "res":[I
    const/4 v0, 0x0

    aget v7, v12, v0

    .line 72
    .local v7, "Width":I
    const/4 v0, 0x1

    aget v6, v12, v0

    .line 74
    .local v6, "Height":I
    const-string v0, "video/avc"

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 75
    .local v8, "codecInfo":Landroid/media/MediaCodecInfo;
    if-nez v8, :cond_0

    .line 77
    const-string v0, "ffHWEncoder"

    const-string v1, "Unable to find an appropriate codec for video/avc"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v6    # "Height":I
    .end local v7    # "Width":I
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v12    # "res":[I
    :goto_0
    return-void

    .line 82
    .restart local v6    # "Height":I
    .restart local v7    # "Width":I
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v12    # "res":[I
    :cond_0
    mul-int v0, v7, v6

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFPS:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->motionfactor:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mBitRate:I

    .line 84
    const-string v0, "ffHWEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found codec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "video/avc"

    invoke-static {v8, v0}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mColorFormat:I

    .line 86
    const-string v0, "ffHWEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mColorFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v0, "video/avc"

    invoke-static {v0, v7, v6}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v10

    .line 92
    .local v10, "format":Landroid/media/MediaFormat;
    const-string v0, "color-format"

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mColorFormat:I

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 93
    const-string v0, "bitrate"

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mBitRate:I

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 94
    const-string v0, "frame-rate"

    iget v1, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFPS:I

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 95
    const-string v0, "i-frame-interval"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 99
    const-string v0, "profile"

    const/16 v1, 0x8

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 106
    :cond_1
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    .line 107
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 108
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :try_start_2
    invoke-static {}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->getInstance()Lcom/generalplus/ffmpegLib/ffmpegWrapper;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/generalplus/ffmpegLib/ffmpegWrapper;->naSetCovertDecodeFrameFormat(I)I

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mStop:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mMuxerStarted:Z

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mTrackIndex:I

    .line 121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mFirstFrameTime:J

    .line 123
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;

    .line 124
    iget-object v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->m_Encodetimer:Ljava/util/Timer;

    new-instance v1, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/generalplus/ffmpegLib/ffHWEncoder$EncodeTask;-><init>(Lcom/generalplus/ffmpegLib/ffHWEncoder;Lcom/generalplus/ffmpegLib/ffHWEncoder$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x28

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 127
    .end local v6    # "Height":I
    .end local v7    # "Width":I
    .end local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v10    # "format":Landroid/media/MediaFormat;
    .end local v12    # "res":[I
    :catch_0
    move-exception v9

    .line 128
    .local v9, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/generalplus/ffmpegLib/ffHWEncoder;->Release()V

    goto/16 :goto_0

    .line 112
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "Height":I
    .restart local v7    # "Width":I
    .restart local v8    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v10    # "format":Landroid/media/MediaFormat;
    .restart local v12    # "res":[I
    :catch_1
    move-exception v11

    .line 113
    .local v11, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MediaMuxer creation failed"

    invoke-direct {v0, v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/generalplus/ffmpegLib/ffHWEncoder;->mStop:Z

    .line 135
    return-void
.end method
