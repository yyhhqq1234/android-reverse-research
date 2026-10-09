.class public Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;
    }
.end annotation


# instance fields
.field private final activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

.field private final cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

.field private final decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

.field private state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;


# direct methods
.method public constructor <init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;Lcom/tencent/apollo/qr/zxing/camera/CameraManager;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    new-instance v0, Lcom/tencent/apollo/qr/zxing/DecodeThread;

    invoke-direct {v0, p1, p3}, Lcom/tencent/apollo/qr/zxing/DecodeThread;-><init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;I)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/DecodeThread;->start()V

    sget-object v0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;->SUCCESS:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iput-object p2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {p2}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->startPreview()V

    invoke-direct {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "apolloqr_decode"

    invoke-static {v0, v1}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    sget-object v2, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;->SUCCESS:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;->PREVIEW:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

    invoke-virtual {v2}, Lcom/tencent/apollo/qr/zxing/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "apolloqr_restart_preview"

    invoke-static {v0, v1}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "apolloqr_decode_succeeded"

    invoke-static {v0, v2}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string v3, "apolloqr_decode_failed"

    invoke-static {v0, v3}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const-string v4, "apolloqr_decode"

    invoke-static {v0, v4}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "apolloqr_return_scan_result"

    invoke-static {v0, v5}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v1, :cond_1

    invoke-direct {p0}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->restartPreviewAndDecode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;->SUCCESS:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/Result;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_3

    sget-object v0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;->PREVIEW:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

    invoke-virtual {v1}, Lcom/tencent/apollo/qr/zxing/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->finish()V

    goto :goto_0
.end method

.method public quitSynchronously()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;->DONE:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->state:Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler$State;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v1}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->stopPreview()V

    const-string v1, "apolloqr_quit"

    invoke-static {v0, v1}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

    invoke-virtual {v2}, Lcom/tencent/apollo/qr/zxing/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->decodeThread:Lcom/tencent/apollo/qr/zxing/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/apollo/qr/zxing/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "apolloqr_decode_succeeded"

    invoke-static {v0, v1}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "apolloqr_decode_failed"

    invoke-static {v0, v2}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivityHandler;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
