.class public Lcom/standardar/wrapper/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"


# instance fields
.field protected mPointCloudPtr:J

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method constructor <init>(Lcom/standardar/wrapper/Session;J)V
    .locals 0
    .param p1, "session"    # Lcom/standardar/wrapper/Session;
    .param p2, "pointcloundPtr"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p2, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    .line 16
    iput-object p1, p0, Lcom/standardar/wrapper/PointCloud;->mSession:Lcom/standardar/wrapper/Session;

    .line 17
    return-void
.end method

.method private native arGetData(JJ)[F
.end method

.method private native arGetNumberOfPoints(JJ)I
.end method

.method private native arReleasePointCloud(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/PointCloud;->arReleasePointCloud(J)V

    .line 24
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 25
    return-void
.end method

.method public getNumberOfPoints()I
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/standardar/wrapper/PointCloud;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/PointCloud;->arGetNumberOfPoints(JJ)I

    move-result v0

    return v0
.end method

.method public getPoints()Ljava/nio/FloatBuffer;
    .locals 6

    .prologue
    .line 37
    iget-object v1, p0, Lcom/standardar/wrapper/PointCloud;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/PointCloud;->arGetData(JJ)[F

    move-result-object v0

    .line 38
    .local v0, "ptarray":[F
    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/PointCloud;->arReleasePointCloud(J)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/standardar/wrapper/PointCloud;->mPointCloudPtr:J

    .line 30
    return-void
.end method
