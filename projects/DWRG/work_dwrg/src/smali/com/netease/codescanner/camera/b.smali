.class public final Lcom/netease/codescanner/camera/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/codescanner/camera/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

.field private c:Lcom/netease/codescanner/camera/c$a;

.field private d:Lcom/netease/codescanner/camera/a;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/view/SurfaceHolder;

.field private h:Landroid/graphics/Point;

.field private i:J

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/codescanner/CodeScanConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/codescanner/camera/b;->a:Landroid/content/Context;

    new-instance v0, Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/netease/codescanner/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/camera/b;->j:Z

    iget-wide v0, p2, Lcom/netease/codescanner/CodeScanConfig;->camera_updateIntervalMs:J

    iput-wide v0, p0, Lcom/netease/codescanner/camera/b;->i:J

    return-void
.end method

.method private a(II)I
    .locals 1

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    return v0
.end method

.method private b(II)I
    .locals 1

    div-int v0, p1, p2

    mul-int/2addr v0, p2

    return v0
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getCameraPreviewResolution()Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v2, v2, 0x7d0

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x3e8

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 v2, v2, 0x7d0

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x3e8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v2, v2, 0x7d0

    iget v3, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x3e8

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit16 v2, v2, 0x7d0

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int v0, v2, v0

    add-int/lit16 v0, v0, -0x3e8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/hardware/Camera$Area;

    const/16 v2, 0x3e7

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v2, v2, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2, v1}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->setMeteringAreas(Landroid/hardware/Camera;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/codescanner/camera/CameraConfigurationManager;
    .locals 1

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/graphics/Rect;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/codescanner/camera/b;->j:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manual framing rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->e:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated manual framing rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/netease/codescanner/camera/b;->g()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/codescanner/camera/b;->b(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/netease/codescanner/camera/b;->f:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/os/Handler;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/codescanner/camera/b;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v0, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    new-instance v1, Lcom/netease/codescanner/camera/d;

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/netease/codescanner/camera/d;-><init>(Lcom/netease/codescanner/camera/b;Lcom/netease/codescanner/camera/CameraConfigurationManager;Landroid/os/Handler;I)V

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

.method public declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/netease/codescanner/camera/c;->a()Lcom/netease/codescanner/camera/c$a;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    :cond_0
    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to open the camera"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v1, v1, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iput-object p1, p0, Lcom/netease/codescanner/camera/b;->g:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget-boolean v2, p0, Lcom/netease/codescanner/camera/b;->j:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netease/codescanner/camera/b;->j:Z

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/graphics/Point;->y:I

    :cond_2
    iget-object v3, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v4, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    invoke-virtual {v3, v4, v2}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->a(Lcom/netease/codescanner/camera/c$a;Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->f:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/netease/codescanner/camera/b;->a(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/netease/codescanner/camera/b;->f:Landroid/graphics/Rect;

    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_5

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v3, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v3, v3, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget v4, v4, Lcom/netease/codescanner/camera/c$a;->b:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->a(Landroid/hardware/Camera;IZ)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/codescanner/f;->a(Landroid/content/Context;Landroid/hardware/Camera;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera prefernce rejected. Resetting to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v2, v2, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget v3, v3, Lcom/netease/codescanner/camera/c$a;->b:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->a(Landroid/hardware/Camera;IZ)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v0, "Camera rejected safe-mode! Leave it."

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v1, v1, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getTorchOnState(Landroid/hardware/Camera;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v1, v1, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, p1}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/a;->a()V
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

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;
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

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v0, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->e:Landroid/graphics/Rect;

    :cond_0
    invoke-static {}, Lcom/netease/codescanner/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/codescanner/camera/b;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v0, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/codescanner/camera/b;->k:Z

    new-instance v0, Lcom/netease/codescanner/camera/a;

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v2, v2, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-wide v3, p0, Lcom/netease/codescanner/camera/b;->i:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/codescanner/camera/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;J)V

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;
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

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->d:Lcom/netease/codescanner/camera/a;

    :cond_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/codescanner/camera/b;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v0, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/camera/b;->k:Z
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

.method public declared-synchronized f()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->e:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/codescanner/camera/b;->e:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->e:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netease/codescanner/camera/b;->f()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getCameraPreviewResolution()Landroid/graphics/Point;

    move-result-object v3

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera Resolution: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Framing Rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v4}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getDisplayOrientation()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, v5

    div-int/2addr v4, v2

    const/16 v5, 0x10

    invoke-direct {p0, v4, v5}, Lcom/netease/codescanner/camera/b;->b(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v6

    div-int v2, v5, v2

    const/16 v5, 0x10

    invoke-direct {p0, v2, v5}, Lcom/netease/codescanner/camera/b;->a(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v4

    div-int/2addr v2, v0

    const/16 v4, 0x10

    invoke-direct {p0, v2, v4}, Lcom/netease/codescanner/camera/b;->b(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    div-int v0, v3, v0

    const/16 v3, 0x10

    invoke-direct {p0, v0, v3}, Lcom/netease/codescanner/camera/b;->a(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "framing rect in preview: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConfigManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getDisplayOrientation()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->h:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public j()V
    .locals 6

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v1, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v3, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v3, v3, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget v4, v4, Lcom/netease/codescanner/camera/c$a;->b:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->a(Landroid/hardware/Camera;IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera prefernce rejected. Resetting to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/netease/codescanner/camera/b;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iget-object v1, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget-object v1, v1, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/netease/codescanner/camera/b;->c:Lcom/netease/codescanner/camera/c$a;

    iget v2, v2, Lcom/netease/codescanner/camera/c$a;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->a(Landroid/hardware/Camera;IZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "Camera rejected safe-mode! Leave it."

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
