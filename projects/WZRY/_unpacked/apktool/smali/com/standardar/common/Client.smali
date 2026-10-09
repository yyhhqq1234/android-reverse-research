.class public Lcom/standardar/common/Client;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/standardar/common/CameraSource$ICameraNotifyCallback;
.implements Lcom/standardar/common/IMUReader$ISensorNotifyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/common/Client$IMUData;,
        Lcom/standardar/common/Client$ClientHandler;
    }
.end annotation


# static fields
.field private static final DESTROY_SLAM:I = 0x3

.field private static final INIT_SLAM:I = 0x0

.field private static final MAX_IMU_SIZE:I = 0x190

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.standardar.service"

.field private static final RESET_SLAM:I = 0x1

.field private static final RETRY_INIT_SLAM:I = 0x0

.field private static final RETRY_INIT_SLAM_TIME:I = 0x64

.field private static final RETRY_START_SLAM:I = 0x1

.field private static final RETRY_START_SLAM_TIME:I = 0x64

.field private static final SEND_COMMAND_OK:I = 0x0

.field private static final SERVICE_ACTION_NAME:Ljava/lang/String; = "com.standardar.service.standarservice"

.field private static final START_SLAM:I = 0x2

.field private static final USE_SHARED_MEMORY:Z = true


# instance fields
.field private mAccSize:I

.field private mCameraSource:Lcom/standardar/common/CameraSource;

.field private mClientHandler:Lcom/standardar/common/Client$ClientHandler;

.field private mClinetProxy:Lcom/standardar/common/ClientProxy;

.field private mContext:Landroid/content/Context;

.field private mDataLength:I

.field private mDatagram:Lcom/standardar/common/Datagram;

.field private mGravitySize:I

.field private mGyrSize:I

.field private mIMUDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/standardar/common/Client$IMUData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInitSlam:Z

.field private mNativeClientPtr:J

.field private mRVSize:I

.field private mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSensorLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLandroid/content/Context;Lcom/standardar/common/CameraSource;)V
    .locals 3
    .param p1, "nativeClient"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "cameraSource"    # Lcom/standardar/common/CameraSource;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    .line 50
    iput v2, p0, Lcom/standardar/common/Client;->mAccSize:I

    .line 51
    iput v2, p0, Lcom/standardar/common/Client;->mGyrSize:I

    .line 52
    iput v2, p0, Lcom/standardar/common/Client;->mRVSize:I

    .line 53
    iput v2, p0, Lcom/standardar/common/Client;->mGravitySize:I

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/Client;->mSensorLock:Ljava/lang/Object;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/standardar/common/Client;->mNativeClientPtr:J

    .line 61
    iput-boolean v2, p0, Lcom/standardar/common/Client;->mIsInitSlam:Z

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/standardar/common/Client;->mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Lcom/standardar/common/Datagram;

    invoke-direct {v0}, Lcom/standardar/common/Datagram;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    .line 67
    iput v2, p0, Lcom/standardar/common/Client;->mDataLength:I

    .line 89
    new-instance v0, Lcom/standardar/common/Client$ClientHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/standardar/common/Client$ClientHandler;-><init>(Lcom/standardar/common/Client;Lcom/standardar/common/Client$1;)V

    iput-object v0, p0, Lcom/standardar/common/Client;->mClientHandler:Lcom/standardar/common/Client$ClientHandler;

    .line 92
    iput-wide p1, p0, Lcom/standardar/common/Client;->mNativeClientPtr:J

    .line 93
    iput-object p3, p0, Lcom/standardar/common/Client;->mContext:Landroid/content/Context;

    .line 94
    iput-object p4, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    .line 95
    invoke-static {p3}, Lcom/standardar/common/ClientProxy;->getInstance(Landroid/content/Context;)Lcom/standardar/common/ClientProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    .line 96
    return-void
.end method

.method private native arProcessResultWithImage(J[B[B)V
.end method

.method private native arUpdateFrame(J)V
.end method

.method private bindService()V
    .locals 1

    .prologue
    .line 268
    const-string v0, "bind service"

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v0}, Lcom/standardar/common/ClientProxy;->bindService()V

    .line 270
    return-void
.end method

.method private clearIMUDataLock()V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/standardar/common/Client;->mSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    const-string v0, "clear imu data"

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/standardar/common/Client;->mAccSize:I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/standardar/common/Client;->mGyrSize:I

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/standardar/common/Client;->mRVSize:I

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/standardar/common/Client;->mGravitySize:I

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clipIMUData()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit16 v2, v2, -0x190

    iget-object v3, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    .line 113
    const/4 v1, 0x0

    iput v1, p0, Lcom/standardar/common/Client;->mGyrSize:I

    iput v1, p0, Lcom/standardar/common/Client;->mGravitySize:I

    iput v1, p0, Lcom/standardar/common/Client;->mAccSize:I

    iput v1, p0, Lcom/standardar/common/Client;->mRVSize:I

    .line 114
    iget-object v1, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/standardar/common/Client$IMUData;

    .line 115
    .local v0, "data":Lcom/standardar/common/Client$IMUData;
    iget v2, v0, Lcom/standardar/common/Client$IMUData;->mTag:I

    packed-switch v2, :pswitch_data_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/standardar/common/Client$IMUData;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_0
    iget v2, p0, Lcom/standardar/common/Client;->mAccSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/standardar/common/Client;->mAccSize:I

    goto :goto_0

    .line 121
    :pswitch_1
    iget v2, p0, Lcom/standardar/common/Client;->mGravitySize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/standardar/common/Client;->mGravitySize:I

    goto :goto_0

    .line 125
    :pswitch_2
    iget v2, p0, Lcom/standardar/common/Client;->mGyrSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/standardar/common/Client;->mGyrSize:I

    goto :goto_0

    .line 129
    :pswitch_3
    iget v2, p0, Lcom/standardar/common/Client;->mRVSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/standardar/common/Client;->mRVSize:I

    goto :goto_0

    .line 137
    .end local v0    # "data":Lcom/standardar/common/Client$IMUData;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clip imu data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/standardar/common/Client;->mAccSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/standardar/common/Client;->mGyrSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/standardar/common/Client;->mGravitySize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/standardar/common/Client;->mRVSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 138
    return-void

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private countTotalDataLength()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    .line 286
    invoke-virtual {v0}, Lcom/standardar/common/CameraSource;->getPreviewWidth()I

    move-result v0

    iget-object v1, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v1}, Lcom/standardar/common/CameraSource;->getPreviewHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    .line 290
    invoke-direct {p0}, Lcom/standardar/common/Client;->getMaxImuSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/standardar/common/Client;->mDataLength:I

    .line 291
    return-void
.end method

.method private displayFrameWidthResult([B[B)V
    .locals 2
    .param p1, "result"    # [B
    .param p2, "image"    # [B

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/standardar/common/Client;->mNativeClientPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/standardar/common/Client;->arProcessResultWithImage(J[B[B)V

    .line 264
    iget-object v0, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/standardar/common/CameraSource;->setImageReaderActive(Z)V

    .line 265
    return-void
.end method

.method private getMaxImuSize()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x3840

    .line 108
    .local v0, "length":I
    return v0
.end method

.method private isIMUDataOverFlow()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/standardar/common/Client;->mAccSize:I

    iget v1, p0, Lcom/standardar/common/Client;->mGravitySize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/standardar/common/Client;->mRVSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/standardar/common/Client;->mGyrSize:I

    add-int/2addr v0, v1

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIMUDataZero()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/standardar/common/Client;->mAccSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/standardar/common/Client;->mGravitySize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/standardar/common/Client;->mGyrSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/standardar/common/Client;->mRVSize:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private packFrameYUVData([BJJ)Ljava/nio/ByteBuffer;
    .locals 10
    .param p1, "image"    # [B
    .param p2, "exposureTime"    # J
    .param p4, "timestamp"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 402
    if-nez p1, :cond_0

    .line 403
    const-string v5, "packData: image is null!"

    invoke-static {v5}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    move-object v0, v4

    .line 439
    :goto_0
    return-object v0

    .line 406
    :cond_0
    iget-object v6, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v6}, Lcom/standardar/common/CameraSource;->getPreviewWidth()I

    move-result v6

    iget-object v7, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v7}, Lcom/standardar/common/CameraSource;->getPreviewHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v1, v6, 0x2

    .line 407
    .local v1, "imageLength":I
    iget-object v6, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    iget v7, p0, Lcom/standardar/common/Client;->mDataLength:I

    invoke-virtual {v6, v7}, Lcom/standardar/common/Datagram;->createBufferNeed(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 408
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buffer size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/standardar/common/Util;->LOGD(Ljava/lang/String;)V

    .line 409
    iget-object v6, p0, Lcom/standardar/common/Client;->mSensorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 410
    :try_start_0
    invoke-direct {p0}, Lcom/standardar/common/Client;->isIMUDataZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imu size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/standardar/common/Client;->mAccSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/standardar/common/Client;->mGravitySize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/standardar/common/Client;->mRVSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/standardar/common/Client;->mGyrSize:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 413
    monitor-exit v6

    move-object v0, v4

    goto/16 :goto_0

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/standardar/common/Client;->isIMUDataOverFlow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/standardar/common/Client;->clipIMUData()V

    .line 419
    :cond_2
    const/16 v4, 0xff1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 420
    const/16 v4, 0x1a1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 421
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 422
    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 423
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 424
    iget-object v4, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 425
    iget-object v4, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/standardar/common/Client$IMUData;

    .line 426
    .local v2, "imuData":Lcom/standardar/common/Client$IMUData;
    iget v4, v2, Lcom/standardar/common/Client$IMUData;->mTag:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 427
    iget-object v8, v2, Lcom/standardar/common/Client$IMUData;->mValue:[F

    array-length v9, v8

    move v4, v5

    :goto_2
    if-ge v4, v9, :cond_3

    aget v3, v8, v4

    .line 428
    .local v3, "value":F
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 427
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 430
    .end local v3    # "value":F
    :cond_3
    iget-wide v8, v2, Lcom/standardar/common/Client$IMUData;->mTimestamp:J

    invoke-virtual {v0, v8, v9}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 438
    .end local v2    # "imuData":Lcom/standardar/common/Client$IMUData;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 433
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 434
    const/4 v4, 0x0

    iput v4, p0, Lcom/standardar/common/Client;->mAccSize:I

    .line 435
    const/4 v4, 0x0

    iput v4, p0, Lcom/standardar/common/Client;->mRVSize:I

    .line 436
    const/4 v4, 0x0

    iput v4, p0, Lcom/standardar/common/Client;->mGravitySize:I

    .line 437
    const/4 v4, 0x0

    iput v4, p0, Lcom/standardar/common/Client;->mGyrSize:I

    .line 438
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private processFrameRemote(Ljava/nio/ByteBuffer;Z)[B
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "useShareMemory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v1}, Lcom/standardar/common/ClientProxy;->isServiceConnnect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    if-nez v1, :cond_1

    .line 194
    :cond_0
    const-string v1, "processFrameRemote mService or mCameraSource is null!"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 206
    :goto_0
    return-object v0

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 198
    .local v0, "result":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 199
    .local v2, "startTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start arservice-transfer "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 200
    if-eqz p2, :cond_2

    .line 201
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/standardar/common/Client;->processFrameRemoteSharedMemory([B)[B

    move-result-object v0

    .line 205
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processFrameRemote time : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/standardar/common/ClientProxy;->processFrame([B)[B

    move-result-object v0

    goto :goto_1
.end method

.method private processFrameRemoteSharedMemory([B)[B
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    const/4 v2, 0x0

    .line 468
    :goto_0
    return-object v2

    .line 446
    :cond_0
    const/4 v2, 0x0

    .line 447
    .local v2, "result":[B
    const/16 v3, 0x1a

    invoke-static {v3}, Lcom/standardar/common/Util;->checkAndroidExceed(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 450
    :try_start_0
    iget-object v3, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    invoke-virtual {v3, p1}, Lcom/standardar/common/Datagram;->fillSharedMemoryBufferV27([B)V

    .line 454
    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v3}, Lcom/standardar/common/ClientProxy;->processFrameShareMemoryV27()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    invoke-virtual {v3, p1}, Lcom/standardar/common/Datagram;->packDataShareMemory([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 463
    .local v1, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    array-length v4, p1

    invoke-virtual {v3, v1, v4}, Lcom/standardar/common/ClientProxy;->processFrameShareMemory(Landroid/os/ParcelFileDescriptor;I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 464
    .end local v1    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 465
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopService()V
    .locals 1

    .prologue
    .line 278
    const-string v0, "stop service"

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v0}, Lcom/standardar/common/ClientProxy;->stopService()V

    .line 280
    return-void
.end method

.method private unbindSerice()V
    .locals 1

    .prologue
    .line 273
    const-string/jumbo v0, "unbind service"

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v0}, Lcom/standardar/common/ClientProxy;->unbindService()V

    .line 275
    return-void
.end method


# virtual methods
.method public destroySLAM()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 381
    const-string v3, "Destroy SLAM"

    invoke-static {v3}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v3}, Lcom/standardar/common/ClientProxy;->isServiceConnnect()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/standardar/common/Client;->mIsInitSlam:Z

    if-eqz v3, :cond_2

    .line 383
    const/16 v3, 0x1a

    invoke-static {v3}, Lcom/standardar/common/Util;->checkAndroidExceed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    invoke-virtual {v3}, Lcom/standardar/common/Datagram;->releaseSharedMemory()V

    .line 386
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [B

    .line 387
    .local v1, "fakeByte":[B
    iget-object v3, p0, Lcom/standardar/common/Client;->mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 389
    :try_start_0
    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/standardar/common/ClientProxy;->sendCommand(I[B)I

    move-result v2

    .line 390
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy slam failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 393
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/standardar/common/Client;->mIsInitSlam:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v2    # "ret":I
    :goto_0
    invoke-direct {p0}, Lcom/standardar/common/Client;->clearIMUDataLock()V

    .line 399
    .end local v1    # "fakeByte":[B
    :cond_2
    return-void

    .line 394
    .restart local v1    # "fakeByte":[B
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public initSLAM()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 294
    const-string v6, "Init SLAM"

    invoke-static {v6}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v6}, Lcom/standardar/common/ClientProxy;->isServiceConnnect()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/standardar/common/Client;->countTotalDataLength()V

    .line 297
    const/16 v6, 0x1a

    invoke-static {v6}, Lcom/standardar/common/Util;->checkAndroidExceed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    iget-object v6, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    iget v7, p0, Lcom/standardar/common/Client;->mDataLength:I

    invoke-virtual {v6, v7}, Lcom/standardar/common/Datagram;->createSharedMemoryV27(I)V

    .line 300
    :try_start_0
    iget-object v6, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    invoke-virtual {v6}, Lcom/standardar/common/Datagram;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    iget-object v7, p0, Lcom/standardar/common/Client;->mDatagram:Lcom/standardar/common/Datagram;

    invoke-virtual {v7}, Lcom/standardar/common/Datagram;->getSharedMemory()Landroid/os/SharedMemory;

    move-result-object v7

    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    sget v9, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/standardar/common/ClientProxy;->setupSharedMemory(Landroid/os/SharedMemory;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v6}, Lcom/standardar/common/CameraSource;->getPreviewWidth()I

    move-result v5

    .line 310
    .local v5, "w":I
    iget-object v6, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v6}, Lcom/standardar/common/CameraSource;->getPreviewHeight()I

    move-result v3

    .line 311
    .local v3, "h":I
    iget-object v6, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v6}, Lcom/standardar/common/CameraSource;->getFovH()F

    move-result v2

    .line 313
    .local v2, "fovh":F
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 314
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 316
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 318
    :try_start_1
    iget-object v6, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/standardar/common/ClientProxy;->sendCommand(I[B)I

    move-result v4

    .line 319
    .local v4, "ret":I
    if-eqz v4, :cond_1

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init slam failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "fovh":F
    .end local v3    # "h":I
    .end local v4    # "ret":I
    .end local v5    # "w":I
    :goto_1
    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "fovh":F
    .restart local v3    # "h":I
    .restart local v5    # "w":I
    :catch_1
    move-exception v1

    .line 324
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v6, "send command failed:0"

    invoke-static {v6}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 326
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/standardar/common/Client;->mIsInitSlam:Z

    .line 327
    invoke-direct {p0}, Lcom/standardar/common/Client;->clearIMUDataLock()V

    goto :goto_1

    .line 329
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "fovh":F
    .end local v3    # "h":I
    .end local v5    # "w":I
    :cond_2
    invoke-direct {p0}, Lcom/standardar/common/Client;->bindService()V

    .line 330
    iget-object v6, p0, Lcom/standardar/common/Client;->mClientHandler:Lcom/standardar/common/Client$ClientHandler;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Lcom/standardar/common/Client$ClientHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 331
    const-string v6, "Retry init slam in 100 ms"

    invoke-static {v6}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCameraNotify([BJJ)V
    .locals 6
    .param p1, "image"    # [B
    .param p2, "exposureTime"    # J
    .param p4, "timestamp"    # J

    .prologue
    const/4 v5, 0x1

    .line 153
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/standardar/common/Client;->mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    iget-wide v4, p0, Lcom/standardar/common/Client;->mNativeClientPtr:J

    const/4 v3, 0x0

    invoke-direct {p0, v4, v5, v3, p1}, Lcom/standardar/common/Client;->arProcessResultWithImage(J[B[B)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v3}, Lcom/standardar/common/ClientProxy;->isServiceConnnect()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    if-eqz v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/standardar/common/CameraSource;->setImageReaderActive(Z)V

    .line 165
    invoke-direct/range {p0 .. p5}, Lcom/standardar/common/Client;->packFrameYUVData([BJJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    .line 169
    iget-object v3, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    invoke-virtual {v3, v5}, Lcom/standardar/common/CameraSource;->setImageReaderActive(Z)V

    goto :goto_0

    .line 174
    :cond_3
    const/4 v2, 0x0

    .line 176
    .local v2, "result":[B
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/standardar/common/Client;->processFrameRemote(Ljava/nio/ByteBuffer;Z)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 182
    :goto_1
    if-eqz v2, :cond_0

    .line 187
    invoke-direct {p0, v2, p1}, Lcom/standardar/common/Client;->displayFrameWidthResult([B[B)V

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onSensorChanged([FIJ)V
    .locals 3
    .param p1, "values"    # [F
    .param p2, "tag"    # I
    .param p3, "timestamp"    # J

    .prologue
    .line 222
    iget-object v0, p0, Lcom/standardar/common/Client;->mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/standardar/common/Client;->mSensorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/Client;->mIMUDatas:Ljava/util/List;

    new-instance v2, Lcom/standardar/common/Client$IMUData;

    invoke-direct {v2, p1, p3, p4, p2}, Lcom/standardar/common/Client$IMUData;-><init>([FJI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    packed-switch p2, :pswitch_data_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown sensor tag "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 248
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/standardar/common/Client;->mAccSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/standardar/common/Client;->mAccSize:I

    goto :goto_1

    .line 233
    :pswitch_1
    iget v0, p0, Lcom/standardar/common/Client;->mGravitySize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/standardar/common/Client;->mGravitySize:I

    goto :goto_1

    .line 237
    :pswitch_2
    iget v0, p0, Lcom/standardar/common/Client;->mGyrSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/standardar/common/Client;->mGyrSize:I

    goto :goto_1

    .line 241
    :pswitch_3
    iget v0, p0, Lcom/standardar/common/Client;->mRVSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/standardar/common/Client;->mRVSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public startSLAM()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/4 v3, 0x1

    .line 336
    const-string v2, "Start SLAM"

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 337
    iget-boolean v2, p0, Lcom/standardar/common/Client;->mIsInitSlam:Z

    if-nez v2, :cond_0

    .line 338
    const-string v2, "Init SLAM is not finished"

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/standardar/common/Client;->mClientHandler:Lcom/standardar/common/Client$ClientHandler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/standardar/common/Client$ClientHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 360
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v2}, Lcom/standardar/common/ClientProxy;->isServiceConnnect()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    if-eqz v2, :cond_2

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/standardar/common/CameraSource;->setImageReaderActive(Z)V

    .line 345
    iget-object v2, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [B

    invoke-virtual {v2, v3, v4}, Lcom/standardar/common/ClientProxy;->sendCommand(I[B)I

    move-result v1

    .line 346
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start slam failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/standardar/common/Client;->clearIMUDataLock()V

    .line 351
    iget-object v2, p0, Lcom/standardar/common/Client;->mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 356
    .end local v1    # "ret":I
    :cond_2
    invoke-direct {p0}, Lcom/standardar/common/Client;->bindService()V

    .line 357
    iget-object v2, p0, Lcom/standardar/common/Client;->mClientHandler:Lcom/standardar/common/Client$ClientHandler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/standardar/common/Client$ClientHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 358
    const-string v2, "Retry start slam in 100 ms"

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopSLAM()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 363
    const-string v3, "Stop SLAM"

    invoke-static {v3}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    invoke-virtual {v3}, Lcom/standardar/common/ClientProxy;->isServiceConnnect()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/standardar/common/Client;->mIsInitSlam:Z

    if-eqz v3, :cond_1

    .line 365
    new-array v1, v4, [B

    .line 366
    .local v1, "fakeByte":[B
    iget-object v3, p0, Lcom/standardar/common/Client;->mSLAMStart:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/standardar/common/Client;->mCameraSource:Lcom/standardar/common/CameraSource;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/standardar/common/CameraSource;->setImageReaderActive(Z)V

    .line 369
    iget-object v3, p0, Lcom/standardar/common/Client;->mClinetProxy:Lcom/standardar/common/ClientProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/standardar/common/ClientProxy;->sendCommand(I[B)I

    move-result v2

    .line 370
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset slam failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v2    # "ret":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/standardar/common/Client;->clearIMUDataLock()V

    .line 378
    .end local v1    # "fakeByte":[B
    :cond_1
    return-void

    .line 373
    .restart local v1    # "fakeByte":[B
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
