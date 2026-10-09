.class public Lcom/standardar/wrapper/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field static final AR_TRACKABLE_BASE_TRACKABLE:I = 0x41520100

.field static final AR_TRACKABLE_NOT_VALID:I = 0x0

.field static final AR_TRACKABLE_PLANE:I = 0x41520101

.field static final AR_TRACKABLE_POINT:I = 0x41520102


# instance fields
.field mContext:Landroid/content/Context;

.field mFrame:Lcom/standardar/wrapper/Frame;

.field mSessionPtr:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/standardar/exceptions/UnavailableDeviceNotCompatibleException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "standardar"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/standardar/wrapper/Session;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/standardar/wrapper/Session;->arCreateSession(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    .line 58
    return-void
.end method

.method private native arAcquireAllAnchors(J)[J
.end method

.method private native arAcquireAllTrackables(JI)[J
.end method

.method private native arConfigure(JJ)V
.end method

.method private native arCreateAnchor(JLcom/standardar/common/Pose;)J
.end method

.method private native arCreateSession(Landroid/content/Context;)J
.end method

.method private native arDebugCommandInt(JII)V
.end method

.method private native arDestroySession(J)V
.end method

.method private native arGetSLAMInfo(J)Ljava/lang/String;
.end method

.method private native arHasDetectedPlanes(J)Z
.end method

.method private native arIsSupported(JJ)Z
.end method

.method private native arPause(J)V
.end method

.method private native arResume(J)V
.end method

.method private native arSetCameraTextureName(JI)V
.end method

.method private native arSetDisplayGeometry(JIII)V
.end method

.method private native arStartSLAM(J)V
.end method

.method private native arStopSLAM(J)V
.end method

.method private native arUpdate(JJ)V
.end method


# virtual methods
.method public anchorsToCollection([J)Ljava/util/Collection;
    .locals 6
    .param p1, "anchorPtrs"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Collection",
            "<",
            "Lcom/standardar/wrapper/Anchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :goto_0
    return-object v2

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Lcom/standardar/wrapper/Anchor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 113
    new-instance v2, Lcom/standardar/wrapper/Anchor;

    aget-wide v4, p1, v1

    invoke-direct {v2, v4, v5, p0}, Lcom/standardar/wrapper/Anchor;-><init>(JLcom/standardar/wrapper/Session;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public configure(Lcom/standardar/wrapper/Config;)V
    .locals 4
    .param p1, "config"    # Lcom/standardar/wrapper/Config;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p1, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Session;->arConfigure(JJ)V

    .line 75
    return-void
.end method

.method public createAnchor(Lcom/standardar/common/Pose;)Lcom/standardar/wrapper/Anchor;
    .locals 4
    .param p1, "pose"    # Lcom/standardar/common/Pose;

    .prologue
    .line 94
    iget-wide v2, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v2, v3, p1}, Lcom/standardar/wrapper/Session;->arCreateAnchor(JLcom/standardar/common/Pose;)J

    move-result-wide v0

    .line 95
    .local v0, "anchorPtr":J
    new-instance v2, Lcom/standardar/wrapper/Anchor;

    invoke-direct {v2, v0, v1, p0}, Lcom/standardar/wrapper/Anchor;-><init>(JLcom/standardar/wrapper/Session;)V

    return-object v2
.end method

.method public createTrackable(J)Lcom/standardar/wrapper/Trackable;
    .locals 5
    .param p1, "trackablePtr"    # J

    .prologue
    .line 135
    iget-wide v2, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-static {v2, v3, p1, p2}, Lcom/standardar/wrapper/TrackableBase;->getTrackableType(JJ)I

    move-result v0

    .line 136
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 147
    invoke-static {p1, p2}, Lcom/standardar/wrapper/TrackableBase;->releaseTrackable(J)V

    .line 148
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 139
    :pswitch_0
    new-instance v1, Lcom/standardar/wrapper/Plane;

    invoke-direct {v1, p1, p2, p0}, Lcom/standardar/wrapper/Plane;-><init>(JLcom/standardar/wrapper/Session;)V

    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v1, Lcom/standardar/wrapper/Point;

    invoke-direct {v1, p1, p2, p0}, Lcom/standardar/wrapper/Point;-><init>(JLcom/standardar/wrapper/Session;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x41520101
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 62
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arDestroySession(J)V

    .line 65
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 66
    return-void
.end method

.method public getAllAnchors()Ljava/util/Collection;
    .locals 2
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
    .line 90
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arAcquireAllAnchors(J)[J

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/standardar/wrapper/Session;->anchorsToCollection([J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllTrackables(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 8
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
    .line 156
    .local p1, "filterType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 158
    .local v4, "trackablePtrArray":[J
    const-class v5, Lcom/standardar/wrapper/Plane;

    if-ne p1, v5, :cond_1

    .line 159
    iget-wide v6, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    const v5, 0x41520101

    invoke-direct {p0, v6, v7, v5}, Lcom/standardar/wrapper/Session;->arAcquireAllTrackables(JI)[J

    move-result-object v4

    .line 167
    :goto_0
    if-nez v4, :cond_4

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 176
    :cond_0
    :goto_1
    return-object v1

    .line 160
    :cond_1
    const-class v5, Lcom/standardar/wrapper/Point;

    if-ne p1, v5, :cond_2

    .line 161
    iget-wide v6, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    const v5, 0x41520102

    invoke-direct {p0, v6, v7, v5}, Lcom/standardar/wrapper/Session;->arAcquireAllTrackables(JI)[J

    move-result-object v4

    goto :goto_0

    .line 162
    :cond_2
    const-class v5, Lcom/standardar/wrapper/Trackable;

    if-ne p1, v5, :cond_3

    .line 163
    iget-wide v6, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    const v5, 0x41520100

    invoke-direct {p0, v6, v7, v5}, Lcom/standardar/wrapper/Session;->arAcquireAllTrackables(JI)[J

    move-result-object v4

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 170
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v1, "trackableList":Ljava/util/List;
    array-length v7, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v7, :cond_0

    aget-wide v2, v4, v6

    .line 172
    .local v2, "trackablePtr":J
    invoke-virtual {p0, v2, v3}, Lcom/standardar/wrapper/Session;->createTrackable(J)Lcom/standardar/wrapper/Trackable;

    move-result-object v0

    .line 173
    .local v0, "trackable":Lcom/standardar/wrapper/Trackable;
    if-eqz v0, :cond_5

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/standardar/wrapper/Trackable;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_5
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2
.end method

.method public getSLAMInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arGetSLAMInfo(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDetectedPlanes()Z
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arHasDetectedPlanes(J)Z

    move-result v0

    return v0
.end method

.method public isSupported(Lcom/standardar/wrapper/Config;)Z
    .locals 4
    .param p1, "config"    # Lcom/standardar/wrapper/Config;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p1, Lcom/standardar/wrapper/Config;->mConfigPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Session;->arIsSupported(JJ)Z

    move-result v0

    return v0
.end method

.method public onDebugCommandInt(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/standardar/wrapper/Session;->arDebugCommandInt(JII)V

    .line 181
    return-void
.end method

.method public onStartSLAM()V
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arStartSLAM(J)V

    .line 100
    return-void
.end method

.method public onStopSLAM()V
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arStopSLAM(J)V

    .line 104
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arPause(J)V

    .line 124
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Session;->arResume(J)V

    .line 120
    return-void
.end method

.method public setCameraTextureName(I)V
    .locals 2
    .param p1, "textureId"    # I

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/standardar/wrapper/Session;->arSetCameraTextureName(JI)V

    .line 79
    return-void
.end method

.method public setDisplayGeometry(III)V
    .locals 7
    .param p1, "displayRotation"    # I
    .param p2, "viewportWidth"    # I
    .param p3, "viewportHeight"    # I

    .prologue
    .line 82
    iget-wide v2, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/standardar/wrapper/Session;->arSetDisplayGeometry(JIII)V

    .line 83
    return-void
.end method

.method public update()Lcom/standardar/wrapper/Frame;
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/standardar/wrapper/Session;->mFrame:Lcom/standardar/wrapper/Frame;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/standardar/wrapper/Frame;

    invoke-direct {v0, p0}, Lcom/standardar/wrapper/Frame;-><init>(Lcom/standardar/wrapper/Session;)V

    iput-object v0, p0, Lcom/standardar/wrapper/Session;->mFrame:Lcom/standardar/wrapper/Frame;

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-object v2, p0, Lcom/standardar/wrapper/Session;->mFrame:Lcom/standardar/wrapper/Frame;

    iget-wide v2, v2, Lcom/standardar/wrapper/Frame;->mFramePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Session;->arUpdate(JJ)V

    .line 131
    iget-object v0, p0, Lcom/standardar/wrapper/Session;->mFrame:Lcom/standardar/wrapper/Frame;

    return-object v0
.end method
