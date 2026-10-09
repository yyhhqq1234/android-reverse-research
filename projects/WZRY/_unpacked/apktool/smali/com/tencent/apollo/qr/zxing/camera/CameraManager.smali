.class public Lcom/tencent/apollo/qr/zxing/camera/CameraManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;


# instance fields
.field private autoFocusManager:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private cameraIndex:I

.field private final configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private initialized:Z

.field private mActivity:Landroid/app/Activity;

.field private final previewCallback:Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

.field private previewing:Z

.field private requestedCameraId:I

.field private rotateDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->requestedCameraId:I

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->context:Landroid/content/Context;

    new-instance v0, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    new-instance v0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    invoke-direct {v0, v1}, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;-><init>(Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewCallback:Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->rotateDegree:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/apollo/qr/utils/CameraUtil;->setCamera(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->cameraIndex:I

    :cond_0
    return-void
.end method

.method public static get()Lcom/tencent/apollo/qr/zxing/camera/CameraManager;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->cameraManager:Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized closeDriver()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->requestedCameraId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->requestedCameraId:I

    invoke-static {v0}, Lcom/tencent/apollo/qr/zxing/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/tencent/apollo/qr/zxing/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_2
    move-object v1, v0

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->initialized:Z

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0, v1}, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->cameraIndex:I

    invoke-static {v0, v2, v1}, Lcom/tencent/apollo/qr/utils/CameraUtil;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)I

    move-result v0

    iput v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->rotateDegree:I

    sget-object v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraDisplayOrientation cameraIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->cameraIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_5

    iget v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->rotateDegree:I

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    iget v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->rotateDegree:I

    invoke-virtual {v0, v1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setOrientation(I)V

    sget-object v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayOrientation rotateDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->rotateDegree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :cond_6
    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v2, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v3, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resetting to saved camera params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    sget-object v0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewCallback:Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewCallback:Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setManualCameraId(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->requestedCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewing:Z

    new-instance v0, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, v1, v2}, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->autoFocusManager:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->autoFocusManager:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->autoFocusManager:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->autoFocusManager:Lcom/tencent/apollo/qr/zxing/camera/AutoFocusManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewCallback:Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
