.class Lcom/google/ar/core/TrackableBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ar/core/Trackable;


# annotations
.annotation build Lcom/google/ar/core/annotations/UsedByNative;
    value = "trackable_base_jni.cc"
.end annotation


# instance fields
.field final nativeHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method constructor <init>(JLcom/google/ar/core/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iput-wide p1, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    return-void
.end method

.method static internalGetType(JJ)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/google/ar/core/TrackableBase;->nativeGetType(JJ)I

    move-result v0

    return v0
.end method

.method static internalReleaseNativeHandle(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/ar/core/TrackableBase;->nativeReleaseTrackable(J)V

    return-void
.end method

.method private native nativeCreateAnchor(JJLcom/google/ar/core/Pose;)J
.end method

.method private native nativeGetAnchors(JJ)[J
.end method

.method private native nativeGetTrackingState(JJ)I
.end method

.method private static native nativeGetType(JJ)I
.end method

.method private static native nativeReleaseTrackable(J)V
.end method


# virtual methods
.method public createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 7

    new-instance v0, Lcom/google/ar/core/Anchor;

    iget-object v1, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v1, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/TrackableBase;->nativeCreateAnchor(JJLcom/google/ar/core/Pose;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    invoke-direct {v0, v2, v3, v1}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v0
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
    check-cast p1, Lcom/google/ar/core/TrackableBase;

    iget-wide v2, p1, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

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

    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/TrackableBase;->nativeReleaseTrackable(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAnchors()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-object v1, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v1, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/ar/core/TrackableBase;->nativeGetAnchors(JJ)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->convertNativeAnchorsToCollection([J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingState()Lcom/google/ar/core/TrackingState;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/TrackableBase;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/TrackableBase;->nativeGetTrackingState(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/google/ar/core/TrackingState;->forNumber(I)Lcom/google/ar/core/TrackingState;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/TrackableBase;->nativeHandle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method
