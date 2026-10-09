.class public final Lcom/netease/loginapi/qrcode/DecodeHandler;
.super Landroid/os/Handler;
.source "Proguard"

# interfaces
.implements Lcom/netease/loginapi/qrcode/Whats;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

.field public final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field public running:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/loginapi/qrcode/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/loginapi/qrcode/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netease/loginapi/qrcode/CaptureInterface;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/loginapi/qrcode/CaptureInterface;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->running:Z

    .line 5
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 6
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 7
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    return-void
.end method

.method public static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v6

    .line 3
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 4
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    move v2, v6

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "barcode_bitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    int-to-float v0, v6

    .line 8
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const-string p0, "barcode_scaled_factor"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method private decode([BII)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v2}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/loginapi/qrcode/CaptureInterface;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/loginapi/qrcode/DecodeHandler;->rotatePreviewData([BII)[B

    move-result-object p1

    move v6, p3

    move p3, p2

    move p2, v6

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    invoke-virtual {v2}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getCameraManager()Lcom/netease/loginapi/qrcode/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 12
    new-instance p3, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, p3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p3
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v2, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 19
    throw p1

    .line 20
    :catch_0
    iget-object p3, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    :cond_1
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_2

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 27
    sget-object p2, Lcom/netease/loginapi/qrcode/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found barcode in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p2, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    const/16 v0, 0x3ea

    invoke-virtual {p2, v0, p3}, Lcom/netease/loginapi/qrcode/CaptureInterface;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 29
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 30
    invoke-static {p1, p3}, Lcom/netease/loginapi/qrcode/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->captureInterface:Lcom/netease/loginapi/qrcode/CaptureInterface;

    const/16 p3, 0x3eb

    invoke-virtual {p1, p3, p2}, Lcom/netease/loginapi/qrcode/CaptureInterface;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method private rotatePreviewData([BII)[B
    .locals 6

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    mul-int v4, v3, p3

    add-int/2addr v4, p3

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, p2

    add-int/2addr v5, v3

    .line 4
    aget-byte v5, p1, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_2

    const/16 p1, 0x44b

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/netease/loginapi/qrcode/DecodeHandler;->running:Z

    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    const-class v0, Lcom/netease/loginapi/qrcode/DecodeHandler;

    const-string v1, "DecodeHandler Quit"

    invoke-static {v0, v1, p1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/loginapi/qrcode/DecodeHandler;->decode([BII)V

    :goto_0
    return-void
.end method
