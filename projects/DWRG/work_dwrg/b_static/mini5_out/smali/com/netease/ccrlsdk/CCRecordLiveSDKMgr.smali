.class public Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "CCRecordLiveSDKMgr"

.field public static mInstance:Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;


# instance fields
.field public ccLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

.field public ccSDKController:Lcclive/te;

.field public gameRoleInfo:Ljava/lang/String;

.field public hasInit:Z

.field public liveSdkInitConfig:Lcom/netease/ccrlsdk/LiveSDKInitConfig;

.field public loginToken:Ljava/lang/String;

.field public mBackgroundHandler:Landroid/os/Handler;

.field public mBackgroundHandlerThread:Landroid/os/HandlerThread;

.field public mContext:Landroid/content/Context;

.field public mGameActivity:Landroid/app/Activity;

.field public mHandler:Landroid/os/Handler;

.field public mMainActivity:Landroidx/fragment/app/FragmentActivity;

.field public mTopActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    invoke-direct {v0}, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;-><init>()V

    sput-object v0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mInstance:Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcclive/te;

    invoke-direct {v0}, Lcclive/te;-><init>()V

    iput-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccSDKController:Lcclive/te;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->hasInit:Z

    return-void
.end method

.method public static getInstance()Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mInstance:Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    invoke-direct {v0}, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;-><init>()V

    sput-object v0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mInstance:Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    .line 3
    :cond_0
    sget-object v0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mInstance:Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;

    return-object v0
.end method


# virtual methods
.method public controllSDK(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccSDKController:Lcclive/te;

    invoke-virtual {v0, p1}, Lcclive/te;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccSDKController:Lcclive/te;

    invoke-virtual {v0}, Lcclive/te;->a()V

    return-void
.end method

.method public getCcSDKController()Lcclive/te;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccSDKController:Lcclive/te;

    return-object v0
.end method

.method public getGameRoleInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->gameRoleInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveSdkInitConfig()Lcom/netease/ccrlsdk/LiveSDKInitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->liveSdkInitConfig:Lcom/netease/ccrlsdk/LiveSDKInitConfig;

    return-object v0
.end method

.method public hasInitSDK()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->hasInit:Z

    return v0
.end method

.method public initHandler()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CCRecordLiveSDKMgr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    .line 2
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mBackgroundHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method public isDebugMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->liveSdkInitConfig:Lcom/netease/ccrlsdk/LiveSDKInitConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/netease/ccrlsdk/LiveSDKInitConfig;->isDebug:Z

    if-eqz v0, :cond_0

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

.method public isUnisdkTargetTicketType(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccSDKController:Lcclive/te;

    invoke-virtual {v0, p1}, Lcclive/te;->a(I)Z

    move-result p1

    return p1
.end method

.method public onEvent(Lcclive/xc;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcclive/xc;->a:Ljava/lang/String;

    const-string v0, "game_gift_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcclive/mc;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "GiftConfigHelper"

    const-string v0, "initGiftConfig start "

    .line 3
    invoke-static {p1, v0}, Lcom/netease/cc/common/log/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcclive/lc;

    invoke-direct {p1}, Lcclive/lc;-><init>()V

    invoke-static {p1}, Lcclive/b;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcclive/kc;

    invoke-direct {v0}, Lcclive/kc;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public onEventCallBack(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccSDKController:Lcclive/te;

    invoke-virtual {v0, p1}, Lcclive/te;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setCcLiveSdkCallback(Lcom/netease/ccrlsdk/CCLiveSDKCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->ccLiveSDKCallback:Lcom/netease/ccrlsdk/CCLiveSDKCallback;

    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mGameActivity:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ccrlsdk/CCRecordLiveSDKMgr;->mContext:Landroid/content/Context;

    return-void
.end method
