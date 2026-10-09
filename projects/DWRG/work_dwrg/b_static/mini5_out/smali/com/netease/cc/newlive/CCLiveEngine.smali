.class public Lcom/netease/cc/newlive/CCLiveEngine;
.super Ljava/lang/Object;
.source "CCLiveEngine.java"


# static fields
.field public static final CCV_LIVE_TYPE_ENTERTAIN:Ljava/lang/String; = "miccard"

.field public static final CCV_LIVE_TYPE_GAME:Ljava/lang/String; = "game"

.field public static final CCV_LIVE_TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final CCV_VIDEO_QUALITY_HIGH:I = 0x3

.field public static final CCV_VIDEO_QUALITY_LOW:I = 0x1

.field public static final CCV_VIDEO_QUALITY_NORMAL:I = 0x2

.field public static final CCV_VIDEO_QUALITY_SUPER_HIGH:I = 0x4

.field public static final CHANNEL_TYPE_GAME:I = 0x9

.field public static final CHANNEL_TYPE_MLIVE:I = 0x8

.field public static final CHANNEL_TYPE_RECREATION:I = 0x3

.field public static final MLIVE_TYPE_GAME:I = 0xfde9

.field public static final MLIVE_TYPE_RECREATION:I = 0xfdea


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Lcom/netease/cc/newlive/ccliveengine/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;)V
    .locals 7

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/netease/cc/newlive/CCLiveEngine;->a(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/netease/cc/newlive/CCLiveEngine;->a(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/netease/cc/newlive/CCLiveEngine;->a(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;)V
    .locals 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/netease/cc/newlive/CCLiveEngine;->a(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/cc/newlive/EngineConfig;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 57
    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/newlive/CCLiveEngine;->a(Landroid/content/Context;Lcom/netease/cc/newlive/EngineConfig;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;Ljava/lang/Object;)V
    .locals 2

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCLiveEngineThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Lcom/netease/cc/newlive/ccliveengine/a;

    iget-object v1, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    invoke-direct {v0, p1, v1, p2}, Lcom/netease/cc/newlive/ccliveengine/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    .line 83
    iget-object p1, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p4, p2, p3

    const/4 p3, 0x2

    aput-object p5, p2, p3

    const/16 p3, 0x65

    invoke-virtual {p1, p3, p2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/netease/cc/newlive/EngineConfig;)V
    .locals 3

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCLiveEngineThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    .line 88
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v0, Lcom/netease/cc/newlive/ccliveengine/a;

    iget-object v1, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Lcom/netease/cc/newlive/EngineConfig;->getView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/cc/newlive/ccliveengine/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    .line 90
    iget-object p1, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static canSupportHandDetectWell(Ljava/lang/String;)Z
    .locals 0

    .line 567
    invoke-static {p0}, Lcom/netease/cc/newlive/utils/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 591
    sget-object v0, Lcom/netease/cc/newlive/utils/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setLiveUtils(Lcom/netease/cc/newlive/LiveUtils;)V
    .locals 0

    .line 571
    invoke-static {p0}, Lcom/netease/cc/newlive/utils/UtilMgr;->setLiveUtils(Lcom/netease/cc/newlive/LiveUtils;)V

    return-void
.end method


# virtual methods
.method public accessVideoLink()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x75

    .line 435
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addAniSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 579
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x90

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addRenderRect(Lcom/netease/cc/newlive/RenderRect;)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xd2

    .line 486
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public addStickerSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x8f

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addUserData(ILjava/lang/String;)V
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/16 v1, 0x12f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public autoFocus()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xcb

    .line 182
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public canFaceDetect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableBackgroundMusic(Z)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x133

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enableCaptureScreen(Z)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x193

    .line 453
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enableFaceDetect(Z)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0xd0

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enableFlashLight(Z)Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xc9

    .line 143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enableHandDetect(Z)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public enableLog(Z)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x6b

    .line 320
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enableMergeCover(ZS)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x2be

    const/4 v2, 0x0

    .line 247
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enablePrivacyMode(Z)V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x191

    .line 459
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public enableUploadCover(Z)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x2bd

    .line 265
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public exitVideoLink()V
    .locals 2

    const-string v0, "CCLiveEngine"

    const-string v1, "exit video link"

    .line 440
    invoke-static {v0, v1}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x76

    .line 442
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getDefaultBeautyParams()[F
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 202
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3e19999a    # 0.15f
        0x3e570a3d    # 0.21f
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getFpsList()[I
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 543
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xf
        0x12
        0x14
        0x18
    .end array-data
.end method

.method public getGLSurfaceSize()[I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->n()[I

    move-result-object v0

    return-object v0
.end method

.method public getGameLiveVbrList()[I
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 556
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xbb8
        0x9c4
        0x7d0
        0x5dc
        0x4b0
        0x3e8
    .end array-data
.end method

.method public getPreviewImageSize(Landroid/graphics/Rect;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->a(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getStreamFps()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->j()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStreamResolution(Landroid/graphics/Rect;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-virtual {v0, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getStreamVbr()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->k()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUploadLatency()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUploadSpeed()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getVbrList()[I
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 527
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xc8
        0x190
        0x258
        0x320
        0x3e8
        0x4b0
        0x5dc
        0x7d0
    .end array-data
.end method

.method public isLiveStreaming()Z
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public muteAudio(Z)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x12e

    .line 368
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x67

    .line 125
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPlayerCaptureCompleted(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x2bf

    .line 253
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 119
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public queryPresetParams()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public release()V
    .locals 6

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "CCLiveEngine"

    const-string v3, "release start"

    .line 627
    invoke-static {v2, v3}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :try_start_0
    iget-object v3, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v3, :cond_0

    .line 630
    iget-object v3, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x0

    .line 631
    iput-object v3, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    .line 632
    iput-object v3, p0, Lcom/netease/cc/newlive/CCLiveEngine;->a:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 635
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 637
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeRenderRect(Lcom/netease/cc/newlive/RenderRect;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xd3

    .line 492
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public reqUpdateLiveCover()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c1

    .line 271
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public resetGameType(I)V
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x93

    const/4 v2, 0x0

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public restart()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x70

    .line 112
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public restartUpdateCoverInterval()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x2c0

    .line 259
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public savePicture(Ljava/io/File;Landroid/graphics/Bitmap;SLcom/netease/cc/newlive/SavePictureTask$OnPictureSaveListener;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    .line 163
    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public sendUserFrame(Ljava/lang/String;)V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x130

    const/4 v2, 0x0

    .line 504
    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setAudioConnectMicMode(Z)V
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x134

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAutoFocusCallback(Lcom/netease/cc/newlive/MLiveCCAutoFocusCallback;)V
    .locals 0

    const-string p1, "api deprecated, please listener MLiveCCListener - LIVE_EVENT_AUTO_FOCUS_CALLBACK"

    .line 279
    invoke-static {p1}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGE(Ljava/lang/String;)V

    return-void
.end method

.method public setBeautyParam(IF)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xcc

    const/4 v2, 0x0

    .line 188
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setBeautyPrams([F)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xcd

    .line 194
    check-cast p1, [F

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xca

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setConMic(JLjava/lang/String;)V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    const/16 p1, 0x8e

    invoke-virtual {v0, p1, p2, p2, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDefaultBeautyParams()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/netease/cc/newlive/CCLiveEngine;->getDefaultBeautyParams()[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/cc/newlive/CCLiveEngine;->setBeautyPrams([F)V

    return-void
.end method

.method public setDevMode(Z)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 326
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setDrawLogo(Landroid/graphics/Bitmap;III)V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x7a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 289
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setEchoCancelEnable(Z)V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x135

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setFrontUploadMirror(Z)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xd1

    .line 384
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setGcMode(ZI)V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x131

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLiveOrientation(I)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x6a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setLiveTitle(Ljava/lang/String;)V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x6f

    .line 349
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setMLiveCCListener(Lcom/netease/cc/newlive/LiveEventListener;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x6d

    .line 332
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setMultiLiveFlag(I)V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/16 v1, 0x8d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNsMode(ZI)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x132

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPrivacyBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x192

    .line 465
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setPublishStateListener(Lcom/netease/cc/newlive/MLiveCCPublishStreamStateListener;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x6e

    .line 338
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setUserInfo(IIIILjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ccid"

    .line 406
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "uid"

    .line 407
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "eid"

    .line 408
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "context"

    .line 409
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "sid"

    .line 410
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "roomid"

    .line 411
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "channelid"

    .line 412
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "transformerid"

    .line 413
    invoke-virtual {v0, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "gametype"

    .line 414
    invoke-virtual {v0, p1, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "record"

    .line 415
    invoke-virtual {v0, p1, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "livetype"

    .line 416
    invoke-virtual {v0, p1, p11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "title"

    .line 417
    invoke-virtual {v0, p1, p12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "devicename"

    .line 418
    invoke-virtual {v0, p1, p13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    invoke-virtual {p0, v0}, Lcom/netease/cc/newlive/CCLiveEngine;->setUserInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUserInfo(Lorg/json/JSONObject;)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x81

    .line 429
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setVideoBitRate(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVideoQuality(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setWaterMark(Landroid/graphics/Bitmap;III)V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x79

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 296
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v2, p1

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public setZoomInScale(F)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xce

    .line 173
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public startLive(Lcom/netease/cc/newlive/LiveConfig;)V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "req start live, engine("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCLiveEngine"

    invoke-static {v1, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_1

    const/16 v1, 0x68

    .line 97
    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public startRtmpBridge()Ljava/lang/String;
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x1f5

    .line 474
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    invoke-virtual {v0}, Lcom/netease/cc/newlive/ccliveengine/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/cc/newlive/utils/CCLiveUtils;->getRtmpBridgePushurl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopAni(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x92

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopLive()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "req stopStream, engine("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CCLiveEngine"

    invoke-static {v1, v0}, Lcom/netease/cc/newlive/utils/LogUtil;->LOGF(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_1

    const/16 v1, 0x68

    .line 104
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public stopRtmpBridge()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x1f6

    .line 480
    invoke-virtual {v0, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public stopSticker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/16 p1, 0x91

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public switchCameraPreview(Z)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xcf

    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public updateRenderRect(Lcom/netease/cc/newlive/RenderRect;I)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xd4

    const/4 v2, 0x0

    .line 498
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public uploadTest(I)V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/netease/cc/newlive/CCLiveEngine;->b:Lcom/netease/cc/newlive/ccliveengine/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x72

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 374
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/netease/cc/newlive/ccliveengine/a;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
