.class public Lcom/standardar/common/ClientProxy;
.super Ljava/lang/Object;
.source "ClientProxy.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.standardar.service"

.field private static final SEND_COMMAND_REQUEST_SUPPORT:I = 0x4

.field private static final SERVICE_ACTION_NAME:Ljava/lang/String; = "com.standardar.service.standarservice"

.field public static mInstance:Lcom/standardar/common/ClientProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/standardar/service/aidl/IDataFlowInterface;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/standardar/common/ClientProxy$1;

    invoke-direct {v0, p0}, Lcom/standardar/common/ClientProxy$1;-><init>(Lcom/standardar/common/ClientProxy;)V

    iput-object v0, p0, Lcom/standardar/common/ClientProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/standardar/common/ClientProxy;Lcom/standardar/service/aidl/IDataFlowInterface;)Lcom/standardar/service/aidl/IDataFlowInterface;
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/ClientProxy;
    .param p1, "x1"    # Lcom/standardar/service/aidl/IDataFlowInterface;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/standardar/common/ClientProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-class v1, Lcom/standardar/common/ClientProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/standardar/common/ClientProxy;->mInstance:Lcom/standardar/common/ClientProxy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/standardar/common/ClientProxy;

    invoke-direct {v0}, Lcom/standardar/common/ClientProxy;-><init>()V

    sput-object v0, Lcom/standardar/common/ClientProxy;->mInstance:Lcom/standardar/common/ClientProxy;

    .line 34
    sget-object v0, Lcom/standardar/common/ClientProxy;->mInstance:Lcom/standardar/common/ClientProxy;

    iput-object p0, v0, Lcom/standardar/common/ClientProxy;->mContext:Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/standardar/common/ClientProxy;->mInstance:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v0}, Lcom/standardar/common/ClientProxy;->bindService()V

    .line 37
    :cond_0
    sget-object v0, Lcom/standardar/common/ClientProxy;->mInstance:Lcom/standardar/common/ClientProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bindService()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.standardar.service.standarservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.standardar.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/standardar/common/ClientProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v3, p0, Lcom/standardar/common/ClientProxy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 56
    return-void
.end method

.method public isServiceConnnect()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processFrame([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    invoke-interface {v0, p1}, Lcom/standardar/service/aidl/IDataFlowInterface;->processFrame([B)[B

    move-result-object v0

    return-object v0
.end method

.method public processFrameShareMemory(Landroid/os/ParcelFileDescriptor;I)[B
    .locals 1
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    invoke-interface {v0, p1, p2}, Lcom/standardar/service/aidl/IDataFlowInterface;->processFrameShareMemory(Landroid/os/ParcelFileDescriptor;I)[B

    move-result-object v0

    return-object v0
.end method

.method public processFrameShareMemoryV27()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    invoke-interface {v0}, Lcom/standardar/service/aidl/IDataFlowInterface;->processFrameShareMemoryV27()[B

    move-result-object v0

    return-object v0
.end method

.method public requestSupport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "certVersion"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "autorityStatusWorld"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v4, v6, :cond_1

    .line 92
    iget-object v6, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    if-eqz v6, :cond_0

    .line 93
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v2, v6

    .line 94
    .local v2, "certLength":I
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v5, v6

    .line 95
    .local v5, "pkgLength":I
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v0, v6

    .line 96
    .local v0, "autorityLength":I
    add-int/lit8 v6, v2, 0xc

    add-int/2addr v6, v5

    add-int/2addr v6, v0

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 98
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 101
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    :try_start_0
    iget-object v6, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    const/4 v7, 0x4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/standardar/service/aidl/IDataFlowInterface;->sendCommand(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 116
    .end local v0    # "autorityLength":I
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "certLength":I
    .end local v5    # "pkgLength":I
    :goto_1
    return v6

    .line 105
    .restart local v0    # "autorityLength":I
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "certLength":I
    .restart local v5    # "pkgLength":I
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    .end local v0    # "autorityLength":I
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "certLength":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "pkgLength":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 111
    :catch_1
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 116
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public sendCommand(I[B)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    invoke-interface {v0, p1, p2}, Lcom/standardar/service/aidl/IDataFlowInterface;->sendCommand(I[B)I

    move-result v0

    return v0
.end method

.method public setupSharedMemory(Landroid/os/SharedMemory;I)V
    .locals 1
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p2, "opt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mService:Lcom/standardar/service/aidl/IDataFlowInterface;

    invoke-interface {v0, p1, p2}, Lcom/standardar/service/aidl/IDataFlowInterface;->setupSharedMemory(Landroid/os/SharedMemory;I)V

    .line 76
    return-void
.end method

.method public stopService()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.standardar.service.standarservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.standardar.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 64
    return-void
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/standardar/common/ClientProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/standardar/common/ClientProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 60
    return-void
.end method
