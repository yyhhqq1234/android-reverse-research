.class public Lcom/google/ar/core/HitResult;
.super Ljava/lang/Object;


# instance fields
.field nativeHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    return-void
.end method

.method constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    iput-wide p1, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    return-void
.end method

.method private native nativeCreateAnchor(JJ)J
.end method

.method private static native nativeDestroyHitResult(J)V
.end method

.method private native nativeGetDistance(JJ)F
.end method

.method private native nativeGetPose(JJ)Lcom/google/ar/core/Pose;
.end method


# virtual methods
.method public createAnchor()Lcom/google/ar/core/Anchor;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/HitResult;->nativeCreateAnchor(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/Anchor;

    iget-object v3, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2
.end method

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
    check-cast p1, Lcom/google/ar/core/HitResult;

    iget-wide v2, p1, Lcom/google/ar/core/HitResult;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

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

    iget-wide v0, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/HitResult;->nativeDestroyHitResult(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDistance()F
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/HitResult;->nativeGetDistance(JJ)F

    move-result v0

    return v0
.end method

.method public getHitPose()Lcom/google/ar/core/Pose;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/HitResult;->nativeGetPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getTrackable()Lcom/google/ar/core/Trackable;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/HitResult;->nativeAcquireTrackable(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ar/core/HitResult;->session:Lcom/google/ar/core/Session;

    invoke-virtual {v2, v0, v1}, Lcom/google/ar/core/Session;->createTrackable(J)Lcom/google/ar/core/Trackable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/HitResult;->nativeHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method native nativeAcquireTrackable(JJ)J
.end method
