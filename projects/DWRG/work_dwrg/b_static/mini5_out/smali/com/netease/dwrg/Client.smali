.class public Lcom/netease/dwrg/Client;
.super Lcom/netease/neox/NeoXClient;
.source "Client.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
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

.field private static final NEOX_DUAL_NETWORK_TAG:Ljava/lang/String; = "NEOX_DUAL_NETWOKR"

.field private static m_cancel_all_time:J


# instance fields
.field private m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

.field private m_clipboard:Landroid/content/ClipboardManager;

.field private m_current_network_type:I

.field private m_douyin_attribution_ex:Ljava/lang/String;

.field private m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

.field private m_input_dialog:Lcom/netease/dwrg/InputDialogController;

.field private m_input_view:Lcom/netease/dwrg/InputView;

.field private m_is_cutout:Z

.field private m_is_vkb_shown:Z

.field private m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

.field private m_neox_config:Landroid/content/SharedPreferences;

.field private m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

.field private m_neox_root:Ljava/lang/String;

.field m_profile_have_runnable:Z

.field m_profile_info_timerHandler:Landroid/os/Handler;

.field m_profile_info_timerRunnable:Ljava/lang/Runnable;

.field private m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

.field private m_root_view_height:I

.field private m_root_view_width:I

.field private m_udid:Ljava/lang/String;

.field private m_view:Lcom/netease/neox/NeoXView;

.field private m_view_offset:Landroid/graphics/Point;

.field private m_view_size:Landroid/graphics/Point;

.field neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 176
    invoke-direct {p0}, Lcom/netease/neox/NeoXClient;-><init>()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    .line 216
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    .line 218
    const-string v1, "{}"

    iput-object v1, p0, Lcom/netease/dwrg/Client;->m_douyin_attribution_ex:Ljava/lang/String;

    const/4 v1, 0x0

    .line 224
    iput v1, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    .line 225
    iput v1, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    .line 227
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_view_size:Landroid/graphics/Point;

    .line 229
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/netease/dwrg/Client;->m_view_offset:Landroid/graphics/Point;

    .line 233
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    .line 234
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    .line 235
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    .line 236
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

    .line 238
    iput-boolean v1, p0, Lcom/netease/dwrg/Client;->m_is_vkb_shown:Z

    .line 240
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    .line 241
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_input_dialog:Lcom/netease/dwrg/InputDialogController;

    .line 243
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 244
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 245
    iput-boolean v1, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    .line 247
    iput-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    .line 250
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    .line 254
    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 256
    iput-boolean v1, p0, Lcom/netease/dwrg/Client;->m_is_cutout:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/Client;)Lcom/netease/neox/NeoXView;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/netease/dwrg/Client;->m_view_size:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/dwrg/Client;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_view_size:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/dwrg/Client;)Landroid/graphics/Point;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/netease/dwrg/Client;->m_view_offset:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/dwrg/Client;)I
    .locals 0

    .line 176
    iget p0, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    return p0
.end method

.method static synthetic access$302(Lcom/netease/dwrg/Client;I)I
    .locals 0

    .line 176
    iput p1, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    return p1
.end method

.method static synthetic access$400(Lcom/netease/dwrg/Client;)I
    .locals 0

    .line 176
    iget p0, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    return p0
.end method

.method static synthetic access$402(Lcom/netease/dwrg/Client;I)I
    .locals 0

    .line 176
    iput p1, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    return p1
.end method

.method static synthetic access$500(Lcom/netease/dwrg/Client;)Lcom/netease/dwrg/InputView;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/dwrg/Client;)Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/netease/dwrg/Client;->m_is_vkb_shown:Z

    return p0
.end method

.method static synthetic access$602(Lcom/netease/dwrg/Client;Z)Z
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/netease/dwrg/Client;->m_is_vkb_shown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/netease/dwrg/Client;)I
    .locals 0

    .line 176
    iget p0, p0, Lcom/netease/dwrg/Client;->m_current_network_type:I

    return p0
.end method

.method static synthetic access$702(Lcom/netease/dwrg/Client;I)I
    .locals 0

    .line 176
    iput p1, p0, Lcom/netease/dwrg/Client;->m_current_network_type:I

    return p1
.end method

.method private calcNetmaskByPrefixLength(S)Ljava/lang/String;
    .locals 5

    if-ltz p1, :cond_3

    const/16 v0, 0x20

    if-le p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    sub-int/2addr v0, p1

    shl-int p1, v1, v0

    const/4 v0, 0x4

    .line 1374
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v4, v3, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shr-int v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 1378
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1382
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v1, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    .line 1369
    :cond_3
    :goto_2
    const-string p1, "255.255.255.255"

    return-object p1
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getStringId(Ljava/lang/String;)I
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x1000

    .line 2018
    new-array v0, v0, [B

    .line 2019
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const/4 v2, 0x0

    .line 2022
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2023
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    .line 2024
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-lez p1, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_1

    .line 2029
    aget-byte v6, v0, v5

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2033
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2040
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2044
    :catch_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    nop

    goto :goto_3

    :catch_2
    nop

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v2, :cond_2

    .line 2040
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2044
    :catch_3
    :cond_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2045
    throw p1

    :catch_4
    nop

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_4

    goto :goto_5

    :catch_5
    nop

    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_4

    .line 2040
    :cond_3
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 2044
    :catch_6
    :cond_4
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method

.method private saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    .line 2485
    :cond_1
    const-string v1, ".png"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2486
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 2487
    :cond_2
    const-string v1, ".jpg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2488
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 2489
    :cond_3
    const-string v1, ".webp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2490
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    .line 2495
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2500
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x64

    .line 2508
    invoke-virtual {p1, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 2513
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2515
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    .line 2502
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return v0
.end method

.method private setDisplayCutoutModeShortEdges()V
    .locals 6

    .line 882
    const-string v0, "finish setDisplayCutoutModeShortEdges"

    const-string v1, "setDisplayCutoutModeShortEdges"

    const-string v2, "NeoX"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v1, "%d"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Build.VERSION.SDK_INT"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 886
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "layoutInDisplayCutoutMode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 887
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 888
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 890
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 891
    const-string v1, "setDisplayCutoutModeShortEdges failed"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    throw v1
.end method

.method private setNavigationBarVisibility()V
    .locals 2

    .line 876
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1606

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setNetworkChangeCallback()V
    .locals 3

    .line 807
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 808
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getNetworkType()I

    move-result v1

    iput v1, p0, Lcom/netease/dwrg/Client;->m_current_network_type:I

    .line 809
    new-instance v1, Lcom/netease/dwrg/Client$3;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$3;-><init>(Lcom/netease/dwrg/Client;)V

    const/16 v2, 0x40

    .line 832
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/16 v2, 0x20

    .line 833
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 835
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 836
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 837
    new-instance v1, Lcom/netease/dwrg/Client$4;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$4;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-static {v0, v1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 861
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 862
    const-string v0, "NeoX"

    const-string v1, "setNetworkChangeCallback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public CallBaseOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method CheckSelfPermission(Ljava/lang/String;)Z
    .locals 0

    .line 1242
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public EnableProfile(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 1668
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 1671
    iput-boolean p1, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    goto :goto_0

    .line 1675
    :cond_0
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    if-nez v0, :cond_1

    .line 1677
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 1678
    iput-boolean p1, p0, Lcom/netease/dwrg/Client;->m_profile_have_runnable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public GetDashenLogTokenAsync()V
    .locals 2

    .line 2072
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/dwrg/Client$21;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$21;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2099
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public GetMumuVersion()Ljava/lang/String;
    .locals 9

    .line 1723
    const-string v0, "finish GetMumuVersion."

    const-string v1, "NeoX"

    .line 0
    const-string v2, "GetMumuVersion Exception"

    .line 1723
    :try_start_0
    const-class v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1724
    const-string v4, "android.os.SystemProperties"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1725
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1726
    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "nemud.player_version"

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1731
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1729
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1731
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string v0, ""

    return-object v0

    .line 1731
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    throw v2
.end method

.method public IsFromGameCenter()Z
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v1, "is_from_game_center"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public MarkTrepnProfilerState(ILjava/lang/String;)V
    .locals 2

    .line 1685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.quicinc.Trepn.UpdateAppState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    const-string v1, "com.quicinc.Trepn.UpdateAppState.Value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1687
    const-string p1, "com.quicinc.Trepn.UpdateAppState.Value.Desc"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public MumuKeyMouseMod()Z
    .locals 6

    .line 1709
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 1710
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 1711
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 1712
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const/16 v5, 0x2002

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public MumuMouseLock(Z)V
    .locals 2

    .line 1694
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1697
    new-instance p1, Landroid/content/Intent;

    const-string v1, "nemu.intent.action.MOUSE_INPUT_LOCK_CURSOR"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "nemu.intent.action.MOUSE_INPUT_UNLOCK_CURSOR"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1701
    :goto_0
    const-string v1, "appName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    const-string v0, "packageName"

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string v0, "taskId"

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getTaskId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public NeedRemoveShaderCache()Z
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v1, "need_remove_shader_cache"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public SaveResolutionToSharedPreferences(II)V
    .locals 2

    .line 1753
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1754
    const-string v1, "RealWidth"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "RealHeight"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1755
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public bindSocketToNetwork(II)Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 506
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/netease/dwrg/NeoxDualNetwork;->bindSocketToNetwork(II)Z

    move-result p1

    return p1
.end method

.method public callMagtFunc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2573
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

    if-nez v0, :cond_0

    .line 2574
    new-instance v0, Lcom/netease/dwrg/MagtMgr;

    invoke-direct {v0}, Lcom/netease/dwrg/MagtMgr;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/MagtMgr;->callFunc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checkGeneralPermission(Ljava/lang/String;)I
    .locals 1

    .line 448
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 450
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method checkRecordingPermission()Z
    .locals 3

    const/4 v0, 0x0

    .line 2325
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Documents/test.amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f40

    .line 2326
    invoke-virtual {p0, v1, v2}, Lcom/netease/dwrg/Client;->startRecording(Ljava/lang/String;I)Z

    .line 2327
    sget-object v1, Lcom/netease/dwrg/GameVoiceUtils;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    .line 2328
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public clearChannel()V
    .locals 0

    return-void
.end method

.method public closeInputView()V
    .locals 2

    .line 1467
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/dwrg/InputView;->show(Z)V

    return-void
.end method

.method public final cropImage(Ljava/lang/String;IIIILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    if-lez p4, :cond_6

    if-gtz p5, :cond_1

    goto :goto_0

    .line 2449
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2450
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2451
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2452
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2453
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_6

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    add-int v3, p2, p4

    if-gt v3, v2, :cond_6

    add-int v2, p3, p5

    if-le v2, v1, :cond_3

    goto :goto_0

    .line 2462
    :cond_3
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 2467
    :cond_4
    invoke-static {p1, p2, p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_5

    return v0

    .line 2472
    :cond_5
    invoke-direct {p0, p1, p6}, Lcom/netease/dwrg/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 960
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 962
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 963
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 965
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 969
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 971
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 972
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnChar(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    if-ne v1, p1, :cond_1

    const/4 p1, 0x3

    .line 981
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->setVolumeControlStream(I)V

    .line 982
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 983
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 985
    invoke-virtual {v1, p1, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_1
    return v0
.end method

.method public dualNetowrkPingServer(Ljava/lang/String;)V
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ping server: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEOX_DUAL_NETWOKR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/dwrg/NeoxDualNetwork;->pingServer(Ljava/lang/String;)V

    return-void
.end method

.method public dualNetworkGetDelayInfo()Ljava/lang/String;
    .locals 2

    .line 480
    const-string v0, "NEOX_DUAL_NETWOKR"

    const-string v1, "get delay result"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    invoke-virtual {v0}, Lcom/netease/dwrg/NeoxDualNetwork;->getDelayInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableAudioVolumeListener(Z)V
    .locals 4

    .line 1116
    const-string v0, "NeoX"

    if-nez p1, :cond_3

    .line 1117
    const-string p1, "[kk]Unregister audio volume listener......"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    if-eqz p1, :cond_0

    .line 1119
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1121
    :cond_0
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    if-eqz p1, :cond_1

    .line 1122
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1123
    :cond_1
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    if-eqz p1, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void

    .line 1129
    :cond_3
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1130
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    invoke-virtual {p0, v1, p1}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1133
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    invoke-virtual {p0, v1, p1}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1137
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    const/4 v2, 0x3

    .line 1139
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v3, 0x0

    .line 1140
    invoke-static {v1, v3}, Lcom/netease/neox/NativeInterface;->NativeOnVolumeSilent(IF)V

    .line 1141
    :cond_4
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-static {v3}, Lcom/netease/neox/NativeInterface;->NativeOnRingerMode(I)V

    .line 1142
    iget-object v3, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    int-to-float v2, v2

    iput v2, v3, Lcom/netease/dwrg/AudioVolumeContentObserver;->m_pre_volume:F

    .line 1145
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->isBlueToothHeadsetConnected()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1147
    :cond_5
    invoke-static {v1}, Lcom/netease/neox/NativeInterface;->NativeOnHeadset(I)V

    .line 1150
    :cond_6
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1151
    const-string p1, "[kk]Register Audio Volume Listener Done!!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAvailableInternalMemorySize()F
    .locals 5

    .line 2345
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2346
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2348
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    long-to-float v0, v0

    mul-float v0, v0, v4

    long-to-float v1, v2

    mul-float v0, v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getAvailableNetwork()I
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/netease/dwrg/NeoxDualNetwork;->getAvailableNetwork()I

    move-result v0

    return v0
.end method

.method getBatteryCharging()Z
    .locals 3

    .line 2065
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2066
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method getBatteryLevel()F
    .locals 4

    .line 2142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/netease/dwrg/Client;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 2143
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2144
    const-string v3, "scale"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    return v1

    :cond_1
    :goto_0
    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method getBrightness()F
    .locals 5

    .line 2211
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/netease/dwrg/Client$23;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Client$23;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2229
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2231
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2234
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2237
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2238
    const-string v2, "Error"

    const-string v3, "Call has thrown an exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    .line 2240
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "%f"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getBrightness"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getCallingApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 366
    :try_start_0
    const-string v1, ""

    if-eq p1, v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 368
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 369
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 375
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 372
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getCallingPackageName()Ljava/lang/String;
    .locals 2

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    invoke-static {p0}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Lcom/netease/dwrg/Client;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 1005
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClipboardText()Ljava/lang/String;
    .locals 2

    .line 1651
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1654
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1657
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 299
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDistroId()Ljava/lang/String;
    .locals 5

    .line 272
    const-string v0, ""

    .line 274
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 275
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "com.netease.apk_distro/config.json"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 285
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v2, "distro_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getDouyinAttributionEx()Ljava/lang/String;
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_douyin_attribution_ex:Ljava/lang/String;

    return-object v0
.end method

.method getGovernorInfo()Ljava/lang/String;
    .locals 6

    .line 2051
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 2052
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-direct {p0, v2, v1}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 2053
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {p0, v3, v1}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 2054
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {p0, v4, v1}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 2055
    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    invoke-direct {p0, v5, v1}, Lcom/netease/dwrg/Client;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 2057
    filled-new-array {v0, v2, v3, v4, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2059
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImageHeight(Ljava/lang/String;)I
    .locals 2

    .line 2396
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2397
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2398
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2399
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    return p1
.end method

.method public final getImageWidth(Ljava/lang/String;)I
    .locals 2

    .line 2388
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2389
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2390
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2391
    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    return p1
.end method

.method public getInternalDataPath()Ljava/lang/String;
    .locals 1

    .line 2304
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIpInfo()Ljava/lang/String;
    .locals 10

    .line 1305
    const-string v0, ""

    const-string v1, "NeoX"

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    const-string v3, "en0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    const-string v3, "eth0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getNetworkType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1311
    const-string v3, "get ip: none wifi ip"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string v3, "rmnet0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    const-string v3, "ppp0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1318
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1319
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 1324
    :cond_2
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1326
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1328
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1336
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 1337
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1339
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InterfaceAddress;

    .line 1340
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 1342
    invoke-virtual {v7}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_4

    goto :goto_2

    .line 1347
    :cond_4
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1348
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v3

    .line 1350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "netName: ip is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " netmask is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/netease/dwrg/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/netease/dwrg/Client;->calcNetmaskByPrefixLength(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1355
    :cond_6
    const-string v2, "no ip address found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1360
    :catch_0
    const-string v2, "encounter error when find ip"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method getMaliGPUCoreCount()I
    .locals 5

    const/4 v0, -0x1

    .line 2250
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/sys/class/misc/mali0/device/core_mask"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const-string v2, ""

    .line 2255
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2258
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 2260
    const-string v3, "AVAILABLE CORE MASK : "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    const/16 v1, 0x16

    .line 2262
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2263
    const-string v2, "0X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 2266
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-double/2addr v1, v3

    double-to-int v0, v1

    :catch_0
    :cond_2
    return v0
.end method

.method public getMemoryUsed()J
    .locals 6

    const-wide/16 v0, 0x0

    .line 2107
    :try_start_0
    new-instance v2, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v2}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 2108
    invoke-static {v2}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 2109
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    .line 2110
    const-string v2, "getMemoryUsed"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2119
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-wide v0
.end method

.method public getNeoXConfig(Ljava/lang/String;I)I
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getNeoXConfig(Ljava/lang/String;Z)Z
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getNeoXConfigs()[Ljava/lang/String;
    .locals 4

    .line 1022
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 1024
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1026
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 1028
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1029
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getNetworkType()I
    .locals 3

    .line 1617
    const-string v0, "connectivity"

    .line 1618
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1619
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1623
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1625
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    .line 1627
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getNetworkTypeOfSocket(I)I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 524
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/dwrg/NeoxDualNetwork;->getNetworkTypeOfSocket(I)I

    move-result p1

    return p1
.end method

.method getPowerConsumptionData(I)J
    .locals 6

    .line 2155
    const-string v0, "batterymanager"

    .line 2156
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 2157
    invoke-virtual {v0, p1}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 2160
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, v0

    const-wide/16 v4, 0x9c4

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    long-to-double v2, v0

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    double-to-long v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 7

    .line 1066
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1068
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v2, "RealWidth"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1069
    iget-object v4, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    const-string v5, "RealHeight"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1071
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1074
    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1084
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1087
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-le v4, v6, :cond_1

    .line 1089
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 1090
    iget v6, v0, Landroid/graphics/Point;->y:I

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 1091
    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 1096
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    if-ge v4, v6, :cond_1

    .line 1098
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 1099
    iget v6, v0, Landroid/graphics/Point;->y:I

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 1100
    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 1105
    :cond_1
    :goto_0
    iget v4, v0, Landroid/graphics/Point;->x:I

    if-ne v1, v4, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eq v3, v1, :cond_3

    .line 1107
    :cond_2
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1108
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-object v0
.end method

.method public getRotation()I
    .locals 2

    .line 1761
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x10e

    return v0

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public getRunningProcess()[Ljava/lang/String;
    .locals 3

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1294
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1295
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 1058
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1060
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1061
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method getTotalInternalMemorySize()J
    .locals 4

    .line 2358
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2359
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2360
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2361
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0
.end method

.method getTotalMemory()I
    .locals 4

    .line 2133
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2134
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 2135
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 2136
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method getTotalMemorySize(Landroid/content/Context;)J
    .locals 4

    .line 2371
    const-string p1, "/proc/meminfo"

    .line 2373
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 2374
    new-instance p1, Ljava/io/BufferedReader;

    const/16 v1, 0x800

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2375
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 2376
    const-string v1, "MemTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2377
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 2378
    const-string p1, "\\D+"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    move-exception p1

    .line 2380
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 10

    .line 1250
    const-string v0, ""

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1256
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1257
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1260
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1261
    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1264
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 1265
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 1266
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1268
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 1270
    const-string v5, "%02X%s"

    aget-byte v6, v1, v4

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    array-length v7, v1

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ge v4, v7, :cond_1

    const-string v7, "-"

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v3

    aput-object v7, v9, v8

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1272
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :cond_3
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_udid:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    .line 1277
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1278
    const-string v1, "NeoX"

    const-string v2, "getUDID failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1399
    const-string v0, "neox_root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    return-object p1

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1408
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewOffset()Landroid/graphics/Point;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_view_offset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getViewSize()Landroid/graphics/Point;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_view_size:Landroid/graphics/Point;

    return-object v0
.end method

.method hapticHandshake()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 384
    invoke-virtual {v0, v1, v2}, Lcom/netease/neox/NeoXView;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method public hideVirtualKeyboard()V
    .locals 3

    .line 1172
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1175
    const-string v0, "NeoX"

    const-string v1, "HideVirtualKeyboard: Input Method Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1179
    :cond_0
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public initDualNetwork()V
    .locals 2

    .line 490
    const-string v0, "NEOX_DUAL_NETWOKR"

    const-string v1, "init sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    if-nez v0, :cond_0

    return-void

    .line 495
    :cond_0
    invoke-virtual {v0}, Lcom/netease/dwrg/NeoxDualNetwork;->initDualNetwork()V

    return-void
.end method

.method protected initPlugins(Lcom/netease/neox/PluginManager;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->initPlugins(Lcom/netease/neox/PluginManager;)V

    .line 182
    new-instance v0, Lcom/netease/neox/PluginApp;

    invoke-direct {v0}, Lcom/netease/neox/PluginApp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 183
    new-instance v0, Lcom/netease/neox/PluginEnvSDK;

    invoke-direct {v0}, Lcom/netease/neox/PluginEnvSDK;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 184
    new-instance v0, Lcom/netease/neox/PluginCCMini;

    invoke-direct {v0}, Lcom/netease/neox/PluginCCMini;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 185
    new-instance v0, Lcom/netease/neox/PluginUniSDK;

    invoke-direct {v0}, Lcom/netease/neox/PluginUniSDK;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 186
    new-instance v0, Lcom/netease/neox/PluginCrashHunter;

    invoke-direct {v0}, Lcom/netease/neox/PluginCrashHunter;-><init>()V

    new-instance v1, Lcom/netease/neox/PrePostCallback;

    invoke-direct {v1}, Lcom/netease/neox/PrePostCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netease/neox/PluginCrashHunter;->setPrePostListener(Lcom/netease/neox/PluginCrashHunter$IPrePostListener;)Lcom/netease/neox/PluginCrashHunter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 187
    new-instance v0, Lcom/netease/neox/PluginNGPush;

    invoke-direct {v0}, Lcom/netease/neox/PluginNGPush;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 188
    new-instance v0, Lcom/netease/neox/PluginMedia;

    invoke-direct {v0}, Lcom/netease/neox/PluginMedia;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    .line 189
    new-instance v0, Lcom/netease/neox/PluginCCLive;

    invoke-direct {v0}, Lcom/netease/neox/PluginCCLive;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netease/neox/PluginManager;->register(Lcom/netease/neox/IPlugin;)V

    return-void
.end method

.method public installApk(Ljava/lang/String;)I
    .locals 6

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start install apk: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Android Ver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApk"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Documents/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2549
    const-string p1, "apk not existed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2553
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 2554
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2555
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const-string v5, "application/vnd.android.package-archive"

    if-lt v3, v4, :cond_1

    .line 2556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2557
    invoke-static {p0, v3, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2558
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apkUri:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2560
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2562
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2564
    :goto_0
    const-string v0, "start activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isApplicationBroughtToBackground()Z
    .locals 4

    .line 1739
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 1740
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1741
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1742
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v3
.end method

.method public isBlueToothHeadsetConnected()Z
    .locals 5

    const-string v0, "isBlueToothHeadsetConnected "

    const/4 v1, 0x0

    .line 1187
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1188
    :cond_0
    const-string v2, "NeoX"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 1286
    invoke-static {}, Lcom/netease/dwrg/OutlawDeviceDetector;->isRooted()Z

    move-result v0

    return v0
.end method

.method isHapticSupported()Z
    .locals 3

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 393
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x7

    .line 397
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;[I)Z

    move-result v0

    return v0
.end method

.method public isHeadphonePluggedIn()Z
    .locals 7

    .line 1199
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1203
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 1204
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x2

    .line 1206
    invoke-static {v0, v2}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioManager;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    const/4 v2, 0x0

    .line 1208
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 1209
    aget-object v3, v0, v2

    .line 1211
    invoke-static {v3}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 1212
    invoke-static {v3}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    .line 1213
    invoke-static {v3}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    .line 1214
    invoke-static {v3}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioDeviceInfo;)I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v4

    :cond_6
    return v1
.end method

.method isMultiWindowMode()I
    .locals 1

    .line 993
    invoke-static {p0}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Lcom/netease/dwrg/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 996
    :cond_0
    invoke-static {p0}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m$1(Lcom/netease/dwrg/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isNotchScreen()Lcom/netease/dwrg/CutOutInfo;
    .locals 21

    .line 2581
    const-string v1, "finish query the oppo."

    const-string v2, "finish get cutOut info"

    const-string v3, "finish query vivo."

    const-string v4, "finish query huawei. if cutOut screen"

    .line 2585
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2587
    new-instance v5, Lcom/netease/dwrg/CutOutInfo;

    invoke-direct {v5}, Lcom/netease/dwrg/CutOutInfo;-><init>()V

    .line 2592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    const-string v7, "getSafeInsetBottom"

    const-string v8, "getSafeInsetTop"

    const-string v9, "getSafeInsetRight"

    const-string v10, "getSafeInsetLeft"

    const-string v11, "getDisplayCutout"

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v15, "NeoX"

    if-lt v0, v6, :cond_1

    .line 2594
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 2596
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2597
    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2600
    iput-boolean v12, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    goto :goto_0

    .line 2604
    :cond_0
    iput-boolean v13, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2605
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I

    .line 2606
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaRight:I

    .line 2607
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaTop:I

    .line 2608
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaBottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2614
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2615
    const-string v0, "get cutOut info failed"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2617
    :goto_0
    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :goto_1
    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    throw v0

    .line 2625
    :cond_1
    const-class v0, Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2629
    const-string v2, "huawei"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2631
    const-string v6, "hasNotchInScreen NoSuchMethodException"

    const-string v12, "hasNotchInScreen ClassNotFoundException"

    const-string v13, "hasNotchInScreen Exception"

    if-eqz v2, :cond_3

    .line 2634
    :try_start_2
    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v18, v9

    .line 2635
    :try_start_3
    const-string v9, "hasNotchInScreen"

    invoke-virtual {v2, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 2636
    invoke-virtual {v9, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 2638
    iput-boolean v9, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2639
    iget-boolean v9, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v9, :cond_2

    .line 2644
    const-string v9, "getNotchSize"

    invoke-virtual {v2, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 2645
    invoke-virtual {v9, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v9, 0x1

    .line 2646
    aget v2, v2, v9

    iput v2, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-object/from16 v18, v9

    .line 2654
    :catch_2
    :try_start_4
    invoke-static {v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-object/from16 v18, v9

    .line 2652
    :catch_4
    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_5
    move-object/from16 v18, v9

    .line 2650
    :catch_6
    invoke-static {v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2656
    :cond_2
    :goto_2
    invoke-static {v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    invoke-static {v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    throw v0

    :cond_3
    move-object/from16 v18, v9

    .line 2664
    :goto_4
    const-string v2, "vivo"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2665
    const-string v4, "isFeatureSupport"

    if-eqz v2, :cond_5

    .line 2672
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 2673
    const-string v9, "android.util.FtFeature"

    invoke-virtual {v2, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x1

    .line 2674
    new-array v14, v9, [Ljava/lang/Class;

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-virtual {v2, v4, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/16 v17, 0x20

    .line 2679
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v20, v10

    :try_start_6
    new-array v10, v9, [Ljava/lang/Object;

    aput-object v19, v10, v16

    invoke-virtual {v14, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2681
    iput-boolean v2, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2682
    iget-boolean v2, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v2, :cond_4

    .line 2684
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v9, 0x1b

    int-to-float v9, v9

    mul-float v9, v9, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v9, v2

    float-to-int v2, v9

    .line 2685
    iput v2, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_7
    move-object/from16 v20, v10

    .line 2693
    :catch_8
    :try_start_7
    invoke-static {v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_9
    move-object/from16 v20, v10

    .line 2691
    :catch_a
    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_b
    move-object/from16 v20, v10

    .line 2689
    :catch_c
    invoke-static {v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2695
    :cond_4
    :goto_5
    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_6
    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    throw v0

    :cond_5
    move-object/from16 v20, v10

    .line 2703
    :goto_7
    const-string v2, "oppo"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2704
    const-string v3, "android.os.SystemProperties"

    const/4 v6, 0x2

    if-eqz v2, :cond_7

    .line 2708
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v9, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2709
    iput-boolean v2, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2710
    iget-boolean v2, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v2, :cond_6

    .line 2712
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2713
    const-string v9, "get"

    const/4 v10, 0x1

    new-array v12, v10, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v12, v16

    invoke-virtual {v2, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 2714
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 2716
    new-array v12, v10, [Ljava/lang/Object;

    const-string v10, "ro.oppo.screen.heteromorphism"

    aput-object v10, v12, v16

    invoke-virtual {v9, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2717
    const-string v9, ":"

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v2, v2, v9

    .line 2718
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    .line 2719
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    .line 2727
    :catch_d
    :try_start_9
    invoke-static {v15, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2729
    :cond_6
    :goto_8
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :goto_9
    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    throw v0

    .line 2737
    :cond_7
    :goto_a
    const-string v1, "Xiaomi"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2738
    const-string v2, "dimen"

    const-string v9, "android"

    if-eqz v1, :cond_a

    .line 2742
    :try_start_a
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2747
    new-array v1, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v1, v10

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v3, v1, v10

    .line 2748
    const-string v3, "getInt"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2751
    new-instance v3, Ljava/lang/String;

    const-string v10, "ro.miui.notch"

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2752
    new-instance v10, Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v12

    const/4 v3, 0x1

    aput-object v10, v6, v3

    .line 2754
    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_b

    :cond_8
    const/4 v0, 0x0

    .line 2755
    :goto_b
    iput-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2757
    iget-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v0, :cond_a

    .line 2759
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 2761
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I

    goto :goto_c

    .line 2764
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_e

    goto :goto_c

    :catch_e
    move-exception v0

    .line 2779
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_c

    :catch_f
    move-exception v0

    .line 2777
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_c

    :catch_10
    move-exception v0

    .line 2775
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_c

    :catch_11
    move-exception v0

    .line 2773
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_c

    :catch_12
    move-exception v0

    .line 2771
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 2786
    :cond_a
    :goto_c
    const-string v0, "smartisan"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2791
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "smartisanos.api.DisplayUtilsSmt"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 2792
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v6, v3, v10

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v10

    invoke-virtual {v0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2796
    iput-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2798
    iget-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x52

    .line 2800
    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_13

    goto :goto_d

    :catch_13
    move-exception v0

    .line 2805
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2813
    :cond_b
    :goto_d
    const-string v0, "meizu"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2819
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "flyme.config.FlymeFeature"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2820
    const-string v1, "IS_FRINGE_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 2821
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2826
    iput-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2827
    iget-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v0, :cond_c

    .line 2830
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "fringe_height"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    .line 2832
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2833
    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    goto :goto_e

    :catch_14
    move-exception v0

    .line 2839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2846
    :cond_c
    :goto_e
    const-string v0, "oneplus"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2851
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oneplus.screen.cameranotch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    .line 2854
    iput-boolean v1, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    const/16 v0, 0x50

    .line 2855
    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_15

    goto :goto_f

    :catch_15
    move-exception v0

    .line 2860
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2868
    :cond_d
    :goto_f
    const-string v0, "samsung"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2879
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2881
    const-class v1, Landroid/view/WindowInsets;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2882
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 2883
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 2887
    iput-boolean v1, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2889
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2891
    invoke-virtual {v1, v8, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2892
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2891
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2893
    invoke-virtual {v1, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2894
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2893
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v3, v20

    .line 2895
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2896
    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2895
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, v18

    .line 2897
    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2898
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2897
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 2900
    iput v3, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_16

    goto :goto_10

    :catch_16
    move-exception v0

    .line 2903
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2911
    :cond_e
    :goto_10
    const-string v0, "lenovo"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2916
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_screen_has_notch"

    const-string v2, "bool"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2917
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    .line 2918
    iget-boolean v0, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    if-eqz v0, :cond_f

    .line 2920
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_h"

    const-string v2, "integer"

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2921
    invoke-virtual/range {p0 .. p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_17

    goto :goto_11

    :catch_17
    move-exception v0

    .line 2928
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2938
    :cond_f
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check if curOut screen "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v5, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "curOut screen height   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v5, Lcom/netease/dwrg/CutOutInfo;->mSafeAreaLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method isRecording()Z
    .locals 1

    .line 2299
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isRunningOnEmulator()Z
    .locals 5

    .line 307
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string v0, "sdk"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "sdk_x86"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "vbox86p"

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 313
    :cond_0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 319
    const-string v1, "BlueStacks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 324
    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 329
    :cond_3
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 334
    :cond_4
    const-string v0, "goldfish"

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method isTablet()Z
    .locals 2

    .line 1636
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1507
    invoke-super {p0, p1, p2, p3}, Lcom/netease/neox/NeoXClient;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 544
    new-instance v0, Lcom/netease/dwrg/HookPackageManagerHelper;

    invoke-direct {v0, p0}, Lcom/netease/dwrg/HookPackageManagerHelper;-><init>(Lcom/netease/dwrg/Client;)V

    .line 545
    iget-boolean v1, v0, Lcom/netease/dwrg/HookPackageManagerHelper;->m_need_load_new_so:Z

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v0, p1}, Lcom/netease/dwrg/HookPackageManagerHelper;->hookNativeActivityPackage(Landroid/os/Bundle;)V

    goto :goto_0

    .line 551
    :cond_0
    invoke-static {}, Lcom/netease/neox/NativeInterface;->Dummy()V

    .line 552
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onCreate(Landroid/os/Bundle;)V

    .line 556
    :goto_0
    const-string p1, "NeoXView"

    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->getPlugin(Ljava/lang/String;)Lcom/netease/neox/IPlugin;

    move-result-object p1

    check-cast p1, Lcom/netease/neox/PluginNeoXView;

    invoke-virtual {p1}, Lcom/netease/neox/PluginNeoXView;->getView()Lcom/netease/neox/NeoXView;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    .line 557
    const-string p1, "neox_config"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netease/dwrg/Client;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_neox_config:Landroid/content/SharedPreferences;

    .line 558
    const-string v1, "NeoXRoot"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 561
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "neox_root"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_neox_root:Ljava/lang/String;

    .line 566
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/dwrg/SdkUtils;->getAttributionExFromApk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_douyin_attribution_ex:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 568
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 571
    :goto_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 572
    new-instance p1, Lcom/netease/dwrg/InputView;

    invoke-direct {p1, p0}, Lcom/netease/dwrg/InputView;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    .line 575
    new-instance p1, Lcom/netease/dwrg/InputDialogController;

    invoke-direct {p1, p0}, Lcom/netease/dwrg/InputDialogController;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_input_dialog:Lcom/netease/dwrg/InputDialogController;

    .line 578
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->hideVirtualKeyboard()V

    .line 580
    new-instance p1, Lcom/netease/dwrg/AudioVolumeContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/netease/dwrg/AudioVolumeContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_audiovolume_observer:Lcom/netease/dwrg/AudioVolumeContentObserver;

    .line 581
    new-instance p1, Lcom/netease/dwrg/RingerModeReceiver;

    invoke-direct {p1}, Lcom/netease/dwrg/RingerModeReceiver;-><init>()V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_ringermode_receiver:Lcom/netease/dwrg/RingerModeReceiver;

    .line 582
    new-instance p1, Lcom/netease/dwrg/HeadsetModeReceiver;

    invoke-direct {p1}, Lcom/netease/dwrg/HeadsetModeReceiver;-><init>()V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_headset_receiver:Lcom/netease/dwrg/HeadsetModeReceiver;

    .line 585
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/dwrg/Client;->m_root_view_height:I

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/dwrg/Client;->m_root_view_width:I

    .line 588
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view_size:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v2}, Lcom/netease/neox/NeoXView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 589
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view_size:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v2}, Lcom/netease/neox/NeoXView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x2

    .line 590
    new-array v1, v1, [I

    .line 591
    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v2, v1}, Lcom/netease/neox/NeoXView;->getLocationInWindow([I)V

    .line 592
    iget-object v2, p0, Lcom/netease/dwrg/Client;->m_view_offset:Landroid/graphics/Point;

    aget v0, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 594
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netease/dwrg/Client$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/dwrg/Client$1;-><init>(Lcom/netease/dwrg/Client;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 679
    invoke-direct {p0}, Lcom/netease/dwrg/Client;->setNetworkChangeCallback()V

    .line 681
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerHandler:Landroid/os/Handler;

    .line 682
    new-instance p1, Lcom/netease/dwrg/Client$2;

    invoke-direct {p1, p0}, Lcom/netease/dwrg/Client$2;-><init>(Lcom/netease/dwrg/Client;)V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_profile_info_timerRunnable:Ljava/lang/Runnable;

    .line 755
    const-string p1, "clipboard"

    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    .line 758
    invoke-direct {p0}, Lcom/netease/dwrg/Client;->setNavigationBarVisibility()V

    .line 760
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_2

    .line 761
    invoke-direct {p0}, Lcom/netease/dwrg/Client;->setDisplayCutoutModeShortEdges()V

    .line 764
    :cond_2
    const-string p1, "samsung"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 767
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 768
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x400

    .line 769
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 770
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 773
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "layoutInDisplayCutoutMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 775
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 780
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 782
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 786
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->isNotchScreen()Lcom/netease/dwrg/CutOutInfo;

    move-result-object p1

    .line 787
    iget-boolean p1, p1, Lcom/netease/dwrg/CutOutInfo;->mIsCutOut:Z

    iput-boolean p1, p0, Lcom/netease/dwrg/Client;->m_is_cutout:Z

    .line 792
    new-instance p1, Lcom/netease/dwrg/NeoxDualNetwork;

    invoke-direct {p1, p0}, Lcom/netease/dwrg/NeoxDualNetwork;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/dwrg/Client;->m_neox_dual_network:Lcom/netease/dwrg/NeoxDualNetwork;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 931
    invoke-virtual {v0, v1}, Lcom/netease/dwrg/MagtMgr;->api_release(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 932
    iput-object v1, p0, Lcom/netease/dwrg/Client;->m_magt_mgr:Lcom/netease/dwrg/MagtMgr;

    .line 934
    :cond_0
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1514
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 902
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 457
    invoke-super {p0, p1, p2, p3}, Lcom/netease/neox/NeoXClient;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 458
    array-length v0, p2

    if-lez v0, :cond_1

    .line 459
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget p3, p3, v1

    if-nez p3, :cond_0

    .line 460
    aget-object p2, p2, v1

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/netease/neox/NativeInterface;->NativeOnRequestPermissionsResult(ILjava/lang/String;Z)V

    goto :goto_0

    .line 462
    :cond_0
    aget-object p2, p2, v1

    invoke-static {p1, p2, v1}, Lcom/netease/neox/NativeInterface;->NativeOnRequestPermissionsResult(ILjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 915
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 909
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1537
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1520
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1528
    invoke-super {p0}, Lcom/netease/neox/NeoXClient;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrimMemory: level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NeoXMemory"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 923
    invoke-super {p0, p1}, Lcom/netease/neox/NeoXClient;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openLocationSetting()V
    .locals 1

    .line 1816
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 1818
    new-instance v0, Lcom/netease/dwrg/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/dwrg/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager;->openLocationSetting(Landroid/content/Context;)V

    return-void
.end method

.method openSMS(Ljava/lang/String;)Z
    .locals 3

    .line 1598
    const-string v0, "smsto:10086"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1599
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p1, :cond_0

    .line 1602
    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method openURL(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1581
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1582
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1585
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method playVibrationEffectComposition([F)V
    .locals 6

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playVibrationEffectComposition, event_params: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    .line 405
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_1

    return-void

    .line 410
    :cond_1
    invoke-static {}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    const/4 v2, 0x0

    .line 411
    :goto_0
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_2

    .line 413
    aget v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    aget v4, p1, v2

    float-to-int v4, v4

    const/4 v5, 0x7

    invoke-static {v1, v5, v3, v4}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/VibrationEffect$Composition;IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    goto :goto_0

    .line 415
    :cond_2
    invoke-static {v1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/VibrationEffect$Composition;)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 416
    invoke-static {v0, p1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method playVibrationEffectWave([J[I)V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "playVibrationEffectWave, timings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amplitudes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 424
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 428
    invoke-static {p1, p2, v1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m([J[II)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 429
    invoke-static {v0, p1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    return-void
.end method

.method playVoice(Ljava/lang/String;F)V
    .locals 0

    .line 2309
    sput-object p0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2310
    invoke-static {p1}, Lcom/netease/dwrg/GameVoiceUtils;->preparePlay(Ljava/lang/String;)Z

    .line 2311
    invoke-static {p2}, Lcom/netease/dwrg/GameVoiceUtils;->setPlayVolume(F)V

    .line 2312
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->startPlay()Z

    return-void
.end method

.method public requestGeneralPermission(Ljava/lang/String;)I
    .locals 1

    .line 440
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 442
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v0
.end method

.method public restart()V
    .locals 2

    .line 1787
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x34000000

    .line 1788
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1789
    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V

    .line 1790
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public restart_and_cleanup()V
    .locals 0

    .line 536
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->finish()V

    return-void
.end method

.method saveImageToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2529
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2530
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2531
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 2533
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2534
    const-string p1, "Failed."

    const-string p2, "SaveImageToGallery"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public final scaleImage(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-lez p2, :cond_5

    if-gtz p3, :cond_1

    goto :goto_0

    .line 2411
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2412
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2413
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2414
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2415
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    .line 2420
    :cond_2
    div-int/2addr v3, p2

    .line 2421
    div-int/2addr v1, p3

    .line 2422
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2424
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2425
    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2427
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 2432
    :cond_3
    invoke-static {p1, p2, p3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    return v0

    .line 2437
    :cond_4
    invoke-direct {p0, p1, p4}, Lcom/netease/dwrg/Client;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method setBrightness(F)V
    .locals 1

    .line 2176
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->CheckSelfPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    new-instance v0, Lcom/netease/dwrg/Client$22;

    invoke-direct {v0, p0, p1}, Lcom/netease/dwrg/Client$22;-><init>(Lcom/netease/dwrg/Client;F)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2204
    :cond_0
    const-string p1, "Error"

    const-string v0, "setBrightness failed due to permission WRITE_SETTINGS not granted"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setClipboardText(Ljava/lang/String;)V
    .locals 2

    .line 1644
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_clipboard:Landroid/content/ClipboardManager;

    const-string v1, "com.netease.dwrg"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public setInputViewLocation(IIII)V
    .locals 2

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1488
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1489
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1490
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1491
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    goto :goto_1

    .line 1479
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1480
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    .line 1481
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p1}, Lcom/netease/dwrg/InputView;->getDefaultFontSize()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/InputView;->setFontSize(F)V

    .line 1482
    iget-object p1, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p1}, Lcom/netease/dwrg/InputView;->getDefaultFontColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/dwrg/InputView;->setFontColor(I)V

    :goto_1
    return-void
.end method

.method public setInputViewTouchPassthrough(Z)V
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/InputView;->setTouchPassthrough(Z)V

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1

    .line 1828
    new-instance v0, Lcom/netease/dwrg/Client$5;

    invoke-direct {v0, p0, p1, p0}, Lcom/netease/dwrg/Client$5;-><init>(Lcom/netease/dwrg/Client;ZLcom/netease/dwrg/Client;)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLandscape(Z)V
    .locals 1

    .line 1226
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1229
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x6

    .line 1230
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1234
    iput p1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1235
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/Client;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method setVirtualKeyboardType(I)V
    .locals 1

    .line 2279
    iget-object v0, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {v0, p1}, Lcom/netease/dwrg/InputView;->setType(I)V

    return-void
.end method

.method public showInputDialog(Ljava/lang/String;IIZZZFIZZ)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public showInputView(Ljava/lang/String;IZZIIIIFI)Z
    .locals 0

    .line 1432
    iget-object p3, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p3, p2}, Lcom/netease/dwrg/InputView;->setFilterPattern(I)V

    .line 1433
    const-string p2, ""

    if-eqz p4, :cond_0

    .line 1435
    iget-object p3, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p3, p2}, Lcom/netease/dwrg/InputView;->setText(Ljava/lang/String;)V

    .line 1436
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/InputView;->setHint(Ljava/lang/String;)V

    goto :goto_0

    .line 1440
    :cond_0
    iget-object p3, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p3, p2}, Lcom/netease/dwrg/InputView;->setHint(Ljava/lang/String;)V

    .line 1441
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/InputView;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    if-eqz p7, :cond_2

    if-nez p8, :cond_1

    goto :goto_1

    .line 1453
    :cond_1
    invoke-virtual {p0}, Lcom/netease/dwrg/Client;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    .line 1454
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 1455
    invoke-virtual {p2, p3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1456
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p6, p3

    invoke-virtual {p2, p5, p6, p7, p8}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1457
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    .line 1458
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p9}, Lcom/netease/dwrg/InputView;->setFontSize(F)V

    .line 1459
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p10}, Lcom/netease/dwrg/InputView;->setFontColor(I)V

    goto :goto_2

    .line 1445
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3, p3}, Lcom/netease/dwrg/InputView;->setLocation(IIII)V

    .line 1446
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p3}, Lcom/netease/dwrg/InputView;->setBorderless(Z)V

    .line 1447
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2}, Lcom/netease/dwrg/InputView;->getDefaultFontSize()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/netease/dwrg/InputView;->setFontSize(F)V

    .line 1448
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2}, Lcom/netease/dwrg/InputView;->getDefaultFontColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/netease/dwrg/InputView;->setFontColor(I)V

    .line 1461
    :goto_2
    iget-object p2, p0, Lcom/netease/dwrg/Client;->m_input_view:Lcom/netease/dwrg/InputView;

    invoke-virtual {p2, p1}, Lcom/netease/dwrg/InputView;->show(Z)V

    return p1
.end method

.method showMessageBox(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1861
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1862
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1863
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "ic_launcher"

    .line 1864
    invoke-direct {p0, p2}, Lcom/netease/dwrg/Client;->getDrawableId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1865
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p3, :cond_5

    if-eq p3, p2, :cond_4

    const/4 p2, 0x2

    .line 1866
    const-string v0, "neox_retry"

    if-eq p3, p2, :cond_3

    const/4 p2, 0x3

    const-string v1, "neox_no"

    const-string v2, "neox_yes"

    if-eq p3, p2, :cond_2

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/4 p2, 0x5

    if-eq p3, p2, :cond_0

    .line 1991
    new-instance p2, Lcom/netease/dwrg/Client$19;

    invoke-direct {p2, p0}, Lcom/netease/dwrg/Client$19;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1972
    :cond_0
    invoke-direct {p0, v0}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/dwrg/Client$18;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$18;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/dwrg/Client$17;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$17;-><init>(Lcom/netease/dwrg/Client;)V

    .line 1979
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 1953
    :cond_1
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/dwrg/Client$16;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$16;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1960
    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/dwrg/Client$15;

    invoke-direct {p4, p0}, Lcom/netease/dwrg/Client$15;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1927
    :cond_2
    invoke-direct {p0, v2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/dwrg/Client$14;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$14;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1934
    invoke-direct {p0, v1}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/dwrg/Client$13;

    invoke-direct {p4, p0}, Lcom/netease/dwrg/Client$13;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/dwrg/Client$12;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$12;-><init>(Lcom/netease/dwrg/Client;)V

    .line 1941
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1901
    :cond_3
    const-string p2, "neox_abort"

    invoke-direct {p0, p2}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lcom/netease/dwrg/Client$11;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$11;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 1908
    invoke-direct {p0, v0}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/dwrg/Client$10;

    invoke-direct {p4, p0}, Lcom/netease/dwrg/Client$10;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string p3, "neox_ignore"

    .line 1915
    invoke-direct {p0, p3}, Lcom/netease/dwrg/Client;->getStringId(Ljava/lang/String;)I

    move-result p3

    new-instance p4, Lcom/netease/dwrg/Client$9;

    invoke-direct {p4, p0}, Lcom/netease/dwrg/Client$9;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1882
    :cond_4
    new-instance p2, Lcom/netease/dwrg/Client$8;

    invoke-direct {p2, p0}, Lcom/netease/dwrg/Client$8;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/netease/dwrg/Client$7;

    invoke-direct {p3, p0}, Lcom/netease/dwrg/Client$7;-><init>(Lcom/netease/dwrg/Client;)V

    .line 1889
    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1870
    :cond_5
    new-instance p2, Lcom/netease/dwrg/Client$6;

    invoke-direct {p2, p0}, Lcom/netease/dwrg/Client$6;-><init>(Lcom/netease/dwrg/Client;)V

    invoke-virtual {p1, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2003
    :goto_0
    new-instance p2, Lcom/netease/dwrg/Client$20;

    invoke-direct {p2, p0, p1}, Lcom/netease/dwrg/Client$20;-><init>(Lcom/netease/dwrg/Client;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, p2}, Lcom/netease/dwrg/Client;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showTransparentInputView(Ljava/lang/String;IIZZIIIIFI)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public showVirtualKeyboard()V
    .locals 3

    .line 1156
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 1159
    const-string v0, "NeoX"

    const-string v1, "ShowVirtualKeyboard: Input Method Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1163
    :cond_0
    const-string v1, "NeoXDeviceVKB"

    const-string v2, "Force show Virtual Keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1167
    iget-object v1, p0, Lcom/netease/dwrg/Client;->m_view:Lcom/netease/neox/NeoXView;

    invoke-virtual {v1}, Lcom/netease/neox/NeoXView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method

.method public showWelcomeView()V
    .locals 2

    .line 1499
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/dwrg/WelcomeView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startRecording(Ljava/lang/String;I)Z
    .locals 0

    .line 2284
    sput-object p0, Lcom/netease/dwrg/GameVoiceUtils;->context:Landroid/app/Activity;

    .line 2287
    invoke-static {p1, p2}, Lcom/netease/dwrg/GameVoiceUtils;->startRecordAsync(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public startUpdatingLocation()Z
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    if-nez v0, :cond_0

    .line 1798
    new-instance v0, Lcom/netease/dwrg/NeoXLocationManager;

    invoke-direct {v0}, Lcom/netease/dwrg/NeoXLocationManager;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    invoke-virtual {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager;->startUpdatingLocation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method startVibrate(JI)V
    .locals 4

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startVibrate, duration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", amplitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeoXDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_0

    return-void

    .line 1554
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_1

    return-void

    .line 1558
    :cond_1
    const-string v2, "real vibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 1561
    invoke-static {p1, p2, p3}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 1562
    invoke-static {v0, p1}, Lcom/netease/dwrg/Client$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 1564
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void
.end method

.method stopRecording()V
    .locals 0

    .line 2294
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopRecordAsync()V

    return-void
.end method

.method public stopUpdatingLocation()V
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/netease/dwrg/Client;->neoxLocationMgr:Lcom/netease/dwrg/NeoXLocationManager;

    if-eqz v0, :cond_0

    .line 1808
    invoke-virtual {v0, p0}, Lcom/netease/dwrg/NeoXLocationManager;->stopUpdatingLocation(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method stopVibrate()V
    .locals 1

    .line 1570
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Client;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    .line 1574
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method stopVoice()V
    .locals 0

    .line 2317
    invoke-static {}, Lcom/netease/dwrg/GameVoiceUtils;->stopPlay()V

    return-void
.end method
