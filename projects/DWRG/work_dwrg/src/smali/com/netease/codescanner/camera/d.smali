.class final Lcom/netease/codescanner/camera/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private final a:Lcom/netease/codescanner/camera/b;

.field private final b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/netease/codescanner/camera/b;Lcom/netease/codescanner/camera/CameraConfigurationManager;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/codescanner/camera/d;->a:Lcom/netease/codescanner/camera/b;

    iput-object p2, p0, Lcom/netease/codescanner/camera/d;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    iput-object p3, p0, Lcom/netease/codescanner/camera/d;->c:Landroid/os/Handler;

    iput p4, p0, Lcom/netease/codescanner/camera/d;->d:I

    iget-object v0, p0, Lcom/netease/codescanner/camera/d;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getCameraPreviewResolution()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/codescanner/camera/d;->e:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    iget-object v0, p0, Lcom/netease/codescanner/camera/d;->e:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/codescanner/camera/d;->a:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v0}, Lcom/netease/codescanner/camera/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/codescanner/camera/b$a;

    invoke-direct {v0}, Lcom/netease/codescanner/camera/b$a;-><init>()V

    iput-object p1, v0, Lcom/netease/codescanner/camera/b$a;->b:[B

    iget-object v1, p0, Lcom/netease/codescanner/camera/d;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Lcom/netease/codescanner/camera/b$a;->c:I

    iget-object v1, p0, Lcom/netease/codescanner/camera/d;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Lcom/netease/codescanner/camera/b$a;->d:I

    iget-object v1, p0, Lcom/netease/codescanner/camera/d;->a:Lcom/netease/codescanner/camera/b;

    invoke-virtual {v1}, Lcom/netease/codescanner/camera/b;->g()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/codescanner/camera/b$a;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/netease/codescanner/camera/d;->b:Lcom/netease/codescanner/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/netease/codescanner/camera/CameraConfigurationManager;->getDisplayOrientation()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/netease/codescanner/camera/b$a;->a:I

    iget-object v1, p0, Lcom/netease/codescanner/camera/d;->c:Landroid/os/Handler;

    iget v2, p0, Lcom/netease/codescanner/camera/d;->d:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Got preview callback, but no camera/handler/resolution available"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
