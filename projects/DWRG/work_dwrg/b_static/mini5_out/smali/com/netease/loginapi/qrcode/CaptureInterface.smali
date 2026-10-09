.class public Lcom/netease/loginapi/qrcode/CaptureInterface;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/netease/loginapi/qrcode/Whats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;,
        Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;,
        Lcom/netease/loginapi/qrcode/CaptureInterface$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/Class;

.field public static sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;


# instance fields
.field public characterSet:Ljava/lang/String;

.field public decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public decodeHints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field public decodeThread:Lcom/netease/loginapi/qrcode/DecodeThread;

.field public mAppContext:Landroid/content/Context;

.field public mDelegate:Lcom/netease/loginapi/qrcode/CaptureViewDelegate;

.field public mHandler:Landroid/os/Handler;

.field public mHasSurface:Z

.field public mIsRunning:Z

.field public mListener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

.field public state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/netease/loginapi/qrcode/CaptureInterface;

    sput-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/netease/loginapi/qrcode/CaptureViewDelegate;Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/netease/loginapi/qrcode/CaptureInterface$1;

    invoke-direct {v1, p0}, Lcom/netease/loginapi/qrcode/CaptureInterface$1;-><init>(Lcom/netease/loginapi/qrcode/CaptureInterface;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mDelegate:Lcom/netease/loginapi/qrcode/CaptureViewDelegate;

    .line 26
    invoke-interface {p1}, Lcom/netease/loginapi/qrcode/CaptureViewDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mAppContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mListener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    .line 28
    sget-object p2, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-interface {p1}, Lcom/netease/loginapi/qrcode/CaptureViewDelegate;->getCaptureConfig()Lcom/netease/loginapi/qrcode/QRAuthConfig;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/netease/loginapi/qrcode/camera/CameraManager;-><init>(Landroid/content/Context;Lcom/netease/loginapi/qrcode/QRAuthConfig;)V

    sput-object p2, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/netease/loginapi/qrcode/CaptureInterface;)Lcom/netease/loginapi/qrcode/CaptureInterface$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/netease/loginapi/qrcode/CaptureInterface;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onDecodeSuccess(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/netease/loginapi/qrcode/CaptureInterface;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onDecodeFail(Landroid/os/Message;)V

    return-void
.end method

.method private getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mDelegate:Lcom/netease/loginapi/qrcode/CaptureViewDelegate;

    invoke-interface {v0}, Lcom/netease/loginapi/qrcode/CaptureViewDelegate;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Init Camera"

    invoke-static {v0, v3, v2}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mDelegate:Lcom/netease/loginapi/qrcode/CaptureViewDelegate;

    invoke-interface {v0}, Lcom/netease/loginapi/qrcode/CaptureViewDelegate;->hasCameraPermission()Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    .line 7
    const-class v0, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v1, "No Camera Permission"

    invoke-static {v0, v1, p1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object p1, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {p1, v1, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 16
    :try_start_0
    sget-object v2, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-virtual {v2, p1}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 17
    new-instance p1, Lcom/netease/loginapi/qrcode/DecodeThread;

    iget-object v5, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->decodeFormats:Ljava/util/Collection;

    iget-object v6, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->decodeHints:Ljava/util/Map;

    iget-object v7, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->characterSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mDelegate:Lcom/netease/loginapi/qrcode/CaptureViewDelegate;

    invoke-interface {v2}, Lcom/netease/loginapi/qrcode/CaptureViewDelegate;->getResultPointCallback()Lcom/google/zxing/ResultPointCallback;

    move-result-object v8

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/netease/loginapi/qrcode/DecodeThread;-><init>(Lcom/netease/loginapi/qrcode/CaptureInterface;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->decodeThread:Lcom/netease/loginapi/qrcode/DecodeThread;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 19
    sget-object p1, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    .line 22
    sget-object p1, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-virtual {p1}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->startPreview()V

    .line 23
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mIsRunning:Z

    .line 25
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->startCaptureAndDecode()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    sget-object v2, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v2, v1, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onInitError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 34
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->onInitError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No SurfaceHolder provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private onDecodeFail(Landroid/os/Message;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->DONE:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    iput-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    .line 2
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mListener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;

    const-string v1, "DecodeFailed"

    invoke-direct {v0, v1}, Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;->onFail(ILcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->startCaptureAndDecode()V

    return-void
.end method

.method private onDecodeSuccess(Landroid/os/Message;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v4, "barcode_bitmap"

    .line 6
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    array-length v5, v4

    invoke-static {v4, v1, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    const-string v4, "barcode_scaled_factor"

    .line 12
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    :goto_0
    sget-object v4, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/zxing/Result;

    invoke-virtual {v5}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "DecodeSuccess:%s"

    invoke-static {v4, v1, v2}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mListener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    if-eqz v1, :cond_2

    .line 17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-interface {v1, p1, v3, v0}, Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;->onSuccess(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    :cond_2
    return-void
.end method

.method private onInitError(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->TAG:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Init Error:%s"

    invoke-static {v0, v4, v2}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v3, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mIsRunning:Z

    .line 3
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mListener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;->from(Ljava/lang/Throwable;)Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;->onFail(ILcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCameraManager()Lcom/netease/loginapi/qrcode/camera/CameraManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public inform(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public onDestory()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    return-void
.end method

.method public onNetworkStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->DONE:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->SUCCESS:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v1, "Network Connected, start decode"

    invoke-static {v0, v1, p1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->startCaptureAndDecode()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->quitSynchronously()V

    .line 2
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->closeDriver()V

    .line 3
    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mIsRunning:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0, v0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-boolean v1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v2, "Add SurfaceHolder Callback:%s"

    invoke-static {v1, v2, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public quitSynchronously()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    const-class v1, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v2, "Quit"

    invoke-static {v1, v2, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->DONE:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    .line 3
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->stopPreview()V

    .line 5
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->decodeThread:Lcom/netease/loginapi/qrcode/DecodeThread;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/netease/loginapi/qrcode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->decodeThread:Lcom/netease/loginapi/qrcode/DecodeThread;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public startCaptureAndDecode()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/loginapi/qrcode/CaptureInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/loginapi/qrcode/widget/NetworkStateReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface$State;->PREVIEW:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    iput-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->state:Lcom/netease/loginapi/qrcode/CaptureInterface$State;

    .line 3
    sget-object v0, Lcom/netease/loginapi/qrcode/CaptureInterface;->sCameraManager:Lcom/netease/loginapi/qrcode/camera/CameraManager;

    iget-object v1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->decodeThread:Lcom/netease/loginapi/qrcode/DecodeThread;

    invoke-virtual {v1}, Lcom/netease/loginapi/qrcode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Lcom/netease/loginapi/qrcode/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 4
    iget-object v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mListener:Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/netease/loginapi/qrcode/CaptureInterface$OnCaptureEventListener;->onStart()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v2, "No network or not running, reject decode"

    invoke-static {v1, v2, v0}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v2, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v3, "surfaceCreated:%s"

    invoke-static {v2, v3, v1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/loginapi/qrcode/CaptureInterface;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 6
    :cond_0
    iput-boolean v0, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/netease/loginapi/qrcode/CaptureInterface;->mHasSurface:Z

    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/netease/loginapi/qrcode/CaptureInterface;

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1, p1}, Lcom/netease/loginapi/util/Trace;->p(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
