.class Lcom/unity3d/unitygar/GoogleAR$1;
.super Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;
.source "GoogleAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/unitygar/GoogleAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/unitygar/GoogleAR;


# direct methods
.method constructor <init>(Lcom/unity3d/unitygar/GoogleAR;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/unitygar/GoogleAR;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/unity3d/unitygar/GoogleAR$1;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-direct {p0}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR$1;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-static {v0, p1}, Lcom/unity3d/unitygar/GoogleAR;->access$100(Lcom/unity3d/unitygar/GoogleAR;I)V

    .line 27
    return-void
.end method

.method public onImageAvailable(Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V
    .locals 1
    .param p1, "image"    # Lcom/google/atap/tangoservice/TangoImage;
    .param p2, "metadata"    # Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .param p3, "cameraId"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR$1;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-static {v0, p1, p2, p3}, Lcom/unity3d/unitygar/GoogleAR;->access$400(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V

    .line 39
    return-void
.end method

.method public onPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V
    .locals 1
    .param p1, "pointCloud"    # Lcom/google/atap/tangoservice/TangoPointCloudData;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR$1;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-static {v0, p1}, Lcom/unity3d/unitygar/GoogleAR;->access$300(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoPointCloudData;)V

    .line 35
    return-void
.end method

.method public onPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V
    .locals 1
    .param p1, "pose"    # Lcom/google/atap/tangoservice/TangoPoseData;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR$1;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-static {v0, p1}, Lcom/unity3d/unitygar/GoogleAR;->access$000(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoPoseData;)V

    .line 23
    return-void
.end method

.method public onTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/google/atap/tangoservice/TangoEvent;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR$1;->this$0:Lcom/unity3d/unitygar/GoogleAR;

    invoke-static {v0, p1}, Lcom/unity3d/unitygar/GoogleAR;->access$200(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoEvent;)V

    .line 31
    return-void
.end method
