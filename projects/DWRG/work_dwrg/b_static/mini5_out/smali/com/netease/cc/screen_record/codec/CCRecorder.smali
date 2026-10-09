.class public Lcom/netease/cc/screen_record/codec/CCRecorder;
.super Ljava/lang/Object;
.source "CCRecorder.java"


# static fields
.field public static final CCVIDEO_AUDIO_SRC_MIC:I = 0x1

.field public static final CCVIDEO_QUALITY_HIGH:I = 0x2

.field public static final CCVIDEO_QUALITY_LOW:I = 0x0

.field public static final CCVIDEO_QUALITY_MEDIUM:I = 0x1

.field public static final CCVIDEO_QUALITY_SUPER:I = 0x3

.field private static MEDIA_PRJ_REQUEST_CODE:I = 0x29a9

.field private static ORIGINVERSION:I = 0x2730

.field private static final TAG:Ljava/lang/String; = "[CCR]"

.field private static VERSION:I = 0x4e20

.field private static _instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

.field private static code_2_tip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mGameId:Ljava/lang/String;

.field private static mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

.field private static newPermissionPolicy:Z

.field private static screenshotPermission:Landroid/content/Intent;


# instance fields
.field private final CENTER_DISPLAY:I

.field private final DEFAULT_DISPLAY:I

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private connection:Landroid/content/ServiceConnection;

.field private dm_height:I

.field private dm_width:I

.field private iFrameInterval:F

.field private jConfig:Lorg/json/JSONObject;

.field private mAudioSource:I

.field private mBitrate:I

.field private mBound:Z

.field private mChannels:I

.field private mDisplayOption:I

.field private mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

.field private mEnableAudioPlaybackCapture:Z

.field private mEnableDrawCCWaterMark:Z

.field private mEnableDrawWaterMark:Z

.field private mEnableRecordAudio:Z

.field private mExtTexId:I

.field private mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field private mExternalWaterOffsetLTX:I

.field private mExternalWaterOffsetLTY:I

.field private mExternalWaterWidth:I

.field private mFps:I

.field private mHeight:I

.field private mIsExtTexId:Z

.field private mIsLut:Z

.field private mLutBitmap:Landroid/graphics/Bitmap;

.field private mLutLevel:I

.field private mMediaProjection:Landroid/media/projection/MediaProjection;

.field private mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mMoviePath:Ljava/lang/String;

.field private mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQuality:I

.field private mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

.field private mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

.field private mRecording:Z

.field private mSampleRate:I

.field private mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

.field private mSharedContext:Landroid/opengl/EGLContext;

.field private mUseGameVoice:Z

.field private mWaterMarkBitmap:Landroid/graphics/Bitmap;

.field private mWaterMarkByteArray:[B

.field private mWidth:I

.field private preRGBABufferSize:I

.field private screenRect:Landroid/graphics/RectF;

.field private targetSDKVer:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cannot Get Screen Projection Permission"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cannot Get Screen Projection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid Screen Record Params"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please Init CCRecorder First"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please Stop CCRecorder First"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    const/4 v1, -0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Please Set GameID First"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableAudioPlaybackCapture:Z

    .line 60
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawWaterMark:Z

    .line 62
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawCCWaterMark:Z

    const/16 v2, 0x500

    .line 63
    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    const/16 v2, 0x2d0

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    const/16 v2, 0x19

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    const v2, 0x2625a0

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->iFrameInterval:F

    const/4 v2, 0x0

    .line 66
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    .line 67
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 70
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    .line 72
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    .line 74
    iput v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    .line 75
    iput v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    .line 77
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    .line 78
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    .line 81
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    const v4, 0xac44

    .line 82
    iput v4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSampleRate:I

    .line 83
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mChannels:I

    .line 89
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    .line 92
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBound:Z

    .line 93
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    .line 95
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    .line 96
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    .line 99
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 101
    iput v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 102
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 103
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    .line 104
    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 105
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->preRGBABufferSize:I

    .line 497
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->CENTER_DISPLAY:I

    .line 498
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->DEFAULT_DISPLAY:I

    .line 499
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mDisplayOption:I

    .line 755
    new-instance v2, Lcom/netease/cc/screen_record/codec/CCRecorder$3;

    invoke-direct {v2, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$3;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->connection:Landroid/content/ServiceConnection;

    .line 120
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecording:Z

    .line 121
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mAudioSource:I

    .line 122
    iput v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mQuality:I

    const-string v1, ""

    .line 123
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMoviePath:Ljava/lang/String;

    .line 124
    sget-object v1, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkData;->base64WaterMarkString:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    .line 125
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->readConfigFile()V

    return-void
.end method

.method public static SetNewPermissionPolicyEnable(Z)V
    .locals 0

    .line 731
    sput-boolean p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    return-void
.end method

.method public static SetNotificationBuilder(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;)V
    .locals 0

    .line 751
    invoke-static {p0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->SetNotificationBuilder(Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService$NotificationBuilder;)V

    return-void
.end method

.method public static SharedCCRecorder(Ljava/lang/String;)Lcom/netease/cc/screen_record/codec/CCRecorder;
    .locals 1

    .line 137
    sput-object p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameId:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/netease/cc/screen_record/codec/CCRecorder;->getAndroidSDKVersion()I

    move-result p0

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    sget-object p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->_instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

    if-nez p0, :cond_1

    .line 143
    new-instance p0, Lcom/netease/cc/screen_record/codec/CCRecorder;

    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;-><init>()V

    sput-object p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->_instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

    .line 144
    :cond_1
    sget-object p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->_instance:Lcom/netease/cc/screen_record/codec/CCRecorder;

    return-object p0
.end method

.method static synthetic access$000(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/IRecordCallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/cc/screen_record/codec/CCRecorder;)Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/cc/screen_record/codec/CCRecorder;Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;)Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/netease/cc/screen_record/codec/CCRecorder;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/cc/screen_record/codec/CCRecorder;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCaptureOnGetProjection()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/cc/screen_record/codec/CCRecorder;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method private createAudioConfig()Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;
    .locals 9

    const v3, 0xfa00

    .line 577
    iget-boolean v7, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    if-eqz v7, :cond_0

    .line 578
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSampleRate:I

    .line 579
    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mChannels:I

    move v4, v0

    move v5, v1

    goto :goto_0

    :cond_0
    const v0, 0xac44

    const/4 v1, 0x1

    const v4, 0xac44

    const/4 v5, 0x1

    :goto_0
    const-string v2, "audio/mp4a-latm"

    const-string v1, "OMX.google.aac.encoder"

    const/4 v6, 0x1

    .line 584
    new-instance v8, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    return-object v8
.end method

.method private createVideoConfig()Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;
    .locals 10

    const-string v7, "video/avc"

    .line 570
    new-instance v9, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    iget v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    iget v4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->iFrameInterval:F

    const-string v6, "OMX.qcom.video.encoder.avc"

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;-><init>(IIIIFLjava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecProfileLevel;)V

    return-object v9
.end method

.method public static getAndroidSDKVersion()I
    .locals 1

    .line 558
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 560
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private hasProjectionPermission()Z
    .locals 1

    .line 735
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log2File(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 705
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 707
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 709
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 711
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 713
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_4
    invoke-static {p0, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private newRecorder(IIILandroid/media/projection/MediaProjection;Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;Ljava/lang/String;Lorg/json/JSONObject;ZZ)Lcom/netease/cc/screen_record/codec/ScreenRecorder;
    .locals 14

    move-object v0, p0

    .line 416
    new-instance v13, Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v7, v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    iget-boolean v12, v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    move-object v1, v13

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;-><init>(Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;IIILandroid/graphics/RectF;Landroid/media/projection/MediaProjection;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    .line 417
    new-instance v1, Lcom/netease/cc/screen_record/codec/CCRecorder$1;

    invoke-direct {v1, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$1;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    invoke-virtual {v13, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setCallback(Lcom/netease/cc/screen_record/codec/ScreenRecorder$Callback;)V

    return-object v13
.end method

.method private notifyError(I)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    if-eqz v0, :cond_0

    .line 741
    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->code_2_tip:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/netease/cc/screen_record/codec/IRecordCallback;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private releaseEgl()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->release()V

    .line 858
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    :cond_0
    const/4 v0, -0x1

    .line 860
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 861
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method private setupEgl()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    invoke-direct {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;-><init>(II)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 849
    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->eglSetup(Landroid/opengl/EGLContext;I)V

    .line 850
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    iget v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    .line 851
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEglContext:Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/EglContextWrapper;->makeCurrent()V

    :cond_0
    return-void
.end method

.method private startCapture(Z)I
    .locals 17

    move-object/from16 v12, p0

    move/from16 v0, p1

    const/4 v13, -0x1

    const-string v14, "[CCR]"

    const/4 v15, 0x1

    if-ne v0, v15, :cond_0

    .line 231
    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-nez v1, :cond_0

    const-string v0, "media projection is null"

    .line 232
    invoke-static {v14, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    .line 233
    invoke-direct {v12, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return v13

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 237
    iget-boolean v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v1, v11

    iget-boolean v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v15

    const-string v2, "start Capture audio(%b) game_voice(%b)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 238
    iput-object v10, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->createVideoConfig()Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;

    move-result-object v6

    .line 241
    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    if-eqz v1, :cond_1

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->createAudioConfig()Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_1
    move-object v7, v10

    :goto_0
    if-nez v6, :cond_3

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    invoke-static {v0}, La/c$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/projection/MediaProjection;)V

    :cond_2
    const/4 v0, -0x3

    .line 247
    invoke-direct {v12, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return v0

    .line 250
    :cond_3
    iget v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_width:I

    iget v3, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_height:I

    iget v4, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mDisplayOption:I

    iget-object v5, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    iget-object v8, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMoviePath:Ljava/lang/String;

    iget-object v9, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    move/from16 v16, v1

    move-object/from16 v1, p0

    move v10, v0

    move/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Lcom/netease/cc/screen_record/codec/CCRecorder;->newRecorder(IIILandroid/media/projection/MediaProjection;Lcom/netease/cc/screen_record/codec/VideoEncodeConfig;Lcom/netease/cc/screen_record/codec/AudioEncodeConfig;Ljava/lang/String;Lorg/json/JSONObject;ZZ)Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    move-result-object v0

    iput-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-nez v0, :cond_4

    const-string v0, "None recorder instance."

    .line 252
    invoke-static {v14, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    .line 255
    :cond_4
    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableAudioPlaybackCapture:Z

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->enableAudioPlaybackCapture(Z)V

    .line 257
    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    if-ne v0, v15, :cond_5

    .line 258
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    iget v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setContextAndTexId(Landroid/opengl/EGLContext;I)V

    .line 260
    :cond_5
    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setGameVoiceBuffer(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V

    goto :goto_1

    .line 263
    :cond_6
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setGameVoiceBuffer(Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;)V

    .line 265
    :goto_1
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    iget v2, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutLevel:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setLut(Landroid/graphics/Bitmap;I)V

    .line 266
    iget-boolean v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawWaterMark:Z

    if-eqz v0, :cond_a

    .line 268
    :try_start_0
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    if-eqz v0, :cond_7

    array-length v1, v0

    if-lez v1, :cond_7

    iget-boolean v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawCCWaterMark:Z

    if-eqz v1, :cond_7

    .line 269
    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 270
    :goto_2
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 271
    iget-object v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setWaterMark(Landroid/graphics/Bitmap;I)V

    .line 272
    :cond_8
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 273
    iget v1, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    if-nez v1, :cond_9

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    .line 275
    :cond_9
    iget-object v3, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    iget-object v4, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    iget v5, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    iget v6, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    iget v7, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    iget-object v8, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    invoke-virtual/range {v3 .. v8}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setExternalWaterMark(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    .line 278
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 282
    :cond_b
    :goto_4
    iget-object v0, v12, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz v0, :cond_c

    .line 283
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->start()V

    return v2

    :cond_c
    const/4 v0, -0x4

    .line 285
    invoke-direct {v12, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return v0
.end method

.method private startCaptureOnGetProjection()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "start capture on get projection"

    .line 745
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mService:Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    const/4 v0, 0x1

    .line 747
    invoke-direct {p0, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    return-void
.end method


# virtual methods
.method public SetRecordCallBack(Lcom/netease/cc/screen_record/codec/IRecordCallback;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecordCallback:Lcom/netease/cc/screen_record/codec/IRecordCallback;

    return-void
.end method

.method public SetRecordRect(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 463
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 464
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 465
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetRecordRect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CCR]"

    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 468
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    .line 471
    :goto_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz p1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->setRecordRect(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public configRecorderSettings(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    .line 401
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "[CCR]"

    const-string v1, "recorder setting is null."

    .line 402
    invoke-static {p1, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    return-void

    .line 407
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->jConfig:Lorg/json/JSONObject;

    .line 410
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enabeDrawWaterMark(Z)V
    .locals 0

    .line 393
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawWaterMark:Z

    return-void
.end method

.method public enableAudioPlaybackCapture(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableAudioPlaybackCapture:Z

    return-void
.end method

.method public enableDebugVoice(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 380
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->enableDebug(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enableDrawCCWaterMark(Z)V
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableDrawCCWaterMark:Z

    return-void
.end method

.method public enableLog(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 672
    invoke-static {}, Lcom/netease/cc/screen_record/codec/ConfigHelper;->getLocalLogConfigEnable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 673
    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogManager;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/netease/cc/screen_record/codec/log/LogManager;->init(Ljava/lang/String;I)V

    .line 674
    new-instance p1, Lcom/netease/cc/screen_record/codec/CCRecorder$2;

    invoke-direct {p1, p0}, Lcom/netease/cc/screen_record/codec/CCRecorder$2;-><init>(Lcom/netease/cc/screen_record/codec/CCRecorder;)V

    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->setRecorderUtil(Lcom/netease/cc/screen_record/codec/RecorderUtil;)V

    :cond_0
    return-void
.end method

.method public enableRecordAudio(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mEnableRecordAudio:Z

    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 588
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mAudioSource:I

    return v0
.end method

.method public getBitrate()I
    .locals 1

    .line 664
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .line 656
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    return v0
.end method

.method public getMoviePath()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getQuanlity()I
    .locals 1

    .line 604
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mQuality:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 727
    sget v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->VERSION:I

    return v0
.end method

.method public getWdith()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    return v0
.end method

.method public initGameVoice(IIIII)I
    .locals 7

    const-string v0, "[CCR]"

    const-string v1, "initGameVoice"

    .line 347
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;-><init>()V

    sput-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    .line 350
    :cond_0
    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->init(IIIII)I

    move-result p3

    if-nez p3, :cond_1

    const/4 p4, 0x1

    .line 352
    iput-boolean p4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    .line 353
    :cond_1
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSampleRate:I

    .line 354
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mChannels:I

    return p3
.end method

.method public isRecording()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->isRecording()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)I
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult. requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    if-eq p2, v0, :cond_0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "REQUEST CODE NOT EQUAL "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    :cond_0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    const-string p1, "notify ERROR_PERMISSION_REJECT."

    .line 200
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    const/4 p1, 0x0

    .line 202
    sput-object p1, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    const/4 p1, -0x2

    return p1

    .line 206
    :cond_1
    sget-boolean p2, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    if-eqz p2, :cond_2

    .line 207
    invoke-virtual {p4}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    sput-object p2, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    .line 209
    :cond_2
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_width:I

    .line 212
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_height:I

    .line 214
    iget p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    const/16 v0, 0x1c

    const/4 v1, 0x1

    if-le p2, v0, :cond_3

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-le p2, v0, :cond_3

    .line 215
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/netease/cc/screen_record/codec/screencapture/ScreenCaptureService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "code"

    .line 217
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "data"

    .line 218
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-static {p1, p2}, La/c$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x0

    return p1

    :cond_3
    const-string p2, "media_projection"

    .line 223
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La/c$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/projection/MediaProjectionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 224
    invoke-static {p1, p3, p4}, La/c$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/projection/MediaProjectionManager;ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 226
    invoke-direct {p0, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    move-result p1

    return p1
.end method

.method public pauseRecord(Z)I
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "[CCR]"

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 320
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    const-string p1, "Pause record."

    .line 321
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->pause()V

    .line 323
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-ne p1, v1, :cond_1

    const-string p1, "Resume record."

    .line 325
    invoke-static {v0, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->resume()V

    .line 327
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mPauseRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public pushGameVoiceData([BI)I
    .locals 1

    .line 366
    :try_start_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0, p1, p2}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->pushGameVoiceBufferData([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "[CCR]"

    const-string p2, "==========game voice buffer null======="

    .line 370
    invoke-static {p1, p2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, -0x64

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0x65

    :goto_0
    return p1
.end method

.method public setAudioSource(I)V
    .locals 0

    .line 592
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mAudioSource:I

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    .line 668
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mBitrate:I

    return-void
.end method

.method public setDisplayOption(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mDisplayOption:I

    return-void
.end method

.method public setExternalWaterMark(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    if-eq p1, v0, :cond_1

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 483
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "waterImage"

    .line 484
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "waterImageWidth"

    .line 485
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 486
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 487
    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[CCR]"

    const-string v1, "===========set external watermark exception=========="

    .line 489
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 478
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 479
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    return-void
.end method

.method public setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    if-eqz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 511
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    const/4 p1, -0x1

    .line 512
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    .line 513
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 506
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 507
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    return-void
.end method

.method public setExternalWaterMarkBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 0

    if-eqz p1, :cond_5

    if-gez p2, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    .line 523
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    .line 524
    iput p3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTX:I

    .line 525
    iput p4, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterOffsetLTY:I

    const/4 p1, 0x1

    if-eq p5, p1, :cond_4

    const/4 p1, 0x2

    if-eq p5, p1, :cond_3

    const/4 p1, 0x3

    if-eq p5, p1, :cond_2

    const/4 p1, 0x4

    if-eq p5, p1, :cond_1

    .line 540
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->NONE:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 537
    :cond_1
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 534
    :cond_2
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 531
    :cond_3
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_TOP:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    goto :goto_0

    .line 528
    :cond_4
    sget-object p1, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->LEFT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 518
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterMarkBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 519
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExternalWaterWidth:I

    return-void
.end method

.method public setFps(I)V
    .locals 0

    .line 660
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mFps:I

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 133
    sput-object p1, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameId:Ljava/lang/String;

    return-void
.end method

.method public setGameVoicePollRate(I)V
    .locals 1

    .line 865
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v0, p1}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->setGameVoicePollRate(I)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 652
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mHeight:I

    return-void
.end method

.method public setIFrameInterval(F)V
    .locals 0

    .line 724
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->iFrameInterval:F

    return-void
.end method

.method public setLogoByteArray(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWaterMarkByteArray:[B

    return-void
.end method

.method public setLut(Landroid/graphics/Bitmap;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 547
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    .line 551
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutBitmap:Landroid/graphics/Bitmap;

    .line 552
    iput p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mLutLevel:I

    return-void
.end method

.method public setMoviePath(Ljava/lang/String;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMoviePath:Ljava/lang/String;

    return-void
.end method

.method public setParameter(I[Ljava/lang/Object;)V
    .locals 10

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GameTex] setParameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-string v4, " current thread "

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 823
    :pswitch_0
    iput-boolean v7, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 824
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setupEgl()V

    .line 825
    invoke-static {}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->create2DTextureID()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 826
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[GameTex] generate ext tex id "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 800
    :pswitch_1
    array-length p1, p2

    if-ne p1, v5, :cond_3

    aget-object p1, p2, v6

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    if-eq p1, v0, :cond_3

    .line 801
    aget-object p1, p2, v7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 802
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[GameTex] update RGBA buffer. texId "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " w/h "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 805
    aget-object p2, p2, v6

    check-cast p2, [B

    check-cast p2, [B

    .line 806
    array-length v5, p2

    mul-int v6, p1, v0

    mul-int/lit8 v6, v6, 0x4

    if-eq v5, v6, :cond_0

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[GameTex] RGBA size ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") is NOT same with width * height * 4 ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    iget v5, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->preRGBABufferSize:I

    if-eq v2, v5, :cond_2

    .line 810
    :cond_1
    array-length v2, p2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 811
    array-length v2, p2

    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->preRGBABufferSize:I

    .line 813
    :cond_2
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 814
    iget-object v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 815
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 816
    iget-object p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-static {p2, p1, v0, v2, v7}, Lcom/netease/cc/screen_record/codec/screencapture/OpenGlUtils;->loadTexture(Ljava/nio/Buffer;IIIZ)I

    .line 817
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[GameTex] update texture costs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz p1, :cond_3

    .line 819
    invoke-virtual {p1}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->updateRGBABuffer()V

    goto/16 :goto_0

    .line 788
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[GameTex] setParameter CC_RECORD_TEXTURE_ID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    array-length p1, p2

    const/4 v8, 0x5

    if-ne p1, v8, :cond_3

    aget-object p1, p2, v6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_3

    aget-object p1, p2, v7

    if-eqz p1, :cond_3

    .line 790
    iput-boolean v7, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 791
    aget-object p1, p2, v6

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 792
    aget-object p1, p2, v7

    check-cast p1, Landroid/opengl/EGLContext;

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    .line 793
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v6, p2, v2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->setGameTextureRotation(III)V

    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[GameTex] set texture. Ctx "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " HFlip "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/Integer;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " VFlip "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Rotation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " texId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 794
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 4

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Config] setPropInt-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enabled-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[CCR]"

    invoke-static {v3, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "ccr_enable_single_egl_init_once_default_false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ccr_enable_sync_release_default_false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 841
    :cond_1
    sget-object p1, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSyncRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 838
    :cond_3
    sget-object p1, Lcom/netease/cc/screen_record/codec/RecorderConfig;->enableSingleEglCore:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_3
    return-void
.end method

.method public setQuality(I)V
    .locals 4

    .line 609
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mQuality:I

    const/16 v0, 0x14

    const/16 v1, 0x280

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    const/16 v3, 0x2d0

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x500

    .line 631
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    .line 632
    invoke-virtual {p0, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    const/16 p1, 0x1e

    .line 633
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0x1e8480

    .line 634
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3c0

    .line 625
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    const/16 p1, 0x21c

    .line 626
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    const/16 p1, 0x19

    .line 627
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0x16e360

    .line 628
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_0

    .line 619
    :cond_2
    invoke-virtual {p0, v3}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    .line 620
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    .line 621
    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0x124f80

    .line 622
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    goto :goto_0

    .line 613
    :cond_3
    invoke-virtual {p0, v1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setWdith(I)V

    const/16 p1, 0x168

    .line 614
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setHeight(I)V

    .line 615
    invoke-virtual {p0, v0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setFps(I)V

    const p1, 0xc3500

    .line 616
    invoke-virtual {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->setBitrate(I)V

    :goto_0
    return-void
.end method

.method public setWdith(I)V
    .locals 0

    .line 644
    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mWidth:I

    return-void
.end method

.method public startRecord(Landroid/app/Activity;)V
    .locals 5

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    .line 149
    sget-object v0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "[CCR]"

    if-eqz v0, :cond_0

    const-string p1, "Game Id is INVALID, Stop Record"

    .line 151
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    .line 152
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start record "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->targetSDKVer:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " version [sr-2.0.0.218 v-2.0.0.218]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 158
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_width:I

    .line 161
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->dm_height:I

    const-string p1, "start record game texture."

    .line 162
    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    return-void

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->hasProjectionPermission()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "hasProjectionPermission."

    .line 167
    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_2

    .line 169
    invoke-static {v0}, La/c$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/projection/MediaProjection;)V

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    .line 173
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    sget-object v3, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-static {v0, v4, v3}, La/c$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/projection/MediaProjectionManager;ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjection:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_3

    .line 175
    invoke-direct {p0, v2}, Lcom/netease/cc/screen_record/codec/CCRecorder;->startCapture(Z)I

    return-void

    :cond_3
    const-string v0, "[Error] can not get projection"

    .line 178
    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x7

    .line 182
    invoke-direct {p0, p1}, Lcom/netease/cc/screen_record/codec/CCRecorder;->notifyError(I)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "startActivityForResult."

    .line 186
    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media_projection"

    .line 187
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La/c$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/projection/MediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mMediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

    .line 188
    invoke-static {v0}, La/c$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/projection/MediaProjectionManager;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    sget v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    add-int/2addr v1, v2

    sput v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->MEDIA_PRJ_REQUEST_CODE:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopRecord()I
    .locals 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop record "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->newPermissionPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/cc/screen_record/codec/CCRecorder;->screenshotPermission:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CCR]"

    invoke-static {v1, v0}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsLut:Z

    const/4 v1, 0x0

    .line 295
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mSharedContext:Landroid/opengl/EGLContext;

    const/4 v2, -0x1

    .line 296
    iput v2, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mExtTexId:I

    .line 297
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mIsExtTexId:Z

    .line 298
    sget-object v3, Lcom/netease/cc/screen_record/codec/CCRecorder;->mGameVoiceBuffer:Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;

    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {v3}, Lcom/netease/cc/screen_record/codec/GameVoiceBuffer;->release()V

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    if-eqz v3, :cond_1

    .line 302
    invoke-virtual {v3}, Lcom/netease/cc/screen_record/codec/ScreenRecorder;->quit()V

    .line 303
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->releaseEgl()V

    .line 304
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mRecorderInstance:Lcom/netease/cc/screen_record/codec/ScreenRecorder;

    return v0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/netease/cc/screen_record/codec/CCRecorder;->releaseEgl()V

    return v2
.end method

.method public unInitGameVoice()V
    .locals 2

    const-string v0, "[CCR]"

    const-string v1, "unInitGameVoice"

    .line 359
    invoke-static {v0, v1}, Lcom/netease/cc/screen_record/codec/log/CCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/CCRecorder;->mUseGameVoice:Z

    return-void
.end method
