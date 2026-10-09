.class public Lcom/standardar/wrapper/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/wrapper/Frame$HitTestMode;
    }
.end annotation


# instance fields
.field private mCamera:Lcom/standardar/wrapper/Camera;

.field protected mFramePtr:J

.field private final mLightEstimate:Lcom/standardar/wrapper/LightEstimate;

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method constructor <init>(Lcom/standardar/wrapper/Session;)V
    .locals 4
    .param p1, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    .line 45
    iput-wide v2, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    .line 46
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Frame;->arCreateFrame(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    .line 49
    :cond_0
    new-instance v0, Lcom/standardar/wrapper/LightEstimate;

    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    invoke-direct {v0, v1}, Lcom/standardar/wrapper/LightEstimate;-><init>(Lcom/standardar/wrapper/Session;)V

    iput-object v0, p0, Lcom/standardar/wrapper/Frame;->mLightEstimate:Lcom/standardar/wrapper/LightEstimate;

    .line 50
    return-void
.end method

.method private native arAcquirePointCloud(JJ)J
.end method

.method private native arCreateFrame(J)J
.end method

.method private native arDestroyFrame(J)V
.end method

.method private native arGetLightEstimate(JJJ)V
.end method

.method private native arGetPreviewSize(JJ)[J
.end method

.method private native arGetUpdatedAnchors(JJ)[J
.end method

.method private native arGetUpdatedTrackables(JJI)[J
.end method

.method private native arHasDisplayGeometryChanged(JJ)Z
.end method

.method private native arHitTest(JJFF)[J
.end method

.method private native arSetHitTestMode(JJI)V
.end method

.method private native arTransformDisplayUvCoords(JJ[F[F)V
.end method


# virtual methods
.method public acquirePointCloud()Lcom/standardar/wrapper/PointCloud;
    .locals 6

    .prologue
    .line 61
    iget-object v2, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v2, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Frame;->arAcquirePointCloud(JJ)J

    move-result-wide v0

    .line 62
    .local v0, "pointCloudPtr":J
    new-instance v2, Lcom/standardar/wrapper/PointCloud;

    iget-object v3, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    invoke-direct {v2, v3, v0, v1}, Lcom/standardar/wrapper/PointCloud;-><init>(Lcom/standardar/wrapper/Session;J)V

    return-object v2
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    iget-wide v0, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Frame;->arDestroyFrame(J)V

    .line 57
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method

.method public getCamera()Lcom/standardar/wrapper/Camera;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mCamera:Lcom/standardar/wrapper/Camera;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/standardar/wrapper/Camera;

    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    invoke-direct {v0, v1, p0}, Lcom/standardar/wrapper/Camera;-><init>(Lcom/standardar/wrapper/Session;Lcom/standardar/wrapper/Frame;)V

    iput-object v0, p0, Lcom/standardar/wrapper/Frame;->mCamera:Lcom/standardar/wrapper/Camera;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mCamera:Lcom/standardar/wrapper/Camera;

    return-object v0
.end method

.method public getLightEstimate()Lcom/standardar/wrapper/LightEstimate;
    .locals 8

    .prologue
    .line 73
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mLightEstimate:Lcom/standardar/wrapper/LightEstimate;

    iget-wide v6, v0, Lcom/standardar/wrapper/LightEstimate;->mLightEstimatePtr:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/standardar/wrapper/Frame;->arGetLightEstimate(JJJ)V

    .line 74
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mLightEstimate:Lcom/standardar/wrapper/LightEstimate;

    return-object v0
.end method

.method public getPreviewSize()[J
    .locals 6

    .prologue
    .line 128
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Frame;->arGetPreviewSize(JJ)[J

    move-result-object v0

    .line 129
    .local v0, "previewSize":[J
    return-object v0
.end method

.method public getUpdatedAnchors()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/standardar/wrapper/Anchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Frame;->arGetUpdatedAnchors(JJ)[J

    move-result-object v0

    .line 122
    .local v0, "updatedAnchors":[J
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    invoke-virtual {v1, v0}, Lcom/standardar/wrapper/Session;->anchorsToCollection([J)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/standardar/wrapper/Trackable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v9, 0x0

    .line 134
    .local v9, "updatedTrackablePtrArray":[J
    const-class v1, Lcom/standardar/wrapper/Plane;

    if-ne p1, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    const v6, 0x41520101

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Frame;->arGetUpdatedTrackables(JJI)[J

    move-result-object v9

    .line 141
    :cond_0
    :goto_0
    if-nez v9, :cond_3

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :goto_1
    return-object v0

    .line 136
    :cond_1
    const-class v1, Lcom/standardar/wrapper/Point;

    if-ne p1, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    const v6, 0x41520102

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Frame;->arGetUpdatedTrackables(JJI)[J

    move-result-object v9

    goto :goto_0

    .line 138
    :cond_2
    const-class v1, Lcom/standardar/wrapper/Trackable;

    if-ne p1, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    const v6, 0x41520100

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Frame;->arGetUpdatedTrackables(JJI)[J

    move-result-object v9

    goto :goto_0

    .line 145
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v8, "trackableList":Ljava/util/List;
    array-length v2, v9

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-wide v10, v9, v1

    .line 147
    .local v10, "trackablePtr":J
    iget-object v3, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    invoke-virtual {v3, v10, v11}, Lcom/standardar/wrapper/Session;->createTrackable(J)Lcom/standardar/wrapper/Trackable;

    move-result-object v7

    .line 148
    .local v7, "trackable":Lcom/standardar/wrapper/Trackable;
    if-eqz v7, :cond_4

    .line 149
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v7    # "trackable":Lcom/standardar/wrapper/Trackable;
    .end local v10    # "trackablePtr":J
    :cond_5
    move-object v0, v8

    .line 152
    goto :goto_1
.end method

.method public hasDisplayGeometryChanged()Z
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Frame;->arHasDisplayGeometryChanged(JJ)Z

    move-result v0

    return v0
.end method

.method public hitTest(FF)Ljava/util/List;
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List",
            "<",
            "Lcom/standardar/wrapper/HitResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/standardar/wrapper/Frame;->arHitTest(JJFF)[J

    move-result-object v11

    .line 87
    .local v11, "resultPtrArray":[J
    if-nez v11, :cond_1

    .line 88
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_0
    return-object v10

    .line 90
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    array-length v1, v11

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v10, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/standardar/wrapper/HitResult;>;"
    array-length v2, v11

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v8, v11, v1

    .line 92
    .local v8, "hitResultPtr":J
    new-instance v0, Lcom/standardar/wrapper/HitResult;

    iget-object v3, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    invoke-direct {v0, v8, v9, v3}, Lcom/standardar/wrapper/HitResult;-><init>(JLcom/standardar/wrapper/Session;)V

    .line 93
    .local v0, "hitresult":Lcom/standardar/wrapper/HitResult;
    invoke-virtual {v0}, Lcom/standardar/wrapper/HitResult;->getTrackable()Lcom/standardar/wrapper/Trackable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hitTest(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 2
    .param p1, "motionevent"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/standardar/wrapper/HitResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/standardar/wrapper/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setHitTestMode(Lcom/standardar/wrapper/Frame$HitTestMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/standardar/wrapper/Frame$HitTestMode;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    iget v6, p1, Lcom/standardar/wrapper/Frame$HitTestMode;->nativeCode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Frame;->arSetHitTestMode(JJI)V

    .line 83
    return-void
.end method

.method public transformDisplayUvCoords(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9
    .param p1, "srcUV"    # Ljava/nio/FloatBuffer;
    .param p2, "destUV"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v8, 0x0

    .line 104
    invoke-virtual {p1, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    invoke-virtual {p2, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    .line 108
    .local v0, "elementcount":I
    new-array v6, v0, [F

    .line 109
    .local v6, "srcuv":[F
    invoke-virtual {p1, v6}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 111
    new-array v7, v0, [F

    .line 112
    .local v7, "destuv":[F
    iget-object v1, p0, Lcom/standardar/wrapper/Frame;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/standardar/wrapper/Frame;->arTransformDisplayUvCoords(JJ[F[F)V

    .line 113
    array-length v1, v7

    invoke-virtual {p2, v7, v8, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 115
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 117
    return-void
.end method
