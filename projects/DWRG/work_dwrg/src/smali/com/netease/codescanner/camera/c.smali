.class public final Lcom/netease/codescanner/camera/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/codescanner/camera/c$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/netease/codescanner/camera/c$a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/netease/codescanner/camera/c;->b()Lcom/netease/codescanner/camera/c$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netease/codescanner/camera/c$a;

    invoke-direct {v0}, Lcom/netease/codescanner/camera/c$a;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-object v1, v0, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, v0, Lcom/netease/codescanner/camera/c$a;->b:I

    goto :goto_0
.end method

.method private static b()Lcom/netease/codescanner/camera/c$a;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No cameras!"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v1, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_2

    :cond_1
    if-ge v1, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening camera #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    :goto_2
    new-instance v2, Lcom/netease/codescanner/camera/c$a;

    invoke-direct {v2}, Lcom/netease/codescanner/camera/c$a;-><init>()V

    iput-object v0, v2, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    iget-object v0, v2, Lcom/netease/codescanner/camera/c$a;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "No camera facing back; returning camera #0"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    move v1, v2

    goto :goto_2

    :cond_4
    iput v1, v2, Lcom/netease/codescanner/camera/c$a;->b:I

    move-object v0, v2

    goto :goto_0
.end method
