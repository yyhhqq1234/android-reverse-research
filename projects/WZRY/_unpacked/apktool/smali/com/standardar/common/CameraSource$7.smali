.class Lcom/standardar/common/CameraSource$7;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/standardar/common/CameraSource;->cameraReadStart(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/standardar/common/CameraSource;


# direct methods
.method constructor <init>(Lcom/standardar/common/CameraSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/standardar/common/CameraSource;->access$1502(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 851
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 844
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 845
    const-string v0, "configure failed"

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 820
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1, p1}, Lcom/standardar/common/CameraSource;->access$1502(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 822
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 823
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 822
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 824
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 825
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v3}, Lcom/standardar/common/CameraSource;->access$1700(Lcom/standardar/common/CameraSource;)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 826
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 827
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/standardar/common/CameraSource;->access$002(Lcom/standardar/common/CameraSource;I)I

    .line 828
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 829
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 828
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 830
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 831
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 830
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 832
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 833
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 832
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 835
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    iget-object v2, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/standardar/common/CameraSource;->access$1802(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 836
    iget-object v1, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v1}, Lcom/standardar/common/CameraSource;->access$1500(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v2}, Lcom/standardar/common/CameraSource;->access$1800(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v3}, Lcom/standardar/common/CameraSource;->access$1900(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/standardar/common/CameraSource$7;->this$0:Lcom/standardar/common/CameraSource;

    invoke-static {v4}, Lcom/standardar/common/CameraSource;->access$2000(Lcom/standardar/common/CameraSource;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "setRepeatingRequest failed"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    goto :goto_0
.end method
