.class public final Lim/yixin/sdk/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static fileToByteArray(Ljava/lang/String;)[B
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 26
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 28
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v9

    const-class v10, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toByteArray not exists fileName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    return-object v8

    .line 32
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 33
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 35
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v6, "in":Ljava/io/BufferedInputStream;
    const/16 v1, 0x400

    .line 37
    .local v1, "buf_size":I
    :try_start_1
    new-array v2, v1, [B

    .line 38
    .local v2, "buffer":[B
    const/4 v7, 0x0

    .line 39
    .local v7, "len":I
    :goto_1
    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v2, v10, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    if-ne v9, v7, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 48
    if-eqz v6, :cond_1

    .line 49
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v9

    const-class v10, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toByteArray error fileName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v3}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 40
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 43
    .end local v2    # "buffer":[B
    .end local v7    # "len":I
    :catch_1
    move-exception v3

    move-object v5, v6

    .line 44
    .end local v1    # "buf_size":I
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_4
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v9

    const-class v10, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toByteArray error fileName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v3}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    if-eqz v5, :cond_3

    .line 49
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 50
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 51
    :catch_2
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v9

    const-class v10, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toByteArray error fileName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v3}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 46
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 48
    :goto_3
    if-eqz v5, :cond_4

    .line 49
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 50
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 54
    :goto_4
    throw v8

    .line 51
    :catch_3
    move-exception v3

    .line 52
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v9

    const-class v10, Lim/yixin/sdk/util/SDKFeedBackUtils;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toByteArray error fileName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v3}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 46
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "buf_size":I
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 43
    .end local v1    # "buf_size":I
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public static zip([B)[B
    .locals 9
    .param p0, "data"    # [B

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    .local v5, "zipOut":Ljava/util/zip/ZipOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 68
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 69
    .local v4, "readCnt":I
    new-instance v6, Ljava/util/zip/ZipEntry;

    const-string v7, "imageData.jpg"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 70
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_0

    .line 73
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 75
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 76
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 78
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 81
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "readCnt":I
    .end local v5    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :goto_1
    return-object v6

    .line 71
    .restart local v0    # "buf":[B
    .restart local v2    # "in":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "readCnt":I
    .restart local v5    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "readCnt":I
    .end local v5    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v6

    const-class v7, Lim/yixin/sdk/util/SDKFeedBackUtils;

    const-string v8, "error when zip"

    invoke-virtual {v6, v7, v8, v1}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const/4 v6, 0x0

    goto :goto_1
.end method
