.class public Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->configManager:Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->previewMessage:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string v1, "Got preview callback, but no handler or resolution available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    iput p2, p0, Lcom/tencent/apollo/qr/zxing/camera/PreviewCallback;->previewMessage:I

    return-void
.end method
