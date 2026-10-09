.class public Lcom/tencent/hawk/bridge/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkFileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 314
    const-class v2, Lcom/tencent/hawk/bridge/FileUtil;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 315
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    const/4 v1, 0x0

    .line 318
    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static cleanSpace(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x0

    .line 266
    .local v0, "counter":I
    array-length v6, v2

    move v5, v4

    :goto_1
    if-lt v5, v6, :cond_3

    .line 273
    const/16 v5, 0x14

    if-le v0, v5, :cond_2

    .line 274
    array-length v6, v2

    move v5, v4

    :goto_2
    if-lt v5, v6, :cond_6

    .line 278
    const-string v5, "TAPM_CM_AUDIT"

    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 281
    :cond_2
    array-length v6, v2

    move v5, v4

    :goto_3
    if-lt v5, v6, :cond_9

    .line 286
    const/4 v3, 0x0

    .line 293
    .local v3, "secounter":I
    array-length v6, v2

    move v5, v4

    :goto_4
    if-lt v5, v6, :cond_b

    .line 300
    const/16 v5, 0x50

    if-lt v3, v5, :cond_0

    .line 301
    array-length v5, v2

    :goto_5
    if-lt v4, v5, :cond_e

    .line 308
    const-string v4, "__SEAUDIT"

    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 266
    .end local v3    # "secounter":I
    :cond_3
    aget-object v1, v2, v5

    .line 269
    .local v1, "filename":Ljava/lang/String;
    const-string v7, "hawk_data.pre"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "comp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 270
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 266
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 274
    .end local v1    # "filename":Ljava/lang/String;
    :cond_6
    aget-object v1, v2, v5

    .line 275
    .restart local v1    # "filename":Ljava/lang/String;
    const-string v7, "hawk_data.pre"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "comp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 276
    :cond_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 274
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 281
    .end local v1    # "filename":Ljava/lang/String;
    :cond_9
    aget-object v1, v2, v5

    .line 282
    .restart local v1    # "filename":Ljava/lang/String;
    const-string v7, "hawk_data.pre_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "comp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 283
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 281
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 293
    .end local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "secounter":I
    :cond_b
    aget-object v1, v2, v5

    .line 294
    .restart local v1    # "filename":Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v7, "TAPM_INI"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "TAPM_TMP"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 295
    const-string v7, "TAPM_COM"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "TAPM_ERR"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 296
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 293
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 301
    .end local v1    # "filename":Ljava/lang/String;
    :cond_e
    aget-object v1, v2, v4

    .line 302
    .restart local v1    # "filename":Ljava/lang/String;
    if-eqz v1, :cond_10

    const-string v6, "TAPM_INI"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "TAPM_TMP"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 303
    const-string v6, "TAPM_COM"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "TAPM_ERR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 304
    :cond_f
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 301
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "srcpath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "bin":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 30
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 33
    .local v6, "len":I
    const/16 v8, 0x1000

    :try_start_2
    new-array v4, v8, [B

    .line 35
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 38
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    if-eqz v1, :cond_0

    .line 50
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 56
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 58
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 65
    :cond_1
    :goto_2
    const/4 v7, 0x1

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "len":I
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    :cond_2
    :goto_3
    return v7

    .line 36
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "len":I
    :cond_3
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v3, v4, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 40
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 42
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v6    # "len":I
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    if-eqz v0, :cond_4

    .line 50
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 56
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    if-eqz v2, :cond_2

    .line 58
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 59
    :catch_1
    move-exception v5

    .line 60
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 51
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 52
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 44
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 45
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 48
    if-eqz v0, :cond_5

    .line 50
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 56
    :cond_5
    :goto_7
    if-eqz v2, :cond_2

    .line 58
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 59
    :catch_4
    move-exception v5

    .line 60
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 51
    :catch_5
    move-exception v5

    .line 52
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 47
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 48
    :goto_8
    if-eqz v0, :cond_6

    .line 50
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 56
    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    .line 58
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 63
    :cond_7
    :goto_a
    throw v7

    .line 51
    :catch_6
    move-exception v5

    .line 52
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 59
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 60
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 51
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "len":I
    :catch_8
    move-exception v5

    .line 52
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 59
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 60
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 47
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 44
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v6    # "len":I
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :catch_b
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 40
    .end local v6    # "len":I
    :catch_c
    move-exception v5

    goto :goto_4

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method

.method public static copyFileWithCtx(Ljava/io/FileInputStream;Ljava/lang/String;)Z
    .locals 9
    .param p0, "srcfileInputStream"    # Ljava/io/FileInputStream;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "bin":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 74
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    if-eqz v1, :cond_0

    if-nez v3, :cond_4

    .line 96
    :cond_0
    if-eqz v1, :cond_1

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 105
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 111
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    :cond_3
    :goto_2
    return v7

    .line 99
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v5

    .line 100
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 107
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    .line 81
    .local v6, "len":I
    const/16 v8, 0x1000

    :try_start_4
    new-array v4, v8, [B

    .line 83
    .local v4, "buffer":[B
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_7

    .line 86
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 96
    if-eqz v1, :cond_5

    .line 98
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 103
    :cond_5
    :goto_4
    if-eqz v3, :cond_6

    .line 105
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 111
    :cond_6
    :goto_5
    const/4 v7, 0x1

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 84
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    :cond_7
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v3, v4, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 88
    .end local v4    # "buffer":[B
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 90
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v6    # "len":I
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 96
    if-eqz v0, :cond_8

    .line 98
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 103
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_8
    :goto_7
    if-eqz v2, :cond_3

    .line 105
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_2

    .line 106
    :catch_3
    move-exception v5

    .line 107
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 99
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 100
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 92
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 93
    .local v5, "e":Ljava/io/IOException;
    :goto_8
    :try_start_b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 96
    if-eqz v0, :cond_9

    .line 98
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 103
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    :goto_9
    if-eqz v2, :cond_3

    .line 105
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_2

    .line 106
    :catch_6
    move-exception v5

    .line 107
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 99
    .local v5, "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 100
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 95
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 96
    :goto_a
    if-eqz v0, :cond_a

    .line 98
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 103
    :cond_a
    :goto_b
    if-eqz v2, :cond_b

    .line 105
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 109
    :cond_b
    :goto_c
    throw v7

    .line 99
    :catch_8
    move-exception v5

    .line 100
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 106
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v5

    .line 107
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 99
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "len":I
    :catch_a
    move-exception v5

    .line 100
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 106
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v5

    .line 107
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 95
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "len":I
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_a

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_a

    .line 92
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v6    # "len":I
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_c
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :catch_d
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 88
    .end local v6    # "len":I
    :catch_e
    move-exception v5

    goto :goto_6

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6
.end method

.method public static declared-synchronized cpFileWithCtx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "dstPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 200
    const-class v11, Lcom/tencent/hawk/bridge/FileUtil;

    monitor-enter v11

    const/4 v7, 0x0

    .line 201
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 203
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 209
    if-nez v7, :cond_1

    .line 258
    :cond_0
    :goto_0
    monitor-exit v11

    return v10

    .line 204
    :catch_0
    move-exception v6

    .line 205
    .local v6, "e1":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local v6    # "e1":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 213
    :cond_1
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {p0, p2, v12}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 218
    if-eqz v8, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "bin":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 224
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 225
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_4
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 227
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    const/4 v9, 0x0

    .line 228
    .local v9, "len":I
    const/16 v12, 0x1000

    :try_start_5
    new-array v4, v12, [B

    .line 230
    .local v4, "buffer":[B
    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_4

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 242
    if-eqz v1, :cond_2

    .line 244
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 252
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 258
    :cond_3
    :goto_3
    const/4 v10, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v9    # "len":I
    :catch_1
    move-exception v6

    .line 215
    .restart local v6    # "e1":Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 231
    .end local v6    # "e1":Ljava/io/FileNotFoundException;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v9    # "len":I
    :cond_4
    const/4 v12, 0x0

    :try_start_9
    invoke-virtual {v3, v4, v12, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    .line 235
    .end local v4    # "buffer":[B
    :catch_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 236
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v9    # "len":I
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 242
    if-eqz v0, :cond_5

    .line 244
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 250
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_5
    if-eqz v2, :cond_0

    .line 252
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 253
    :catch_3
    move-exception v5

    .line 254
    .local v5, "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 245
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v5

    .line 246
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 238
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 239
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_e
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 242
    if-eqz v0, :cond_6

    .line 244
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 250
    :cond_6
    :goto_7
    if-eqz v2, :cond_0

    .line 252
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_0

    .line 253
    :catch_6
    move-exception v5

    .line 254
    :try_start_11
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 245
    :catch_7
    move-exception v5

    .line 246
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_7

    .line 241
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 242
    :goto_8
    if-eqz v0, :cond_7

    .line 244
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 250
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    .line 252
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 257
    :cond_8
    :goto_a
    :try_start_14
    throw v10

    .line 245
    :catch_8
    move-exception v5

    .line 246
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 253
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 254
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 245
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v9    # "len":I
    :catch_a
    move-exception v5

    .line 246
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 253
    .end local v5    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v5

    .line 254
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_3

    .line 241
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "len":I
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v9    # "len":I
    :catchall_3
    move-exception v10

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 238
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v9    # "len":I
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_c
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v9    # "len":I
    :catch_d
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 235
    .end local v9    # "len":I
    :catch_e
    move-exception v5

    goto :goto_4

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method

.method public static declared-synchronized deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 322
    const-class v2, Lcom/tencent/hawk/bridge/FileUtil;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 329
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 325
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 326
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "delete file failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static fread(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 116
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v6

    .line 120
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v5, "strBuf":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 123
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 126
    .local v4, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-nez v4, :cond_3

    .line 139
    if-eqz v1, :cond_2

    .line 141
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 148
    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 127
    :cond_3
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 130
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 132
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Read "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    if-eqz v0, :cond_0

    .line 141
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v2

    .line 144
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Close file error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 136
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Read "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    if-eqz v0, :cond_0

    .line 141
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 142
    :catch_3
    move-exception v2

    .line 144
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Close file error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 139
    :goto_5
    if-eqz v0, :cond_4

    .line 141
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 146
    :cond_4
    :goto_6
    throw v6

    .line 142
    :catch_4
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Close file error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_6

    .line 142
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 144
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Close file error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 134
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 130
    .end local v4    # "line":Ljava/lang/String;
    :catch_7
    move-exception v2

    goto/16 :goto_3
.end method

.method public static mvFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "srcpath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "bin":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 157
    .local v2, "bout":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v1, "bin":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .local v3, "bout":Ljava/io/BufferedOutputStream;
    const/4 v6, 0x0

    .line 160
    .local v6, "len":I
    const/16 v9, 0x1000

    :try_start_2
    new-array v4, v9, [B

    .line 162
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 165
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 167
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    if-eqz v1, :cond_0

    .line 180
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 186
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 188
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 195
    :cond_1
    :goto_2
    const/4 v8, 0x1

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":[B
    .end local v6    # "len":I
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    :cond_2
    :goto_3
    return v8

    .line 163
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "len":I
    :cond_3
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v3, v4, v9, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 170
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .line 172
    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .end local v6    # "len":I
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    if-eqz v0, :cond_4

    .line 180
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 186
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    if-eqz v2, :cond_2

    .line 188
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 189
    :catch_1
    move-exception v5

    .line 190
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 181
    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 182
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 174
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 175
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_9
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 178
    if-eqz v0, :cond_5

    .line 180
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 186
    :cond_5
    :goto_7
    if-eqz v2, :cond_2

    .line 188
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 189
    :catch_4
    move-exception v5

    .line 190
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 181
    :catch_5
    move-exception v5

    .line 182
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 177
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 178
    :goto_8
    if-eqz v0, :cond_6

    .line 180
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 186
    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    .line 188
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 193
    :cond_7
    :goto_a
    throw v8

    .line 181
    :catch_6
    move-exception v5

    .line 182
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 189
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 190
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 181
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v6    # "len":I
    .restart local v7    # "srcFile":Ljava/io/File;
    :catch_8
    move-exception v5

    .line 182
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 190
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .end local v4    # "buffer":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    .end local v7    # "srcFile":Ljava/io/File;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_8

    .line 174
    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v6    # "len":I
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .end local v2    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v6    # "len":I
    :catch_b
    move-exception v5

    move-object v2, v3

    .end local v3    # "bout":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bout":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 170
    .end local v6    # "len":I
    :catch_c
    move-exception v5

    goto :goto_4

    .end local v0    # "bin":Ljava/io/BufferedInputStream;
    .restart local v1    # "bin":Ljava/io/BufferedInputStream;
    :catch_d
    move-exception v5

    move-object v0, v1

    .end local v1    # "bin":Ljava/io/BufferedInputStream;
    .restart local v0    # "bin":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method

.method public static unpackZip(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)Z
    .locals 9
    .param p0, "fin"    # Ljava/io/FileInputStream;
    .param p1, "fout"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v6, 0x0

    .line 332
    const/4 v4, 0x0

    .line 334
    .local v4, "zis":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .local v5, "zis":Ljava/util/zip/ZipInputStream;
    if-nez v5, :cond_0

    move-object v4, v5

    .line 356
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_0
    return v6

    .line 338
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    const/4 v3, 0x0

    .line 339
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    const/16 v7, 0x1000

    :try_start_1
    new-array v0, v7, [B

    .line 340
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 342
    .local v1, "count":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_3

    .line 350
    if-eqz v5, :cond_1

    .line 351
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 356
    :cond_1
    const/4 v6, 0x1

    move-object v4, v5

    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    goto :goto_0

    .line 345
    .end local v4    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 344
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 347
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 348
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 352
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 353
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v5    # "zis":Ljava/util/zip/ZipInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unzip file failed : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/hawk/bridge/HawkLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_2
.end method
