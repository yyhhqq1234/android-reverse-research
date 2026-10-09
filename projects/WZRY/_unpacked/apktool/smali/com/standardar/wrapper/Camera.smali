.class public Lcom/standardar/wrapper/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field protected mCameraPtr:J

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method constructor <init>(Lcom/standardar/wrapper/Session;Lcom/standardar/wrapper/Frame;)V
    .locals 4
    .param p1, "session"    # Lcom/standardar/wrapper/Session;
    .param p2, "frame"    # Lcom/standardar/wrapper/Frame;

    .prologue
    const-wide/16 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    .line 16
    iput-wide v2, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    .line 17
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 18
    iget-wide v0, p1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p2, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Camera;->arAcquireCamera(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    .line 19
    :cond_0
    return-void
.end method

.method private native arAcquireCamera(JJ)J
.end method

.method private native arGetPose(JJ)Lcom/standardar/common/Pose;
.end method

.method private native arGetProjectionMatrix(JJ[FIFF)V
.end method

.method private native arGetTrackingState(JJ)I
.end method

.method private native arGetViewMatrix(JJ[FI)V
.end method

.method private native arLookAt(JJ[F[F[F[F)V
.end method

.method private native arReleaseCamera(J)V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/standardar/wrapper/Camera;

    .line 29
    .local v0, "camera":Lcom/standardar/wrapper/Camera;
    iget-wide v2, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    iget-wide v4, v0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 38
    iget-wide v0, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Camera;->arReleaseCamera(J)V

    .line 41
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 42
    return-void
.end method

.method public getPose()Lcom/standardar/common/Pose;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lcom/standardar/common/Pose;

    invoke-direct {v0}, Lcom/standardar/common/Pose;-><init>()V

    .line 56
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Camera;->arGetPose(JJ)Lcom/standardar/common/Pose;

    move-result-object v0

    goto :goto_0
.end method

.method public getProjectionMatrix([FIFF)V
    .locals 10
    .param p1, "projmat"    # [F
    .param p2, "offset"    # I
    .param p3, "znear"    # F
    .param p4, "zfar"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/standardar/wrapper/Camera;->arGetProjectionMatrix(JJ[FIFF)V

    .line 65
    return-void
.end method

.method public getTrackingState()Lcom/standardar/wrapper/Trackable$TrackingState;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 45
    iget-object v1, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 46
    :cond_0
    sget-object v1, Lcom/standardar/wrapper/Trackable$TrackingState;->STOPPED:Lcom/standardar/wrapper/Trackable$TrackingState;

    .line 49
    :goto_0
    return-object v1

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Camera;->arGetTrackingState(JJ)I

    move-result v0

    .line 49
    .local v0, "state":I
    invoke-static {v0}, Lcom/standardar/wrapper/Trackable$TrackingState;->fromNumber(I)Lcom/standardar/wrapper/Trackable$TrackingState;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewMatrix([FI)V
    .locals 8
    .param p1, "viewmat"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/standardar/wrapper/Camera;->arGetViewMatrix(JJ[FI)V

    .line 61
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public lookAt([F[F[F[F)V
    .locals 10
    .param p1, "viewmat"    # [F
    .param p2, "pos"    # [F
    .param p3, "tar"    # [F
    .param p4, "up"    # [F

    .prologue
    .line 68
    iget-object v0, p0, Lcom/standardar/wrapper/Camera;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Camera;->mCameraPtr:J

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/standardar/wrapper/Camera;->arLookAt(JJ[F[F[F[F)V

    .line 69
    return-void
.end method
