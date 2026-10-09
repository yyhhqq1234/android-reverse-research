.class public Lcom/google/ar/core/Camera;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ARCore-Camera"


# instance fields
.field nativeHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p2, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeAcquireCamera(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    return-void
.end method

.method private static native nativeAcquireCamera(JJ)J
.end method

.method private native nativeCreateCameraIntrinsics(JJ)J
.end method

.method private native nativeDisplayOrientedPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetImageIntrinsics(JJJ)V
.end method

.method private native nativeGetPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetProjectionMatrix(JJ[FIFF)V
.end method

.method private native nativeGetTextureIntrinsics(JJJ)V
.end method

.method private native nativeGetTrackingState(JJ)I
.end method

.method private native nativeGetViewMatrix(JJ[FI)V
.end method

.method private static native nativeReleaseCamera(J)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/ar/core/Camera;

    iget-wide v2, p1, Lcom/google/ar/core/Camera;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/Camera;->nativeReleaseCamera(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDisplayOrientedPose()Lcom/google/ar/core/Pose;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeDisplayOrientedPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getImageIntrinsics()Lcom/google/ar/core/CameraIntrinsics;
    .locals 9

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeCreateCameraIntrinsics(JJ)J

    move-result-wide v0

    new-instance v8, Lcom/google/ar/core/CameraIntrinsics;

    iget-object v2, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    invoke-direct {v8, v0, v1, v2}, Lcom/google/ar/core/CameraIntrinsics;-><init>(JLcom/google/ar/core/Session;)V

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    iget-wide v6, v8, Lcom/google/ar/core/CameraIntrinsics;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Camera;->nativeGetImageIntrinsics(JJJ)V

    return-object v8
.end method

.method public getPose()Lcom/google/ar/core/Pose;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeGetPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getProjectionMatrix([FIFF)V
    .locals 10

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/ar/core/Camera;->nativeGetProjectionMatrix(JJ[FIFF)V

    return-void
.end method

.method public getTextureIntrinsics()Lcom/google/ar/core/CameraIntrinsics;
    .locals 9

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeCreateCameraIntrinsics(JJ)J

    move-result-wide v0

    new-instance v8, Lcom/google/ar/core/CameraIntrinsics;

    iget-object v2, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    invoke-direct {v8, v0, v1, v2}, Lcom/google/ar/core/CameraIntrinsics;-><init>(JLcom/google/ar/core/Session;)V

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    iget-wide v6, v8, Lcom/google/ar/core/CameraIntrinsics;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Camera;->nativeGetTextureIntrinsics(JJJ)V

    return-object v8
.end method

.method public getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Camera;->nativeGetTrackingState(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/google/ar/core/TrackingState;->forNumber(I)Lcom/google/ar/core/TrackingState;

    move-result-object v0

    return-object v0
.end method

.method public getViewMatrix([FI)V
    .locals 8

    iget-object v0, p0, Lcom/google/ar/core/Camera;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Camera;->nativeGetViewMatrix(JJ[FI)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/Camera;->nativeHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method
