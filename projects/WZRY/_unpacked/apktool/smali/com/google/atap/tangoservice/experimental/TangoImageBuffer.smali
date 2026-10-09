.class public Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;
.super Ljava/lang/Object;
.source "TangoImageBuffer.java"


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final RGBA_8888:I = 0x1

.field public static final RGB_888:I = 0x3

.field public static final YCRCB_420_SP:I = 0x11

.field public static final YV12:I = 0x32315659


# instance fields
.field public data:Ljava/nio/ByteBuffer;

.field public exposureDurationNs:J

.field public format:I

.field public frameNumber:J

.field public height:I

.field public stride:I

.field public timestamp:D

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(IIIJDILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "frameNumber"    # J
    .param p6, "timestamp"    # D
    .param p8, "format"    # I
    .param p9, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->width:I

    .line 58
    iput p2, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->height:I

    .line 59
    iput p3, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->stride:I

    .line 60
    iput-wide p4, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->frameNumber:J

    .line 61
    iput-wide p6, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->timestamp:D

    .line 62
    iput p8, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->format:I

    .line 63
    iput-object p9, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->data:Ljava/nio/ByteBuffer;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->exposureDurationNs:J

    .line 65
    return-void
.end method

.method public constructor <init>(IIIJDILjava/nio/ByteBuffer;J)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "stride"    # I
    .param p4, "frameNumber"    # J
    .param p6, "timestamp"    # D
    .param p8, "format"    # I
    .param p9, "data"    # Ljava/nio/ByteBuffer;
    .param p10, "exposureDurationNs"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->width:I

    .line 45
    iput p2, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->height:I

    .line 46
    iput p3, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->stride:I

    .line 47
    iput-wide p4, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->frameNumber:J

    .line 48
    iput-wide p6, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->timestamp:D

    .line 49
    iput p8, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->format:I

    .line 50
    iput-object p9, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->data:Ljava/nio/ByteBuffer;

    .line 51
    iput-wide p10, p0, Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;->exposureDurationNs:J

    .line 52
    return-void
.end method
