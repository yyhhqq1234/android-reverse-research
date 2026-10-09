.class public Lcom/tencent/friday/uikit/a/d;
.super Ljava/lang/Object;
.source "ScreenShot.java"


# direct methods
.method public static a(Landroid/view/View;FLandroid/graphics/Bitmap$CompressFormat;)[B
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-static {v0, p1, p2}, Lcom/tencent/friday/uikit/a/a;->a(Landroid/graphics/Bitmap;FLandroid/graphics/Bitmap$CompressFormat;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    const/16 v2, 0x64

    invoke-virtual {v0, p2, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 37
    const-string v2, "/sdcard/tencent/glory"

    const-string v3, "/sdcard/tencent/glory/map"

    invoke-static {v2, v3, v0}, Lcom/tencent/friday/uikit/a/b;->a(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 39
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
