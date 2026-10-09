.class public Lcom/tencent/apollo/qr/zxing/DecodeHandler;
.super Landroid/os/Handler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeHandler"


# instance fields
.field private final activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/tencent/apollo/qr/zxing/CaptureActivity;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/apollo/qr/zxing/CaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->running:Z

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    return-void
.end method

.method private static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, "barcode_bitmap"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method private decode([BII)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getCameraManager()Lcom/tencent/apollo/qr/zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/camera/CameraManager;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;->getOrientation()I

    move-result v0

    const-string v2, "DecodeHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qrDecode orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p1

    new-array v4, v2, [B

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_4

    move v0, v1

    :goto_0
    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-ge v2, v5, :cond_0

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v2

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    iput v1, v3, Landroid/hardware/Camera$Size;->width:I

    iput v0, v3, Landroid/hardware/Camera$Size;->height:I

    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    move-object v1, v0

    :goto_2
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_0
    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v3, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v2}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v3}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "apolloqr_decode_succeeded"

    invoke-static {v3, v4}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "apolloqr_decode_failed"

    invoke-static {v3, v5}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_8

    if-eqz v2, :cond_3

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, v2}, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    const/16 v2, 0x10e

    if-ne v0, v2, :cond_7

    move v0, v1

    :goto_5
    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    if-ge v0, v2, :cond_6

    move v2, v1

    :goto_6
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    if-ge v2, v5, :cond_5

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v5, v6

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v2

    sub-int/2addr v5, v6

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-byte v6, p1, v6

    aput-byte v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    iput v1, v3, Landroid/hardware/Camera$Size;->width:I

    iput v0, v3, Landroid/hardware/Camera$Size;->height:I

    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_7
    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    :cond_8
    if-eqz v2, :cond_3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->activity:Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/tencent/apollo/qr/zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "apolloqr_decode"

    invoke-static {v0, v1}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "apolloqr_quit"

    invoke-static {v0, v2}, Lcom/tencent/apollo/qr/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->running:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->decode([BII)V

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/apollo/qr/zxing/DecodeHandler;->running:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
