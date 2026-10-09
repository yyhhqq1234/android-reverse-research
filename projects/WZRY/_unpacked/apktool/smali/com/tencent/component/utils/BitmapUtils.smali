.class public Lcom/tencent/component/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final DEFAULT_QUALITY:I = 0x5a


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 38
    const/16 v0, 0x5a

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, v0, v1}, Lcom/tencent/component/utils/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 45
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)[B
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "format"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 34
    const/16 v0, 0x5a

    invoke-static {p0, v0, p1}, Lcom/tencent/component/utils/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;)[B

    move-result-object v0

    return-object v0
.end method

.method public static drawViewToBitmap(Landroid/graphics/Bitmap;Landroid/view/View;IIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "dest"    # Landroid/graphics/Bitmap;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "downSampling"    # I
    .param p5, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 128
    const-string v5, "drawViewToBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "view"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, p4

    div-float v4, v5, v6

    .line 130
    .local v4, "scale":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 131
    .local v3, "heightCopy":I
    invoke-virtual {p1, v8, v8, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 132
    int-to-float v5, p2

    mul-float/2addr v5, v4

    float-to-int v1, v5

    .line 133
    .local v1, "bmpWidth":I
    int-to-float v5, p3

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 134
    .local v0, "bmpHeight":I
    const-string v5, "drawViewToBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bmpview"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "drawViewToBitmap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "heightCopy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 138
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 141
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {p5, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 144
    const/4 v5, 0x1

    if-le p4, v5, :cond_2

    .line 145
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 147
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1, v8, v8, p2, v3}, Landroid/view/View;->layout(IIII)V

    .line 150
    return-object p0
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 156
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 161
    .local v2, "color":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 162
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 168
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 170
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 173
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 174
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static getBitmapFromView(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 181
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 186
    .local v2, "color":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 187
    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 192
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 196
    :cond_1
    invoke-static {v1, v4, v4, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 199
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 200
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Videopath"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, "testcr":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v1

    .line 290
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "whereClause":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 295
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 296
    .local v7, "_id":I
    const-string v12, ""

    .line 297
    .local v12, "videoPath":Ljava/lang/String;
    if-nez v10, :cond_0

    .line 298
    const/4 v9, 0x0

    .line 321
    :goto_0
    return-object v9

    .line 300
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 301
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 302
    const/4 v9, 0x0

    goto :goto_0

    .line 304
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 307
    .local v8, "_idColumn":I
    const-string v1, "_data"

    .line 308
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 310
    .local v6, "_dataColumn":I
    :cond_2
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 311
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 312
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 315
    .end local v6    # "_dataColumn":I
    .end local v8    # "_idColumn":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 316
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 317
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 318
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 319
    int-to-long v4, v7

    const/4 v1, 0x1

    invoke-static {v0, v4, v5, v1, v11}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 321
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static processExif(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "imagePath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 86
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/tencent/component/utils/PlatformUtil;->version()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "exif":Landroid/media/ExifInterface;
    move-object v1, v2

    .line 66
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    :goto_1
    if-eqz v1, :cond_0

    .line 70
    const-string v5, "Orientation"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    .line 72
    .local v3, "orientation":I
    const/4 v4, 0x0

    .line 73
    .local v4, "rotation":I
    packed-switch v3, :pswitch_data_0

    .line 86
    :goto_2
    :pswitch_0
    invoke-static {p0, v4}, Lcom/tencent/component/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 63
    .end local v3    # "orientation":I
    .end local v4    # "rotation":I
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "orientation":I
    .restart local v4    # "rotation":I
    :pswitch_1
    const/16 v4, 0x5a

    .line 76
    goto :goto_2

    .line 79
    :pswitch_2
    const/16 v4, 0xb4

    .line 80
    goto :goto_2

    .line 83
    :pswitch_3
    const/16 v4, 0x10e

    goto :goto_2

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "rotation"    # I

    .prologue
    const/4 v10, 0x0

    .line 90
    rem-int/lit16 p1, p1, 0x168

    .line 91
    if-nez p1, :cond_1

    .line 123
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 96
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/16 v7, 0x2d

    if-le p1, v7, :cond_2

    const/16 v7, 0x87

    if-lt p1, v7, :cond_3

    :cond_2
    const/16 v7, 0xe1

    if-le p1, v7, :cond_6

    const/16 v7, 0x13b

    if-ge p1, v7, :cond_6

    :cond_3
    const/4 v5, 0x1

    .line 98
    .local v5, "rotateDimension":Z
    :goto_1
    if-nez v5, :cond_7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 99
    .local v6, "width":I
    :goto_2
    if-nez v5, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 101
    .local v3, "height":I
    :goto_3
    const/4 v4, 0x0

    .line 103
    .local v4, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 107
    :goto_4
    if-eqz v4, :cond_0

    if-eq v4, p0, :cond_0

    .line 112
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v1, v7, 0x2

    .line 114
    .local v1, "dx":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, v3, v7

    div-int/lit8 v2, v7, 0x2

    .line 115
    .local v2, "dy":I
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 116
    :cond_4
    int-to-float v7, v1

    int-to-float v8, v2

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 118
    :cond_5
    int-to-float v7, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 119
    const/4 v7, 0x0

    invoke-virtual {v0, p0, v10, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v4

    .line 123
    goto :goto_0

    .line 96
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v3    # "height":I
    .end local v4    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "rotateDimension":Z
    .end local v6    # "width":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 98
    .restart local v5    # "rotateDimension":Z
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_2

    .line 99
    .restart local v6    # "width":I
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_3

    .line 104
    .restart local v3    # "height":I
    .restart local v4    # "newBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    goto :goto_4
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 253
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object p1, v4

    .line 273
    .end local p1    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 255
    .restart local p1    # "path":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 257
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 259
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 260
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    if-eqz v1, :cond_1

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 269
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v3

    .line 272
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v2

    .line 263
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz v0, :cond_3

    .line 268
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 269
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    move-object p1, v4

    .line 273
    goto :goto_0

    .line 271
    :catch_2
    move-exception v3

    .line 272
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 267
    :goto_3
    if-eqz v0, :cond_4

    .line 268
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 269
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 273
    :cond_4
    :goto_4
    throw v4

    .line 271
    :catch_3
    move-exception v3

    .line 272
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 266
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 262
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public static saveToSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 8
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v4, 0x0

    .line 206
    .local v4, "fo":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 208
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x28

    invoke-virtual {p0, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 212
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 216
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .local v5, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 220
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    const/4 v6, 0x1

    .line 228
    if-eqz v1, :cond_5

    .line 229
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 230
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 231
    const/4 v0, 0x0

    .line 234
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-eqz v5, :cond_1

    .line 235
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 236
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 237
    const/4 v4, 0x0

    .line 241
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fo":Ljava/io/FileOutputStream;
    .restart local v4    # "fo":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return v6

    .line 239
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "fo":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 240
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    move-object v4, v5

    .end local v5    # "fo":Ljava/io/FileOutputStream;
    .restart local v4    # "fo":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 222
    .end local v3    # "f":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 225
    const/4 v6, 0x0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 230
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 231
    const/4 v0, 0x0

    .line 234
    :cond_2
    if-eqz v4, :cond_0

    .line 235
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 236
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 237
    const/4 v4, 0x0

    goto :goto_1

    .line 239
    :catch_2
    move-exception v2

    .line 240
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 227
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 228
    :goto_4
    if-eqz v0, :cond_3

    .line 229
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 230
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 231
    const/4 v0, 0x0

    .line 234
    :cond_3
    if-eqz v4, :cond_4

    .line 235
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 236
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 237
    const/4 v4, 0x0

    .line 241
    :cond_4
    :goto_5
    throw v6

    .line 239
    :catch_3
    move-exception v2

    .line 240
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 227
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "fo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "fo":Ljava/io/FileOutputStream;
    .restart local v4    # "fo":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 222
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "f":Ljava/io/File;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "fo":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "fo":Ljava/io/FileOutputStream;
    .restart local v4    # "fo":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 239
    .end local v4    # "fo":Ljava/io/FileOutputStream;
    .restart local v5    # "fo":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    goto :goto_2

    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    :cond_5
    move-object v0, v1

    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    goto :goto_0
.end method
