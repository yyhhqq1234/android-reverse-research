.class public Lcom/standardar/wrapper/Plane;
.super Lcom/standardar/wrapper/TrackableBase;
.source "Plane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/wrapper/Plane$Type;
    }
.end annotation


# direct methods
.method constructor <init>(JLcom/standardar/wrapper/Session;)V
    .locals 1
    .param p1, "trackablePtr"    # J
    .param p3, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/standardar/wrapper/TrackableBase;-><init>(JLcom/standardar/wrapper/Session;)V

    .line 30
    return-void
.end method

.method private native arGetCenterPose(JJ)Lcom/standardar/common/Pose;
.end method

.method private native arGetExtentX(JJ)F
.end method

.method private native arGetExtentY(JJ)F
.end method

.method private native arGetExtentZ(JJ)F
.end method

.method private native arGetPolygon(JJ)[F
.end method

.method private native arGetPolygon3D(JJ)[F
.end method

.method private native arGetPolygon3DSize(JJ)I
.end method

.method private native arGetType(JJ)I
.end method

.method private native arIsPoseInExtents(JJLcom/standardar/common/Pose;)Z
.end method

.method private native arIsPoseInPolygon(JJLcom/standardar/common/Pose;)Z
.end method


# virtual methods
.method public getCenterPose()Lcom/standardar/common/Pose;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetCenterPose(JJ)Lcom/standardar/common/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getExtentX()F
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetExtentX(JJ)F

    move-result v0

    return v0
.end method

.method public getExtentY()F
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetExtentY(JJ)F

    move-result v0

    return v0
.end method

.method public getExtentZ()F
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetExtentZ(JJ)F

    move-result v0

    return v0
.end method

.method public getPolygon()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetPolygon(JJ)[F

    move-result-object v0

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPolygon3D()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetPolygon3D(JJ)[F

    move-result-object v0

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPolygon3DSize()I
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Plane;->arGetPolygon3DSize(JJ)I

    move-result v0

    return v0
.end method

.method public getType()Lcom/standardar/wrapper/Plane$Type;
    .locals 6

    .prologue
    .line 33
    iget-object v1, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Plane;->arGetType(JJ)I

    move-result v0

    .line 34
    .local v0, "typeindex":I
    invoke-static {v0}, Lcom/standardar/wrapper/Plane$Type;->fromNumber(I)Lcom/standardar/wrapper/Plane$Type;

    move-result-object v1

    return-object v1
.end method

.method public isPoseInExtents(Lcom/standardar/common/Pose;)Z
    .locals 7
    .param p1, "pose"    # Lcom/standardar/common/Pose;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Plane;->arIsPoseInExtents(JJLcom/standardar/common/Pose;)Z

    move-result v0

    return v0
.end method

.method public isPoseInPolygon(Lcom/standardar/common/Pose;)Z
    .locals 7
    .param p1, "pose"    # Lcom/standardar/common/Pose;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/standardar/wrapper/Plane;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Plane;->mTrackablePtr:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Plane;->arIsPoseInPolygon(JJLcom/standardar/common/Pose;)Z

    move-result v0

    return v0
.end method
