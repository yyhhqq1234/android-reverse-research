.class public final Lcom/tencent/ijk/media/player/IjkMediaPlayer;
.super Lcom/tencent/ijk/media/player/AbstractMediaPlayer;
.source "IjkMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;,
        Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;,
        Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;,
        Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;,
        Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final FFP_PROPV_DECODER_AVCODEC:I = 0x1

.field public static final FFP_PROPV_DECODER_MEDIACODEC:I = 0x2

.field public static final FFP_PROPV_DECODER_UNKNOWN:I = 0x0

.field public static final FFP_PROPV_DECODER_VIDEOTOOLBOX:I = 0x3

.field public static final FFP_PROP_FLOAT_DROP_FRAME_RATE:I = 0x2717

.field public static final FFP_PROP_FLOAT_PLAYBACK_RATE:I = 0x2713

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_BACKWARDS:I = 0x4ee9

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_CAPACITY:I = 0x4eeb

.field public static final FFP_PROP_INT64_ASYNC_STATISTIC_BUF_FORWARDS:I = 0x4eea

.field public static final FFP_PROP_INT64_AUDIO_CACHED_BYTES:I = 0x4e28

.field public static final FFP_PROP_INT64_AUDIO_CACHED_DURATION:I = 0x4e26

.field public static final FFP_PROP_INT64_AUDIO_CACHED_PACKETS:I = 0x4e2a

.field public static final FFP_PROP_INT64_AUDIO_DECODER:I = 0x4e24

.field public static final FFP_PROP_INT64_BIT_RATE:I = 0x4e84

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_COUNT_BYTES:I = 0x4ef0

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_FILE_FORWARDS:I = 0x4eee

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_FILE_POS:I = 0x4eef

.field public static final FFP_PROP_INT64_CACHE_STATISTIC_PHYSICAL_POS:I = 0x4eed

.field public static final FFP_PROP_INT64_LATEST_SEEK_LOAD_DURATION:I = 0x4f4c

.field public static final FFP_PROP_INT64_LOGICAL_FILE_SIZE:I = 0x4ef1

.field public static final FFP_PROP_INT64_SELECTED_AUDIO_STREAM:I = 0x4e22

.field public static final FFP_PROP_INT64_SELECTED_TIMEDTEXT_STREAM:I = 0x4e2b

.field public static final FFP_PROP_INT64_SELECTED_VIDEO_STREAM:I = 0x4e21

.field public static final FFP_PROP_INT64_TCP_SPEED:I = 0x4ee8

.field public static final FFP_PROP_INT64_TRAFFIC_STATISTIC_BYTE_COUNT:I = 0x4eec

.field public static final FFP_PROP_INT64_VIDEO_CACHED_BYTES:I = 0x4e27

.field public static final FFP_PROP_INT64_VIDEO_CACHED_DURATION:I = 0x4e25

.field public static final FFP_PROP_INT64_VIDEO_CACHED_PACKETS:I = 0x4e29

.field public static final FFP_PROP_INT64_VIDEO_DECODER:I = 0x4e23

.field public static final IJK_LOG_DEBUG:I = 0x3

.field public static final IJK_LOG_DEFAULT:I = 0x1

.field public static final IJK_LOG_ERROR:I = 0x6

.field public static final IJK_LOG_FATAL:I = 0x7

.field public static final IJK_LOG_INFO:I = 0x4

.field public static final IJK_LOG_SILENT:I = 0x8

.field public static final IJK_LOG_UNKNOWN:I = 0x0

.field public static final IJK_LOG_VERBOSE:I = 0x2

.field public static final IJK_LOG_WARN:I = 0x5

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field protected static final MEDIA_SET_VIDEO_SAR:I = 0x2711

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final OPT_CATEGORY_CODEC:I = 0x2

.field public static final OPT_CATEGORY_FORMAT:I = 0x1

.field public static final OPT_CATEGORY_PLAYER:I = 0x4

.field public static final OPT_CATEGORY_SWS:I = 0x3

.field public static final PROP_FLOAT_VIDEO_DECODE_FRAMES_PER_SECOND:I = 0x2711

.field public static final PROP_FLOAT_VIDEO_OUTPUT_FRAMES_PER_SECOND:I = 0x2712

.field public static final SDL_FCC_RV16:I = 0x36315652

.field public static final SDL_FCC_RV32:I = 0x32335652

.field public static final SDL_FCC_YV12:I = 0x32315659

.field private static final TAG:Ljava/lang/String;

.field private static volatile mIsLibLoaded:Z

.field private static volatile mIsNativeInitialized:Z

.field private static final sLocalLibLoader:Lcom/tencent/ijk/media/player/IjkLibLoader;


# instance fields
.field private mDataSource:Ljava/lang/String;

.field private mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

.field private mListenerContext:I
    .annotation build Lcom/tencent/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeAndroidIO:J
    .annotation build Lcom/tencent/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaDataSource:J
    .annotation build Lcom/tencent/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeMediaPlayer:J
    .annotation build Lcom/tencent/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mNativeSurfaceTexture:I
    .annotation build Lcom/tencent/ijk/media/player/annotations/AccessedByNative;
    .end annotation
.end field

.field private mOnControlMessageListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

.field private mOnMediaCodecSelectListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

.field private mOnNativeInvokeListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const-class v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer$1;

    invoke-direct {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$1;-><init>()V

    sput-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Lcom/tencent/ijk/media/player/IjkLibLoader;

    .line 181
    sput-boolean v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 196
    sput-boolean v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Lcom/tencent/ijk/media/player/IjkLibLoader;

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;-><init>(Lcom/tencent/ijk/media/player/IjkLibLoader;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/tencent/ijk/media/player/IjkLibLoader;)V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->initPlayer(Lcom/tencent/ijk/media/player/IjkLibLoader;)V

    .line 226
    return-void
.end method

.method private native _getAudioCodecInfo()Ljava/lang/String;
.end method

.method private static native _getColorFormatName(I)Ljava/lang/String;
.end method

.method private native _getLoopCount()I
.end method

.method private native _getMediaMeta()Landroid/os/Bundle;
.end method

.method private native _getPropertyFloat(IF)F
.end method

.method private native _getPropertyLong(IJ)J
.end method

.method private native _getVideoCodecInfo()Ljava/lang/String;
.end method

.method private native _injectCacheNode(IJJJJ)V
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setAndroidIOCallback(Lcom/tencent/ijk/media/player/misc/IAndroidIO;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSourceFd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setFrameAtTime(Ljava/lang/String;JJII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setLoopCount(I)V
.end method

.method private native _setOption(ILjava/lang/String;J)V
.end method

.method private native _setOption(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native _setPropertyFloat(IF)V
.end method

.method private native _setPropertyLong(IJ)V
.end method

.method private native _setStreamSelected(IZ)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mNativeMediaPlayer:J

    return-wide v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/ijk/media/player/IjkMediaPlayer;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method static synthetic access$502(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/ijk/media/player/IjkMediaPlayer;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method static synthetic access$602(Lcom/tencent/ijk/media/player/IjkMediaPlayer;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return p1
.end method

.method public static getColorFormatName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 940
    invoke-static {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getColorFormatName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initNativeOnce()V
    .locals 2

    .prologue
    .line 198
    const-class v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 199
    :try_start_0
    sget-boolean v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->native_init()V

    .line 201
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mIsNativeInitialized:Z

    .line 203
    :cond_0
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initPlayer(Lcom/tencent/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .prologue
    .line 229
    invoke-static {p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Lcom/tencent/ijk/media/player/IjkLibLoader;)V

    .line 230
    invoke-static {}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->initNativeOnce()V

    .line 233
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Lcom/tencent/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    .line 245
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 246
    return-void

    .line 235
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;-><init>(Lcom/tencent/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    goto :goto_0
.end method

.method public static loadLibrariesOnce(Lcom/tencent/ijk/media/player/IjkLibLoader;)V
    .locals 2

    .prologue
    .line 183
    const-class v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    monitor-enter v1

    .line 184
    :try_start_0
    sget-boolean v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    if-nez v0, :cond_1

    .line 185
    if-nez p0, :cond_0

    .line 186
    sget-object p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->sLocalLibLoader:Lcom/tencent/ijk/media/player/IjkLibLoader;

    .line 188
    :cond_0
    const-string/jumbo v0, "txffmpeg"

    invoke-interface {p0, v0}, Lcom/tencent/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 189
    const-string/jumbo v0, "txsdl"

    invoke-interface {p0, v0}, Lcom/tencent/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "txplayer"

    invoke-interface {p0, v0}, Lcom/tencent/ijk/media/player/IjkLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mIsLibLoaded:Z

    .line 193
    :cond_1
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_message_loop(Ljava/lang/Object;)V
.end method

.method public static native native_profileBegin(Ljava/lang/String;)V
.end method

.method public static native native_profileEnd()V
.end method

.method public static native native_setLogLevel(I)V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static onNativeInvoke(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 6
    .annotation build Lcom/tencent/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1154
    sget-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "onNativeInvoke %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 1156
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "<null weakThiz>.onNativeInvoke()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1160
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    .line 1161
    if-nez v0, :cond_2

    .line 1162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "<null weakPlayer>.onNativeInvoke()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1164
    :cond_2
    iget-object v3, v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnNativeInvokeListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

    .line 1165
    if-eqz v3, :cond_3

    invoke-interface {v3, p1, p2}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;->onNativeInvoke(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 1186
    :goto_0
    return v0

    .line 1168
    :cond_3
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 1186
    goto :goto_0

    .line 1170
    :pswitch_0
    iget-object v0, v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    .line 1171
    if-nez v0, :cond_4

    move v0, v2

    .line 1172
    goto :goto_0

    .line 1174
    :cond_4
    const-string v2, "segment_index"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1175
    if-gez v2, :cond_5

    .line 1176
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "onNativeInvoke(invalid segment index)"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_5
    invoke-interface {v0, v2}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;->onControlResolveSegmentUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    if-nez v0, :cond_6

    .line 1180
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "onNativeInvoke() = <NULL newUrl>"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1182
    :cond_6
    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1183
    goto :goto_0

    .line 1168
    :pswitch_data_0
    .packed-switch 0x20007
        :pswitch_0
    .end packed-switch
.end method

.method private static onSelectCodec(Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/tencent/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1209
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1222
    :goto_0
    return-object v0

    .line 1213
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 1214
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    .line 1215
    if-nez v0, :cond_2

    move-object v0, v1

    .line 1216
    goto :goto_0

    .line 1218
    :cond_2
    iget-object v1, v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    .line 1219
    if-nez v1, :cond_3

    .line 1220
    sget-object v1, Lcom/tencent/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Lcom/tencent/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    .line 1222
    :cond_3
    invoke-interface {v1, v0, p1, p2, p3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;->onMediaCodecSelect(Lcom/tencent/ijk/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 2
    .annotation build Lcom/tencent/ijk/media/player/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1076
    if-nez p0, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1080
    :cond_1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    .line 1081
    if-eqz v0, :cond_0

    .line 1085
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1088
    invoke-virtual {v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->start()V

    .line 1090
    :cond_2
    iget-object v1, v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1092
    iget-object v0, v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    invoke-virtual {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 488
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 591
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 597
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    .line 598
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 599
    return-void

    .line 593
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 603
    iget-object v1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 605
    :cond_0
    return-void

    .line 603
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public deselectTrack(I)V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setStreamSelected(IZ)V

    .line 657
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 964
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 965
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->native_finalize()V

    .line 966
    return-void
.end method

.method public getAsyncStatisticBufBackwards()J
    .locals 4

    .prologue
    .line 804
    const/16 v0, 0x4ee9

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsyncStatisticBufCapacity()J
    .locals 4

    .prologue
    .line 812
    const/16 v0, 0x4eeb

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAsyncStatisticBufForwards()J
    .locals 4

    .prologue
    .line 808
    const/16 v0, 0x4eea

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedBytes()J
    .locals 4

    .prologue
    .line 792
    const/16 v0, 0x4e28

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedDuration()J
    .locals 4

    .prologue
    .line 784
    const/16 v0, 0x4e26

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioCachedPackets()J
    .locals 4

    .prologue
    .line 800
    const/16 v0, 0x4e2a

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getAudioSessionId()I
.end method

.method public getBitRate()J
    .locals 4

    .prologue
    .line 840
    const/16 v0, 0x4e84

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticCountBytes()J
    .locals 4

    .prologue
    .line 832
    const/16 v0, 0x4ef0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticFileForwards()J
    .locals 4

    .prologue
    .line 824
    const/16 v0, 0x4eee

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticFilePos()J
    .locals 4

    .prologue
    .line 828
    const/16 v0, 0x4eef

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheStatisticPhysicalPos()J
    .locals 4

    .prologue
    .line 820
    const/16 v0, 0x4eed

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public native getCurrentPosition()J
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getDropFrameRate()F
    .locals 2

    .prologue
    .line 857
    const/16 v0, 0x2717

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public native getDuration()J
.end method

.method public getFileSize()J
    .locals 4

    .prologue
    .line 836
    const/16 v0, 0x4ef1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/tencent/ijk/media/player/MediaInfo;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 873
    new-instance v1, Lcom/tencent/ijk/media/player/MediaInfo;

    invoke-direct {v1}, Lcom/tencent/ijk/media/player/MediaInfo;-><init>()V

    .line 874
    const-string v0, "ijkplayer"

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mMediaPlayerName:Ljava/lang/String;

    .line 876
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getVideoCodecInfo()Ljava/lang/String;

    move-result-object v0

    .line 877
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 878
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 879
    array-length v2, v0

    if-lt v2, v5, :cond_2

    .line 880
    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 881
    aget-object v0, v0, v4

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    .line 888
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getAudioCodecInfo()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 890
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 891
    array-length v2, v0

    if-lt v2, v5, :cond_3

    .line 892
    aget-object v2, v0, v3

    iput-object v2, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 893
    aget-object v0, v0, v4

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    .line 901
    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ijk/media/player/IjkMediaMeta;->parse(Landroid/os/Bundle;)Lcom/tencent/ijk/media/player/IjkMediaMeta;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mMeta:Lcom/tencent/ijk/media/player/IjkMediaMeta;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :goto_2
    return-object v1

    .line 882
    :cond_2
    array-length v2, v0

    if-lt v2, v4, :cond_0

    .line 883
    aget-object v0, v0, v3

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mVideoDecoder:Ljava/lang/String;

    .line 884
    const-string v0, ""

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mVideoDecoderImpl:Ljava/lang/String;

    goto :goto_0

    .line 894
    :cond_3
    array-length v2, v0

    if-lt v2, v4, :cond_1

    .line 895
    aget-object v0, v0, v3

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mAudioDecoder:Ljava/lang/String;

    .line 896
    const-string v0, ""

    iput-object v0, v1, Lcom/tencent/ijk/media/player/MediaInfo;->mAudioDecoderImpl:Ljava/lang/String;

    goto :goto_1

    .line 902
    :catch_0
    move-exception v0

    .line 903
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getMediaMeta()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getMediaMeta()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSeekLoadDuration()J
    .locals 4

    .prologue
    .line 848
    const/16 v0, 0x4f4c

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTrack(I)I
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 635
    packed-switch p1, :pswitch_data_0

    .line 643
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 637
    :pswitch_0
    const/16 v0, 0x4e21

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 639
    :pswitch_1
    const/16 v0, 0x4e22

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 641
    :pswitch_2
    const/16 v0, 0x4e2b

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSpeed(F)F
    .locals 2

    .prologue
    .line 764
    const/16 v0, 0x2713

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTcpSpeed()J
    .locals 4

    .prologue
    .line 844
    const/16 v0, 0x4ee8

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTrackInfo()[Lcom/tencent/ijk/media/player/misc/ITrackInfo;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getTrackInfo()[Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->getMediaMeta()Landroid/os/Bundle;

    move-result-object v1

    .line 610
    if-nez v1, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-object v0

    .line 613
    :cond_1
    invoke-static {v1}, Lcom/tencent/ijk/media/player/IjkMediaMeta;->parse(Landroid/os/Bundle;)Lcom/tencent/ijk/media/player/IjkMediaMeta;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/ijk/media/player/IjkMediaMeta;->mStreams:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    iget-object v0, v1, Lcom/tencent/ijk/media/player/IjkMediaMeta;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/ijk/media/player/IjkMediaMeta$IjkStreamMeta;

    .line 619
    new-instance v3, Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;

    invoke-direct {v3, v0}, Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;-><init>(Lcom/tencent/ijk/media/player/IjkMediaMeta$IjkStreamMeta;)V

    .line 620
    iget-object v4, v0, Lcom/tencent/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mType:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 621
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;->setTrackType(I)V

    .line 627
    :cond_2
    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    :cond_3
    iget-object v4, v0, Lcom/tencent/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 623
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;->setTrackType(I)V

    goto :goto_2

    .line 624
    :cond_4
    iget-object v0, v0, Lcom/tencent/ijk/media/player/IjkMediaMeta$IjkStreamMeta;->mType:Ljava/lang/String;

    const-string/jumbo v4, "timedtext"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;->setTrackType(I)V

    goto :goto_2

    .line 630
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/ijk/media/player/misc/IjkTrackInfo;

    goto :goto_0
.end method

.method public getTrafficStatisticByteCount()J
    .locals 4

    .prologue
    .line 816
    const/16 v0, 0x4eec

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedBytes()J
    .locals 4

    .prologue
    .line 788
    const/16 v0, 0x4e27

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedDuration()J
    .locals 4

    .prologue
    .line 780
    const/16 v0, 0x4e25

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoCachedPackets()J
    .locals 4

    .prologue
    .line 796
    const/16 v0, 0x4e29

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVideoDecodeFramesPerSecond()F
    .locals 2

    .prologue
    .line 776
    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getVideoDecoder()I
    .locals 4

    .prologue
    .line 768
    const/16 v0, 0x4e23

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyLong(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoOutputFramesPerSecond()F
    .locals 2

    .prologue
    .line 772
    const/16 v0, 0x2712

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getPropertyFloat(IF)F

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoSarDen:I

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoSarNum:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    return v0
.end method

.method public injectCacheNode(IJJJJ)V
    .locals 0

    .prologue
    .line 515
    invoke-direct/range {p0 .. p9}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_injectCacheNode(IJJJJ)V

    .line 516
    return-void
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 753
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_getLoopCount()I

    move-result v1

    .line 754
    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x1

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 549
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_pause()V

    .line 550
    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_prepareAsync()V

    .line 526
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 712
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 713
    invoke-virtual {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->resetListeners()V

    .line 714
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_release()V

    .line 715
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 721
    invoke-direct {p0, v2}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 722
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_reset()V

    .line 724
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mEventHandler:Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 726
    iput v2, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoWidth:I

    .line 727
    iput v2, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mVideoHeight:I

    .line 728
    return-void
.end method

.method public resetListeners()V
    .locals 1

    .prologue
    .line 1203
    invoke-super {p0}, Lcom/tencent/ijk/media/player/AbstractMediaPlayer;->resetListeners()V

    .line 1204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    .line 1205
    return-void
.end method

.method public native seekTo(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public selectTrack(I)V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setStreamSelected(IZ)V

    .line 651
    return-void
.end method

.method public setAndroidIOCallback(Lcom/tencent/ijk/media/player/misc/IAndroidIO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setAndroidIOCallback(Lcom/tencent/ijk/media/player/misc/IAndroidIO;)V

    .line 498
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .prologue
    .line 948
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 330
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 349
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settings"

    .line 353
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 355
    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    .line 357
    if-nez p2, :cond_2

    .line 358
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to resolve default ringtone"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2
    const/4 v0, 0x0

    .line 364
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    const-string v2, "r"

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 366
    if-nez v6, :cond_3

    .line 381
    if-eqz v6, :cond_0

    .line 382
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 372
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 373
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    :goto_1
    if-eqz v6, :cond_0

    .line 382
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 375
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 381
    :goto_2
    if-eqz v0, :cond_5

    .line 382
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 386
    :cond_5
    :goto_3
    sget-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 379
    :catch_1
    move-exception v1

    move-object v6, v0

    .line 381
    :goto_4
    if-eqz v6, :cond_5

    .line 382
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_3

    .line 381
    :catchall_0
    move-exception v1

    move-object v6, v0

    :goto_5
    if-eqz v6, :cond_6

    .line 382
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_6
    throw v1

    .line 381
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 379
    :catch_2
    move-exception v0

    goto :goto_4

    .line 378
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setDataSource(Lcom/tencent/ijk/media/player/misc/IMediaDataSource;)V

    .line 493
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 455
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 456
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 463
    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setDataSourceFd(I)V

    .line 472
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 460
    :catch_1
    move-exception v0

    .line 461
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 465
    :cond_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 467
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setDataSourceFd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 411
    iput-object p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 412
    invoke-direct {p0, p1, v0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 425
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v0, "headers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v0, "protocol_whitelist"

    const-string v1, "async,cache,crypto,file,http,https,ijkhttphook,ijkinject,ijklivehook,ijklongurl,ijksegment,ijktcphook,pipe,rtp,tcp,tls,udp,ijkurlhook,data,ijkhttpcache"

    invoke-virtual {p0, v4, v0, v1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 279
    :goto_0
    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 280
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 281
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeepInBackground(Z)V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .prologue
    .line 911
    return-void
.end method

.method public setLooping(Z)V
    .locals 6

    .prologue
    .line 739
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 740
    :goto_0
    const/4 v1, 0x4

    const-string v2, "loop"

    int-to-long v4, v0

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 741
    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setLoopCount(I)V

    .line 742
    return-void

    .line 739
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOnControlMessageListener(Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;)V
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnControlMessageListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnControlMessageListener;

    .line 1103
    return-void
.end method

.method public setOnMediaCodecSelectListener(Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;)V
    .locals 0

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnMediaCodecSelectListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;

    .line 1200
    return-void
.end method

.method public setOnNativeInvokeListener(Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;)V
    .locals 0

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mOnNativeInvokeListener:Lcom/tencent/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;

    .line 1116
    return-void
.end method

.method public setOption(ILjava/lang/String;J)V
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;J)V

    .line 929
    return-void
.end method

.method public setOption(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public setRate(F)V
    .locals 0

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 863
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 579
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 580
    sget-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 584
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 586
    :cond_1
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .prologue
    .line 760
    const/16 v0, 0x2713

    invoke-direct {p0, v0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setPropertyFloat(IF)V

    .line 761
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    sget-object v0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Lcom/tencent/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 309
    invoke-direct {p0, p1}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 310
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->updateSurfaceScreenOn()V

    .line 311
    iput-object p1, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 312
    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 557
    .line 558
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    const/4 v0, 0x1

    .line 561
    iget-object v2, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 563
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move v2, v0

    .line 566
    :goto_1
    const-string v0, "power"

    .line 567
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 568
    const/high16 v3, 0x20000000

    or-int/2addr v3, p2

    const-class v4, Lcom/tencent/ijk/media/player/IjkMediaPlayer;

    .line 569
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 570
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 571
    if-eqz v2, :cond_0

    .line 572
    iget-object v0, p0, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 574
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 533
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_start()V

    .line 534
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->stayAwake(Z)V

    .line 541
    invoke-direct {p0}, Lcom/tencent/ijk/media/player/IjkMediaPlayer;->_stop()V

    .line 542
    return-void
.end method
