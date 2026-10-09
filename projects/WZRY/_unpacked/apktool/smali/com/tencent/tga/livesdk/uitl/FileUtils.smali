.class public Lcom/tencent/tga/livesdk/uitl/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    const-string v0, "FileUtils"

    sput-object v0, Lcom/tencent/tga/livesdk/uitl/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ReadTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 497
    .local v1, "content":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 500
    :cond_0
    sget-object v8, Lcom/tencent/tga/livesdk/uitl/FileUtils;->TAG:Ljava/lang/String;

    const-string v9, "The File doesn\'t not exist."

    invoke-static {v8, v9}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 502
    :cond_2
    const/4 v5, 0x0

    .line 504
    .local v5, "instream":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    .end local v5    # "instream":Ljava/io/InputStream;
    .local v6, "instream":Ljava/io/InputStream;
    if-eqz v6, :cond_3

    .line 506
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v8, "utf-8"

    invoke-direct {v4, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 508
    .local v4, "inputreader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 511
    .local v0, "buffreader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 513
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 518
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v4    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v5, v6

    .line 522
    .end local v6    # "instream":Ljava/io/InputStream;
    .restart local v5    # "instream":Ljava/io/InputStream;
    :goto_2
    if-eqz v5, :cond_1

    .line 523
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 524
    :catch_1
    move-exception v2

    .line 525
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 522
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "instream":Ljava/io/InputStream;
    .restart local v6    # "instream":Ljava/io/InputStream;
    :cond_3
    if-eqz v6, :cond_1

    .line 523
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 524
    :catch_2
    move-exception v2

    .line 525
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 521
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "instream":Ljava/io/InputStream;
    .restart local v5    # "instream":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    .line 522
    :goto_3
    if-eqz v5, :cond_4

    .line 523
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 526
    :cond_4
    :goto_4
    throw v8

    .line 524
    :catch_3
    move-exception v2

    .line 525
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 521
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "instream":Ljava/io/InputStream;
    .restart local v6    # "instream":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "instream":Ljava/io/InputStream;
    .restart local v5    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 518
    :catch_4
    move-exception v8

    goto :goto_2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return v1

    .line 341
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v3}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5
    .param p0, "src"    # Ljava/io/InputStream;
    .param p1, "dest"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    .line 351
    const/16 v4, 0x800

    :try_start_0
    new-array v0, v4, [B

    .line 353
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesread":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 355
    if-lez v1, :cond_0

    .line 356
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 361
    .end local v0    # "buffer":[B
    .end local v1    # "bytesread":I
    :catch_0
    move-exception v2

    .line 363
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    .line 368
    invoke-static {p1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    .line 371
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v3

    .line 359
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesread":I
    :cond_1
    const/4 v3, 0x1

    .line 367
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    .line 368
    invoke-static {p1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    goto :goto_1

    .line 367
    .end local v0    # "buffer":[B
    .end local v1    # "bytesread":I
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    .line 368
    invoke-static {p1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static create(Ljava/io/File;)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const/4 v2, 0x1

    .line 73
    :goto_0
    return v2

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 69
    .local v0, "flag":Z
    if-nez v0, :cond_1

    .line 71
    const-string v2, "Algorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileUtils unCompress mkdirs fail . create :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    goto :goto_0
.end method

.method public static createFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->create(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    const/4 v3, 0x1

    .line 215
    :cond_0
    :goto_0
    return v3

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "subPaths":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 206
    array-length v5, v2

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 208
    .local v1, "subPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    .end local v1    # "subPath":Ljava/lang/String;
    .end local v2    # "subPaths":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_0
.end method

.method public static digest(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 435
    .local v2, "digest":[B
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/MD5;->encode(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 440
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 446
    :cond_0
    return-object v2

    .line 440
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v3

    .line 440
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize()J
    .locals 12

    .prologue
    .line 291
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, "state":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 294
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 295
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 296
    .local v7, "stat":Landroid/os/StatFs;
    invoke-static {v7}, Lcom/tencent/tga/livesdk/uitl/AndroidNewApi;->getBlockSizeLong(Landroid/os/StatFs;)J

    move-result-wide v4

    .line 297
    .local v4, "blockSize":J
    invoke-static {v7}, Lcom/tencent/tga/livesdk/uitl/AndroidNewApi;->getAvailableBlocks(Landroid/os/StatFs;)J

    move-result-wide v0

    .line 298
    .local v0, "availableBlocks":J
    mul-long v2, v0, v4

    .line 299
    .local v2, "availableSize":J
    const-wide/32 v10, 0x500000

    sub-long v10, v2, v10

    .line 301
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSize":J
    .end local v4    # "blockSize":J
    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v10

    :cond_0
    const-wide/16 v10, -0x1

    goto :goto_0
.end method

.method public static getXmlDocument(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "document":Lorg/w3c/dom/Document;
    const/4 v4, 0x0

    .line 264
    .local v4, "in":Ljava/io/FileInputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 267
    .local v1, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 269
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 271
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v4, v5

    .line 281
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :cond_0
    invoke-static {v4}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->close(Ljava/io/Closeable;)V

    move-object v3, v2

    .end local v2    # "document":Lorg/w3c/dom/Document;
    .local v3, "document":Lorg/w3c/dom/Document;
    move-object v6, v2

    .line 283
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    return-object v6

    .line 276
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v6

    .line 281
    :goto_1
    invoke-static {v4}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->close(Ljava/io/Closeable;)V

    .line 283
    const/4 v6, 0x0

    move-object v3, v2

    .end local v2    # "document":Lorg/w3c/dom/Document;
    .restart local v3    # "document":Lorg/w3c/dom/Document;
    goto :goto_0

    .line 281
    .end local v3    # "document":Lorg/w3c/dom/Document;
    .restart local v2    # "document":Lorg/w3c/dom/Document;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v4}, Lcom/tencent/tga/livesdk/uitl/IOUtils;->close(Ljava/io/Closeable;)V

    throw v6

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 276
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getXmlDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->getXmlDocument(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static mkdir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 226
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v5

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 233
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 235
    const-string v2, "Algorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileUtils unCompress mkdir fail . create :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 107
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 112
    :cond_0
    return v0
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "src":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "dest":Ljava/io/File;
    invoke-static {v2, v0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 89
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 91
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 94
    :cond_0
    return v1
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v4, v6

    .line 400
    .local v4, "len":I
    if-nez v4, :cond_0

    .line 402
    const/4 v5, 0x0

    new-array v2, v5, [B

    .line 419
    :goto_0
    return-object v2

    .line 405
    :cond_0
    const/4 v2, 0x0

    .line 406
    .local v2, "data":[B
    const/4 v0, 0x0

    .line 409
    .local v0, "bis":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 410
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-array v2, v4, [B

    .line 412
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 416
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    throw v5

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->readFile(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    new-array v1, v2, [B

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-array v1, v2, [B

    goto :goto_0
.end method

.method public static saveImg(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "quality"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    .line 460
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v4, v5

    .line 490
    :goto_0
    return v4

    .line 463
    :cond_1
    const/4 v4, 0x0

    .line 465
    .local v4, "success":Z
    const/4 v1, 0x0

    .line 468
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 470
    .local v3, "parentFile":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 487
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    move v4, v5

    .line 472
    goto :goto_0

    .line 475
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v1    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    if-nez p2, :cond_3

    :try_start_2
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 477
    :cond_3
    if-ltz p3, :cond_4

    if-gt p3, v6, :cond_4

    .line 478
    :goto_1
    invoke-virtual {p0, p2, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 479
    const/4 v4, 0x1

    .line 487
    invoke-static {v2}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 488
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :cond_4
    move p3, v6

    .line 477
    goto :goto_1

    .line 481
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "parentFile":Ljava/io/File;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    throw v5

    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "parentFile":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 481
    .end local v1    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 8
    .param p0, "destFilePath"    # Ljava/lang/String;
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v2, 0x0

    .line 163
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->createFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 183
    invoke-static {v2}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    .line 186
    :goto_0
    return v6

    .line 167
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    const/16 v4, 0x2000

    .line 170
    .local v4, "len":I
    :try_start_2
    new-array v0, v4, [B

    .line 171
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readCount":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 173
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 177
    .end local v0    # "buffer":[B
    .end local v5    # "readCount":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 179
    .end local v3    # "fos":Ljava/io/OutputStream;
    .end local v4    # "len":I
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    invoke-static {v2}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "len":I
    .restart local v5    # "readCount":I
    :cond_1
    const/4 v6, 0x1

    .line 183
    invoke-static {v3}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 175
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_0

    .line 183
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .end local v5    # "readCount":I
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    throw v6

    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "len":I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 177
    .end local v4    # "len":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static writeFile(Ljava/lang/String;[BII)Z
    .locals 4
    .param p0, "destFilePath"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "startPos"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 126
    const/4 v0, 0x0

    .line 129
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->createFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    .line 148
    :goto_0
    return v2

    .line 133
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    const/4 v2, 0x1

    .line 145
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 135
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v3

    .line 145
    :goto_1
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v3

    .line 145
    :goto_2
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_3
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/ResCloser;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 140
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 137
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
