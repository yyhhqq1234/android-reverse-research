.class public Lcom/tencent/pandora/imagepicker/UnityProxyActivity;
.super Landroid/app/Activity;
.source "UnityProxyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Unity"

.field private static final max_image_size:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cancelAction()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tencent/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method private checkImageSize(Landroid/net/Uri;)Z
    .locals 8
    .param p1, "rawImgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 82
    .local v1, "input":Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 84
    const/4 v5, 0x0

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    const-string v5, "Unity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", checkImageSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v5, v6

    const/high16 v6, 0x1000000

    if-le v5, v6, :cond_0

    .line 104
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return v3

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "checkImageSize failed"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    move v3, v4

    .line 104
    goto :goto_0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 285
    const/4 v7, 0x0

    .line 286
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 287
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v2, v0

    .line 289
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 290
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 292
    .local v8, "index":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 295
    if-eqz v7, :cond_0

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    .end local v8    # "index":I
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    if-eqz v7, :cond_2

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 298
    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 296
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 240
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-object v7

    .line 242
    :cond_1
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-lt v8, v9, :cond_7

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 243
    invoke-static {p1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 244
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "split":[Ljava/lang/String;
    aget-object v6, v5, v10

    .line 247
    .local v6, "type":Ljava/lang/String;
    const-string v8, "primary"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 250
    .end local v1    # "docId":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "id":Ljava/lang/String;
    const-string v8, "content://downloads/public_downloads"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 253
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v7, v7}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 254
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 255
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5    # "split":[Ljava/lang/String;
    aget-object v6, v5, v10

    .line 258
    .restart local v6    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 259
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v7, "image"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 260
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 266
    :cond_4
    :goto_1
    const-string v3, "_id=?"

    .line 267
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aget-object v7, v5, v11

    aput-object v7, v4, v10

    .line 268
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {p0, v0, v3, v4}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 261
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "video"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 262
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 263
    :cond_6
    const-string v7, "audio"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 271
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_7
    const-string v8, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 273
    invoke-static {p1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 274
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 275
    :cond_8
    invoke-static {p0, p1, v7, v7}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 278
    :cond_9
    const-string v8, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 224
    :goto_0
    return-object v3

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "scheme":Ljava/lang/String;
    const/4 v7, 0x0

    .line 203
    .local v7, "data":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 204
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_1
    move-object v3, v7

    .line 224
    goto :goto_0

    .line 205
    :cond_2
    const-string v0, "file"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 207
    :cond_3
    const-string v0, "content"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 212
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_4

    .line 213
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 217
    .end local v8    # "index":I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_5
    if-nez v7, :cond_1

    .line 220
    invoke-static {p0, p1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->getImageAbsolutePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 316
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 307
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 334
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 325
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onGetVideoPath(Landroid/net/Uri;)V
    .locals 14
    .param p1, "videoUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 340
    const-wide/16 v6, 0x0

    .line 341
    .local v6, "length":J
    const/4 v8, 0x0

    .line 342
    .local v8, "width":I
    const/4 v9, 0x0

    .line 343
    .local v9, "height":I
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "filename":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 347
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 350
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v13

    .line 351
    .local v13, "mp":Landroid/media/MediaPlayer;
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v8

    .line 352
    invoke-virtual {v13}, Landroid/media/MediaPlayer;->getVideoHeight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 360
    invoke-static/range {v4 .. v9}, Lcom/tencent/pandora/imagepicker/AndroidGallery;->PickVideoFireCallback(ILjava/lang/String;JII)V

    .line 361
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "mp":Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v10

    move-object v12, v5

    .line 355
    .end local v5    # "filename":Ljava/lang/String;
    .local v10, "e":Ljava/lang/Exception;
    .local v12, "filename":Ljava/lang/String;
    const-string v0, "Unity"

    const-string v1, "get video info failed:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, -0x1

    const-string v1, ""

    const-wide/16 v2, 0x0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/pandora/imagepicker/AndroidGallery;->PickVideoFireCallback(ILjava/lang/String;JII)V

    move-object v5, v12

    .line 357
    .end local v12    # "filename":Ljava/lang/String;
    .restart local v5    # "filename":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 109
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnityProxyActivity: onActivityResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sparse-switch p1, :sswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 115
    :sswitch_0
    if-eq p2, v5, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->cancelAction()V

    goto :goto_0

    .line 120
    :cond_1
    const-string v2, "Unity"

    const-string/jumbo v3, "\u76f8\u518c\uff0c\u5f00\u59cb\u88c1\u526a"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u76f8\u518c [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p3, :cond_2

    .line 123
    const-string v2, "Unity"

    const-string/jumbo v3, "\u76f8\u518c \u6ca1\u6709\u8fd4\u56de\u6570\u636e\uff01\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->checkImageSize(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget v3, Lcom/tencent/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    sget v4, Lcom/tencent/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-static {p0, v2, v3, v4}, Lcom/tencent/pandora/imagepicker/ImageCropper;->requestCrop(Landroid/app/Activity;Landroid/net/Uri;II)V

    goto :goto_0

    .line 133
    :cond_3
    const-string v2, "Unity"

    const-string/jumbo v3, "\u76f8\u7247\u592a\u5927\u4e86\uff0c\u65e0\u6cd5\u88c1\u526a"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v2, ""

    invoke-static {v6, v2}, Lcom/tencent/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->finish()V

    goto :goto_0

    .line 141
    :sswitch_1
    if-eq p2, v5, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->cancelAction()V

    goto :goto_0

    .line 146
    :cond_4
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u76f8\u673a, \u5f00\u59cb\u88c1\u526a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", output size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pandora_temp_0001.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->checkImageSize(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 152
    sget v2, Lcom/tencent/pandora/imagepicker/AndroidGallery;->outputImageWidth:I

    sget v3, Lcom/tencent/pandora/imagepicker/AndroidGallery;->outputImageHeight:I

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/pandora/imagepicker/ImageCropper;->requestCrop(Landroid/app/Activity;Landroid/net/Uri;II)V

    goto/16 :goto_0

    .line 155
    :cond_5
    const-string v2, "Unity"

    const-string/jumbo v3, "\u76f8\u7247\u592a\u5927\u4e86\uff0c\u65e0\u6cd5\u88c1\u526a"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v2, ""

    invoke-static {v6, v2}, Lcom/tencent/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->finish()V

    goto/16 :goto_0

    .line 162
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :sswitch_2
    if-eq p2, v5, :cond_6

    .line 163
    invoke-direct {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->cancelAction()V

    goto/16 :goto_0

    .line 166
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->onGetVideoPath(Landroid/net/Uri;)V

    .line 167
    invoke-virtual {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->finish()V

    goto/16 :goto_0

    .line 170
    :sswitch_3
    if-eq p2, v5, :cond_7

    .line 171
    invoke-direct {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->cancelAction()V

    goto/16 :goto_0

    .line 175
    :cond_7
    const-string v2, "Unity"

    const-string/jumbo v3, "\u76f8\u518c\u88c1\u526a\u6210\u529f"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v2, "Unity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u88c1\u526a\u4ee5\u540e [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ], path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-eqz p3, :cond_0

    .line 182
    sget-object v2, Lcom/tencent/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 184
    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/pandora/imagepicker/AndroidGallery;->OpenGalleryFireCallback(ILjava/lang/String;)V

    .line 186
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->finish()V

    goto/16 :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x63 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "Unity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProxyActivity: OnCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/pandora/imagepicker/ImageCropper;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget v0, Lcom/tencent/pandora/imagepicker/AndroidGallery;->pickType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/tencent/pandora/imagepicker/AndroidGallery;->pickType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/tencent/pandora/imagepicker/ImageCropper;->requestCamera(Landroid/app/Activity;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/tencent/pandora/imagepicker/ImageCropper;->requestAlbum(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    sget-object v0, Lcom/tencent/pandora/imagepicker/AndroidGallery;->OpenGallery_Callback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 59
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/tencent/pandora/imagepicker/UnityProxyActivity;->cancelAction()V

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
