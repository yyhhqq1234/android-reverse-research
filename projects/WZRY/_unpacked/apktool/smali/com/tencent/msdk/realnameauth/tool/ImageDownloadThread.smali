.class public Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;
.super Ljava/lang/Thread;
.source "ImageDownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;,
        Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;
    }
.end annotation


# static fields
.field private static final FLAG_DOWNLOAD_FAIL:I = -0x1

.field private static final FLAG_DOWNLOAD_SUCCEED:I = 0x0

.field private static final MSG_CALLBACK:I = 0x1


# instance fields
.field private imageDownloadCallback:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;

.field private imageDownloadCallbackInMainThread:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

.field private imageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;)V
    .locals 2
    .param p2, "callback"    # Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;",
            ">;",
            "Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "imageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;>;"
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallback:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;

    .line 29
    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallbackInMainThread:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

    .line 144
    new-instance v0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;-><init>(Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->mainHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageInfos:Ljava/util/ArrayList;

    .line 46
    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallback:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;)V
    .locals 2
    .param p2, "callback"    # Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;",
            ">;",
            "Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "imageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;>;"
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallback:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;

    .line 29
    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallbackInMainThread:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

    .line 144
    new-instance v0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$1;-><init>(Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->mainHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageInfos:Ljava/util/ArrayList;

    .line 51
    iput-object p2, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallbackInMainThread:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;)Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallbackInMainThread:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallbackInMainThread;

    return-object v0
.end method

.method private sendCallback(I[B)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "data"    # [B

    .prologue
    .line 131
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallback:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageDownloadCallback:Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;

    invoke-interface {v1, p1, p2}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread$ImageDownloadCallback;->callback(I[B)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 138
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public downloadImage()V
    .locals 19

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->imageInfos:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;

    .line 56
    .local v10, "imageInfo":Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;
    const/4 v9, 0x0

    .line 57
    .local v9, "imageData":[B
    const/4 v11, 0x0

    .line 58
    .local v11, "inStream":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 60
    .local v13, "outStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "start download, url:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 61
    new-instance v15, Ljava/net/URL;

    iget-object v0, v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 63
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v17, 0x1388

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 64
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    const-string v17, "Accept"

    const-string v18, "image/*, */*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v17, "Charset"

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 69
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 70
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    .local v14, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x1000

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 72
    .local v3, "buffer":[B
    const/4 v12, 0x0

    .line 73
    .local v12, "len":I
    :goto_1
    invoke-virtual {v11, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_3

    .line 74
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    .line 84
    .end local v3    # "buffer":[B
    .end local v12    # "len":I
    :catch_0
    move-exception v5

    move-object v13, v14

    .line 85
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v14    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->sendCallback(I[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    if-eqz v11, :cond_0

    .line 90
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 92
    :cond_0
    if-eqz v13, :cond_1

    .line 93
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 101
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-nez v9, :cond_8

    .line 128
    .end local v9    # "imageData":[B
    .end local v10    # "imageInfo":Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;
    .end local v11    # "inStream":Ljava/io/InputStream;
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    return-void

    .line 77
    .restart local v3    # "buffer":[B
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "imageData":[B
    .restart local v10    # "imageInfo":Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;
    .restart local v11    # "inStream":Ljava/io/InputStream;
    .restart local v12    # "len":I
    .restart local v14    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :cond_3
    :try_start_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 78
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "download succeed, len:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", url:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->imageUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    .line 79
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->sendCallback(I[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v13, v14

    .line 89
    .end local v3    # "buffer":[B
    .end local v12    # "len":I
    .end local v14    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_4
    if-eqz v11, :cond_4

    .line 90
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 92
    :cond_4
    if-eqz v13, :cond_1

    .line 93
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 95
    :catch_1
    move-exception v5

    .line 96
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 81
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "download error, response code:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logError(Ljava/lang/String;)V

    .line 82
    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->sendCallback(I[B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 84
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    goto/16 :goto_2

    .line 95
    .local v5, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 96
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 88
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 89
    :goto_5
    if-eqz v11, :cond_6

    .line 90
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 92
    :cond_6
    if-eqz v13, :cond_7

    .line 93
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 97
    :cond_7
    :goto_6
    throw v16

    .line 95
    :catch_4
    move-exception v5

    .line 96
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 104
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 106
    .local v7, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 107
    const-string v17, "file exists, would override"

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logWarn(Ljava/lang/String;)V

    .line 110
    :cond_9
    :try_start_8
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 111
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 112
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 116
    if-eqz v8, :cond_c

    .line 118
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    move-object v7, v8

    .line 124
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_a
    :goto_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "save succeed, name:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v10, Lcom/tencent/msdk/realnameauth/model/ImageDownloadInfo;->fileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", len:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v9

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/tencent/msdk/realnameauth/tool/PluginUtil;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    .line 120
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 121
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 113
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 114
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 116
    if-eqz v7, :cond_a

    .line 118
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_7

    .line 119
    :catch_7
    move-exception v5

    .line 120
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 116
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    :goto_9
    if-eqz v7, :cond_b

    .line 118
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 121
    :cond_b
    :goto_a
    throw v16

    .line 119
    :catch_8
    move-exception v5

    .line 120
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 116
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 113
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v5

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 88
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v14    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v16

    move-object v13, v14

    .end local v14    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "outStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_c
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7
.end method

.method public run()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/tencent/msdk/realnameauth/tool/ImageDownloadThread;->downloadImage()V

    .line 42
    return-void
.end method
