.class public Lcom/generalplus/ffmpegLib/ffDecodeFrame;
.super Ljava/lang/Object;
.source "ffDecodeFrame.java"


# static fields
.field public static final FFDECODE_FORMAT_YUV420P:I = 0x0

.field public static final FFDECODE_FORMAT_YUV422P:I = 0x1

.field public static final FFDECODE_FORMAT_YUV444P:I = 0x2

.field public static final FFDECODE_FORMAT_YUVJ420P:I = 0x3

.field public static final FFDECODE_FORMAT_YUVJ422P:I = 0x4

.field public static final FFDECODE_FORMAT_YUVJ444P:I = 0x5


# instance fields
.field public data:[[B

.field public format:I

.field public height:I

.field public linesize:[I

.field public width:I


# direct methods
.method public constructor <init>([[B[IIII)V
    .locals 0
    .param p1, "data"    # [[B
    .param p2, "linesize"    # [I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->data:[[B

    .line 21
    iput-object p2, p0, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->linesize:[I

    .line 22
    iput p3, p0, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->width:I

    .line 23
    iput p4, p0, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->height:I

    .line 24
    iput p5, p0, Lcom/generalplus/ffmpegLib/ffDecodeFrame;->format:I

    .line 25
    return-void
.end method
