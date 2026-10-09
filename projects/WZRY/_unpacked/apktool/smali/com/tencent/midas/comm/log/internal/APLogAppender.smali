.class public Lcom/tencent/midas/comm/log/internal/APLogAppender;
.super Ljava/lang/Object;
.source "APLogAppender.java"


# static fields
.field private static final AUTO_FLUSH_INTERVAL:I = 0x3a98

.field private static final BUFFER_BLOCK_SIZE:I = 0x25800

.field private static final POSITION_INIT:I = 0xc

.field private static stopAutoFlush:Z


# instance fields
.field private EMPTY_BUFFER:[B

.field private FLAG_BEGIN:Ljava/lang/String;

.field private FLAG_END:Ljava/lang/String;

.field private final SPACE:Ljava/lang/String;

.field private final _bytes:[B

.field private autoFlushThread:Ljava/lang/Thread;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private mCompressor:Lcom/tencent/midas/comm/log/processor/APLogCompressor;

.field private mEncryptor:Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

.field private mWriter:Lcom/tencent/midas/comm/log/processor/APLogWriter;

.field private mappedByteBuffer:Ljava/nio/MappedByteBuffer;

.field private randomAccessFile:Ljava/io/RandomAccessFile;

.field private volatile seq:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->stopAutoFlush:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mCompressor:Lcom/tencent/midas/comm/log/processor/APLogCompressor;

    .line 27
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mEncryptor:Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

    .line 28
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mWriter:Lcom/tencent/midas/comm/log/processor/APLogWriter;

    .line 30
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 31
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 32
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    .line 34
    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->autoFlushThread:Ljava/lang/Thread;

    .line 39
    const-wide/16 v0, 0xc

    iput-wide v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->_bytes:[B

    .line 44
    const-string v0, " "

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->SPACE:Ljava/lang/String;

    .line 45
    const v0, 0x25800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->EMPTY_BUFFER:[B

    .line 46
    const-string v0, "============mmap cache begin===========\r\n"

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->FLAG_BEGIN:Ljava/lang/String;

    .line 47
    const-string v0, "============mmap cache end=============\r\n"

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->FLAG_END:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->stopAutoFlush:Z

    return v0
.end method

.method private declared-synchronized checkAndFlushBuffer()V
    .locals 8

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    .line 180
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 182
    .local v1, "position":I
    const/16 v2, 0xc

    if-gt v1, v2, :cond_1

    .line 183
    const-wide/16 v2, 0xc

    iput-wide v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v1    # "position":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v2

    const-string v3, "sdk.log.error.flush"

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 186
    .restart local v1    # "position":I
    :cond_1
    add-int/lit8 v2, v1, -0xc

    :try_start_3
    invoke-direct {p0, v2}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->flushBuffer(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createBufferProcessor()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->isCompressLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->create()Lcom/tencent/midas/comm/log/processor/APLogCompressor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mCompressor:Lcom/tencent/midas/comm/log/processor/APLogCompressor;

    .line 96
    :cond_0
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->isEncryptLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->create()Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mEncryptor:Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

    .line 99
    :cond_1
    invoke-static {}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->create()Lcom/tencent/midas/comm/log/processor/APLogWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mWriter:Lcom/tencent/midas/comm/log/processor/APLogWriter;

    .line 100
    return-void
.end method

.method private flushBuffer(I)V
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/16 v6, 0xc

    .line 193
    const v3, 0x25800

    if-le p1, v3, :cond_0

    .line 194
    const p1, 0x25800

    .line 196
    :cond_0
    new-array v0, p1, [B

    .line 198
    .local v0, "data":[B
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 200
    const-string v3, "MidasComm<Log>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "__flush and write data size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->FLAG_BEGIN:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->process(Ljava/lang/String;)[B

    move-result-object v1

    .line 203
    .local v1, "flagBegin":[B
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->FLAG_END:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->process(Ljava/lang/String;)[B

    move-result-object v2

    .line 204
    .local v2, "flagEnd":[B
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mWriter:Lcom/tencent/midas/comm/log/processor/APLogWriter;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->write([B[B[B)V

    .line 207
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v4, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->EMPTY_BUFFER:[B

    invoke-virtual {v3, v4, v6, p1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v3, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 210
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->resetPosAndSeq()V

    .line 211
    return-void
.end method

.method private initMmap()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->checkAndFlushBuffer()V

    .line 87
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v1, 0x8

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 89
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->resetPosAndSeq()V

    goto :goto_0
.end method

.method public static open()Lcom/tencent/midas/comm/log/internal/APLogAppender;
    .locals 3

    .prologue
    .line 57
    const-string v1, "MidasComm<Log>"

    const-string v2, "open log appender"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/tencent/midas/comm/log/internal/APLogAppender;

    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;-><init>()V

    .line 59
    .local v0, "instance":Lcom/tencent/midas/comm/log/internal/APLogAppender;
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->createBufferProcessor()V

    .line 60
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->openMmapFile()V

    .line 61
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->initMmap()V

    .line 62
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->startAutoFlush()V

    .line 63
    return-object v0
.end method

.method private openMmapFile()V
    .locals 7

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/tencent/midas/comm/log/APLogFileInfo;->mmapName:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 69
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 70
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->fileChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x25800

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v6

    .line 72
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v0

    const-string v1, "sdk.log.error.mmap.open"

    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized process(Ljava/lang/String;)[B
    .locals 8
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 158
    .local v0, "data":[B
    iget-object v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mCompressor:Lcom/tencent/midas/comm/log/processor/APLogCompressor;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mCompressor:Lcom/tencent/midas/comm/log/processor/APLogCompressor;

    invoke-virtual {v2, v0}, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->compress([B)[B

    move-result-object v0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mEncryptor:Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mEncryptor:Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

    invoke-virtual {v2, v0}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->encrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 168
    .end local v0    # "data":[B
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v2

    const-string v3, "sdk.log.error.process"

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->_bytes:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private resetPosAndSeq()V
    .locals 2

    .prologue
    .line 214
    const-wide/16 v0, 0xc

    iput-wide v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J

    .line 215
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    return-void
.end method

.method private startAutoFlush()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/midas/comm/APLog;->getLogInfo()Lcom/tencent/midas/comm/APLogInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APLogInfo;->isAutoFlush()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/midas/comm/log/internal/APLogAppender$1;

    invoke-direct {v1, p0}, Lcom/tencent/midas/comm/log/internal/APLogAppender$1;-><init>(Lcom/tencent/midas/comm/log/internal/APLogAppender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->autoFlushThread:Ljava/lang/Thread;

    .line 120
    iget-object v0, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->autoFlushThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 8
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->process(Ljava/lang/String;)[B

    move-result-object v0

    .line 132
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->updateMmap([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v2

    const-string v3, "sdk.log.error.append"

    const-string v4, "%s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flushAndWrite()V
    .locals 7

    .prologue
    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->checkAndFlushBuffer()V

    .line 222
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mWriter:Lcom/tencent/midas/comm/log/processor/APLogWriter;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mWriter:Lcom/tencent/midas/comm/log/processor/APLogWriter;

    invoke-virtual {v1}, Lcom/tencent/midas/comm/log/processor/APLogWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->getInstance()Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    move-result-object v1

    const-string v2, "sdk.log.error.flush"

    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;->report(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized updateMmap([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    .line 141
    .local v0, "length":I
    iget-wide v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x19000

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/internal/APLogAppender;->checkAndFlushBuffer()V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    iget-wide v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J

    array-length v1, p1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J

    .line 146
    iget-object v1, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->mappedByteBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/tencent/midas/comm/log/internal/APLogAppender;->seq:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 139
    .end local v0    # "length":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
