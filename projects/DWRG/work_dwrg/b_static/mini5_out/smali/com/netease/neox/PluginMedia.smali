.class public Lcom/netease/neox/PluginMedia;
.super Lcom/netease/neox/PluginBase;
.source "PluginMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/neox/PluginMedia$MyTranscodeThread;,
        Lcom/netease/neox/PluginMedia$MyTranscodeCallback;
    }
.end annotation


# static fields
.field private static final REQUEST_CAPTURE_VIDEO:I

.field private static final REQUEST_OPEN_HARDWARE_CAMERA:I

.field private static final REQUEST_PICK_VIDEO:I

.field private static s_transcodeID:I


# instance fields
.field private m_cameras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/neox/media/camera/IHWCamera;",
            ">;"
        }
    .end annotation
.end field

.field private m_capture_video_duration:J

.field private m_capture_video_quality:I

.field private m_capture_video_size_limit:J

.field private m_context:Landroid/app/Activity;

.field private m_video_players:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/neox/media/IVideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x253c9973

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/netease/neox/PluginMedia;->REQUEST_PICK_VIDEO:I

    const v0, 0x762f4032

    .line 40
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/netease/neox/PluginMedia;->REQUEST_CAPTURE_VIDEO:I

    const v0, 0x24c9d137

    .line 41
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/netease/neox/PluginMedia;->REQUEST_OPEN_HARDWARE_CAMERA:I

    const/4 v0, 0x0

    .line 42
    sput v0, Lcom/netease/neox/PluginMedia;->s_transcodeID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/neox/PluginMedia;->m_cameras:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_quality:I

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_duration:J

    .line 48
    iput-wide v0, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_size_limit:J

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 37
    sget v0, Lcom/netease/neox/PluginMedia;->REQUEST_PICK_VIDEO:I

    return v0
.end method

.method static synthetic access$100(Lcom/netease/neox/PluginMedia;)Landroid/app/Activity;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/neox/PluginMedia;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_quality:I

    return p0
.end method

.method static synthetic access$300(Lcom/netease/neox/PluginMedia;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_duration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/netease/neox/PluginMedia;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_size_limit:J

    return-wide v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 37
    sget v0, Lcom/netease/neox/PluginMedia;->REQUEST_CAPTURE_VIDEO:I

    return v0
.end method

.method static synthetic access$600(Lcom/netease/neox/PluginMedia;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netease/neox/PluginMedia;->saveVideoToAlbum(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/neox/PluginMedia;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/netease/neox/PluginMedia;->saveImageToAlbum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$804()I
    .locals 1

    .line 37
    sget v0, Lcom/netease/neox/PluginMedia;->s_transcodeID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/netease/neox/PluginMedia;->s_transcodeID:I

    return v0
.end method

.method private static insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)Z
    .locals 13

    .line 357
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 358
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    .line 364
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 370
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 372
    invoke-static {p0, v8, v9, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/high16 v11, 0x42480000    # 50.0f

    const/4 v12, 0x3

    const/high16 v10, 0x42480000    # 50.0f

    move-object v6, p0

    .line 374
    invoke-static/range {v6 .. v12}, Lcom/netease/neox/PluginMedia;->storeThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 368
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 369
    throw p1

    .line 376
    :cond_0
    const-string p1, "Failed to create thumbnail, removing original"

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v2

    .line 381
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {p0, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    move-object v2, v0

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method private static insertVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 307
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v1, 0x2f

    .line 310
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v1, v3

    .line 312
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 314
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 315
    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 320
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 322
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2000

    .line 323
    new-array p1, p1, [B

    .line 325
    :goto_1
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 326
    invoke-virtual {v1, p1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 328
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 329
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p2

    .line 331
    :goto_2
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0, v0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    :goto_3
    move-object p2, v0

    :goto_4
    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    :goto_5
    return v3
.end method

.method public static native nativeOnCaptureVideoCancelled()V
.end method

.method public static native nativeOnCaptureVideoFailed()V
.end method

.method public static native nativeOnCaptureVideoSucceeded(Ljava/lang/String;)V
.end method

.method public static native nativeOnPickVideoCancelled()V
.end method

.method public static native nativeOnPickVideoFailed()V
.end method

.method public static native nativeOnPickVideoSucceeded(Ljava/lang/String;)V
.end method

.method public static native nativeOnSaveAlbum(Ljava/lang/String;Z)V
.end method

.method public static native nativeOnTranscodeVideoDone(Landroid/os/Bundle;)V
.end method

.method private saveImageToAlbum(Ljava/lang/String;)V
    .locals 3

    .line 341
    const-string v0, "Saving image"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 342
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to decode the image file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 345
    invoke-static {p1, v1}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    return-void

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/netease/neox/PluginMedia;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 349
    invoke-static {p1, v0}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {p1, v1}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private saveVideoToAlbum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 299
    const-string v0, "Saving video"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/netease/neox/PluginMedia;->insertVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 301
    invoke-static {p1, p2}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {p1, v1}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private static final storeThumbnail(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)V
    .locals 7

    .line 394
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 397
    invoke-virtual {v5, p4, p5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 399
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    .line 398
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 402
    new-instance p4, Landroid/content/ContentValues;

    const/4 p5, 0x4

    invoke-direct {p4, p5}, Landroid/content/ContentValues;-><init>(I)V

    .line 403
    const-string p5, "kind"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    long-to-int p3, p2

    .line 404
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "image_id"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "width"

    invoke-virtual {p4, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 407
    sget-object p2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 409
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    .line 410
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p4, 0x64

    invoke-virtual {p1, p3, p4, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 411
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    if-eqz p2, :cond_0

    .line 415
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 414
    :cond_0
    const-string p1, "(null)"

    :goto_0
    const/4 p2, 0x1

    .line 416
    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Save thumbnail %s failed!"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 417
    invoke-static {p0}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method


# virtual methods
.method CheckSelfPermission(Ljava/lang/String;)Z
    .locals 3

    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v2
.end method

.method public captureVideo()Z
    .locals 3

    .line 214
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/netease/neox/PluginMedia;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginMedia$2;

    invoke-direct {v1, p0}, Lcom/netease/neox/PluginMedia$2;-><init>(Lcom/netease/neox/PluginMedia;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 235
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/netease/neox/PluginMedia;->REQUEST_CAPTURE_VIDEO:I

    invoke-static {v1, v0, v2}, Landroidx/core/app/Person$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "External storage write permission is not granted!"

    invoke-static {v0}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public captureVideo(IJJ)Z
    .locals 0

    .line 245
    iput p1, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_quality:I

    .line 246
    iput-wide p2, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_duration:J

    .line 247
    iput-wide p4, p0, Lcom/netease/neox/PluginMedia;->m_capture_video_size_limit:J

    .line 248
    invoke-virtual {p0}, Lcom/netease/neox/PluginMedia;->captureVideo()Z

    const/4 p1, 0x1

    return p1
.end method

.method public createVideoPlayerMemory()Lcom/netease/neox/media/VideoPlayerMemory;
    .locals 2

    .line 164
    new-instance v0, Lcom/netease/neox/media/VideoPlayerMemory;

    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/neox/media/VideoPlayerMemory;-><init>(Landroid/app/Activity;)V

    .line 165
    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createVideoPlayerTextured()Lcom/netease/neox/media/VideoPlayerTextured;
    .locals 2

    .line 158
    new-instance v0, Lcom/netease/neox/media/VideoPlayerTextured;

    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/neox/media/VideoPlayerTextured;-><init>(Landroid/app/Activity;)V

    .line 159
    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public createVideoPlayerWindowed()Lcom/netease/neox/media/VideoPlayerWindowed;
    .locals 2

    .line 152
    new-instance v0, Lcom/netease/neox/media/VideoPlayerWindowed;

    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/neox/media/VideoPlayerWindowed;-><init>(Landroid/app/Activity;)V

    .line 153
    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public destroyCamera(Lcom/netease/neox/media/camera/IHWCamera;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 603
    invoke-interface {p1}, Lcom/netease/neox/media/camera/IHWCamera;->close()V

    .line 604
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_cameras:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroyVideoPlayer(Lcom/netease/neox/media/IVideoPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/netease/neox/media/IVideoPlayer;->destroy()V

    .line 172
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getCameraCount()I
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/neox/media/camera/HWCamera2;->getCameraCount(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public getCameraFacing(I)I
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/neox/media/camera/HWCamera2;->getCameraFacing(Landroid/app/Activity;I)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "media"

    return-object v0
.end method

.method public newBundle()Landroid/os/Bundle;
    .locals 1

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2

    .line 117
    sget v0, Lcom/netease/neox/PluginMedia;->REQUEST_PICK_VIDEO:I

    const/4 v1, -0x1

    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_1

    .line 119
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/neox/media/UriUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/netease/neox/PluginMedia;->nativeOnPickVideoSucceeded(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    .line 124
    invoke-static {}, Lcom/netease/neox/PluginMedia;->nativeOnPickVideoCancelled()V

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Lcom/netease/neox/PluginMedia;->nativeOnPickVideoFailed()V

    goto :goto_0

    .line 128
    :cond_3
    sget v0, Lcom/netease/neox/PluginMedia;->REQUEST_CAPTURE_VIDEO:I

    if-ne p2, v0, :cond_7

    if-ne p3, v1, :cond_5

    .line 130
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/neox/media/UriUtils;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 132
    invoke-virtual {p4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 133
    :cond_4
    invoke-static {p1}, Lcom/netease/neox/PluginMedia;->nativeOnCaptureVideoSucceeded(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    .line 135
    invoke-static {}, Lcom/netease/neox/PluginMedia;->nativeOnCaptureVideoCancelled()V

    goto :goto_0

    .line 137
    :cond_6
    invoke-static {}, Lcom/netease/neox/PluginMedia;->nativeOnCaptureVideoFailed()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/neox/media/IVideoPlayer;

    .line 145
    instance-of v2, v1, Lcom/netease/neox/media/VideoPlayerWindowed;

    if-eqz v2, :cond_0

    .line 146
    check-cast v1, Lcom/netease/neox/media/VideoPlayerWindowed;

    invoke-virtual {v1, p1, p2}, Lcom/netease/neox/media/VideoPlayerWindowed;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 98
    sget p2, Lcom/netease/neox/PluginMedia;->REQUEST_PICK_VIDEO:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 99
    array-length p1, p3

    if-lez p1, :cond_0

    aget p1, p3, v0

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/netease/neox/PluginMedia;->pickVideo()Z

    goto :goto_0

    .line 102
    :cond_0
    const-string p1, "External storage read permission is not granted!"

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    sget p2, Lcom/netease/neox/PluginMedia;->REQUEST_CAPTURE_VIDEO:I

    if-ne p1, p2, :cond_3

    .line 105
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v0

    if-nez p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/netease/neox/PluginMedia;->captureVideo()Z

    goto :goto_0

    .line 108
    :cond_2
    const-string p1, "External storage write permission is not granted!"

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    sget p2, Lcom/netease/neox/PluginMedia;->REQUEST_OPEN_HARDWARE_CAMERA:I

    if-ne p1, p2, :cond_4

    .line 111
    const-string p1, "Camera permission is not granted!"

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/neox/media/IVideoPlayer;

    .line 89
    invoke-interface {v0}, Lcom/netease/neox/media/IVideoPlayer;->onResume()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/netease/neox/PluginMedia;->m_cameras:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/neox/media/camera/IHWCamera;

    .line 92
    invoke-interface {v0}, Lcom/netease/neox/media/camera/IHWCamera;->onResume()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/netease/neox/PluginMedia;->m_video_players:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/neox/media/IVideoPlayer;

    .line 79
    invoke-interface {v0}, Lcom/netease/neox/media/IVideoPlayer;->onStop()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/netease/neox/PluginMedia;->m_cameras:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/neox/media/camera/IHWCamera;

    .line 82
    invoke-interface {v0}, Lcom/netease/neox/media/camera/IHWCamera;->onStop()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public openCamera(II)Lcom/netease/neox/media/camera/IHWCamera;
    .locals 2

    .line 582
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/netease/neox/PluginMedia;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netease/neox/media/camera/HWCamera2;->openCamera(Landroid/app/Activity;I)Lcom/netease/neox/media/camera/IHWCamera;

    move-result-object p1

    goto :goto_1

    .line 585
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_1

    .line 586
    iget-object p1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/netease/neox/PluginMedia;->REQUEST_OPEN_HARDWARE_CAMERA:I

    invoke-static {p1, v0, v1}, Landroidx/core/app/Person$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 588
    :cond_1
    const-string p1, "Camera permission is not granted!"

    invoke-static {p1}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 595
    invoke-interface {p1, p2}, Lcom/netease/neox/media/camera/IHWCamera;->bindTexture(I)Z

    .line 596
    iget-object p2, p0, Lcom/netease/neox/PluginMedia;->m_cameras:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public pickVideo()Z
    .locals 3

    .line 190
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/netease/neox/PluginMedia;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginMedia$1;

    invoke-direct {v1, p0}, Lcom/netease/neox/PluginMedia$1;-><init>(Lcom/netease/neox/PluginMedia;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 204
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 205
    iget-object v1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/netease/neox/PluginMedia;->REQUEST_PICK_VIDEO:I

    invoke-static {v1, v0, v2}, Landroidx/core/app/Person$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 207
    :cond_1
    const-string v0, "External storage read permission is not granted!"

    invoke-static {v0}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public retrieveVideoInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .line 422
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 423
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 425
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    iget-object p1, p0, Lcom/netease/neox/PluginMedia;->m_context:Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x12

    .line 431
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x13

    .line 432
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    .line 433
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 434
    const-string v4, "Duration"

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v3, 0x14

    .line 435
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 437
    const-string v4, "BitRate"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/16 v3, 0x18

    .line 440
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 442
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    :cond_2
    move v7, v2

    move v2, p1

    move p1, v7

    .line 450
    :cond_3
    const-string v3, "Width"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    const-string p1, "Height"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public saveAlbum(Ljava/lang/String;)V
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveAlbum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/netease/neox/NXLog;->i(ILjava/lang/String;)V

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const-string v0, "File not exist!"

    invoke-static {v0}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 272
    invoke-static {p1, v1}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    return-void

    .line 275
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 277
    const-string v0, "Extension not found"

    invoke-static {v0}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 278
    invoke-static {p1, v1}, Lcom/netease/neox/PluginMedia;->nativeOnSaveAlbum(Ljava/lang/String;Z)V

    return-void

    .line 281
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v2, ".mov"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".mp4"

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".avi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".wmv"

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".mkv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 285
    :cond_3
    new-instance v2, Lcom/netease/neox/PluginMedia$3;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/netease/neox/PluginMedia$3;-><init>(Lcom/netease/neox/PluginMedia;ZLjava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public transcodeVideo(Landroid/os/Bundle;)I
    .locals 1

    .line 257
    new-instance v0, Lcom/netease/neox/PluginMedia$MyTranscodeThread;

    invoke-direct {v0, p0, p1}, Lcom/netease/neox/PluginMedia$MyTranscodeThread;-><init>(Lcom/netease/neox/PluginMedia;Landroid/os/Bundle;)V

    .line 259
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/neox/PluginMedia$MyTranscodeThread;->start()V

    .line 260
    const-string v0, "TaskID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
