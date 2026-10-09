.class public Lcom/tencent/apollo/qr/QRCodeAPI;
.super Ljava/lang/Object;


# static fields
.field private static final MSG_TAG:I = 0x0

.field private static final REQUEST_TAG:I = 0x2537

.field private static final TAG:Ljava/lang/String; = "QRCodeAPI"

.field private static final UNITY_GAME_OBJECT:Ljava/lang/String; = "ApolloQRCode"

.field private static mInstance:Lcom/tencent/apollo/qr/QRCodeAPI;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mLaunchTag:I

.field private mLaunchURL:Ljava/lang/String;

.field private mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/apollo/qr/QRCodeAPI;->mInstance:Lcom/tencent/apollo/qr/QRCodeAPI;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    iput-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    const-string v0, "AUTOSTART"

    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchTag:I

    iput-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/tencent/apollo/qr/QRCodeAPI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI$1;-><init>(Lcom/tencent/apollo/qr/QRCodeAPI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "QRCodeAPI"

    const-string v1, "[GenerateQRImage], savePath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "QRCodeAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GenerateQRImage] content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/apollo/qr/QRCodeAPI$2;

    invoke-direct {v1, p0, p3, p4, p1}, Lcom/tencent/apollo/qr/QRCodeAPI$2;-><init>(Lcom/tencent/apollo/qr/QRCodeAPI;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private OnGenerateQRImage(IILjava/lang/String;)V
    .locals 4

    const-string v0, "QRCodeAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnGenerateQRImage] tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imagePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "retCode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "callbackTag"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ApolloQRCode"

    const-string v2, "OnGenerateQRImage"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QRCodeAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnGenerateQRImage] JSON Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private OnScanQRImage(IILjava/lang/String;)V
    .locals 4

    const-string v0, "QRCodeAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnScanQRImage] tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "retCode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "callbackTag"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ApolloQRCode"

    const-string v2, "OnScanQRImage"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QRCodeAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnGenerateQRImage] JSON Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/apollo/qr/QRCodeAPI;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/apollo/qr/QRCodeAPI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/apollo/qr/QRCodeAPI;)Lcom/tencent/apollo/qr/zxing/EncodeUtil;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/apollo/qr/QRCodeAPI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/apollo/qr/QRCodeAPI;
    .locals 2

    const-class v1, Lcom/tencent/apollo/qr/QRCodeAPI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/apollo/qr/QRCodeAPI;->mInstance:Lcom/tencent/apollo/qr/QRCodeAPI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/apollo/qr/QRCodeAPI;

    invoke-direct {v0}, Lcom/tencent/apollo/qr/QRCodeAPI;-><init>()V

    sput-object v0, Lcom/tencent/apollo/qr/QRCodeAPI;->mInstance:Lcom/tencent/apollo/qr/QRCodeAPI;

    :cond_0
    sget-object v0, Lcom/tencent/apollo/qr/QRCodeAPI;->mInstance:Lcom/tencent/apollo/qr/QRCodeAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized GenerateQRLogoImage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "QRCodeAPI"

    const-string v1, "[GenerateQRImage], mQREncodeUtil or content is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/tencent/apollo/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized GenerateQRNormalImage(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "QRCodeAPI"

    const-string v1, "[GenerateQRImage], mQREncodeUtil or content is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnGenerateQRImage(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->GenerateQRImage(IZLjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetLaunchInfo()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "launchTag"

    iget v3, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchTag:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "launchUri"

    iget-object v3, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "QRCodeAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GetLaunchInfo] JSON Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized Initialize(Landroid/app/Activity;)Z
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "QRCodeAPI"

    const-string v1, "[Initialize] Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mActivity:Landroid/app/Activity;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    :goto_1
    const-string v0, "QRCodeAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Initialize] mAppPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    invoke-direct {v0}, Lcom/tencent/apollo/qr/zxing/EncodeUtil;-><init>()V

    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/apollo/qr/QRCodeAPI;->RefreshLaunch(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v0, "QRCodeAPI"

    const-string v1, "[Initialize] getExternalCacheDir failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mAppPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized RefreshLaunch(Landroid/content/Intent;)Z
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "QRCodeAPI"

    const-string v1, "[RefreshLaunch] Intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchTag:I

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mLaunchURL:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ScanQRImage(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/16 v0, 0x14

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnScanQRImage(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QRCodeAPI"

    const-string v1, "getDeviceID, Permission Denied. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnScanQRImage(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/tencent/apollo/qr/zxing/CaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x2537

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized SetQRImageParam(IIII)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "QRCodeAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SetQRImageParam] width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    if-nez v0, :cond_0

    const-string v0, "QRCodeAPI"

    const-string v1, "[SetQRImageParam], mQREncodeUtil is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/apollo/qr/QRCodeAPI;->mQREncodeUtil:Lcom/tencent/apollo/qr/zxing/EncodeUtil;

    sget-object v5, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/apollo/qr/zxing/EncodeUtil;->initData(IIIILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    const/16 v0, 0x2537

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/apollo/qr/QRCodeAPI;->OnScanQRImage(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public setBackImageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setBackImageName(Ljava/lang/String;)V

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setImageName(Ljava/lang/String;)V

    return-void
.end method

.method public setScanText1(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setScanText1(Ljava/lang/String;)V

    return-void
.end method

.method public setScanText2(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setScanText2(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor1(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setTextColor1(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor2(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/apollo/qr/utils/GlobalManager;->self()Lcom/tencent/apollo/qr/utils/GlobalManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/apollo/qr/utils/GlobalManager;->setTextColor2(Ljava/lang/String;)V

    return-void
.end method
