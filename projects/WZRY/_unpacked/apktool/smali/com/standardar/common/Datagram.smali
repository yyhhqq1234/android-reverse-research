.class public Lcom/standardar/common/Datagram;
.super Ljava/lang/Object;
.source "Datagram.java"


# static fields
.field private static final SHAREMEMORY_FILE:Ljava/lang/String; = "com.standardar.service.sharememory"


# instance fields
.field private mDataBuffer:Ljava/nio/ByteBuffer;

.field private mParceServiceShareFile:Landroid/os/ParcelFileDescriptor;

.field private mServiceShareMemory:Landroid/os/MemoryFile;

.field private mSharedMemory:Landroid/os/SharedMemory;

.field private mSharedMemoryBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private closeMemoryFile(Landroid/os/MemoryFile;)V
    .locals 0
    .param p1, "file"    # Landroid/os/MemoryFile;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    goto :goto_0
.end method

.method private closeParceFile(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createMemFileNeed(I)Landroid/os/MemoryFile;
    .locals 6
    .param p1, "length"    # I

    .prologue
    .line 91
    iget-object v3, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    invoke-virtual {v3}, Landroid/os/MemoryFile;->length()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 92
    iget-object v3, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    .line 103
    :goto_0
    return-object v3

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/standardar/common/Datagram;->releaseMemoryFile()V

    .line 96
    :try_start_0
    new-instance v3, Landroid/os/MemoryFile;

    const-string v4, "com.standardar.service.sharememory"

    invoke-direct {v3, v4, p1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    .line 97
    const-class v3, Landroid/os/MemoryFile;

    const-string v4, "getFileDescriptor"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileDescriptor;

    .line 99
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/standardar/common/Datagram;->mParceServiceShareFile:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_1
    iget-object v3, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private releaseMemoryFile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mParceServiceShareFile:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Lcom/standardar/common/Datagram;->closeParceFile(Landroid/os/ParcelFileDescriptor;)V

    .line 112
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    invoke-direct {p0, v0}, Lcom/standardar/common/Datagram;->closeMemoryFile(Landroid/os/MemoryFile;)V

    .line 113
    iput-object v1, p0, Lcom/standardar/common/Datagram;->mParceServiceShareFile:Landroid/os/ParcelFileDescriptor;

    .line 114
    iput-object v1, p0, Lcom/standardar/common/Datagram;->mServiceShareMemory:Landroid/os/MemoryFile;

    .line 115
    return-void
.end method


# virtual methods
.method public createBufferNeed(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 34
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    .line 38
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mDataBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public declared-synchronized createSharedMemoryV27(I)V
    .locals 2
    .param p1, "lenght"    # I

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    const-string v1, "com.standardar.service.sharememory"

    invoke-static {v1, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;

    .line 44
    iget-object v1, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_1
    invoke-virtual {v0}, Landroid/system/ErrnoException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    .end local v0    # "e":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized fillSharedMemoryBufferV27([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 59
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSharedMemory()Landroid/os/SharedMemory;
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public packData([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/standardar/common/Datagram;->createBufferNeed(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public packDataShareMemory([B)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 85
    :cond_0
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/standardar/common/Datagram;->createMemFileNeed(I)Landroid/os/MemoryFile;

    move-result-object v0

    .line 86
    .local v0, "memoryFile":Landroid/os/MemoryFile;
    array-length v1, p1

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 87
    iget-object v1, p0, Lcom/standardar/common/Datagram;->mParceServiceShareFile:Landroid/os/ParcelFileDescriptor;

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/standardar/common/Datagram;->releaseMemoryFile()V

    .line 108
    return-void
.end method

.method public declared-synchronized releaseSharedMemory()V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 67
    iget-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemory:Landroid/os/SharedMemory;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/standardar/common/Datagram;->mSharedMemoryBuffer:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
