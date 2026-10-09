.class public Lcom/google/ar/core/Frame;
.super Ljava/lang/Object;


# static fields
.field static final ANCHORS_EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field static final PLANES_EMPTY_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/ar/core/Plane;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ARCore-Frame"


# instance fields
.field private final lightEstimate:Lcom/google/ar/core/LightEstimate;

.field nativeHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/ar/core/Frame;->ANCHORS_EMPTY_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/ar/core/Frame;->PLANES_EMPTY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iput-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iput-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iput-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iput-object p1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/Frame;->nativeCreateFrame(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    new-instance v0, Lcom/google/ar/core/LightEstimate;

    invoke-direct {v0, p1}, Lcom/google/ar/core/LightEstimate;-><init>(Lcom/google/ar/core/Session;)V

    iput-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    return-void
.end method

.method private convertNativeHitResultsToList([J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-wide v4, p1, v0

    new-instance v3, Lcom/google/ar/core/HitResult;

    iget-object v6, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ar/core/HitResult;-><init>(JLcom/google/ar/core/Session;)V

    invoke-virtual {v3}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private native nativeAcquireCameraImage(JJ)J
.end method

.method private native nativeAcquireImageMetadata(JJ)J
.end method

.method private native nativeAcquireUpdatedAnchors(JJ)[J
.end method

.method private static native nativeCreateFrame(J)J
.end method

.method private static native nativeDestroyFrame(J)V
.end method

.method private native nativeGetAndroidSensorPose(JJ)Lcom/google/ar/core/Pose;
.end method

.method private native nativeGetLightEstimate(JJJ)V
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeHasDisplayGeometryChanged(JJ)Z
.end method

.method private native nativeTransformDisplayUvCoords(JJLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
.end method


# virtual methods
.method public acquireCameraImage()Landroid/media/Image;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireCameraImage(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/ArImage;

    invoke-direct {v2, v0, v1}, Lcom/google/ar/core/ArImage;-><init>(J)V

    return-object v2
.end method

.method public acquirePointCloud()Lcom/google/ar/core/PointCloud;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquirePointCloud(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/PointCloud;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/ar/core/PointCloud;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/Frame;->nativeDestroyFrame(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAndroidSensorPose()Lcom/google/ar/core/Pose;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetAndroidSensorPose(JJ)Lcom/google/ar/core/Pose;

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/google/ar/core/Camera;
    .locals 2

    new-instance v0, Lcom/google/ar/core/Camera;

    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v0, v1, p0}, Lcom/google/ar/core/Camera;-><init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;)V

    return-object v0
.end method

.method public getImageMetadata()Lcom/google/ar/core/ImageMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/NotYetAvailableException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeAcquireImageMetadata(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/ImageMetadata;

    iget-object v3, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-direct {v2, v0, v1, v3}, Lcom/google/ar/core/ImageMetadata;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2
.end method

.method public getLightEstimate()Lcom/google/ar/core/LightEstimate;
    .locals 8

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    iget-wide v6, v0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeGetLightEstimate(JJJ)V

    iget-object v0, p0, Lcom/google/ar/core/Frame;->lightEstimate:Lcom/google/ar/core/LightEstimate;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdatedAnchors()Ljava/util/Collection;
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

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v1, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/ar/core/Frame;->nativeAcquireUpdatedAnchors(JJ)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->convertNativeAnchorsToCollection([J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedTrackables(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/ar/core/Trackable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/ar/core/Session;->getNativeTrackableFilterFromClass(Ljava/lang/Class;)I

    move-result v6

    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/ar/core/Frame;->nativeAcquireUpdatedTrackables(JJI)[J

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    invoke-virtual {v1, p1, v0}, Lcom/google/ar/core/Session;->convertNativeTrackablesToCollection(Ljava/lang/Class;[J)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDisplayGeometryChanged()Z
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->nativeHasDisplayGeometryChanged(JJ)Z

    move-result v0

    return v0
.end method

.method public hitTest(FF)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List",
            "<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeHitTest(JJFF)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ar/core/Frame;->convertNativeHitResultsToList([J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hitTest(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hitTest([FI[FI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI[FI)",
            "Ljava/util/List",
            "<",
            "Lcom/google/ar/core/HitResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/ar/core/Frame;->nativeHitTestRay(JJ[FI[FI)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ar/core/Frame;->convertNativeHitResultsToList([J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method native nativeAcquirePointCloud(JJ)J
.end method

.method native nativeAcquireUpdatedTrackables(JJI)[J
.end method

.method native nativeHitTest(JJFF)[J
.end method

.method native nativeHitTestRay(JJ[FI[FI)[J
.end method

.method public transformDisplayUvCoords(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transformDisplayUvCoords currently requires direct buffers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/ar/core/Frame;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/Frame;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/Frame;->nativeTransformDisplayUvCoords(JJLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method
