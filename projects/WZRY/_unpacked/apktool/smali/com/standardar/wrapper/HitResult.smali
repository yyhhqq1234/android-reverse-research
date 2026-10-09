.class public Lcom/standardar/wrapper/HitResult;
.super Ljava/lang/Object;
.source "HitResult.java"


# instance fields
.field protected mHitResultPtr:J

.field private final mSession:Lcom/standardar/wrapper/Session;


# direct methods
.method constructor <init>(JLcom/standardar/wrapper/Session;)V
    .locals 1
    .param p1, "anchorPtr"    # J
    .param p3, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    .line 15
    iput-object p3, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    .line 16
    return-void
.end method

.method private native arAcquireTrackable(JJ)J
.end method

.method private native arCreateAnchor(JJ)J
.end method

.method private native arDestroyHitResult(J)V
.end method

.method private native arGetDistance(JJ)F
.end method

.method private native arGetHitPose(JJ)Lcom/standardar/common/Pose;
.end method


# virtual methods
.method public createAnchor()Lcom/standardar/wrapper/Anchor;
    .locals 6

    .prologue
    .line 54
    iget-object v2, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v2, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/HitResult;->arCreateAnchor(JJ)J

    move-result-wide v0

    .line 55
    .local v0, "anchorPtr":J
    new-instance v2, Lcom/standardar/wrapper/Anchor;

    iget-object v3, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    invoke-direct {v2, v0, v1, v3}, Lcom/standardar/wrapper/Anchor;-><init>(JLcom/standardar/wrapper/Session;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 25
    check-cast v0, Lcom/standardar/wrapper/HitResult;

    .line 26
    .local v0, "hitresult":Lcom/standardar/wrapper/HitResult;
    iget-wide v2, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    iget-wide v4, v0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

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
    .line 34
    iget-wide v0, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 35
    iget-wide v0, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    invoke-direct {p0, v0, v1}, Lcom/standardar/wrapper/HitResult;->arDestroyHitResult(J)V

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public getDistance()F
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/HitResult;->arGetDistance(JJ)F

    move-result v0

    return v0
.end method

.method public getHitPose()Lcom/standardar/common/Pose;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v0, v0, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v2, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/wrapper/HitResult;->arGetHitPose(JJ)Lcom/standardar/common/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getTrackable()Lcom/standardar/wrapper/Trackable;
    .locals 6

    .prologue
    .line 49
    iget-object v2, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    iget-wide v2, v2, Lcom/standardar/wrapper/Session;->mSessionPtr:J

    iget-wide v4, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/standardar/wrapper/HitResult;->arAcquireTrackable(JJ)J

    move-result-wide v0

    .line 50
    .local v0, "trackablrPtr":J
    iget-object v2, p0, Lcom/standardar/wrapper/HitResult;->mSession:Lcom/standardar/wrapper/Session;

    invoke-virtual {v2, v0, v1}, Lcom/standardar/wrapper/Session;->createTrackable(J)Lcom/standardar/wrapper/Trackable;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/standardar/wrapper/HitResult;->mHitResultPtr:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method
