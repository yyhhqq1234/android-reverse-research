.class public Lcom/standardar/common/CameraSource;
.super Ljava/lang/Object;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/standardar/common/CameraSource$ICameraNotifyCallback;,
        Lcom/standardar/common/CameraSource$CameraSourceHandle;,
        Lcom/standardar/common/CameraSource$CameraOrientation;
    }
.end annotation


# static fields
.field public static final ARSERVICE_JAVA:I = 0x29

.field public static final AUTO_SELECT_ENGINE:I = 0x0

.field public static final CAMERA_DIRECTION_BACK:I = 0x1

.field public static final CAMERA_DIRECTION_DEFAULT:I = 0x0

.field public static final CAMERA_DIRECTION_DOUBLE:I = 0x3

.field public static final CAMERA_DIRECTION_FRONT:I = 0x2

.field private static final CAMERA_SOURCE_ANR:I = 0x0

.field private static final CAMERA_SOURCE_ANR_TIME:I = 0x3e8

.field public static final HAL_CAMERA_ENGINE:I = 0x4

.field public static final JAVA_CAMERA2_ENGINE:I = 0x1

.field public static final MULT_STREAM:I = 0x10

.field public static final NDK_CAMERA2_ENGINE:I = 0x2

.field public static final SINGLE_STREAM:I = 0x8

.field private static final STATE_CLOSE:I = 0x2

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static mImageBuf:[B

.field private static mInstance:Lcom/standardar/common/CameraSource;

.field private static mInstanceLock:Ljava/lang/Object;


# instance fields
.field private isCamerOpened:Z

.field private isPreviewing:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCallbackLock:Ljava/lang/Object;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCameraDirection:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraNotifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/standardar/common/CameraSource$ICameraNotifyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraOrientation:I

.field mCameraSourceHandler:Lcom/standardar/common/CameraSource$CameraSourceHandle;

.field private mCameraSourceThread:Landroid/os/HandlerThread;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurExposureTime:Ljava/lang/Long;

.field private mElapsetime:D

.field private mEnginePtr:J

.field private mEngineType:I

.field private mFPS:D

.field private mFPSRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFixExposureTime:Ljava/lang/Long;

.field private mFovH:F

.field private mFovV:F

.field private mFrameAvail:Z

.field private mFrameAvailLock:Ljava/lang/Object;

.field private mImageReader:Landroid/media/ImageReader;

.field public mImageReaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMaxExposureTime:Ljava/lang/Long;

.field private mMaxFocalLength:F

.field private mMaxSensitivity:Ljava/lang/Integer;

.field private mMinExposureTime:Ljava/lang/Long;

.field private mMinSensitivity:Ljava/lang/Integer;

.field private mOnFrameLinstener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mOnImageAvailableListenerClient:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mOnImageAvailableListenerMul:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mOnImageAvailableListenerSingle:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreHeight:I

.field private mPreWidth:I

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mSLAMHeight:I

.field private mSLAMWidth:I

.field private mSessionPtr:J

.field private mStarttime:J

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureId:I

.field private mUseSensorTimestamp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/standardar/common/CameraSource;->mInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionPtr"    # J
    .param p4, "enginePtr"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/standardar/common/CameraSource;->mState:I

    .line 79
    iput-boolean v3, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z

    .line 80
    const/16 v0, 0x280

    iput v0, p0, Lcom/standardar/common/CameraSource;->mPreWidth:I

    .line 81
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/standardar/common/CameraSource;->mPreHeight:I

    .line 83
    const/16 v0, 0x500

    iput v0, p0, Lcom/standardar/common/CameraSource;->mSLAMWidth:I

    .line 84
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/standardar/common/CameraSource;->mSLAMHeight:I

    .line 88
    iput v3, p0, Lcom/standardar/common/CameraSource;->mCameraOrientation:I

    .line 94
    iput-boolean v3, p0, Lcom/standardar/common/CameraSource;->isCamerOpened:Z

    .line 102
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 108
    iput-wide v4, p0, Lcom/standardar/common/CameraSource;->mSessionPtr:J

    .line 109
    iput-wide v4, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    .line 115
    iput v3, p0, Lcom/standardar/common/CameraSource;->mCount:I

    .line 116
    iput-wide v6, p0, Lcom/standardar/common/CameraSource;->mElapsetime:D

    .line 117
    iput-wide v4, p0, Lcom/standardar/common/CameraSource;->mStarttime:J

    .line 118
    iput-wide v6, p0, Lcom/standardar/common/CameraSource;->mFPS:D

    .line 120
    iput-boolean v1, p0, Lcom/standardar/common/CameraSource;->mUseSensorTimestamp:Z

    .line 125
    iput v3, p0, Lcom/standardar/common/CameraSource;->mTextureId:I

    .line 126
    iput-boolean v3, p0, Lcom/standardar/common/CameraSource;->mFrameAvail:Z

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mFrameAvailLock:Ljava/lang/Object;

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mMaxExposureTime:Ljava/lang/Long;

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mMinExposureTime:Ljava/lang/Long;

    .line 131
    const-wide/32 v0, 0x1312d00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCurExposureTime:Ljava/lang/Long;

    .line 132
    const-wide/32 v0, 0x989680

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mFixExposureTime:Ljava/lang/Long;

    .line 133
    new-instance v0, Landroid/util/Range;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mFPSRange:Landroid/util/Range;

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mMinSensitivity:Ljava/lang/Integer;

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mMaxSensitivity:Ljava/lang/Integer;

    .line 138
    iput v3, p0, Lcom/standardar/common/CameraSource;->mEngineType:I

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCallbackLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraNotifiers:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mImageReaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    iput v8, p0, Lcom/standardar/common/CameraSource;->mFovH:F

    .line 149
    iput v8, p0, Lcom/standardar/common/CameraSource;->mFovV:F

    .line 203
    new-instance v0, Lcom/standardar/common/CameraSource$1;

    invoke-direct {v0, p0}, Lcom/standardar/common/CameraSource$1;-><init>(Lcom/standardar/common/CameraSource;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 607
    new-instance v0, Lcom/standardar/common/CameraSource$3;

    invoke-direct {v0, p0}, Lcom/standardar/common/CameraSource$3;-><init>(Lcom/standardar/common/CameraSource;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mOnImageAvailableListenerMul:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 624
    new-instance v0, Lcom/standardar/common/CameraSource$4;

    invoke-direct {v0, p0}, Lcom/standardar/common/CameraSource$4;-><init>(Lcom/standardar/common/CameraSource;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mOnImageAvailableListenerSingle:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 641
    new-instance v0, Lcom/standardar/common/CameraSource$5;

    invoke-direct {v0, p0}, Lcom/standardar/common/CameraSource$5;-><init>(Lcom/standardar/common/CameraSource;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mOnImageAvailableListenerClient:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 759
    new-instance v0, Lcom/standardar/common/CameraSource$6;

    invoke-direct {v0, p0}, Lcom/standardar/common/CameraSource$6;-><init>(Lcom/standardar/common/CameraSource;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mOnFrameLinstener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 302
    iput-object p1, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    .line 303
    iput-wide p2, p0, Lcom/standardar/common/CameraSource;->mSessionPtr:J

    .line 304
    iput-wide p4, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    .line 305
    return-void
.end method

.method private static YUV420toNV21(Landroid/media/Image;)[B
    .locals 16
    .param p0, "image"    # Landroid/media/Image;

    .prologue
    .line 518
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v13

    const/16 v14, 0x23

    if-eq v13, v14, :cond_1

    .line 519
    :cond_0
    const-string/jumbo v13, "yuv420ToNv21, only support YUV_420_888"

    invoke-static {v13}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 520
    const/4 v13, 0x0

    .line 580
    :goto_0
    return-object v13

    .line 523
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v6

    .line 524
    .local v6, "imgWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 526
    .local v5, "imgHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 527
    .local v1, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v2

    .line 528
    .local v2, "format":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 529
    .local v11, "width":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 530
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 532
    .local v8, "planes":[Landroid/media/Image$Plane;
    mul-int v13, v11, v3

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v14

    mul-int/2addr v13, v14

    div-int/lit8 v0, v13, 0x8

    .line 533
    .local v0, "buflen":I
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    if-eqz v13, :cond_2

    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    array-length v13, v13

    if-eq v13, v0, :cond_3

    .line 534
    :cond_2
    new-array v13, v0, [B

    sput-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    .line 537
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 538
    .local v12, "yBuf":Ljava/nio/ByteBuffer;
    const/4 v13, 0x2

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 540
    .local v10, "uvBuf":Ljava/nio/ByteBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v14

    if-ne v13, v14, :cond_5

    .line 547
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    const/4 v14, 0x0

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 548
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-virtual {v10, v13, v14, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 580
    :cond_4
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    goto :goto_0

    .line 556
    :cond_5
    const/4 v4, 0x0

    .line 557
    .local v4, "idx":I
    const/4 v7, 0x0

    .line 558
    .local v7, "offset":I
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 561
    .local v9, "rowStride":I
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v5, :cond_7

    .line 562
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    invoke-virtual {v12, v13, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 564
    add-int/lit8 v13, v5, -0x1

    if-eq v4, v13, :cond_6

    .line 565
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int v14, v9, v6

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 561
    :cond_6
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v7, v6

    goto :goto_1

    .line 570
    :cond_7
    const/4 v4, 0x0

    :goto_2
    div-int/lit8 v13, v5, 0x2

    if-ge v4, v13, :cond_4

    .line 571
    div-int/lit8 v13, v5, 0x2

    add-int/lit8 v13, v13, -0x1

    if-eq v4, v13, :cond_8

    .line 572
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    invoke-virtual {v10, v13, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 573
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    sub-int v14, v9, v6

    add-int/2addr v13, v14

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 570
    :goto_3
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v7, v6

    goto :goto_2

    .line 575
    :cond_8
    sget-object v13, Lcom/standardar/common/CameraSource;->mImageBuf:[B

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v10, v13, v7, v14}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/standardar/common/CameraSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget v0, p0, Lcom/standardar/common/CameraSource;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/standardar/common/CameraSource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/standardar/common/CameraSource;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/standardar/common/CameraSource;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCurExposureTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Landroid/media/Image;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/standardar/common/CameraSource;->YUV420toNV21(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/standardar/common/CameraSource;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/standardar/common/CameraSource;->mCurExposureTime:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/standardar/common/CameraSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/standardar/common/CameraSource;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraNotifiers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/standardar/common/CameraSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mFrameAvailLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/standardar/common/CameraSource;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/standardar/common/CameraSource;->mFrameAvail:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/standardar/common/CameraSource;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/standardar/common/CameraSource;)Landroid/util/Range;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mFPSRange:Landroid/util/Range;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/standardar/common/CameraSource;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/standardar/common/CameraSource;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/standardar/common/CameraSource;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/standardar/common/CameraSource;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/standardar/common/CameraSource;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400(Lcom/standardar/common/CameraSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z

    return v0
.end method

.method static synthetic access$500(Lcom/standardar/common/CameraSource;)J
    .locals 2
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/standardar/common/CameraSource;->mSessionPtr:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/standardar/common/CameraSource;J)V
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/standardar/common/CameraSource;->arUpdate(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/standardar/common/CameraSource;Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/standardar/common/CameraSource;->getImageGrayByte(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/standardar/common/CameraSource;)Z
    .locals 1
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/standardar/common/CameraSource;->mUseSensorTimestamp:Z

    return v0
.end method

.method static synthetic access$900(Lcom/standardar/common/CameraSource;[BJ)V
    .locals 0
    .param p0, "x0"    # Lcom/standardar/common/CameraSource;
    .param p1, "x1"    # [B
    .param p2, "x2"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/standardar/common/CameraSource;->onPreviewFrame([BJ)V

    return-void
.end method

.method private adjustTime(J)D
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 950
    long-to-double v0, p1

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private native arProcessFrameNoImu(J[BIDD)V
.end method

.method private native arSetDisplaySize(JII)V
.end method

.method private native arSetFov(JFF)V
.end method

.method private native arSetSLAMSize(JII)V
.end method

.method private native arSetSupportPreviewSize(JLjava/lang/String;)V
.end method

.method private native arUpdate(J)V
.end method

.method private calcFov()V
    .locals 12

    .prologue
    .line 911
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 939
    :goto_0
    return-void

    .line 915
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    const-string v6, "camera"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 916
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 917
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v5, :cond_1

    .line 918
    const-string v5, "calc fov failed because camera device is null"

    invoke-static {v5}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 921
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    .line 922
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 923
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SizeF;

    .line 924
    .local v4, "physicalSize":Landroid/util/SizeF;
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v5, p0, Lcom/standardar/common/CameraSource;->mMaxFocalLength:F

    float-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/standardar/common/CameraSource;->mFovV:F

    .line 925
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    iget v5, p0, Lcom/standardar/common/CameraSource;->mMaxFocalLength:F

    float-to-double v10, v5

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, p0, Lcom/standardar/common/CameraSource;->mFovH:F

    .line 927
    const-string v5, "standardar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phsical width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 928
    invoke-virtual {v4}, Landroid/util/SizeF;->getHeight()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",fov horizontal:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/standardar/common/CameraSource;->mFovH:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",fov vertical:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/standardar/common/CameraSource;->mFovV:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 927
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 932
    .end local v0    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "physicalSize":Landroid/util/SizeF;
    :catch_0
    move-exception v2

    .line 933
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_2
    const-string v5, "Calc fov failed can not access camera."

    invoke-static {v5}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 937
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 934
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v2

    .line 935
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    throw v5
.end method

.method private cameraReadStart(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, "surfaceList":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    const-string v2, "Empty surface list"

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 857
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-boolean v2, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z

    if-eqz v2, :cond_1

    .line 805
    const-string v2, "Camera is already previewing"

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/standardar/common/CameraSource;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 813
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 814
    .local v1, "surface":Landroid/view/Surface;
    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 853
    .end local v1    # "surface":Landroid/view/Surface;
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "Create session failed can not access camera."

    invoke-static {v2}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/standardar/common/CameraSource$7;

    invoke-direct {v3, p0}, Lcom/standardar/common/CameraSource$7;-><init>(Lcom/standardar/common/CameraSource;)V

    iget-object v4, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private countFPS()V
    .locals 6

    .prologue
    .line 781
    iget v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    if-nez v0, :cond_0

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/standardar/common/CameraSource;->mStarttime:J

    .line 783
    iget v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    .line 791
    :goto_0
    return-void

    .line 784
    :cond_0
    iget v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 785
    const/4 v0, 0x0

    iput v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    .line 786
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/standardar/common/CameraSource;->mStarttime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/standardar/common/CameraSource;->mElapsetime:D

    .line 787
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iget-wide v2, p0, Lcom/standardar/common/CameraSource;->mElapsetime:D

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/standardar/common/CameraSource;->mFPS:D

    goto :goto_0

    .line 789
    :cond_1
    iget v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/standardar/common/CameraSource;->mCount:I

    goto :goto_0
.end method

.method private exposureManual()V
    .locals 4

    .prologue
    .line 294
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 295
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mFixExposureTime:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mMinSensitivity:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mMaxSensitivity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mMinSensitivity:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 297
    .local v0, "sensitivity":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 959
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 960
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 954
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 955
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private getImageGrayByte(Landroid/media/Image;)[B
    .locals 13
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    const/4 v12, 0x0

    .line 584
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 585
    .local v2, "crop":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 586
    .local v10, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 587
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    .line 588
    .local v7, "planes":[Landroid/media/Image$Plane;
    mul-int v11, v10, v4

    new-array v3, v11, [B

    .line 590
    .local v3, "data":[B
    const/4 v1, 0x0

    .line 592
    .local v1, "channelOffset":I
    aget-object v11, v7, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 593
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    aget-object v11, v7, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 594
    .local v9, "rowStride":I
    aget-object v11, v7, v12

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    .line 595
    .local v6, "pixelStride":I
    iget v11, v2, Landroid/graphics/Rect;->top:I

    mul-int/2addr v11, v9

    iget v12, v2, Landroid/graphics/Rect;->left:I

    mul-int/2addr v12, v6

    add-int/2addr v11, v12

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    const/4 v8, 0x0

    .local v8, "row":I
    :goto_0
    if-ge v8, v4, :cond_1

    .line 597
    move v5, v10

    .line 598
    .local v5, "length":I
    invoke-virtual {v0, v3, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 599
    add-int/2addr v1, v5

    .line 600
    add-int/lit8 v11, v4, -0x1

    if-ge v8, v11, :cond_0

    .line 601
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    add-int/2addr v11, v9

    sub-int/2addr v11, v5

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 604
    .end local v5    # "length":I
    :cond_1
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;JJ)Lcom/standardar/common/CameraSource;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionPtr"    # J
    .param p3, "enginePtr"    # J

    .prologue
    .line 233
    sget-object v6, Lcom/standardar/common/CameraSource;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 234
    :try_start_0
    sget-object v0, Lcom/standardar/common/CameraSource;->mInstance:Lcom/standardar/common/CameraSource;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/standardar/common/CameraSource;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/standardar/common/CameraSource;-><init>(Landroid/content/Context;JJ)V

    sput-object v0, Lcom/standardar/common/CameraSource;->mInstance:Lcom/standardar/common/CameraSource;

    .line 241
    :goto_0
    sget-object v0, Lcom/standardar/common/CameraSource;->mInstance:Lcom/standardar/common/CameraSource;

    monitor-exit v6

    return-object v0

    .line 237
    :cond_0
    sget-object v0, Lcom/standardar/common/CameraSource;->mInstance:Lcom/standardar/common/CameraSource;

    invoke-virtual {v0, p0}, Lcom/standardar/common/CameraSource;->setContext(Landroid/content/Context;)V

    .line 238
    sget-object v0, Lcom/standardar/common/CameraSource;->mInstance:Lcom/standardar/common/CameraSource;

    invoke-virtual {v0, p1, p2}, Lcom/standardar/common/CameraSource;->setSessionPtr(J)V

    .line 239
    sget-object v0, Lcom/standardar/common/CameraSource;->mInstance:Lcom/standardar/common/CameraSource;

    invoke-virtual {v0, p3, p4}, Lcom/standardar/common/CameraSource;->setEnginePtr(J)V

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPreviewFrame([BJ)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "frameTimestamp"    # J

    .prologue
    .line 905
    iget-wide v2, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    array-length v5, p1

    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCurExposureTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCurExposureTime:Ljava/lang/Long;

    .line 906
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/standardar/common/CameraSource;->adjustTime(J)D

    move-result-wide v6

    .line 907
    invoke-direct {p0, p2, p3}, Lcom/standardar/common/CameraSource;->adjustTime(J)D

    move-result-wide v8

    move-object v1, p0

    move-object v4, p1

    .line 905
    invoke-direct/range {v1 .. v9}, Lcom/standardar/common/CameraSource;->arProcessFrameNoImu(J[BIDD)V

    .line 908
    return-void

    .line 906
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private openCamera2(I)V
    .locals 13
    .param p1, "cameraType"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 325
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_0

    .line 326
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    const-string v10, "camera"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CameraManager;

    iput-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 327
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v8, :cond_0

    .line 328
    const-string v8, "can not get camera service"

    invoke-static {v8}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 334
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_5

    aget-object v6, v11, v10

    .line 335
    .local v6, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 336
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 337
    .local v4, "facing":Ljava/lang/Integer;
    if-eqz v4, :cond_7

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, p1, :cond_7

    .line 338
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    .line 339
    .local v5, "focalLengths":[F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "available focal lengths: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 340
    const/4 v8, 0x0

    iput v8, p0, Lcom/standardar/common/CameraSource;->mMaxFocalLength:F

    .line 341
    array-length v10, v5

    move v8, v9

    :goto_2
    if-ge v8, v10, :cond_2

    aget v3, v5, v8

    .line 342
    .local v3, "f":F
    iget v9, p0, Lcom/standardar/common/CameraSource;->mMaxFocalLength:F

    cmpl-float v9, v3, v9

    if-lez v9, :cond_1

    .line 343
    iput v3, p0, Lcom/standardar/common/CameraSource;->mMaxFocalLength:F

    .line 341
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 347
    .end local v3    # "f":F
    :cond_2
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 348
    .local v2, "exposureRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v2, :cond_3

    .line 349
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    iput-object v8, p0, Lcom/standardar/common/CameraSource;->mMaxExposureTime:Ljava/lang/Long;

    .line 350
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    iput-object v8, p0, Lcom/standardar/common/CameraSource;->mMinExposureTime:Ljava/lang/Long;

    .line 352
    :cond_3
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Range;

    .line 353
    .local v7, "sensitivityRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_4

    .line 354
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iput-object v8, p0, Lcom/standardar/common/CameraSource;->mMaxSensitivity:Ljava/lang/Integer;

    .line 355
    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iput-object v8, p0, Lcom/standardar/common/CameraSource;->mMinSensitivity:Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 359
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v10, 0x9c4

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 360
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "time out waiting to lock camera opening"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 396
    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "exposureRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v4    # "facing":Ljava/lang/Integer;
    .end local v5    # "focalLengths":[F
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "sensitivityRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_5
    :goto_3
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/standardar/common/CameraSource;->isCamerOpened:Z

    goto/16 :goto_0

    .line 362
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "exposureRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .restart local v4    # "facing":Ljava/lang/Integer;
    .restart local v5    # "focalLengths":[F
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "sensitivityRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_3
    iget-object v8, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    new-instance v9, Lcom/standardar/common/CameraSource$2;

    invoke-direct {v9, p0}, Lcom/standardar/common/CameraSource$2;-><init>(Lcom/standardar/common/CameraSource;)V

    iget-object v10, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6, v9, v10}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 392
    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "exposureRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v4    # "facing":Ljava/lang/Integer;
    .end local v5    # "focalLengths":[F
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "sensitivityRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    .line 393
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v8, "open camera failed Can not access camera"

    invoke-static {v8}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    goto :goto_3

    .line 334
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v4    # "facing":Ljava/lang/Integer;
    .restart local v6    # "id":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto/16 :goto_1
.end method

.method private setDisplaySize()V
    .locals 7

    .prologue
    .line 427
    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 428
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 429
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 430
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 431
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_0

    .line 432
    iget-wide v4, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/standardar/common/CameraSource;->arSetDisplaySize(JII)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-wide v4, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/standardar/common/CameraSource;->arSetDisplaySize(JII)V

    goto :goto_0
.end method

.method private setSupportSizeStr()V
    .locals 7

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    iget v4, p0, Lcom/standardar/common/CameraSource;->mEngineType:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 441
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcom/standardar/common/CameraSource;->getSupportsSizes(I)Ljava/util/List;

    move-result-object v2

    .line 445
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "engine type is unknown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/standardar/common/CameraSource;->mEngineType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V

    .line 455
    :goto_1
    return-void

    .line 442
    :cond_1
    iget v4, p0, Lcom/standardar/common/CameraSource;->mEngineType:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 443
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lcom/standardar/common/CameraSource;->getSupportsSizes(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 449
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 451
    .local v0, "s":Landroid/util/Size;
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 453
    .end local v0    # "s":Landroid/util/Size;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "str":Ljava/lang/String;
    iget-wide v4, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    invoke-direct {p0, v4, v5, v3}, Lcom/standardar/common/CameraSource;->arSetSupportPreviewSize(JLjava/lang/String;)V

    goto :goto_1
.end method

.method private startBackgroudThread()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camerabackgroud"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 274
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 275
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private startCameraSourceThread()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "camerasource"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    .line 250
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 251
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 252
    new-instance v0, Lcom/standardar/common/CameraSource$CameraSourceHandle;

    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/standardar/common/CameraSource$CameraSourceHandle;-><init>(Lcom/standardar/common/CameraSource;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceHandler:Lcom/standardar/common/CameraSource$CameraSourceHandle;

    goto :goto_0
.end method

.method private startPreviewClient()V
    .locals 5

    .prologue
    .line 733
    const-string v1, "start preview for remote service"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 736
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_1

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 757
    :goto_1
    return-void

    .line 737
    :cond_0
    :try_start_1
    const-string v1, "not null"

    goto :goto_0

    .line 741
    :cond_1
    iget-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 755
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 744
    :cond_2
    :try_start_2
    iget v1, p0, Lcom/standardar/common/CameraSource;->mPreWidth:I

    iget v2, p0, Lcom/standardar/common/CameraSource;->mPreHeight:I

    const/16 v3, 0x23

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    .line 745
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mOnImageAvailableListenerClient:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 750
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Surface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/standardar/common/CameraSource;->cameraReadStart(Ljava/util/List;)V

    .line 751
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method private startPreviewMul()V
    .locals 5

    .prologue
    .line 706
    const-string v1, "start preview mul"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 709
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/standardar/common/CameraSource;->mTextureId:I

    if-nez v1, :cond_2

    .line 710
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",texid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/standardar/common/CameraSource;->mTextureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 730
    :goto_1
    return-void

    .line 710
    :cond_1
    :try_start_1
    const-string v1, "not null"

    goto :goto_0

    .line 714
    :cond_2
    iget-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 728
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 717
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/standardar/common/CameraSource;->mSLAMWidth:I

    iget v2, p0, Lcom/standardar/common/CameraSource;->mSLAMHeight:I

    const/16 v3, 0x23

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    .line 718
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mOnImageAvailableListenerMul:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 719
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/standardar/common/CameraSource;->mTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 720
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mOnFrameLinstener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 721
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/standardar/common/CameraSource;->mPreWidth:I

    iget v3, p0, Lcom/standardar/common/CameraSource;->mPreHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 722
    new-instance v1, Landroid/view/Surface;

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mSurface:Landroid/view/Surface;

    .line 723
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/Surface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mSurface:Landroid/view/Surface;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/standardar/common/CameraSource;->cameraReadStart(Ljava/util/List;)V

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 728
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 728
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method private startPreviewSingle()V
    .locals 5

    .prologue
    .line 686
    const-string v1, "start preview single"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 689
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 703
    :goto_0
    return-void

    .line 692
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 694
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/standardar/common/CameraSource;->mPreWidth:I

    iget v2, p0, Lcom/standardar/common/CameraSource;->mPreHeight:I

    const/16 v3, 0x23

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    .line 695
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mOnImageAvailableListenerSingle:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 696
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/Surface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/standardar/common/CameraSource;->cameraReadStart(Ljava/util/List;)V

    .line 697
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 701
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method private stopBackgroudThread()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopCameraSourceThread()V
    .locals 2

    .prologue
    .line 256
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraSourceThread:Landroid/os/HandlerThread;

    .line 263
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraSourceHandler:Lcom/standardar/common/CameraSource$CameraSourceHandle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 865
    const-string v1, "close camera"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 866
    iget-boolean v1, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z

    if-eqz v1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->stopPreview()I

    .line 870
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 871
    const/4 v1, 0x2

    iput v1, p0, Lcom/standardar/common/CameraSource;->mState:I

    .line 872
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 874
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_2

    .line 877
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 878
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 880
    :cond_2
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    .line 881
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 882
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mImageReader:Landroid/media/ImageReader;

    .line 884
    :cond_3
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_4

    .line 885
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 886
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 887
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 889
    :cond_4
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_5

    .line 890
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/standardar/common/CameraSource;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :cond_5
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 898
    :goto_0
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->stopBackgroudThread()V

    .line 899
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->stopCameraSourceThread()V

    .line 900
    iput-boolean v3, p0, Lcom/standardar/common/CameraSource;->isCamerOpened:Z

    .line 901
    return v3

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "lock acquire interrupt"

    invoke-static {v1}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method public getCameraOrientation()Lcom/standardar/common/CameraSource$CameraOrientation;
    .locals 4

    .prologue
    .line 458
    sget-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_90:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 459
    .local v0, "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v0

    .end local v0    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    .local v1, "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    move-object v2, v0

    .line 477
    .end local v1    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    .local v2, "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    :goto_0
    return-object v2

    .line 463
    .end local v2    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    .restart local v0    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    :cond_0
    iget v3, p0, Lcom/standardar/common/CameraSource;->mCameraOrientation:I

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move-object v1, v0

    .end local v0    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    .restart local v1    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    move-object v2, v0

    .line 477
    .end local v1    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    .restart local v2    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    goto :goto_0

    .line 465
    .end local v2    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    .restart local v0    # "ret":Lcom/standardar/common/CameraSource$CameraOrientation;
    :sswitch_0
    sget-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_0:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 466
    goto :goto_1

    .line 468
    :sswitch_1
    sget-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_90:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 469
    goto :goto_1

    .line 471
    :sswitch_2
    sget-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_180:Lcom/standardar/common/CameraSource$CameraOrientation;

    .line 472
    goto :goto_1

    .line 474
    :sswitch_3
    sget-object v0, Lcom/standardar/common/CameraSource$CameraOrientation;->ST_CLOCKWISE_ROTATE_270:Lcom/standardar/common/CameraSource$CameraOrientation;

    goto :goto_1

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getFovH()F
    .locals 1

    .prologue
    .line 942
    iget v0, p0, Lcom/standardar/common/CameraSource;->mFovH:F

    return v0
.end method

.method public getFovV()F
    .locals 1

    .prologue
    .line 946
    iget v0, p0, Lcom/standardar/common/CameraSource;->mFovV:F

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .prologue
    .line 976
    iget v0, p0, Lcom/standardar/common/CameraSource;->mPreHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/standardar/common/CameraSource;->mPreWidth:I

    return v0
.end method

.method public getSLAMHeight()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/standardar/common/CameraSource;->mSLAMHeight:I

    return v0
.end method

.method public getSLAMWidth()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/standardar/common/CameraSource;->mSLAMWidth:I

    return v0
.end method

.method public getSupportsSizes(I)Ljava/util/List;
    .locals 6
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 486
    :try_start_0
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 487
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 489
    :try_start_1
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 491
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 493
    .local v3, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {v3, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 502
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 505
    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :goto_0
    return-object v4

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_2
    const-string v5, "get supported failed can not access camera"

    invoke-static {v5}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 502
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 499
    :catch_1
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 502
    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/standardar/common/CameraSource;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/standardar/common/CameraSource;->isCamerOpened:Z

    return v0
.end method

.method public openCamera(I)I
    .locals 4
    .param p1, "enginType"    # I

    .prologue
    const/4 v2, 0x1

    .line 405
    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->closeCamera()I

    .line 406
    iput p1, p0, Lcom/standardar/common/CameraSource;->mEngineType:I

    .line 407
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->startBackgroudThread()V

    .line 408
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->startCameraSourceThread()V

    .line 409
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 411
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    .line 412
    const-string v0, "can not get camera service"

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGE(Ljava/lang/String;)V

    .line 413
    const/4 v0, -0x1

    .line 423
    :goto_0
    return v0

    .line 416
    :cond_0
    invoke-direct {p0, v2}, Lcom/standardar/common/CameraSource;->openCamera2(I)V

    .line 418
    iput v2, p0, Lcom/standardar/common/CameraSource;->mCameraDirection:I

    .line 419
    iget-wide v0, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    iget v2, p0, Lcom/standardar/common/CameraSource;->mSLAMWidth:I

    iget v3, p0, Lcom/standardar/common/CameraSource;->mSLAMHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/common/CameraSource;->arSetSLAMSize(JII)V

    .line 421
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->setSupportSizeStr()V

    .line 422
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->setDisplaySize()V

    .line 423
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/standardar/common/CameraSource$ICameraNotifyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/standardar/common/CameraSource$ICameraNotifyCallback;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/standardar/common/CameraSource;->mContext:Landroid/content/Context;

    .line 313
    return-void
.end method

.method public setEnginePtr(J)V
    .locals 1
    .param p1, "enginePtr"    # J

    .prologue
    .line 316
    iput-wide p1, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    .line 317
    return-void
.end method

.method public setImageReaderActive(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceHandler:Lcom/standardar/common/CameraSource$CameraSourceHandle;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mImageReaderActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    if-nez p1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceHandler:Lcom/standardar/common/CameraSource$CameraSourceHandle;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/standardar/common/CameraSource$CameraSourceHandle;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraSourceHandler:Lcom/standardar/common/CameraSource$CameraSourceHandle;

    invoke-virtual {v0, v1}, Lcom/standardar/common/CameraSource$CameraSourceHandle;->removeMessages(I)V

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 509
    iput p1, p0, Lcom/standardar/common/CameraSource;->mPreWidth:I

    .line 510
    iput p2, p0, Lcom/standardar/common/CameraSource;->mPreHeight:I

    .line 511
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->calcFov()V

    .line 512
    iget-wide v0, p0, Lcom/standardar/common/CameraSource;->mEnginePtr:J

    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->getFovH()F

    move-result v2

    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->getFovV()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/standardar/common/CameraSource;->arSetFov(JFF)V

    .line 513
    return-void
.end method

.method public setSessionPtr(J)V
    .locals 1
    .param p1, "sessionPtr"    # J

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/standardar/common/CameraSource;->mSessionPtr:J

    .line 309
    return-void
.end method

.method public setTextureId(I)V
    .locals 2
    .param p1, "texid"    # I

    .prologue
    .line 400
    iput p1, p0, Lcom/standardar/common/CameraSource;->mTextureId:I

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set texture id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/standardar/common/CameraSource;->mTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/standardar/common/Util;->LOGI(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public startPreview(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 676
    const/16 v0, 0x29

    if-ne p1, v0, :cond_1

    .line 677
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->startPreviewClient()V

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    .line 679
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->startPreviewSingle()V

    goto :goto_0

    .line 680
    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/standardar/common/CameraSource;->startPreviewMul()V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->stopPreview()I

    .line 795
    invoke-virtual {p0}, Lcom/standardar/common/CameraSource;->closeCamera()I

    .line 796
    return-void
.end method

.method public stopPreview()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 860
    iput-boolean v0, p0, Lcom/standardar/common/CameraSource;->isPreviewing:Z

    .line 861
    return v0
.end method

.method public unregisterCallback(Lcom/standardar/common/CameraSource$ICameraNotifyCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/standardar/common/CameraSource$ICameraNotifyCallback;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    if-eqz p1, :cond_0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mCameraNotifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public update()V
    .locals 2

    .prologue
    .line 769
    iget-object v1, p0, Lcom/standardar/common/CameraSource;->mFrameAvailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :try_start_0
    iget-boolean v0, p0, Lcom/standardar/common/CameraSource;->mFrameAvail:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/standardar/common/CameraSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/standardar/common/CameraSource;->mFrameAvail:Z

    .line 777
    :cond_0
    monitor-exit v1

    .line 778
    return-void

    .line 777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
