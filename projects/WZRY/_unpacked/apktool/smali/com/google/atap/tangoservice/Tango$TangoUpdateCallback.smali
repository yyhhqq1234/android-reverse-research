.class public abstract Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;
.super Ljava/lang/Object;
.source "Tango.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/Tango;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TangoUpdateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 238
    return-void
.end method

.method public onImageAvailable(Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V
    .locals 0
    .param p1, "image"    # Lcom/google/atap/tangoservice/TangoImage;
    .param p2, "metadata"    # Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .param p3, "cameraId"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onOnlineCalibrationStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V
    .locals 0
    .param p1, "pointCloud"    # Lcom/google/atap/tangoservice/TangoPointCloudData;

    .prologue
    .line 270
    return-void
.end method

.method public onPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V
    .locals 0
    .param p1, "pose"    # Lcom/google/atap/tangoservice/TangoPoseData;

    .prologue
    .line 204
    return-void
.end method

.method public onTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/google/atap/tangoservice/TangoEvent;

    .prologue
    .line 262
    return-void
.end method

.method public onXyzIjAvailable(Lcom/google/atap/tangoservice/TangoXyzIjData;)V
    .locals 0
    .param p1, "xyzIj"    # Lcom/google/atap/tangoservice/TangoXyzIjData;

    .prologue
    .line 213
    return-void
.end method
