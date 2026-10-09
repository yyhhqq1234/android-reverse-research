.class public Lcom/google/atap/tango/TangoJNINative;
.super Ljava/lang/Object;
.source "TangoJNINative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/google/atap/tango/TangoClientLibLoader;->loadedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string v0, "TangoJNINative"

    const-string v1, "ERROR! Unable to load libtango_client_api.so!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Connect(Lcom/google/atap/tangoservice/TangoConfig;)I
.end method

.method public static native ConnectListener([ILcom/google/atap/tangoservice/Tango$TangoUpdateCallback;Lcom/google/atap/tangoservice/TangoPoseData;Lcom/google/atap/tangoservice/TangoPointCloudData;Lcom/google/atap/tangoservice/TangoEvent;)I
.end method

.method public static native ConnectOnFrameAvailable(ILcom/google/atap/tangoservice/Tango$OnFrameAvailableListener;Lcom/google/atap/tangoservice/experimental/TangoImageBuffer;)I
.end method

.method public static native ConnectOnImageAvailable(ILcom/google/atap/tangoservice/Tango$TangoUpdateCallback;)I
.end method

.method public static native ConnectTextureId(II)I
.end method

.method public static native CreateFrameOfInterest2(DLjava/lang/String;Lcom/google/atap/tangoservice/TangoTransformation;Lcom/google/atap/tangoservice/Tango$FoiListener;)I
.end method

.method public static native DeleteAreaDescription(Ljava/lang/String;)I
.end method

.method public static native DeleteDataset(Ljava/lang/String;)I
.end method

.method public static native DeleteFramesOfInterest([Ljava/lang/String;Lcom/google/atap/tangoservice/Tango$FoiListener;)I
.end method

.method public static native Disconnect()V
.end method

.method public static native DisconnectCamera(I)I
.end method

.method public static native GetAreaDescriptionMetadata(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I
.end method

.method public static native GetAreaDescriptionUUIDList([Ljava/lang/String;)I
.end method

.method public static native GetBinder()Landroid/os/IBinder;
.end method

.method public static native GetCameraIntrinsics(ILcom/google/atap/tangoservice/TangoCameraIntrinsics;)I
.end method

.method public static native GetConfig(ILcom/google/atap/tangoservice/TangoConfig;)V
.end method

.method public static native GetCurrentDatasetUUID([Ljava/lang/String;)I
.end method

.method public static native GetDatasets([Ljava/lang/String;)I
.end method

.method public static native GetPoseAtTime(DIILcom/google/atap/tangoservice/TangoPoseData;)I
.end method

.method public static native GetPoseAtTime2(DLjava/lang/String;Ljava/lang/String;Lcom/google/atap/tangoservice/TangoPoseData;)I
.end method

.method public static native Initialize(Landroid/content/Context;)I
.end method

.method public static native LoadFramesOfInterest([Ljava/lang/String;Lcom/google/atap/tangoservice/Tango$FoiListener;)I
.end method

.method public static native ResetMotionTracking()V
.end method

.method public static native SaveAreaDescription([Ljava/lang/String;)I
.end method

.method public static native SaveAreaDescriptionMetadata(Ljava/lang/String;Lcom/google/atap/tangoservice/TangoAreaDescriptionMetaData;)I
.end method

.method public static native SetBinder(Landroid/os/IBinder;)I
.end method

.method public static native SetRuntimeConfig(Lcom/google/atap/tangoservice/TangoConfig;)I
.end method

.method public static native UpdateTexture(I[D)I
.end method
