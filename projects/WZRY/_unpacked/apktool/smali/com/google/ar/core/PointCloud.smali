.class public Lcom/google/ar/core/PointCloud;
.super Ljava/lang/Object;


# instance fields
.field private nativeHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    iput-wide v2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    iput-object p1, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    return-void
.end method

.method private native nativeGetData(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeReleasePointCloud(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/PointCloud;->nativeReleasePointCloud(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPoints()Ljava/nio/FloatBuffer;
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    invoke-direct {v0}, Lcom/google/ar/core/exceptions/DeadlineExceededException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/PointCloud;->nativeGetData(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_1
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    invoke-direct {v0}, Lcom/google/ar/core/exceptions/DeadlineExceededException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/ar/core/PointCloud;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/PointCloud;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public release()V
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/PointCloud;->nativeReleasePointCloud(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/PointCloud;->nativeHandle:J

    return-void
.end method
