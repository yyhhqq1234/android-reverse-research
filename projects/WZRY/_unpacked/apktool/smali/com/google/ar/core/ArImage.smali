.class public Lcom/google/ar/core/ArImage;
.super La/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/ArImage$a;
    }
.end annotation


# instance fields
.field nativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, La/a/a;-><init>()V

    iput-wide p1, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/ar/core/ArImage;JI)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/ArImage;->nativeGetRowStride(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/ar/core/ArImage;JI)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/ArImage;->nativeGetPixelStride(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/ar/core/ArImage;JI)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ar/core/ArImage;->nativeGetBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeGetBuffer(JI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetFormat(J)I
.end method

.method private native nativeGetHeight(J)I
.end method

.method private native nativeGetNumberOfPlanes(J)I
.end method

.method private native nativeGetPixelStride(JI)I
.end method

.method private native nativeGetRowStride(JI)I
.end method

.method private native nativeGetTimestamp(J)J
.end method

.method private native nativeGetWidth(J)I
.end method

.method static native nativeLoadSymbols()V
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/ArImage;->nativeClose(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Crop rect is unknown in this image."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/ArImage;->nativeGetFormat(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getFormat()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/ArImage;->nativeGetHeight(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getHeight()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 6

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/ArImage;->nativeGetNumberOfPlanes(J)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getPlanes()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v2, v1, [Lcom/google/ar/core/ArImage$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    new-instance v3, Lcom/google/ar/core/ArImage$a;

    iget-wide v4, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/ar/core/ArImage$a;-><init>(Lcom/google/ar/core/ArImage;JI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getTimestamp()J
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/ArImage;->nativeGetTimestamp(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getTimestamp()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/ArImage;->nativeGetWidth(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unknown error in ArImage.getWidth()."

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a read-only image."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTimestamp(J)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a read-only image."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
