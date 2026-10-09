.class public Lcom/google/ar/core/CameraConfig;
.super Ljava/lang/Object;


# instance fields
.field nativeHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/CameraConfig;->session:Lcom/google/ar/core/Session;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    return-void
.end method

.method protected constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/CameraConfig;->session:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    return-void
.end method

.method private static native nativeDestroyCameraConfig(J)V
.end method

.method private native nativeGetImageDimensions(JJ[I)V
.end method

.method private native nativeGetTextureDimensions(JJ[I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/CameraConfig;->nativeDestroyCameraConfig(J)V

    iput-wide v2, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getImageSize()Landroid/util/Size;
    .locals 7

    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lcom/google/ar/core/CameraConfig;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/CameraConfig;->nativeGetImageDimensions(JJ[I)V

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getTextureSize()Landroid/util/Size;
    .locals 7

    const/4 v0, 0x2

    new-array v6, v0, [I

    iget-object v0, p0, Lcom/google/ar/core/CameraConfig;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/CameraConfig;->nativeGetTextureDimensions(JJ[I)V

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method
