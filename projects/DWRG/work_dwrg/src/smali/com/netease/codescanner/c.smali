.class final Lcom/netease/codescanner/c;
.super Landroid/os/Handler;


# instance fields
.field private final a:Lcom/google/zxing/MultiFormatReader;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private final d:Z

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Lcom/netease/codescanner/CodeScanConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netease/codescanner/CodeScanConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/codescanner/c;->b:Z

    iput-object p1, p0, Lcom/netease/codescanner/c;->g:Landroid/content/Context;

    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/netease/codescanner/c;->c:Landroid/os/Handler;

    iget-boolean v0, p4, Lcom/netease/codescanner/CodeScanConfig;->decode_generateErrorPreview:Z

    iput-boolean v0, p0, Lcom/netease/codescanner/c;->d:Z

    iget v0, p4, Lcom/netease/codescanner/CodeScanConfig;->decode_frameWidth:I

    iput v0, p0, Lcom/netease/codescanner/c;->e:I

    iget v0, p4, Lcom/netease/codescanner/CodeScanConfig;->decode_frameHeight:I

    iput v0, p0, Lcom/netease/codescanner/c;->f:I

    return-void
.end method

.method private a(Lcom/netease/codescanner/camera/b$a;)Lcom/netease/codescanner/CodeScanner$DecodeResult;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/netease/codescanner/camera/b$a;->b:[B

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/netease/codescanner/camera/b$a;->b:[B

    iget v1, p1, Lcom/netease/codescanner/camera/b$a;->c:I

    iget v2, p1, Lcom/netease/codescanner/camera/b$a;->d:I

    iget v3, p1, Lcom/netease/codescanner/camera/b$a;->a:I

    iget-object v4, p1, Lcom/netease/codescanner/camera/b$a;->e:Landroid/graphics/Rect;

    iget v5, p0, Lcom/netease/codescanner/c;->e:I

    iget v6, p0, Lcom/netease/codescanner/c;->f:I

    invoke-static/range {v0 .. v6}, Lcom/netease/codescanner/e;->a([BIIILandroid/graphics/Rect;II)Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v8

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, v0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    :try_start_0
    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, v1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v8

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v7, Lcom/netease/codescanner/CodeScanner$DecodeResult;

    invoke-direct {v7}, Lcom/netease/codescanner/CodeScanner$DecodeResult;-><init>()V

    iput-object v0, v7, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    iget-object v0, p1, Lcom/netease/codescanner/camera/b$a;->b:[B

    iget v1, p1, Lcom/netease/codescanner/camera/b$a;->c:I

    iget v2, p1, Lcom/netease/codescanner/camera/b$a;->d:I

    iget v3, p1, Lcom/netease/codescanner/camera/b$a;->a:I

    iget-object v4, p1, Lcom/netease/codescanner/camera/b$a;->e:Landroid/graphics/Rect;

    iget v5, p0, Lcom/netease/codescanner/c;->e:I

    iget v6, p0, Lcom/netease/codescanner/c;->f:I

    invoke-static/range {v0 .. v6}, Lcom/netease/codescanner/common/Graphics;->a([BIIILandroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v7, Lcom/netease/codescanner/CodeScanner$DecodeResult;->preview:Landroid/graphics/Bitmap;

    iget-object v0, v7, Lcom/netease/codescanner/CodeScanner$DecodeResult;->preview:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-boolean v0, p0, Lcom/netease/codescanner/c;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v8

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, p1, Lcom/netease/codescanner/camera/b$a;->b:[B

    iget v1, p1, Lcom/netease/codescanner/camera/b$a;->c:I

    iget v2, p1, Lcom/netease/codescanner/camera/b$a;->d:I

    iget v3, p1, Lcom/netease/codescanner/camera/b$a;->a:I

    iget-object v4, p1, Lcom/netease/codescanner/camera/b$a;->e:Landroid/graphics/Rect;

    iget v5, p0, Lcom/netease/codescanner/c;->e:I

    iget v6, p0, Lcom/netease/codescanner/c;->f:I

    invoke-static/range {v0 .. v6}, Lcom/netease/codescanner/common/Graphics;->a([BIIILandroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v8

    goto/16 :goto_0

    :cond_5
    :try_start_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v1, v3, v7

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v2, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {v2, v3, v7, v1}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v3, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    new-instance v1, Lcom/netease/codescanner/CodeScanner$DecodeResult;

    invoke-direct {v1}, Lcom/netease/codescanner/CodeScanner$DecodeResult;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, v3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    iput-object v0, v1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->preview:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Lcom/google/zxing/NotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    iget-object v0, v1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->preview:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v8

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Lcom/google/zxing/NotFoundException;->printStackTrace()V

    iput-object v0, v1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->preview:Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/netease/codescanner/c;->a:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0}, Lcom/google/zxing/MultiFormatReader;->reset()V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/codescanner/c;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/netease/codescanner/CodeScanner$DecodeResult;->rawResult:Lcom/google/zxing/Result;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/codescanner/c;->c:Landroid/os/Handler;

    const/16 v1, 0x2713

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/codescanner/c;->c:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/codescanner/c;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_2

    const-string v0, "Trying to decode"

    invoke-static {v0}, Lcom/netease/codescanner/common/Logging;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/netease/codescanner/camera/b$a;

    invoke-direct {p0, v0}, Lcom/netease/codescanner/c;->a(Lcom/netease/codescanner/camera/b$a;)Lcom/netease/codescanner/CodeScanner$DecodeResult;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/netease/codescanner/c;->a(Lcom/netease/codescanner/CodeScanner$DecodeResult;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/codescanner/c;->b:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
