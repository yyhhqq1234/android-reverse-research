.class public Lcom/tencent/component/debug/FileTracerReader;
.super Ljava/lang/Object;
.source "FileTracerReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/debug/FileTracerReader$ReaderCallback;
    }
.end annotation


# static fields
.field private static final DEF_BUFFER_SIZE:I = 0x2000

.field public static final ZIP_FILE_EXT:Ljava/lang/String; = ".zip"


# instance fields
.field private config:Lcom/tencent/component/debug/FileTracerConfig;


# direct methods
.method public constructor <init>(Lcom/tencent/component/debug/FileTracer;)V
    .locals 1
    .param p1, "fileTracer"    # Lcom/tencent/component/debug/FileTracer;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/tencent/component/debug/FileTracer;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/component/debug/FileTracerReader;-><init>(Lcom/tencent/component/debug/FileTracerConfig;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/tencent/component/debug/FileTracerReader;->setConfig(Lcom/tencent/component/debug/FileTracerConfig;)V

    .line 64
    return-void
.end method

.method private doPack(JLjava/io/File;)Ljava/io/File;
    .locals 19
    .param p1, "time"    # J
    .param p3, "tempFolder"    # Ljava/io/File;

    .prologue
    .line 146
    const/4 v11, 0x0

    .line 148
    .local v11, "resu":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v14

    .line 150
    .local v14, "workFolder":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/tencent/component/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    .line 153
    .local v4, "blockFiles":[Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/component/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-direct {v13, v0, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v13, "tempFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 157
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 161
    :cond_0
    if-nez v4, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v12, v11

    .line 220
    .end local v11    # "resu":Ljava/io/File;
    .end local v13    # "tempFile":Ljava/io/File;
    .local v12, "resu":Ljava/io/File;
    :goto_1
    return-object v13

    .line 176
    .end local v12    # "resu":Ljava/io/File;
    .restart local v11    # "resu":Ljava/io/File;
    .restart local v13    # "tempFile":Ljava/io/File;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/tencent/component/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 181
    .local v5, "bos":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 183
    .local v10, "readLen":I
    const/16 v15, 0x2000

    new-array v7, v15, [B

    .line 187
    .local v7, "buffer":[B
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v15, Ljava/io/FileOutputStream;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v15, v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v6, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    array-length v0, v4

    move/from16 v16, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v15, 0x0

    move-object v3, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    :try_start_3
    aget-object v9, v4, v15

    .line 192
    .local v9, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 194
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :goto_3
    const/16 v17, 0x0

    :try_start_4
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    if-lez v10, :cond_2

    .line 199
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v7, v0, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 207
    .end local v9    # "file":Ljava/io/File;
    :catch_0
    move-exception v8

    move-object v5, v6

    .line 209
    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    .local v8, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    const/4 v11, 0x0

    .line 216
    invoke-static {v5}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 217
    invoke-static {v2}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .end local v8    # "e":Ljava/io/IOException;
    :goto_5
    move-object v12, v11

    .end local v11    # "resu":Ljava/io/File;
    .restart local v12    # "resu":Ljava/io/File;
    move-object v13, v11

    .line 220
    goto :goto_1

    .line 189
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v12    # "resu":Ljava/io/File;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v11    # "resu":Ljava/io/File;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object v3, v2

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 203
    .end local v9    # "file":Ljava/io/File;
    :cond_3
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 205
    move-object v11, v13

    .line 216
    invoke-static {v6}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 217
    invoke-static {v3}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 218
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 216
    :catchall_0
    move-exception v15

    :goto_6
    invoke-static {v5}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 217
    invoke-static {v2}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    throw v15

    .line 167
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "buffer":[B
    .end local v10    # "readLen":I
    :catch_1
    move-exception v15

    goto :goto_0

    .line 216
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v10    # "readLen":I
    :catchall_1
    move-exception v15

    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_6

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v15

    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 207
    :catch_2
    move-exception v8

    goto :goto_4

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v8

    move-object v5, v6

    .end local v6    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bos":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method


# virtual methods
.method public getConfig()Lcom/tencent/component/debug/FileTracerConfig;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tencent/component/debug/FileTracerReader;->config:Lcom/tencent/component/debug/FileTracerConfig;

    return-object v0
.end method

.method public pack(JLjava/io/File;)Ljava/io/File;
    .locals 1
    .param p1, "time"    # J
    .param p3, "tempFolder"    # Ljava/io/File;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/component/debug/FileTracerReader;->pack(JLjava/io/File;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public pack(JLjava/io/File;Z)Ljava/io/File;
    .locals 7
    .param p1, "time"    # J
    .param p3, "tempFolder"    # Ljava/io/File;
    .param p4, "needZip"    # Z

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/debug/FileTracerReader;->doPack(JLjava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 114
    .local v2, "resu":Ljava/io/File;
    if-nez v2, :cond_0

    .line 130
    :goto_0
    return-object v3

    .line 119
    :cond_0
    if-eqz p4, :cond_2

    .line 122
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "dest":Ljava/io/File;
    invoke-static {v2, v0}, Lcom/tencent/component/utils/FileUtil;->zip(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    .line 126
    .local v1, "isZipped":Z
    if-eqz v1, :cond_1

    .end local v0    # "dest":Ljava/io/File;
    :goto_1
    move-object v3, v0

    goto :goto_0

    .restart local v0    # "dest":Ljava/io/File;
    :cond_1
    move-object v0, v3

    goto :goto_1

    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "isZipped":Z
    :cond_2
    move-object v3, v2

    .line 130
    goto :goto_0
.end method

.method public read(J[BIIILcom/tencent/component/debug/FileTracerReader$ReaderCallback;)Z
    .locals 19
    .param p1, "time"    # J
    .param p3, "buffer"    # [B
    .param p4, "startFileIndex"    # I
    .param p5, "startDataIndex"    # I
    .param p6, "eachTimeReadLen"    # I
    .param p7, "callback"    # Lcom/tencent/component/debug/FileTracerReader$ReaderCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    if-nez p7, :cond_0

    .line 248
    const/4 v12, 0x0

    .line 329
    :goto_0
    return v12

    .line 252
    :cond_0
    if-nez p3, :cond_1

    .line 254
    const/16 v14, 0x2000

    new-array v0, v14, [B

    move-object/from16 p3, v0

    .line 258
    :cond_1
    move-object/from16 v0, p3

    array-length v14, v0

    move/from16 v0, p6

    if-le v0, v14, :cond_2

    .line 260
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 p6, v0

    .line 263
    :cond_2
    const/4 v12, 0x0

    .line 266
    .local v12, "resu":Z
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Lcom/tencent/component/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v13

    .line 268
    .local v13, "workFolder":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/tencent/component/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    .line 270
    .local v6, "blockFiles":[Ljava/io/File;
    if-nez v6, :cond_3

    .line 271
    const/4 v12, 0x0

    goto :goto_0

    .line 274
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/component/debug/FileTracerReader;->getConfig()Lcom/tencent/component/debug/FileTracerConfig;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/tencent/component/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    .line 276
    const/4 v4, 0x0

    .line 278
    .local v4, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 280
    .local v10, "readLen":I
    move/from16 v11, p5

    .line 284
    .local v11, "readSkip":I
    move/from16 v9, p4

    .local v9, "i":I
    move-object v5, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .local v5, "bis":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_0
    array-length v14, v6

    if-ge v9, v14, :cond_7

    .line 286
    aget-object v8, v6, v9

    .line 289
    .local v8, "file":Ljava/io/File;
    int-to-long v14, v11

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 291
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v14, v14

    sub-int/2addr v11, v14

    move-object v4, v5

    .line 284
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object v5, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 296
    :cond_4
    invoke-static {v5}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    .line 298
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    if-lez v11, :cond_5

    .line 303
    int-to-long v14, v11

    :try_start_1
    invoke-virtual {v4, v14, v15}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 304
    const/4 v11, 0x0

    .line 307
    :cond_5
    :goto_3
    const/4 v14, 0x0

    move-object/from16 v0, p3

    array-length v15, v0

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v10

    if-lez v10, :cond_6

    .line 310
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2, v10}, Lcom/tencent/component/debug/FileTracerReader$ReaderCallback;->onTraceRead(Lcom/tencent/component/debug/FileTracerReader;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 318
    :catch_0
    move-exception v7

    .line 320
    .end local v8    # "file":Ljava/io/File;
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_2
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    const/4 v12, 0x0

    .line 326
    invoke-static {v4}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    goto/16 :goto_0

    .line 315
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v8    # "file":Ljava/io/File;
    :cond_6
    const/4 v12, 0x1

    goto :goto_2

    .line 326
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "file":Ljava/io/File;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :cond_7
    invoke-static {v5}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    move-object v4, v5

    .line 327
    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 326
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v14

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    :goto_5
    invoke-static {v4}, Lcom/tencent/component/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)Z

    throw v14

    :catchall_1
    move-exception v14

    goto :goto_5

    .line 318
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "bis":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method

.method public setConfig(Lcom/tencent/component/debug/FileTracerConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/tencent/component/debug/FileTracerConfig;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/tencent/component/debug/FileTracerReader;->config:Lcom/tencent/component/debug/FileTracerConfig;

    .line 351
    return-void
.end method
