.class public Lcom/google/ar/core/Session;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/Session$a;,
        Lcom/google/ar/core/Session$b;
    }
.end annotation


# static fields
.field static final AR_ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING:I = -0x10

.field static final AR_ERROR_CAMERA_NOT_AVAILABLE:I = -0xd

.field static final AR_ERROR_CAMERA_PERMISSION_NOT_GRANTED:I = -0x9

.field static final AR_ERROR_CLOUD_ANCHORS_NOT_CONFIGURED:I = -0xe

.field static final AR_ERROR_DATA_INVALID_FORMAT:I = -0x12

.field static final AR_ERROR_DATA_UNSUPPORTED_VERSION:I = -0x13

.field static final AR_ERROR_DEADLINE_EXCEEDED:I = -0xa

.field static final AR_ERROR_FATAL:I = -0x2

.field static final AR_ERROR_ILLEGAL_STATE:I = -0x14

.field static final AR_ERROR_IMAGE_INSUFFICIENT_QUALITY:I = -0x11

.field static final AR_ERROR_INTERNET_PERMISSION_NOT_GRANTED:I = -0xf

.field static final AR_ERROR_INVALID_ARGUMENT:I = -0x1

.field static final AR_ERROR_MISSING_GL_CONTEXT:I = -0x7

.field static final AR_ERROR_NOT_TRACKING:I = -0x5

.field static final AR_ERROR_NOT_YET_AVAILABLE:I = -0xc

.field static final AR_ERROR_RESOURCE_EXHAUSTED:I = -0xb

.field static final AR_ERROR_SESSION_NOT_PAUSED:I = -0x4

.field static final AR_ERROR_SESSION_PAUSED:I = -0x3

.field static final AR_ERROR_TEXTURE_NOT_SET:I = -0x6

.field static final AR_ERROR_UNSUPPORTED_CONFIGURATION:I = -0x8

.field static final AR_SUCCESS:I = 0x0

.field static final AR_TRACKABLE_AUGMENTED_IMAGE:I = 0x41520104

.field static final AR_TRACKABLE_BASE_TRACKABLE:I = 0x41520100

.field static final AR_TRACKABLE_NOT_VALID:I = 0x0

.field static final AR_TRACKABLE_PLANE:I = 0x41520101

.field static final AR_TRACKABLE_POINT:I = 0x41520102

.field static final AR_TRACKABLE_UNKNOWN_TO_JAVA:I = -0x1

.field static final AR_TRACKING_STATE_PAUSED:I = 0x1

.field static final AR_TRACKING_STATE_STOPPED:I = 0x2

.field static final AR_TRACKING_STATE_TRACKING:I = 0x0

.field static final AR_UNAVAILABLE_APK_TOO_OLD:I = -0x67

.field static final AR_UNAVAILABLE_ARCORE_NOT_INSTALLED:I = -0x64

.field static final AR_UNAVAILABLE_DEVICE_NOT_COMPATIBLE:I = -0x65

.field static final AR_UNAVAILABLE_SDK_TOO_OLD:I = -0x68

.field static final AR_UNAVAILABLE_USER_DECLINED_INSTALLATION:I = -0x69

.field private static final TAG:Ljava/lang/String; = "ARCore-Session"


# instance fields
.field private context:Landroid/content/Context;

.field nativeHandle:J

.field private final syncObject:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ar/core/Session;->syncObject:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/Session;->context:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ar/core/Session;->syncObject:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException;,
            Lcom/google/ar/core/exceptions/UnavailableApkTooOldException;,
            Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ar/core/Session;->syncObject:Ljava/lang/Object;

    const-string v0, "arcore_sdk_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ar/core/Session;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ar/core/Session;->nativeCreateSession(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-static {}, Lcom/google/ar/core/Session;->loadDynamicSymbolsAfterSessionCreate()V

    return-void
.end method

.method static getNativeTrackableFilterFromClass(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/ar/core/Trackable;",
            ">;)I"
        }
    .end annotation

    const-class v0, Lcom/google/ar/core/Trackable;

    if-ne p0, v0, :cond_0

    const v0, 0x41520100

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/ar/core/Session$b;->a(Ljava/lang/Class;)Lcom/google/ar/core/Session$b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/ar/core/Session$b;->a(Lcom/google/ar/core/Session$b;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static loadDynamicSymbolsAfterSessionCreate()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/ar/core/ArImage;->nativeLoadSymbols()V

    invoke-static {}, Lcom/google/ar/core/ImageMetadata;->nativeLoadSymbols()V

    :cond_0
    return-void
.end method

.method private native nativeAcquireAllAnchors(J)[J
.end method

.method private native nativeConfigure(JJ)V
.end method

.method private native nativeCreateAnchor(JLcom/google/ar/core/Pose;)J
.end method

.method private static native nativeCreateSession(Landroid/content/Context;)J
.end method

.method private static native nativeDestroySession(J)V
.end method

.method private native nativeGetCameraConfig(J)J
.end method

.method private native nativeGetConfig(JJ)V
.end method

.method private native nativeGetSupportedCameraConfigs(J)[J
.end method

.method private native nativeHostCloudAnchor(JJ)J
.end method

.method private native nativeIsSupported(JJ)Z
.end method

.method private native nativePause(J)V
.end method

.method private native nativeResolveCloudAnchor(JLjava/lang/String;)J
.end method

.method private native nativeResume(J)V
.end method

.method private native nativeSetCameraConfig(JJ)I
.end method

.method private native nativeSetCameraTextureName(JI)V
.end method

.method private native nativeSetDisplayGeometry(JIII)V
.end method

.method private native nativeUpdate(JJ)V
.end method

.method static throwExceptionFromArStatus(I)V
    .locals 1
    .annotation build Lcom/google/ar/core/annotations/UsedByNative;
        value = "session_jni.cc"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/UnavailableException;,
            Lcom/google/ar/core/exceptions/NotYetAvailableException;,
            Lcom/google/ar/core/exceptions/CameraNotAvailableException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/ar/core/Session$a;->a(I)Lcom/google/ar/core/Session$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/Session$a;->a()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/ar/core/Config;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p1, Lcom/google/ar/core/Config;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Session;->nativeConfigure(JJ)V

    return-void
.end method

.method convertNativeAnchorsToCollection([J)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, p1, v0

    new-instance v3, Lcom/google/ar/core/Anchor;

    invoke-direct {v3, v4, v5, p0}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method convertNativeCameraConfigsToCollection([J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/ar/core/CameraConfig;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, p1, v0

    new-instance v3, Lcom/google/ar/core/CameraConfig;

    invoke-direct {v3, p0, v4, v5}, Lcom/google/ar/core/CameraConfig;-><init>(Lcom/google/ar/core/Session;J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method convertNativeTrackablesToCollection(Ljava/lang/Class;[J)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/ar/core/Trackable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[J)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v4, p2, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/ar/core/Session;->createTrackable(J)Lcom/google/ar/core/Trackable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ar/core/Trackable;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;
    .locals 3

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/Session;->nativeCreateAnchor(JLcom/google/ar/core/Pose;)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/Anchor;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2
.end method

.method createTrackable(J)Lcom/google/ar/core/Trackable;
    .locals 3

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/ar/core/TrackableBase;->internalGetType(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/google/ar/core/Session$b;->a(I)Lcom/google/ar/core/Session$b;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/google/ar/core/TrackableBase;->internalReleaseNativeHandle(J)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/ar/core/Session$b;->a(JLcom/google/ar/core/Session;)Lcom/google/ar/core/Trackable;

    move-result-object v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/Session;->nativeDestroySession(J)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAllAnchors()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ar/core/Anchor;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Session;->nativeAcquireAllAnchors(J)[J

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ar/core/Session;->convertNativeAnchorsToCollection([J)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAllTrackables(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 4
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

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-virtual {p0, v2, v3, v0}, Lcom/google/ar/core/Session;->nativeAcquireAllTrackables(JI)[J

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/Session;->convertNativeTrackablesToCollection(Ljava/lang/Class;[J)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public getCameraConfig()Lcom/google/ar/core/CameraConfig;
    .locals 3

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Session;->nativeGetCameraConfig(J)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/CameraConfig;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/ar/core/CameraConfig;-><init>(Lcom/google/ar/core/Session;J)V

    return-object v2
.end method

.method public getConfig()Lcom/google/ar/core/Config;
    .locals 1

    new-instance v0, Lcom/google/ar/core/Config;

    invoke-direct {v0, p0}, Lcom/google/ar/core/Config;-><init>(Lcom/google/ar/core/Session;)V

    invoke-virtual {p0, v0}, Lcom/google/ar/core/Session;->getConfig(Lcom/google/ar/core/Config;)V

    return-object v0
.end method

.method public getConfig(Lcom/google/ar/core/Config;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p1, Lcom/google/ar/core/Config;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Session;->nativeGetConfig(JJ)V

    return-void
.end method

.method public getSupportedCameraConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ar/core/CameraConfig;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Session;->nativeGetSupportedCameraConfigs(J)[J

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ar/core/Session;->convertNativeCameraConfigsToCollection([J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hostCloudAnchor(Lcom/google/ar/core/Anchor;)Lcom/google/ar/core/Anchor;
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p1, Lcom/google/ar/core/Anchor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Session;->nativeHostCloudAnchor(JJ)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/Anchor;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2
.end method

.method public isSupported(Lcom/google/ar/core/Config;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p1, Lcom/google/ar/core/Config;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Session;->nativeIsSupported(JJ)Z

    move-result v0

    return v0
.end method

.method native nativeAcquireAllTrackables(JI)[J
.end method

.method public pause()V
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Session;->nativePause(J)V

    return-void
.end method

.method public resolveCloudAnchor(Ljava/lang/String;)Lcom/google/ar/core/Anchor;
    .locals 3

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/Session;->nativeResolveCloudAnchor(JLjava/lang/String;)J

    move-result-wide v0

    new-instance v2, Lcom/google/ar/core/Anchor;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/ar/core/Anchor;-><init>(JLcom/google/ar/core/Session;)V

    return-object v2
.end method

.method public resume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/CameraNotAvailableException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/google/ar/core/Session;->nativeResume(J)V

    return-void
.end method

.method public setCameraConfig(Lcom/google/ar/core/CameraConfig;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v2, p1, Lcom/google/ar/core/CameraConfig;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/Session;->nativeSetCameraConfig(JJ)I

    return-void
.end method

.method public setCameraTextureName(I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ar/core/Session;->nativeSetCameraTextureName(JI)V

    return-void
.end method

.method public setDisplayGeometry(III)V
    .locals 7

    iget-wide v2, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/Session;->nativeSetDisplayGeometry(JIII)V

    return-void
.end method

.method public update()Lcom/google/ar/core/Frame;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ar/core/exceptions/CameraNotAvailableException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/ar/core/Session;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/google/ar/core/Frame;

    invoke-direct {v0, p0}, Lcom/google/ar/core/Frame;-><init>(Lcom/google/ar/core/Session;)V

    iget-wide v2, p0, Lcom/google/ar/core/Session;->nativeHandle:J

    iget-wide v4, v0, Lcom/google/ar/core/Frame;->nativeHandle:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/ar/core/Session;->nativeUpdate(JJ)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
