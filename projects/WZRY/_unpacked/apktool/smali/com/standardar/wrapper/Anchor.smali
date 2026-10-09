.class public Lcom/standardar/wrapper/Anchor;
.super Ljava/lang/Object;
.source "Anchor.java"


# instance fields
.field protected mAnchorPtr:J

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method constructor <init>(JLcom/standardar/wrapper/Session;)V
    .locals 1
    .param p1, "anchorPtr"    # J
    .param p3, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    .line 14
    iput-object p3, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    .line 15
    return-void
.end method

.method private native arDetach(JJ)V
.end method

.method private native arGetPose(JJ)Lcom/standardar/common/Pose;
.end method

.method private native arGetTrackingState(JJ)I
.end method

.method private native arReleaseAnchor(J)V
.end method


# virtual methods
.method public detach()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Anchor;->arDetach(JJ)V

    .line 57
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 24
    check-cast v0, Lcom/standardar/wrapper/Anchor;

    .line 25
    .local v0, "anchor":Lcom/standardar/wrapper/Anchor;
    iget-wide v2, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    iget-wide v4, v0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

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
    .line 33
    iget-wide v0, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/Anchor;->arReleaseAnchor(J)V

    .line 37
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    return-void
.end method

.method public getPose()Lcom/standardar/common/Pose;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Lcom/standardar/common/Pose;

    invoke-direct {v0}, Lcom/standardar/common/Pose;-><init>()V

    .line 44
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/Anchor;->arGetPose(JJ)Lcom/standardar/common/Pose;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackingState()Lcom/standardar/wrapper/Trackable$TrackingState;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 48
    iget-object v1, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 49
    :cond_0
    sget-object v1, Lcom/standardar/wrapper/Trackable$TrackingState;->STOPPED:Lcom/standardar/wrapper/Trackable$TrackingState;

    .line 52
    :goto_0
    return-object v1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/standardar/wrapper/Anchor;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v1, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/Anchor;->arGetTrackingState(JJ)I

    move-result v0

    .line 52
    .local v0, "state":I
    invoke-static {v0}, Lcom/standardar/wrapper/Trackable$TrackingState;->fromNumber(I)Lcom/standardar/wrapper/Trackable$TrackingState;

    move-result-object v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/standardar/wrapper/Anchor;->mAnchorPtr:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method
