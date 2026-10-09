.class public Lcom/tencent/midas/comm/log/processor/APLogWriter;
.super Ljava/lang/Object;
.source "APLogWriter.java"


# instance fields
.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private mappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 23
    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 24
    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public static create()Lcom/tencent/midas/comm/log/processor/APLogWriter;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;

    invoke-direct {v0}, Lcom/tencent/midas/comm/log/processor/APLogWriter;-><init>()V

    .line 30
    .local v0, "writer":Lcom/tencent/midas/comm/log/processor/APLogWriter;
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->openLogFile()V

    .line 32
    return-object v0
.end method

.method private openLogFile()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    const-string v1, "MidasComm<Log>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/midas/comm/log/APLogFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/tencent/midas/comm/log/APLogFileInfo;->fileName:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 40
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->fileChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshFileChannel(J)J
    .locals 11
    .param p1, "sizeToWrite"    # J

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    .line 85
    .local v0, "channelSize":J
    :try_start_0
    iget-object v5, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 93
    :goto_0
    add-long v6, p1, v0

    .line 94
    .local v6, "sizeAll":J
    sget v5, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->MAX_LOG_SIZE_MB:I

    mul-int/lit16 v5, v5, 0x400

    mul-int/lit16 v5, v5, 0x400

    int-to-long v8, v5

    sub-long v2, v6, v8

    .line 95
    .local v2, "diff":J
    const-string v5, "MidasComm<Log>"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size to write: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", channel size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 97
    const-string v5, "MidasComm<Log>"

    const-string v8, "should refresh file name"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/tencent/midas/comm/log/APLogFileInfo;->updateFileName()V

    .line 99
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->openLogFile()V

    .line 100
    const-wide/16 v0, 0x0

    .line 102
    :cond_0
    return-wide v0

    .line 86
    .end local v2    # "diff":J
    .end local v6    # "sizeAll":J
    :catch_0
    move-exception v4

    .line 87
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    const-string v5, "MidasComm<Log>"

    const-string v8, "get file channel size error"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/tencent/midas/comm/log/APLogFileInfo;->updateFileName()V

    .line 90
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->openLogFile()V

    .line 91
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 121
    iget-object v1, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_2
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 109
    :cond_0
    return-void
.end method

.method public write([B[B[B)V
    .locals 17
    .param p1, "bytes"    # [B
    .param p2, "flagBegin"    # [B
    .param p3, "flagEnd"    # [B

    .prologue
    .line 54
    :try_start_0
    move-object/from16 v0, p1

    array-length v2, v0

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->refreshFileChannel(J)J

    move-result-wide v4

    .line 56
    .local v4, "pos":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 58
    .local v8, "current":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->fileChannel:Ljava/nio/channels/FileChannel;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p2

    array-length v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p3

    array-length v7, v0

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v8

    .line 62
    .local v12, "mapTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogWriter;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, v8

    .line 71
    .local v14, "syncTime":J
    const-string v2, "MidasComm<Log>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "write map time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", sync time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v2, Lcom/tencent/midas/comm/log/APLogFileInfo;->dirName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/midas/comm/log/util/APLogFileUtil;->deleteOldFileToday(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v4    # "pos":J
    .end local v8    # "current":J
    .end local v12    # "mapTime":J
    .end local v14    # "syncTime":J
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v10

    .line 76
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v2

    const-string v3, "sdk.log.error.write"

    const-string v6, "%s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v11

    const/4 v11, 0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
