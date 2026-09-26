.class public Lcom/netease/dwrg/Client;
.super Lcom/netease/neox/NeoXClient;
.source "Client.java"


# static fields
.field private static final KEYWORDS:[Ljava/lang/String;

.field static final MBB_ABORT:I = 0x5

.field static final MBB_CANCEL:I = 0x1

.field static final MBB_IGNORE:I = 0x6

.field static final MBB_NO:I = 0x3

.field static final MBB_OK:I = 0x0

.field static final MBB_RETRY:I = 0x4

.field static final MBB_YES:I = 0x2

.field static final MBT_ABORTRETRYIGNORE:I = 0x2

.field static final MBT_OK:I = 0x0

.field static final MBT_OKCANCEL:I = 0x1

.field static final MBT_RETRYCANCEL:I = 0x5

.field static final MBT_YESNO:I = 0x4

.field static final MBT_YESNOCANCEL:I = 0x3

.field private static final MEDIA_PROJECTIONS:[Ljava/lang/String;

.field private static m_cancel_all_time:J


# instance fields
.field private mExternalObserver:Lcom/netease/dwrg/MediaContentObserver;

.field private mInternalObserver:Lcom/netease/dwrg/MediaContentObserver;

.field private final mUiHandler:Landroid/os/Handler;

.field private m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

.field private m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

.field private m_channel:Lcom/netease/dwrg/Channel;

.field private m_clipboard:Landroid/content/ClipboardManager;

.field private m_current_network_type:I

.field private m_dump_appkey:Ljava/lang/String;

.field private m_dump_basicinfo:Ljava/lang/String;

.field private m_dump_game:Ljava/lang/String;

.field private m_dump_game_version:Ljava/lang/String;

.field private m_dump_userdesc:Ljava/lang/String;

.field private m_gmbridge_tokenSetter:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

.field private m_gmbridge_uid:Ljava/lang/String;

.field private m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

.field m_image_picker:Lcom/netease/dwrg/ImagePicker;

.field private m_input_view:Lcom/netease/dwrg/InputView;

.field m_is_push_manager_init:Z

.field private m_is_vkb_shown:Z

.field private m_movie_view:Lcom/netease/dwrg/MovieView;

.field private m_neox_config:Landroid/content/SharedPreferences;

.field private m_neox_notif:Landroid/content/SharedPreferences;

.field private m_neox_root:Ljava/lang/String;

.field m_profile_have_runnable:Z

.field m_profile_info_timerHandler:Landroid/os/Handler;

.field m_profile_info_timerRunnable:Ljava/lang/Runnable;

.field private m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

.field private m_root_view_height:I

.field private m_root_view_width:I

.field private m_screen_shot_ob:Landroid/os/FileObserver;

.field private m_udid:Ljava/lang/String;

.field private m_view:Lcom/netease/neox/NeoXView;

.field private m_web_view:Lcom/netease/dwrg/NeoXWebView;

.field neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

.field private final sHasCallbackPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/dwrg/Client;->m_cancel_all_time:J

    .line 219
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    sput-object v0, Lcom/netease/dwrg/Client;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    .line 224
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "screenshot"

    aput-object v1, v0, v2

    const-string v1, "screen_shot"

    aput-object v1, v0, v3

    const-string v1, "screen-shot"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "screen shot"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "screencapture"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "screen_capture"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "screen-capture"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "screen capture"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "screencap"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "screen_cap"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "screen-cap"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "screen cap"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/dwrg/Client;->KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Lcom/netease/neox/NeoXClient;-><init>()V

    .line 164
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    .line 168
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    .line 175
    iput v3, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    .line 176
    iput v3, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    .line 180
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    .line 181
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    .line 182
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    .line 183
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_screen_shot_ob:Landroid/os/FileObserver;

    .line 185
    iput-object v2, p0, Lcom/netease/dwrg/Client;->mInternalObserver:Lcom/netease/dwrg/MediaContentObserver;

    .line 186
    iput-object v2, p0, Lcom/netease/dwrg/Client;->mExternalObserver:Lcom/netease/dwrg/MediaContentObserver;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->mUiHandler:Landroid/os/Handler;

    .line 189
    iput-boolean v3, p0, Lcom/netease/dwrg/Client;->m_is_vkb_shown:Z

    .line 191
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    .line 193
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 194
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 195
    iput-boolean v3, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    .line 197
    iput-object v2, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    .line 199
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_web_view:Lcom/netease/dwrg/NeoXWebView;

    .line 202
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    .line 205
    const-string v0, "h55"

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_dump_game:Ljava/lang/String;

    .line 206
    const-string v0, "24f58845a1e33e666296bcca8d4d78fa"

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_dump_appkey:Ljava/lang/String;

    .line 207
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_dump_game_version:Ljava/lang/String;

    .line 208
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_dump_basicinfo:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_dump_userdesc:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    .line 213
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 215
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_gmbridge_uid:Ljava/lang/String;

    .line 216
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_gmbridge_tokenSetter:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->sHasCallbackPaths:Ljava/util/List;

    .line 1064
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    .line 1083
    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    .line 1471
    iput-boolean v3, p0, Lcom/netease/dwrg/Client;->m_is_push_manager_init:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/Client;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/Client;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget v0, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    return v0
.end method

.method static synthetic access$102(Lcom/netease/dwrg/Client;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/dwrg/Client;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget v0, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    return v0
.end method

.method static synthetic access$202(Lcom/netease/dwrg/Client;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/dwrg/Client;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_is_vkb_shown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/netease/dwrg/Client;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/netease/dwrg/Client;->m_is_vkb_shown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/dwrg/Client;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget v0, p0, Lcom/netease/dwrg/Client;->m_current_network_type:I

    return v0
.end method

.method static synthetic access$602(Lcom/netease/dwrg/Client;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/netease/dwrg/Client;->m_current_network_type:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/NeoXWebView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Client;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_web_view:Lcom/netease/dwrg/NeoXWebView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netease/dwrg/Client;Lcom/netease/dwrg/NeoXWebView;)Lcom/netease/dwrg/NeoXWebView;
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # Lcom/netease/dwrg/NeoXWebView;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_web_view:Lcom/netease/dwrg/NeoXWebView;

    return-object p1
.end method

.method static synthetic access$802(Lcom/netease/dwrg/Client;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;)Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_gmbridge_tokenSetter:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/netease/dwrg/Client;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Client;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_gmbridge_uid:Ljava/lang/String;

    return-object p1
.end method

.method private calcNetmaskByPrefixLength(S)Ljava/lang/String;
    .locals 7
    .param p1, "len"    # S

    .prologue
    .line 966
    if-ltz p1, :cond_0

    const/16 v5, 0x20

    if-le p1, v5, :cond_2

    .line 968
    :cond_0
    const-string v4, "255.255.255.255"

    .line 986
    :cond_1
    return-object v4

    .line 971
    :cond_2
    const/4 v5, -0x1

    rsub-int/lit8 v6, p1, 0x20

    shl-int v1, v5, v6

    .line 972
    .local v1, "mask":I
    const/4 v3, 0x4

    .line 973
    .local v3, "partsNum":I
    new-array v2, v3, [I

    .line 975
    .local v2, "maskParts":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 977
    mul-int/lit8 v5, v0, 0x8

    rsub-int/lit8 v5, v5, 0x18

    shr-int v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v0

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    :cond_3
    const-string v4, ""

    .line 981
    .local v4, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_1

    .line 984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 982
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkScreenShot(Ljava/lang/String;J)Z
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J

    .prologue
    const/4 v1, 0x0

    .line 2446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 2461
    :cond_0
    :goto_0
    return v1

    .line 2450
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2453
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2455
    sget-object v3, Lcom/netease/dwrg/Client;->KEYWORDS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 2456
    .local v0, "keyWork":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2457
    const/4 v1, 0x1

    goto :goto_0

    .line 2455
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkScreenShotCb(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2465
    iget-object v2, p0, Lcom/netease/dwrg/Client;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2466
    const/4 v1, 0x1

    .line 2475
    :goto_0
    return v1

    .line 2469
    :cond_0
    iget-object v2, p0, Lcom/netease/dwrg/Client;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    .line 2470
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 2471
    iget-object v2, p0, Lcom/netease/dwrg/Client;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2470
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2474
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/netease/dwrg/Client;->sHasCallbackPaths:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getCancelAllTime()J
    .locals 2

    .prologue
    .line 1572
    sget-wide v0, Lcom/netease/dwrg/Client;->m_cancel_all_time:J

    return-wide v0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "id":I
    return v0
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "id":I
    return v0
.end method

.method private handleMediaRowData(Ljava/lang/String;J)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataTaken"    # J

    .prologue
    .line 2437
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/dwrg/Client;->checkScreenShot(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2438
    const-string v0, "ScreenShot"

    const-string v1, "on screen shot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-direct {p0, p1}, Lcom/netease/dwrg/Client;->checkScreenShotCb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2440
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnScreenShot()V

    .line 2443
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .prologue
    .line 2122
    const/16 v6, 0x1000

    new-array v4, v6, [B

    .line 2123
    .local v4, "mBuffer":[B
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 2124
    .local v5, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 2126
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2127
    .end local v1    # "is":Ljava/io/FileInputStream;
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 2128
    .local v3, "len":I
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2130
    if-lez v3, :cond_3

    .line 2132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2133
    aget-byte v6, v4, v0

    if-ne v6, p2, :cond_2

    .line 2137
    :cond_0
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2142
    if-eqz v2, :cond_1

    .line 2144
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2148
    :cond_1
    :goto_1
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 2150
    .end local v0    # "i":I
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_2
    return-object v6

    .line 2132
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2142
    .end local v0    # "i":I
    :cond_3
    if-eqz v2, :cond_4

    .line 2144
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2148
    :cond_4
    :goto_3
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v2

    .line 2150
    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :goto_4
    const/4 v6, 0x0

    goto :goto_2

    .line 2139
    :catch_0
    move-exception v6

    .line 2142
    :goto_5
    if-eqz v1, :cond_5

    .line 2144
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2148
    :cond_5
    :goto_6
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 2140
    :catch_1
    move-exception v6

    .line 2142
    :goto_7
    if-eqz v1, :cond_6

    .line 2144
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2148
    :cond_6
    :goto_8
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_4

    .line 2142
    :catchall_0
    move-exception v6

    :goto_9
    if-eqz v1, :cond_7

    .line 2144
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 2148
    :cond_7
    :goto_a
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 2145
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v0    # "i":I
    .restart local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    :catch_2
    move-exception v7

    goto :goto_1

    .end local v0    # "i":I
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v2    # "is":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .restart local v1    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    goto :goto_6

    :catch_5
    move-exception v6

    goto :goto_8

    :catch_6
    move-exception v7

    goto :goto_a

    .line 2142
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_9

    .line 2140
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_7

    .line 2139
    .end local v1    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "is":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dst_img_filepath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2570
    if-nez p1, :cond_1

    .line 2612
    :cond_0
    :goto_0
    return v4

    .line 2574
    :cond_1
    if-eqz p2, :cond_0

    .line 2577
    const/4 v0, 0x0

    .line 2578
    .local v0, "compress_format":Landroid/graphics/Bitmap$CompressFormat;
    const-string v5, ".png"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2579
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2588
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2591
    .local v1, "dst_file":Ljava/io/File;
    const/4 v3, 0x0

    .line 2593
    .local v3, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2601
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x64

    invoke-virtual {p1, v0, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2606
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2612
    const/4 v4, 0x1

    goto :goto_0

    .line 2580
    .end local v1    # "dst_file":Ljava/io/File;
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    :cond_2
    const-string v5, ".jpg"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2581
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 2582
    :cond_3
    const-string v5, ".webp"

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2583
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 2594
    .restart local v1    # "dst_file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 2595
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2607
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 2608
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public EnableProfile(Z)V
    .locals 4
    .param p1, "enalbeProfile"    # Z

    .prologue
    .line 1794
    if-nez p1, :cond_1

    .line 1796
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    .line 1809
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    if-nez v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    goto :goto_0
.end method

.method public MarkTrepnProfilerState(ILjava/lang/String;)V
    .locals 2
    .param p1, "state_value"    # I
    .param p2, "state_desc"    # Ljava/lang/String;

    .prologue
    .line 1813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.quicinc.Trepn.UpdateAppState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1814
    .local v0, "stateUpdate":Landroid/content/Intent;
    const-string v1, "com.quicinc.Trepn.UpdateAppState.Value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1815
    const-string v1, "com.quicinc.Trepn.UpdateAppState.Value.Desc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->sendBroadcast(Landroid/content/Intent;)V

    .line 1817
    return-void
.end method

.method public NeedRemoveShaderCache()Z
    .locals 4

    .prologue
    .line 721
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v2, "need_remove_shader_cache"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 722
    .local v0, "needRemoveShaderCache":Z
    return v0
.end method

.method public SaveResolutionToSharedPreferences(II)V
    .locals 3
    .param p1, "resW"    # I
    .param p2, "resH"    # I

    .prologue
    .line 1865
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1866
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "RealWidth"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "RealHeight"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1867
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1868
    return-void
.end method

.method cancelAllNotifications()V
    .locals 11

    .prologue
    .line 1541
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1542
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/netease/dwrg/Client;->m_cancel_all_time:J

    .line 1546
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v9, "PendingIDs"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1547
    .local v6, "pending_ids_string":Ljava/lang/String;
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "PendingIDs"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1548
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1549
    .local v5, "pending_id_strings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v5

    if-ge v1, v8, :cond_1

    .line 1553
    :try_start_0
    aget-object v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1554
    .local v4, "pending_id":I
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/netease/dwrg/AlarmReceiver;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1555
    .local v2, "intent1":Landroid/content/Intent;
    const-string v8, "ScheduleNotice"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const/high16 v8, 0x20000000

    invoke-static {p0, v4, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1557
    .local v7, "sender":Landroid/app/PendingIntent;
    if-eqz v7, :cond_0

    .line 1559
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1560
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "intent1":Landroid/content/Intent;
    .end local v4    # "pending_id":I
    .end local v7    # "sender":Landroid/app/PendingIntent;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1568
    :cond_1
    return-void

    .line 1563
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method cancelNotice(I)Z
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 1577
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1578
    .local v3, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v3, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1579
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1580
    .local v4, "notice_string":Ljava/lang/String;
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v9, "PendingIDs"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1581
    .local v6, "pending_ids_string":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1582
    .local v5, "pending_id_strings":[Ljava/lang/String;
    const-string v6, ""

    .line 1583
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v5

    if-ge v1, v8, :cond_1

    .line 1585
    aget-object v8, v5, v1

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v5, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1587
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1583
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1590
    :cond_1
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "PendingIDs"

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1591
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/netease/dwrg/AlarmReceiver;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1592
    .local v2, "intent1":Landroid/content/Intent;
    const-string v8, "ScheduleNotice"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    const/high16 v8, 0x20000000

    invoke-static {p0, p1, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1594
    .local v7, "sender":Landroid/app/PendingIntent;
    if-eqz v7, :cond_2

    .line 1596
    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1597
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1598
    const/4 v8, 0x1

    .line 1600
    .end local v0    # "am":Landroid/app/AlarmManager;
    :goto_1
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method checkRecordingPermission()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2340
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Documents/test.amr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2341
    .local v1, "filename":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->startRecording(Ljava/lang/String;)Z

    .line 2342
    sget-object v4, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    .line 2343
    .local v2, "r":I
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    if-lez v2, :cond_0

    const/4 v3, 0x1

    .line 2349
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "r":I
    :cond_0
    :goto_0
    return v3

    .line 2347
    :catch_0
    move-exception v0

    .line 2349
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public clearChannel()V
    .locals 0

    .prologue
    .line 1168
    return-void
.end method

.method public final cropImage(Ljava/lang/String;IIIILjava/lang/String;)Z
    .locals 6
    .param p1, "src_img_filepath"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "dst_img_filepath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2535
    if-nez p1, :cond_1

    .line 2565
    :cond_0
    :goto_0
    return v4

    .line 2538
    :cond_1
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 2542
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2543
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2544
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2545
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2546
    .local v2, "img_width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2547
    .local v1, "img_height":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 2551
    add-int v5, p2, p4

    if-gt v5, v2, :cond_0

    add-int v5, p3, p5

    if-gt v5, v1, :cond_0

    .line 2555
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2556
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2560
    invoke-static {v0, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2561
    if-eqz v0, :cond_0

    .line 2565
    invoke-direct {p0, v0, p6}, Lcom/netease/dwrg/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x3

    .line 633
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 635
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 636
    .local v1, "c":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-nez v6, :cond_0

    .line 638
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "chars":Ljava/lang/String;
    const-string v6, "NeoXDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendKeyEvent - ACTION_MULTIPLE - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz v2, :cond_0

    .line 642
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 644
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 645
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnChar(I)V

    .line 642
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    .end local v2    # "chars":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    const/16 v6, 0x18

    if-ne v1, v6, :cond_1

    .line 654
    invoke-virtual {p0, v9}, Lcom/netease/dwrg/Client;->setVolumeControlStream(I)V

    .line 655
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 656
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 657
    .local v5, "volume":I
    if-nez v5, :cond_1

    .line 658
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v9, v6, v7}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 661
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v5    # "volume":I
    :cond_1
    return v4
.end method

.method public enableAudioVolumeListener(Z)V
    .locals 9
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x1

    .line 754
    if-nez p1, :cond_3

    .line 755
    const-string v5, "NeoX"

    const-string v6, "[kk]Unregister audio volume listener......"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v5, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    if-eqz v5, :cond_0

    .line 757
    iget-object v5, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    invoke-virtual {p0, v5}, Lcom/netease/dwrg/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 758
    :cond_0
    iget-object v5, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    if-eqz v5, :cond_1

    .line 759
    iget-object v5, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    invoke-virtual {p0, v5}, Lcom/netease/dwrg/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 760
    :cond_1
    iget-object v5, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    if-eqz v5, :cond_2

    .line 761
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 787
    :cond_2
    :goto_0
    return-void

    .line 766
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 769
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 770
    .local v2, "filter1":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 774
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_6

    .line 775
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 776
    .local v4, "volume":I
    if-nez v4, :cond_4

    invoke-static {v5}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(I)V

    .line 777
    :cond_4
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    invoke-static {v6}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 778
    iget-object v6, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    iput v4, v6, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:I

    .line 780
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->isBlueToothHeadsetConnected()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    move v3, v5

    .line 781
    .local v3, "headset_on":Z
    :goto_1
    if-eqz v3, :cond_6

    .line 782
    invoke-static {v5}, Lcom/netease/neox/NativeInterface;->NativeOnHeadset(I)V

    .line 785
    .end local v3    # "headset_on":Z
    .end local v4    # "volume":I
    :cond_6
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    invoke-virtual {v6, v7, v5, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 786
    const-string v5, "NeoX"

    const-string v6, "[kk]Register Audio Volume Listener Done!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    .restart local v4    # "volume":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public envManager_enableLog(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 675
    invoke-static {p1}, Lcom/netease/environment/EnvManager;->enableLog(Z)V

    .line 676
    return-void
.end method

.method public envManager_initSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "game_id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 668
    move-object v0, p0

    .line 669
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0, p1, p2, p3}, Lcom/netease/environment/EnvManager;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public envManager_reviewNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-static {p1}, Lcom/netease/environment/EnvManager;->reviewNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public envManager_reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p1, p2, p3}, Lcom/netease/environment/EnvManager;->reviewWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAvailableInternalMemorySize()F
    .locals 9

    .prologue
    const/high16 v8, 0x44800000    # 1024.0f

    .line 2359
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 2360
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2361
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 2362
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 2363
    .local v0, "availableBlocks":J
    const/high16 v6, 0x3f800000    # 1.0f

    long-to-float v7, v0

    mul-float/2addr v6, v7

    long-to-float v7, v2

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    div-float/2addr v6, v8

    return v6
.end method

.method getBatteryCharging()Z
    .locals 5

    .prologue
    .line 2182
    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2183
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2184
    .local v1, "status":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getBatteryLevel()F
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 2189
    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2190
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string v3, "level"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2191
    .local v1, "level":I
    const-string v3, "scale"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2194
    .local v2, "scale":I
    if-eq v1, v6, :cond_0

    if-ne v2, v6, :cond_1

    .line 2195
    :cond_0
    const/high16 v3, 0x42480000    # 50.0f

    .line 2197
    :goto_0
    return v3

    :cond_1
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    goto :goto_0
.end method

.method getBrightness()F
    .locals 10

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 2228
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/netease/dwrg/Client$28;

    invoke-direct {v6, p0}, Lcom/netease/dwrg/Client$28;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-direct {v3, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2246
    .local v3, "futureResult":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Float;>;"
    invoke-virtual {p0, v3}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2248
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 2251
    .local v4, "returnValue":Ljava/lang/Float;
    const-wide/16 v6, 0x7d0

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    .line 2252
    if-nez v4, :cond_0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2257
    :cond_0
    :goto_0
    const-string v6, "getBrightness"

    const-string v7, "%f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    return v6

    .line 2253
    :catch_0
    move-exception v5

    .line 2254
    .local v5, "wrappedException":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 2255
    .local v2, "cause":Ljava/lang/Throwable;
    const-string v6, "Error"

    const-string v7, "Call has thrown an exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getChannel()Lcom/netease/dwrg/Channel;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Lcom/netease/dwrg/Channel;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Channel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClipboardText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1623
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 1626
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    .line 1628
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1629
    .local v1, "item":Landroid/content/ClipData$Item;
    if-eqz v1, :cond_0

    .line 1631
    invoke-virtual {v1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1635
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDistroId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 246
    const-string v1, ""

    .line 248
    .local v1, "distroId":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 249
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "com.netease.apk_distro/config.json"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "content":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 261
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/io/IOException;
    const-string v6, ""

    .line 267
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 259
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v3, "jsonContent":Lorg/json/JSONObject;
    const-string v6, "distro_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v6, v1

    .line 267
    goto :goto_1

    .line 263
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "jsonContent":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 264
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, ""

    goto :goto_1
.end method

.method getGovernorInfo()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 2155
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-direct {p0, v6, v7}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 2156
    .local v4, "scaling_governor":Ljava/lang/String;
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-direct {p0, v6, v7}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 2157
    .local v5, "scaling_max_freq":Ljava/lang/String;
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {p0, v6, v7}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 2158
    .local v3, "scaling_cur_freq":Ljava/lang/String;
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {p0, v6, v7}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 2159
    .local v1, "cpuinfo_max_freq":Ljava/lang/String;
    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    invoke-direct {p0, v6, v7}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 2161
    .local v0, "cpuinfo_cur_freq":Ljava/lang/String;
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    aput-object v0, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2163
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getHunterDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1768
    const-string v2, ""

    .line 1770
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/netease/androidcrashhandler/DeviceInfo;->getInstance()Lcom/netease/androidcrashhandler/DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/androidcrashhandler/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    .line 1772
    .local v0, "infos":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "key":Ljava/lang/Object;
    move-object v4, v1

    .line 1773
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1774
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "value":Ljava/lang/Object;
    move-object v2, v3

    .line 1775
    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1779
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 991
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 992
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getImageHeight(Ljava/lang/String;)I
    .locals 2
    .param p1, "img_filepath"    # Ljava/lang/String;

    .prologue
    .line 2489
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2490
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2491
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2492
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    return v1
.end method

.method public final getImageWidth(Ljava/lang/String;)I
    .locals 2
    .param p1, "img_filepath"    # Ljava/lang/String;

    .prologue
    .line 2481
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2482
    .local v0, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2483
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2484
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    return v1
.end method

.method public getInternalDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2319
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIpInfo()Ljava/lang/String;
    .locals 17

    .prologue
    .line 904
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v8, "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "wlan0"

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    const-string v14, "en0"

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    const-string v14, "eth0"

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getNetworkType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_0

    .line 910
    const-string v14, "NeoX"

    const-string v15, "get ip: none wifi ip"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v14, "rmnet0"

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    const-string v14, "ppp0"

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v11

    .local v11, "networkEn":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 917
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 918
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v14

    if-nez v14, :cond_1

    .line 923
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    .line 924
    .local v10, "netName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 925
    .local v9, "nameMatched":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 927
    .local v13, "tmp":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 929
    const/4 v9, 0x1

    .line 933
    .end local v13    # "tmp":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_1

    .line 935
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v6

    .line 936
    .local v6, "intfAddrList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-ge v2, v14, :cond_1

    .line 938
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InterfaceAddress;

    .line 939
    .local v5, "intfAddr":Ljava/net/InterfaceAddress;
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 941
    .local v3, "inetAddr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v14

    array-length v14, v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_5

    .line 936
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    :cond_5
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 947
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v12

    .line 949
    .local v12, "prefixLength":S
    const-string v14, "NeoX"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "netName: ip is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " netmask is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/netease/dwrg/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/netease/dwrg/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 960
    .end local v2    # "i":I
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "intfAddr":Ljava/net/InterfaceAddress;
    .end local v6    # "intfAddrList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    .end local v7    # "ipAddr":Ljava/lang/String;
    .end local v8    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "nameMatched":Z
    .end local v10    # "netName":Ljava/lang/String;
    .end local v11    # "networkEn":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v12    # "prefixLength":S
    :goto_1
    return-object v14

    .line 954
    .restart local v8    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "networkEn":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_6
    const-string v14, "NeoX"

    const-string v15, "no ip address found"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string v14, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 957
    .end local v8    # "matchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "networkEn":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_0
    move-exception v1

    .line 959
    .local v1, "e":Ljava/lang/Exception;
    const-string v14, "NeoX"

    const-string v15, "encounter error when find ip"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v14, ""

    goto :goto_1
.end method

.method getMaliGPUCoreCount()I
    .locals 10

    .prologue
    .line 2263
    const/4 v1, -0x1

    .line 2267
    .local v1, "result":I
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "/sys/class/misc/mali0/device/core_mask"

    const-string v6, "r"

    invoke-direct {v0, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    .local v0, "localRandomAccessFile":Ljava/io/RandomAccessFile;
    const-string v3, ""

    .line 2272
    .local v3, "str2":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2273
    .local v2, "str1":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 2279
    :goto_0
    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2280
    .local v4, "str3":Ljava/lang/String;
    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2283
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-int v1, v6

    .line 2290
    .end local v0    # "localRandomAccessFile":Ljava/io/RandomAccessFile;
    .end local v2    # "str1":Ljava/lang/String;
    .end local v3    # "str2":Ljava/lang/String;
    .end local v4    # "str3":Ljava/lang/String;
    :cond_1
    :goto_1
    return v1

    .line 2275
    .restart local v0    # "localRandomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v2    # "str1":Ljava/lang/String;
    .restart local v3    # "str2":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2277
    const-string v5, "AVAILABLE CORE MASK : "

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2286
    .end local v0    # "localRandomAccessFile":Ljava/io/RandomAccessFile;
    .end local v2    # "str1":Ljava/lang/String;
    .end local v3    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getNeoXConfig(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "defvalue"    # Z

    .prologue
    .line 697
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNeoXConfigs()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v0, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 705
    .local v1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 707
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 709
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 714
    .local v3, "result":[Ljava/lang/String;
    return-object v3
.end method

.method getNetworkType()I
    .locals 4

    .prologue
    .line 1313
    const-string v2, "connectivity"

    .line 1314
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1315
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1316
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 1319
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1321
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1327
    :goto_0
    return v2

    .line 1323
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0

    .line 1327
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getPushToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_is_push_manager_init:Z

    if-eqz v0, :cond_0

    .line 1607
    invoke-static {}, Lcom/netease/pushclient/PushManager;->getDevId()Ljava/lang/String;

    move-result-object v0

    .line 1611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 727
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 728
    .local v3, "p":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v5, "RealWidth"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 729
    iget-object v4, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v5, "RealHeight"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 730
    iget v4, v3, Landroid/graphics/Point;->x:I

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-nez v4, :cond_1

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 733
    .local v0, "display":Landroid/view/Display;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 735
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 745
    :goto_0
    iget-object v4, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 746
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "RealWidth"

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "RealHeight"

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 747
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 749
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-object v3

    .line 739
    .restart local v0    # "display":Landroid/view/Display;
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 740
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 741
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 742
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public getRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1873
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1874
    .local v0, "ro":I
    packed-switch v0, :pswitch_data_0

    .line 1885
    :goto_0
    :pswitch_0
    return v1

    .line 1879
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 1881
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 1883
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 1874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRunningProcess()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 890
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 892
    .local v2, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 893
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 894
    .local v1, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 896
    .end local v1    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 897
    .local v3, "result":[Ljava/lang/String;
    return-object v3
.end method

.method getTotalInternalMemorySize()J
    .locals 8

    .prologue
    .line 2371
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 2372
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 2374
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 2375
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    return-wide v6
.end method

.method getTotalMemory()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    .line 2169
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 2170
    const/4 v4, 0x0

    .line 2177
    :goto_0
    return v4

    .line 2173
    :cond_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2174
    .local v0, "actManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2175
    .local v1, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2176
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v4, v6

    div-long v2, v4, v6

    .line 2177
    .local v2, "totalMemory":J
    long-to-int v4, v2

    goto :goto_0
.end method

.method getTotalMemorySize(Landroid/content/Context;)J
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2384
    const-string v1, "/proc/meminfo"

    .line 2386
    .local v1, "dir":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2387
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v6, 0x800

    invoke-direct {v0, v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2388
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2389
    .local v4, "memoryLine":Ljava/lang/String;
    const-string v6, "MemTotal:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2390
    .local v5, "subMemoryLine":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2391
    const-string v6, "\\D+"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    .line 2395
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "memoryLine":Ljava/lang/String;
    .end local v5    # "subMemoryLine":Ljava/lang/String;
    :goto_0
    return-wide v6

    .line 2392
    :catch_0
    move-exception v2

    .line 2393
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2395
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 12

    .prologue
    .line 850
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 852
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 853
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    .line 854
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 856
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 857
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v8, "android_id"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    .line 859
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 863
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    .line 864
    .local v3, "ip":Ljava/net/InetAddress;
    invoke-static {v3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v5

    .line 865
    .local v5, "network":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    .line 866
    .local v4, "mac":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v4

    if-ge v2, v8, :cond_1

    .line 869
    const-string v9, "%02X%s"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v11, v4, v2

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v8

    const/4 v11, 0x1

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_0

    const-string v8, "-"

    :goto_1
    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 869
    :cond_0
    const-string v8, ""

    goto :goto_1

    .line 871
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "i":I
    .end local v3    # "ip":Ljava/net/InetAddress;
    .end local v4    # "mac":[B
    .end local v5    # "network":Ljava/net/NetworkInterface;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    return-object v8

    .line 873
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 875
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 997
    const-string v1, "neox_root"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "string"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    .line 1006
    :goto_0
    return-object v1

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1002
    .local v0, "resourceId":I
    if-nez v0, :cond_1

    .line 1004
    const/4 v1, 0x0

    goto :goto_0

    .line 1006
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public handleMediaContentChange(Landroid/net/Uri;)V
    .locals 13
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2399
    const/4 v6, 0x0

    .line 2401
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/netease/dwrg/Client;->MEDIA_PROJECTIONS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_added desc limit 1"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2409
    if-nez v6, :cond_1

    .line 2430
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2434
    :cond_0
    :goto_0
    return-void

    .line 2413
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 2430
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2418
    :cond_2
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2419
    .local v8, "dataIndex":I
    const-string v0, "datetaken"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2422
    .local v9, "dateTakenIndex":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2423
    .local v7, "data":Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2426
    .local v10, "dateTaken":J
    invoke-direct {p0, v7, v10, v11}, Lcom/netease/dwrg/Client;->handleMediaRowData(Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2430
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2427
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "dataIndex":I
    .end local v9    # "dateTakenIndex":I
    .end local v10    # "dateTaken":J
    :catch_0
    move-exception v12

    .line 2428
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2430
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2430
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public hideVirtualKeyboard()V
    .locals 3

    .prologue
    .line 807
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 808
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 810
    const-string v1, "NeoX"

    const-string v2, "HideVirtualKeyboard: Input Method Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 1
    .param p1, "pluginMgr"    # Lcom/netease/neox/PluginManager;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 160
    new-instance v0, Lcom/netease/neox/PluginApp;

    invoke-direct {v0}, Lcom/netease/neox/PluginApp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 162
    return-void
.end method

.method public isApplicationBroughtToBackground()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1851
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1852
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1853
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1854
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1855
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 1860
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public isBlueToothHeadsetConnected()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 819
    const/4 v1, 0x0

    .line 822
    .local v1, "retval":Z
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 823
    :goto_0
    const-string v2, "NeoX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlueToothHeadsetConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_1
    return v1

    .line 822
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public isDeviceRooted()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method isRecording()Z
    .locals 1

    .prologue
    .line 2314
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRunningOnEmulator()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 281
    const/4 v0, 0x0

    return v0

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sdk_x86"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vbox86p"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Emulator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Android SDK built for x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BlueStacks"

    .line 293
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "generic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    :cond_2
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Genymotion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "BlueStacks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const-string v1, "goldfish"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTablet()Z
    .locals 2

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1096
    invoke-super {p0, p1, p2, p3}, Lcom/netease/neox/NeoXClient;->onActivityResult(IILandroid/content/Intent;)V

    .line 1098
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/dwrg/ImagePicker;->onActivityResult(IILandroid/content/Intent;)V

    .line 1103
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOnActivityResult(IILandroid/content/Intent;)V

    .line 1105
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/dwrg/Channel;->on_activityResult(IILandroid/content/Intent;)V

    .line 1109
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 318
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 319
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onCreate(Landroid/os/Bundle;)V

    .line 321
    const-string v7, "NeoXView"

    invoke-virtual {p0, v7}, Lcom/netease/dwrg/Client;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object v7

    check-cast v7, Lcom/netease/neox/PluginNeoXView;

    invoke-virtual {v7}, Lcom/netease/neox/PluginNeoXView;->getView()Lcom/netease/neox/NeoXView;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    .line 322
    const-string v7, "neox_config"

    invoke-virtual {p0, v7, v10}, Lcom/netease/dwrg/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    .line 323
    const-string v7, "neox_notif"

    invoke-virtual {p0, v7, v10}, Lcom/netease/dwrg/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    .line 324
    iget-object v7, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v8, "NeoXRoot"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    .line 325
    iget-object v7, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "neox_root"

    invoke-direct {p0, v8}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    .line 331
    :cond_0
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 332
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v5

    .line 333
    .local v5, "networkutils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    invoke-virtual {v5}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v4

    .line 334
    .local v4, "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v7, "project"

    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_dump_game:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v7, "appkey"

    iget-object v8, p0, Lcom/netease/dwrg/Client;->m_dump_appkey:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object v3, p0

    .line 337
    .local v3, "client":Landroid/content/Context;
    new-instance v7, Lcom/netease/dwrg/Client$1;

    invoke-direct {v7, p0, v3}, Lcom/netease/dwrg/Client$1;-><init>(Lcom/netease/dwrg/Client;Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setCallBack(Lcom/netease/androidcrashhandler/MyCrashCallBack;)V

    .line 374
    invoke-virtual {v0, p0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->startCrashHandle(Landroid/content/Context;)V

    .line 375
    iget-object v7, p0, Lcom/netease/dwrg/Client;->m_dump_game_version:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setResVersion(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 380
    new-instance v7, Lcom/netease/dwrg/InputView;

    invoke-direct {v7, p0}, Lcom/netease/dwrg/InputView;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    .line 382
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getChannel()Lcom/netease/dwrg/Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    .line 383
    iget-object v7, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v7}, Lcom/netease/dwrg/Channel;->initialize()V

    .line 386
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->hideVirtualKeyboard()V

    .line 388
    new-instance v7, Lcom/netease/dwrg/AudioVolumeContentObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/netease/dwrg/AudioVolumeContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    .line 389
    new-instance v7, Lcom/netease/dwrg/RingerModeReceiver;

    invoke-direct {v7}, Lcom/netease/dwrg/RingerModeReceiver;-><init>()V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    .line 390
    new-instance v7, Lcom/netease/dwrg/HeadsetModeReceiver;

    invoke-direct {v7}, Lcom/netease/dwrg/HeadsetModeReceiver;-><init>()V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    .line 392
    new-instance v7, Lcom/netease/dwrg/MediaContentObserver;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/netease/dwrg/Client;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8, v9}, Lcom/netease/dwrg/MediaContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->mInternalObserver:Lcom/netease/dwrg/MediaContentObserver;

    .line 393
    new-instance v7, Lcom/netease/dwrg/MediaContentObserver;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/netease/dwrg/Client;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8, v9}, Lcom/netease/dwrg/MediaContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->mExternalObserver:Lcom/netease/dwrg/MediaContentObserver;

    .line 395
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/netease/dwrg/Client;->mInternalObserver:Lcom/netease/dwrg/MediaContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/netease/dwrg/Client;->mExternalObserver:Lcom/netease/dwrg/MediaContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 407
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 408
    .local v1, "activityRootView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    .line 409
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    .line 410
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/netease/dwrg/Client$2;

    invoke-direct {v8, p0, v1}, Lcom/netease/dwrg/Client$2;-><init>(Lcom/netease/dwrg/Client;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 456
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 457
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getNetworkType()I

    move-result v7

    iput v7, p0, Lcom/netease/dwrg/Client;->m_current_network_type:I

    .line 458
    new-instance v2, Lcom/netease/dwrg/Client$3;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$3;-><init>(Lcom/netease/dwrg/Client;)V

    .line 481
    .local v2, "callStateListener":Landroid/telephony/PhoneStateListener;
    const/16 v7, 0x40

    invoke-virtual {v6, v2, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 482
    const/16 v7, 0x20

    invoke-virtual {v6, v2, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 484
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 485
    new-instance v7, Lcom/netease/dwrg/Client$4;

    invoke-direct {v7, p0}, Lcom/netease/dwrg/Client$4;-><init>(Lcom/netease/dwrg/Client;)V

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 557
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_1

    .line 558
    const-string v7, "clipboard"

    invoke-virtual {p0, v7}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ClipboardManager;

    iput-object v7, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 559
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 621
    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntDestroy()V

    .line 623
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->on_destroy()V

    .line 627
    :cond_0
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onDestroy()V

    .line 628
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1114
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onNewIntent(Landroid/content/Intent;)V

    .line 1116
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/Channel;->on_newIntent(Landroid/content/Intent;)V

    .line 1120
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onPause()V

    .line 566
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    invoke-virtual {v0}, Lcom/netease/dwrg/CameraPreviewCapture;->onPause()V

    .line 570
    :cond_0
    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOnPause()V

    .line 572
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    .line 574
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->on_pause()V

    .line 578
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 1163
    invoke-static {p1, p2, p3}, Lcom/netease/pushclient/PushManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1164
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 601
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onRestart()V

    .line 605
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->on_restart()V

    .line 610
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 583
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onResume()V

    .line 586
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    invoke-virtual {v0}, Lcom/netease/dwrg/CameraPreviewCapture;->onResume()V

    .line 591
    :cond_0
    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOnResume()V

    .line 593
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->on_resume()V

    .line 597
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1151
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1155
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/Channel;->on_saveInstanceState(Landroid/os/Bundle;)V

    .line 1159
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1124
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStart()V

    .line 1128
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->on_start()V

    .line 1133
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1137
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStop()V

    .line 1141
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_channel:Lcom/netease/dwrg/Channel;

    invoke-virtual {v0}, Lcom/netease/dwrg/Channel;->on_stop()V

    .line 1146
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 615
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onWindowFocusChanged(Z)V

    .line 616
    return-void
.end method

.method openGMWebView(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 1239
    const-string v0, "GMBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openGMWebView] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_gmbridge_uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_gmbridge_uid:Ljava/lang/String;

    if-eq v0, p1, :cond_2

    .line 1241
    :cond_0
    const-string v0, "GMBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openGMWebView] uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m_gmbridge_uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_gmbridge_uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_gmbridge_uid:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntDestroy()V

    .line 1244
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->setShowFloatWindowWhenInit(Z)V

    .line 1245
    new-instance v0, Lcom/netease/dwrg/Client$7;

    invoke-direct {v0, p0, p1}, Lcom/netease/dwrg/Client$7;-><init>(Lcom/netease/dwrg/Client;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V

    .line 1258
    :cond_2
    invoke-static {}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntOpenGMPage()V

    .line 1260
    return-void
.end method

.method public openLocationSetting()V
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 1922
    new-instance v0, Lcom/netease/dwrg/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/dwrg/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager;->openLocationSetting(Landroid/content/Context;)V

    .line 1925
    return-void
.end method

.method openSMS(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1294
    const-string v3, "smsto:10086"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1295
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1296
    .local v1, "it":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1298
    const-string v3, "sms_body"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    const/4 v3, 0x1

    .line 1307
    :goto_0
    return v3

    .line 1305
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method openURL(Ljava/lang/String;)Z
    .locals 5
    .param p1, "str_url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1218
    if-eqz p1, :cond_0

    .line 1220
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1221
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1224
    .local v1, "it":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    const/4 v3, 0x1

    .line 1232
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v3

    .line 1227
    .restart local v1    # "it":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method openWebView(Ljava/lang/String;)V
    .locals 1
    .param p1, "str_url"    # Ljava/lang/String;

    .prologue
    .line 1172
    new-instance v0, Lcom/netease/dwrg/Client$5;

    invoke-direct {v0, p0, p1}, Lcom/netease/dwrg/Client$5;-><init>(Lcom/netease/dwrg/Client;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1180
    return-void
.end method

.method pauseVideo()V
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieView;->pauseVideo()V

    .line 1443
    :cond_0
    return-void
.end method

.method pickImage(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
    .locals 13
    .param p1, "pick_mode"    # I
    .param p2, "picked_img_save_mode"    # I
    .param p3, "picked_img_name"    # Ljava/lang/String;
    .param p4, "picked_img_max_width"    # I
    .param p5, "picked_img_max_height"    # I
    .param p6, "crop_mode"    # I
    .param p7, "crop_aspect_width"    # I
    .param p8, "crop_aspect_height"    # I
    .param p9, "cropped_img_save_mode"    # I
    .param p10, "cropped_img_name"    # Ljava/lang/String;
    .param p11, "cropped_img_max_width"    # I
    .param p12, "cropped_img_max_height"    # I

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Lcom/netease/dwrg/ImagePicker;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/ImagePicker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    .line 1073
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    invoke-virtual {v0}, Lcom/netease/dwrg/ImagePicker;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    const/4 v0, 0x0

    .line 1077
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_image_picker:Lcom/netease/dwrg/ImagePicker;

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/netease/dwrg/ImagePicker;->execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method playVideo(Ljava/lang/String;IIIIIII)Z
    .locals 16
    .param p1, "videoPath"    # Ljava/lang/String;
    .param p2, "videoMode"    # I
    .param p3, "scaleMode"    # I
    .param p4, "controlMode"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "height"    # I
    .param p8, "width"    # I

    .prologue
    .line 1379
    const-string v1, "neox_config"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/netease/dwrg/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1380
    .local v14, "neox_config":Landroid/content/SharedPreferences;
    const-string v1, "NeoXRoot"

    const/4 v3, 0x0

    invoke-interface {v14, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1381
    .local v13, "neoxPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/Documents/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1385
    .local v11, "documentPath":Ljava/lang/String;
    const-string v1, "yuxin: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const-string v1, "yuxin videoMode: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string v1, "yuxin left: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v1, "yuxin top: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const-string v1, "yuxin width: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v1, "yuxin height: "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1397
    .local v2, "video_path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1427
    .local v10, "in_asset":Z
    :goto_0
    new-instance v1, Lcom/netease/dwrg/MovieView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/netease/dwrg/MovieView;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    .line 1428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v1}, Lcom/netease/dwrg/MovieView;->initialize()Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    move/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lcom/netease/dwrg/MovieView;->playVideo(Ljava/lang/String;IIIIIIIZ)V

    .line 1432
    const/4 v1, 0x1

    .end local v2    # "video_path":Ljava/lang/String;
    .end local v10    # "in_asset":Z
    :goto_1
    return v1

    .line 1399
    :cond_0
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1402
    .restart local v2    # "video_path":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "in_asset":Z
    goto :goto_0

    .line 1405
    .end local v2    # "video_path":Ljava/lang/String;
    .end local v10    # "in_asset":Z
    :cond_1
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1407
    move-object/from16 v2, p1

    .line 1408
    .restart local v2    # "video_path":Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "in_asset":Z
    goto :goto_0

    .line 1415
    .end local v2    # "video_path":Ljava/lang/String;
    .end local v10    # "in_asset":Z
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 1416
    .local v15, "stream":Ljava/io/InputStream;
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    move-object/from16 v2, p1

    .line 1418
    .restart local v2    # "video_path":Ljava/lang/String;
    const/4 v10, 0x1

    .restart local v10    # "in_asset":Z
    goto :goto_0

    .line 1420
    .end local v2    # "video_path":Ljava/lang/String;
    .end local v10    # "in_asset":Z
    .end local v15    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v12

    .line 1422
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "NeoX"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video path not exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v1, 0x0

    goto :goto_1
.end method

.method playVoice(Ljava/lang/String;F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "volume"    # F

    .prologue
    .line 2324
    sput-object p0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2325
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->preparePlay(Ljava/lang/String;)Z

    .line 2326
    invoke-static {p2}, Lcom/netease/dwrg/GameVoiceUtils;->setPlayVolume(F)V

    .line 2327
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->startPlay()Z

    .line 2328
    return-void
.end method

.method public postHunterMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1739
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1740
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v2

    .line 1741
    .local v2, "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    new-instance v1, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 1742
    .local v1, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v3, "identify"

    invoke-virtual {v1, v3, p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const-string v3, "error_type"

    const-string v4, "OTHER"

    invoke-virtual {v1, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".other"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v1, p2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v2, v1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->post(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 1747
    return-void
.end method

.method public postScriptError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "identify"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 1727
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1728
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v2

    .line 1729
    .local v2, "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    new-instance v1, Lcom/netease/androidcrashhandler/MyPostEntity;

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/netease/androidcrashhandler/MyPostEntity;-><init>(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 1730
    .local v1, "entity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v3, "identify"

    invoke-virtual {v1, v3, p1}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".script"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v1, p2, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v2, v1}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postScriptError(Lcom/netease/androidcrashhandler/MyPostEntity;)V

    .line 1734
    return-void
.end method

.method public postUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "user_name"    # Ljava/lang/String;
    .param p3, "server_name"    # Ljava/lang/String;
    .param p4, "urs"    # Ljava/lang/String;

    .prologue
    .line 1752
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1753
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v1

    .line 1754
    .local v1, "networkUtils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    if-eqz p4, :cond_0

    .line 1756
    invoke-virtual {v1, p1, p4, p2, p3}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :goto_0
    return-void

    .line 1760
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->postUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeWebView()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_web_view:Lcom/netease/dwrg/NeoXWebView;

    if-nez v0, :cond_0

    .line 1191
    :goto_0
    return-void

    .line 1186
    :cond_0
    new-instance v0, Lcom/netease/dwrg/Client$6;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Client$6;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method requestPushService()V
    .locals 1

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_is_push_manager_init:Z

    if-nez v0, :cond_0

    .line 1476
    new-instance v0, Lcom/netease/dwrg/Client$9;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/Client$9;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-static {p0, v0}, Lcom/netease/pushclient/PushManager;->init(Landroid/content/Context;Lcom/netease/pushclient/PushManager$PushManagerCallback;)V

    .line 1492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/Client;->m_is_push_manager_init:Z

    .line 1494
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 3

    .prologue
    .line 1892
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1893
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1894
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V

    .line 1895
    return-void
.end method

.method resumeVideo()V
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieView;->resumeVideo()V

    .line 1453
    :cond_0
    return-void
.end method

.method public final scaleImage(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 10
    .param p1, "src_img_filepath"    # Ljava/lang/String;
    .param p2, "dst_img_width"    # I
    .param p3, "dst_img_height"    # I
    .param p4, "dst_img_filepath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 2497
    if-nez p1, :cond_1

    .line 2530
    :cond_0
    :goto_0
    return v7

    .line 2500
    :cond_1
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 2504
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2505
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2506
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2507
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2508
    .local v2, "img_width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2509
    .local v1, "img_height":I
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    .line 2513
    div-int v6, v2, p2

    .line 2514
    .local v6, "sample_size_width":I
    div-int v5, v1, p3

    .line 2515
    .local v5, "sample_size_height":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2517
    .local v4, "sample_size":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2518
    .restart local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2520
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2521
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2525
    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2526
    if-eqz v0, :cond_0

    .line 2530
    invoke-direct {p0, v0, p4}, Lcom/netease/dwrg/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0
.end method

.method scheduleNotice(IILjava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p1, "delay_seconds"    # I
    .param p2, "badge_number"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sound_name"    # Ljava/lang/String;

    .prologue
    .line 1504
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 1505
    .local v7, "notif":Landroid/app/Notification;
    const-string v10, "notification"

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/netease/dwrg/Client;->getDrawableId(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/app/Notification;->icon:I

    .line 1506
    move-object/from16 v0, p3

    iput-object v0, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1507
    move/from16 v0, p2

    iput v0, v7, Landroid/app/Notification;->number:I

    .line 1508
    const/4 v10, 0x1

    iput v10, v7, Landroid/app/Notification;->defaults:I

    .line 1509
    iget-wide v10, v7, Landroid/app/Notification;->when:J

    move/from16 v0, p1

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    iput-wide v10, v7, Landroid/app/Notification;->when:J

    .line 1510
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 1511
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/netease/dwrg/Client;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1512
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v11, "NoticeIDCount"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1513
    .local v6, "notice_id":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    const-string v11, "PendingIDs"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1514
    .local v8, "pending_ids_string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netease/dwrg/Client;->m_neox_notif:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "NoticeIDCount"

    add-int/lit8 v12, v6, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "PendingIDs"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1515
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1516
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1517
    const/high16 v10, 0x30000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1518
    const/high16 v10, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v6, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1519
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    const-string v10, "app_name"

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/netease/dwrg/Client;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v10, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1521
    if-gez p1, :cond_0

    .line 1523
    const/16 p1, 0x0

    .line 1526
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/netease/dwrg/AlarmReceiver;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1527
    .local v5, "intent1":Landroid/content/Intent;
    const-string v10, "ScheduleNotice"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    const-string v10, "id"

    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1529
    const-string v10, "now"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1530
    const-string v10, "notice"

    invoke-virtual {v5, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1531
    const/high16 v10, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v6, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1533
    .local v9, "sender":Landroid/app/PendingIntent;
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1534
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move/from16 v0, p1

    int-to-long v14, v0

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-virtual {v2, v10, v12, v13, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1536
    return v6
.end method

.method setBrightness(F)V
    .locals 1
    .param p1, "b"    # F

    .prologue
    .line 2202
    new-instance v0, Lcom/netease/dwrg/Client$27;

    invoke-direct {v0, p0, p1}, Lcom/netease/dwrg/Client$27;-><init>(Lcom/netease/dwrg/Client;F)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2223
    return-void
.end method

.method setClipboardText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    const-string v1, "com.netease.dwrg"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1619
    :cond_0
    return-void
.end method

.method public setDumpBasicInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1678
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_dump_basicinfo:Ljava/lang/String;

    .line 1680
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1681
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v3

    .line 1682
    .local v3, "networkutils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 1683
    .local v1, "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1684
    .local v5, "results":[Ljava/lang/String;
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v4, v5, v6

    .line 1686
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1687
    .local v2, "item":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1689
    aget-object v9, v2, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1693
    .end local v2    # "item":[Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setDumpGame(Ljava/lang/String;)V
    .locals 5
    .param p1, "game"    # Ljava/lang/String;

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_dump_game:Ljava/lang/String;

    .line 1669
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1670
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v2

    .line 1671
    .local v2, "networkutils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 1672
    .local v1, "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v3, "project"

    iget-object v4, p0, Lcom/netease/dwrg/Client;->m_dump_game:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    return-void
.end method

.method public setDumpGameVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 1785
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_dump_game_version:Ljava/lang/String;

    .line 1787
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1788
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_dump_game_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setResVersion(Ljava/lang/String;)V

    .line 1790
    return-void
.end method

.method public setDumpInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 1717
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1718
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v2

    .line 1719
    .local v2, "networkutils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 1720
    .local v1, "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    invoke-virtual {v1, p1, p2}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    return-void
.end method

.method public setDumpUserDesc(Ljava/lang/String;)V
    .locals 11
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1697
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_dump_userdesc:Ljava/lang/String;

    .line 1699
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    .line 1700
    .local v0, "ach":Lcom/netease/androidcrashhandler/AndroidCrashHandler;
    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getNetworkUtils()Lcom/netease/androidcrashhandler/MyNetworkUtils;

    move-result-object v3

    .line 1701
    .local v3, "networkutils":Lcom/netease/androidcrashhandler/MyNetworkUtils;
    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/MyNetworkUtils;->getDefaultPostEntity()Lcom/netease/androidcrashhandler/MyPostEntity;

    move-result-object v1

    .line 1702
    .local v1, "defaultEntity":Lcom/netease/androidcrashhandler/MyPostEntity;
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1703
    .local v5, "results":[Ljava/lang/String;
    array-length v8, v5

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v4, v5, v6

    .line 1705
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1706
    .local v2, "item":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 1708
    aget-object v9, v2, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/netease/androidcrashhandler/MyPostEntity;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1712
    .end local v2    # "item":[Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method setGMBridgeToken(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1287
    const-string v0, "GMBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setGMBridgeToken] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_gmbridge_tokenSetter:Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;

    invoke-interface {v0, p1}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$ITokenSetter;->setToken(Ljava/lang/String;)V

    .line 1290
    return-void
.end method

.method public setInputViewLocation(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 1042
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1045
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    .line 1046
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v1}, Lcom/netease/dwrg/InputView;->getDefaultFontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setFontSize(F)V

    .line 1047
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v1}, Lcom/netease/dwrg/InputView;->getDefaultFontColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setFontColor(I)V

    .line 1054
    :goto_0
    return-void

    .line 1051
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1052
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1930
    move v1, p1

    .line 1931
    .local v1, "f":Z
    move-object v0, p0

    .line 1932
    .local v0, "clint":Lcom/netease/dwrg/Client;
    new-instance v2, Lcom/netease/dwrg/Client$11;

    invoke-direct {v2, p0, v1, v0}, Lcom/netease/dwrg/Client$11;-><init>(Lcom/netease/dwrg/Client;ZLcom/netease/dwrg/Client;)V

    invoke-virtual {p0, v2}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1946
    return-void
.end method

.method public setLandscape(Z)V
    .locals 3
    .param p1, "is_land"    # Z

    .prologue
    const/4 v2, 0x1

    .line 835
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 836
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz p1, :cond_0

    .line 838
    const/4 v1, 0x2

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 839
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->setRequestedOrientation(I)V

    .line 846
    :goto_0
    return-void

    .line 843
    :cond_0
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 844
    invoke-virtual {p0, v2}, Lcom/netease/dwrg/Client;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method setVirtualKeyboardType(I)V
    .locals 1
    .param p1, "vkt"    # I

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/InputView;->setType(I)V

    .line 2297
    return-void
.end method

.method public showDumpView(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dump_path"    # Ljava/lang/String;
    .param p2, "cache_log"    # Ljava/lang/String;

    .prologue
    .line 1847
    const/4 v0, 0x1

    return v0
.end method

.method showGMFloatButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1265
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->setShowFloatWindowWhenInit(Z)V

    .line 1266
    new-instance v0, Lcom/netease/dwrg/Client$8;

    invoke-direct {v0, p0, p1}, Lcom/netease/dwrg/Client$8;-><init>(Lcom/netease/dwrg/Client;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntInit(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$IAsynTokenRequest;)V

    .line 1278
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    invoke-static {p2}, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->ntReceiveMessage(Ljava/lang/String;)V

    .line 1282
    :cond_0
    return-void
.end method

.method public showInputView(Ljava/lang/String;IZIIIIFI)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "input_type"    # I
    .param p3, "is_hint"    # Z
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "size"    # F
    .param p9, "color"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1011
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p2}, Lcom/netease/dwrg/InputView;->setFilterPattern(I)V

    .line 1012
    if-eqz p3, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setText(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/InputView;->setHint(Ljava/lang/String;)V

    .line 1022
    :goto_0
    if-eqz p6, :cond_0

    if-nez p7, :cond_2

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1025
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v2}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    .line 1026
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v1}, Lcom/netease/dwrg/InputView;->getDefaultFontSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setFontSize(F)V

    .line 1027
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v1}, Lcom/netease/dwrg/InputView;->getDefaultFontColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setFontColor(I)V

    .line 1036
    :goto_1
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v3}, Lcom/netease/dwrg/InputView;->show(Z)V

    .line 1037
    return v3

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->setHint(Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/InputView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_2
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p4, p5, p6, p7}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1032
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, v3}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    .line 1033
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p8}, Lcom/netease/dwrg/InputView;->setFontSize(F)V

    .line 1034
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p9}, Lcom/netease/dwrg/InputView;->setFontColor(I)V

    goto :goto_1
.end method

.method showMessageBox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "okText"    # Ljava/lang/String;
    .param p5, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 1965
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1966
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1967
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "ic_launcher"

    .line 1968
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1969
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1970
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p3, :pswitch_data_0

    .line 2095
    new-instance v1, Lcom/netease/dwrg/Client$25;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$25;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2107
    :goto_0
    new-instance v1, Lcom/netease/dwrg/Client$26;

    invoke-direct {v1, p0, v0}, Lcom/netease/dwrg/Client$26;-><init>(Lcom/netease/dwrg/Client;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2116
    return-void

    .line 1974
    :pswitch_0
    new-instance v1, Lcom/netease/dwrg/Client$12;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$12;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1986
    :pswitch_1
    new-instance v1, Lcom/netease/dwrg/Client$14;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$14;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/netease/dwrg/Client$13;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$13;-><init>(Lcom/netease/dwrg/Client;)V

    .line 1993
    invoke-virtual {v1, p5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2005
    :pswitch_2
    const-string v1, "neox_abort"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Client$17;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$17;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "neox_retry"

    .line 2012
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Client$16;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Client$16;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "neox_ignore"

    .line 2019
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Client$15;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Client$15;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2031
    :pswitch_3
    const-string v1, "neox_yes"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Client$20;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$20;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "neox_no"

    .line 2038
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Client$19;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Client$19;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/netease/dwrg/Client$18;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$18;-><init>(Lcom/netease/dwrg/Client;)V

    .line 2045
    invoke-virtual {v1, p5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2057
    :pswitch_4
    const-string v1, "neox_yes"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Client$22;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$22;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "neox_no"

    .line 2064
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/netease/dwrg/Client$21;

    invoke-direct {v3, p0}, Lcom/netease/dwrg/Client$21;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 2076
    :pswitch_5
    const-string v1, "neox_retry"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Client$24;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$24;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/netease/dwrg/Client$23;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Client$23;-><init>(Lcom/netease/dwrg/Client;)V

    .line 2083
    invoke-virtual {v1, p5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1970
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public showVirtualKeyboard()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 791
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 792
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 794
    const-string v1, "NeoX"

    const-string v2, "ShowVirtualKeyboard: Input Method Service not found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :goto_0
    return-void

    .line 798
    :cond_0
    const-string v1, "NeoXDeviceVKB"

    const-string v2, "Force show Virtual Keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 802
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method public showWelcomeView()V
    .locals 2

    .prologue
    .line 1060
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/dwrg/WelcomeView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V

    .line 1061
    return-void
.end method

.method public startCameraPreviewCapture(II)Z
    .locals 2
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 1641
    const-string v0, "NeoX"

    const-string v1, "startCameraPreviewCapture !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    if-nez v0, :cond_0

    .line 1644
    new-instance v0, Lcom/netease/dwrg/CameraPreviewCapture;

    new-instance v1, Lcom/netease/dwrg/Client$10;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$10;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-direct {v0, v1}, Lcom/netease/dwrg/CameraPreviewCapture;-><init>(Lcom/netease/dwrg/CameraPreviewCapture$PreviewCallback;)V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    .line 1649
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    invoke-virtual {v0, p1, p2}, Lcom/netease/dwrg/CameraPreviewCapture;->start(II)V

    .line 1651
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method startRecording(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 2301
    sput-object p0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2302
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->prepareRecord(Ljava/lang/String;)Z

    .line 2303
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->startRecord()Z

    .line 2304
    const/4 v0, 0x1

    return v0
.end method

.method public startUpdatingLocation()Z
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    if-nez v0, :cond_0

    .line 1902
    new-instance v0, Lcom/netease/dwrg/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/dwrg/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    .line 1904
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager;->startUpdatingLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method startVibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 1195
    const-string v1, "NeoXDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVibrate in neox1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1197
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-nez v0, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    const-wide/16 v2, 0x3e8

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 1203
    const-string v1, "NeoXDevice"

    const-string v2, "real vibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public stopCameraPreviewCapture()V
    .locals 2

    .prologue
    .line 1656
    const-string v0, "NeoX"

    const-string v1, "stopCameraPreviewCapture !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    invoke-virtual {v0}, Lcom/netease/dwrg/CameraPreviewCapture;->stop()V

    .line 1660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_camera_preview_capture:Lcom/netease/dwrg/CameraPreviewCapture;

    .line 1662
    :cond_0
    return-void
.end method

.method stopPushService()V
    .locals 1

    .prologue
    .line 1498
    invoke-static {}, Lcom/netease/pushclient/PushManager;->stopService()V

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/dwrg/Client;->m_is_push_manager_init:Z

    .line 1500
    return-void
.end method

.method stopRecording()V
    .locals 0

    .prologue
    .line 2309
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecord()V

    .line 2310
    return-void
.end method

.method public stopUpdatingLocation()V
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager;->stopUpdatingLocation(Landroid/content/Context;)V

    .line 1914
    :cond_0
    return-void
.end method

.method stopVibrate()V
    .locals 2

    .prologue
    .line 1209
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1210
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method stopVideo(Z)V
    .locals 1
    .param p1, "need_callback"    # Z

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    if-eqz v0, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/MovieView;->stopVideo(Z)V

    .line 1460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_movie_view:Lcom/netease/dwrg/MovieView;

    .line 1463
    :cond_0
    return-void
.end method

.method stopVoice()V
    .locals 0

    .prologue
    .line 2332
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    .line 2333
    return-void
.end method
