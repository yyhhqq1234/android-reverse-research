.class public Lcom/netease/neox/PluginUniSDK;
.super Lcom/netease/neox/PluginBase;
.source "PluginUniSDK.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;
.implements Lcom/netease/ntunisdk/base/OnConnectListener;
.implements Lcom/netease/ntunisdk/base/OnContinueListener;
.implements Lcom/netease/ntunisdk/base/OnControllerListener;
.implements Lcom/netease/ntunisdk/base/OnExitListener;
.implements Lcom/netease/ntunisdk/base/OnExtendFuncListener;
.implements Lcom/netease/ntunisdk/base/OnExtendFuncByteListener;
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;
.implements Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;
.implements Lcom/netease/ntunisdk/base/OnProtocolFinishListener;
.implements Lcom/netease/ntunisdk/base/OnPushListener;
.implements Lcom/netease/ntunisdk/base/OnQRCodeListener;
.implements Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;
.implements Lcom/netease/ntunisdk/base/OnQuestListener;
.implements Lcom/netease/ntunisdk/base/OnReceiveMsgListener;
.implements Lcom/netease/ntunisdk/base/OnShareListener;
.implements Lcom/netease/ntunisdk/base/OnShowViewListener;
.implements Lcom/netease/ntunisdk/base/OnStartupListener;
.implements Lcom/netease/ntunisdk/base/OnVerifyListener;
.implements Lcom/netease/ntunisdk/base/OnWebViewListener;
.implements Lcom/netease/ntunisdk/base/QueryFriendListener;
.implements Lcom/netease/ntunisdk/base/QueryRankListener;
.implements Lcom/netease/download/listener/DownloadListener;


# instance fields
.field private m_context:Landroid/app/Activity;

.field private m_is_dl_init:Z

.field private m_is_init:Z

.field private m_is_initing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/netease/neox/PluginBase;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    .line 69
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    .line 70
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    return-void
.end method

.method private static native NativeOnCancelLocalPushFinished(Z)V
.end method

.method private static native NativeOnCodeScannerFinish(ILjava/lang/String;)V
.end method

.method private static native NativeOnConnectToChannelFinished(I)V
.end method

.method private static native NativeOnContinueGame()V
.end method

.method private static native NativeOnCreateQRCodeDone(Ljava/lang/String;)V
.end method

.method private static native NativeOnDisConnectToChannelFinished(I)V
.end method

.method private static native NativeOnDownloadFinish2(Ljava/lang/String;[B)V
.end method

.method private static native NativeOnDownloadInited()V
.end method

.method private static native NativeOnDownloadProgress(Ljava/lang/String;)V
.end method

.method private static native NativeOnExitApp()V
.end method

.method private static native NativeOnExtendFuncBytesCall(Ljava/lang/String;[BI)V
.end method

.method private static native NativeOnExtendFuncCall(Ljava/lang/String;)V
.end method

.method private static native NativeOnFinishInit(I)V
.end method

.method private static native NativeOnGetUserPushFinished(Z)V
.end method

.method private static native NativeOnLoginDone(I)V
.end method

.method private static native NativeOnLogoutDone(I)V
.end method

.method private static native NativeOnOpenExitViewFailed()V
.end method

.method private static native NativeOnOrderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method private static native NativeOnOrderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
.end method

.method private static native NativeOnPadKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnPadSateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V
.end method

.method private static native NativeOnProtocolFinish(I)V
.end method

.method private static native NativeOnQueryApplyFriendFinished(Z)V
.end method

.method private static native NativeOnQueryAvailablesInviteesFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryFriendListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryFriendListInGameFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryInviteFriendListFinished([Ljava/lang/String;)V
.end method

.method private static native NativeOnQueryInviterListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryIsDarenUpdated(Z)V
.end method

.method private static native NativeOnQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQueryRankFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V
.end method

.method private static native NativeOnQuerySkuDetailsFinished([Lcom/netease/ntunisdk/base/SkuDetailsInfo;)V
.end method

.method private static native NativeOnQueryUpdateAchievement(Z)V
.end method

.method private static native NativeOnQueryUpdateRankFinished(Z)V
.end method

.method private static native NativeOnQuestCompleted(Ljava/lang/String;)V
.end method

.method private static native NativeOnReceiveMsgEnterGame(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native NativeOnReceiveMsgNotification()V
.end method

.method private static native NativeOnSelectChannelOptionFinished(Z)V
.end method

.method private static native NativeOnSendLocalNotificationFinished(I)V
.end method

.method private static native NativeOnSendPushNotificationFinished(Z)V
.end method

.method private static native NativeOnSetUserPushFinished(Z)V
.end method

.method private static native NativeOnShareFinished(Z)V
.end method

.method private static native NativeOnShowViewClosed()V
.end method

.method private static native NativeOnShowViewFailed()V
.end method

.method private static native NativeOnShowViewOpened()V
.end method

.method private static native NativeOnShowViewRewarded()V
.end method

.method private static native NativeOnStartupClickSplash()V
.end method

.method private static native NativeOnStartupDone()V
.end method

.method private static native NativeOnStartupGetNoticeMsgDone(Ljava/lang/String;)V
.end method

.method private static native NativeOnVerifyFailure(ILjava/lang/String;)V
.end method

.method private static native NativeOnVerifySuccess(ILjava/lang/String;)V
.end method

.method private static native NativeOnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static synthetic access$000(Lcom/netease/neox/PluginUniSDK;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/neox/PluginUniSDK;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    return p1
.end method

.method static synthetic access$100(Lcom/netease/neox/PluginUniSDK;)Landroid/app/Activity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 60
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnDownloadInited()V

    return-void
.end method

.method private static bitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 189
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public DRPF(Ljava/lang/String;)I
    .locals 1

    .line 964
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->DRPF(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public OnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 598
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 0

    .line 318
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnCodeScannerFinish(ILjava/lang/String;)V

    return-void
.end method

.method public continueGame()V
    .locals 0

    .line 338
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnContinueGame()V

    return-void
.end method

.method public createQRCodeDone(Ljava/lang/String;)V
    .locals 0

    .line 518
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnCreateQRCodeDone(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 812
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    return-void
.end method

.method public exitApp()V
    .locals 1

    .line 373
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnExitApp()V

    .line 374
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 375
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public extendFuncDownload(Ljava/lang/String;)V
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_dl_init:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkDownload;->extendFunc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finishInit(I)V
    .locals 2

    .line 412
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnFinishInit(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 413
    :goto_0
    iput-boolean p1, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    if-eqz p1, :cond_1

    .line 415
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setCodeScannerListener(Lcom/netease/ntunisdk/base/OnCodeScannerListener;I)V

    .line 416
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setConnectListener(Lcom/netease/ntunisdk/base/OnConnectListener;I)V

    .line 417
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setContinueListener(Lcom/netease/ntunisdk/base/OnContinueListener;I)V

    .line 418
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setControllerListener(Lcom/netease/ntunisdk/base/OnControllerListener;I)V

    .line 419
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setExitListener(Lcom/netease/ntunisdk/base/OnExitListener;I)V

    .line 420
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncListener(Lcom/netease/ntunisdk/base/OnExtendFuncListener;I)V

    .line 421
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setExtendFuncByteListener(Lcom/netease/ntunisdk/base/OnExtendFuncByteListener;I)V

    .line 422
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setLoginListener(Lcom/netease/ntunisdk/base/OnLoginDoneListener;I)V

    .line 423
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setLogoutListener(Lcom/netease/ntunisdk/base/OnLogoutDoneListener;I)V

    .line 424
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setOrderListener(Lcom/netease/ntunisdk/base/OnOrderCheckListener;I)V

    .line 425
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setOnProtocolFinishListener(Lcom/netease/ntunisdk/base/OnProtocolFinishListener;I)V

    .line 426
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPushListener(Lcom/netease/ntunisdk/base/OnPushListener;I)V

    .line 427
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQRCodeListener(Lcom/netease/ntunisdk/base/OnQRCodeListener;I)V

    .line 428
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuerySkuDetailsListener(Lcom/netease/ntunisdk/base/OnQuerySkuDetailsListener;I)V

    .line 429
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQuestListener(Lcom/netease/ntunisdk/base/OnQuestListener;I)V

    .line 430
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setReceiveMsgListener(Lcom/netease/ntunisdk/base/OnReceiveMsgListener;I)V

    .line 431
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setShareListener(Lcom/netease/ntunisdk/base/OnShareListener;I)V

    .line 432
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setShowViewListener(Lcom/netease/ntunisdk/base/OnShowViewListener;I)V

    .line 433
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setStartupListener(Lcom/netease/ntunisdk/base/OnStartupListener;I)V

    .line 434
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setVerifyListener(Lcom/netease/ntunisdk/base/OnVerifyListener;I)V

    .line 435
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setWebViewListener(Lcom/netease/ntunisdk/base/OnWebViewListener;I)V

    .line 436
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryFriendListener(Lcom/netease/ntunisdk/base/QueryFriendListener;I)V

    .line 437
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setQueryRankListener(Lcom/netease/ntunisdk/base/QueryRankListener;I)V

    .line 439
    :cond_1
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    return-void
.end method

.method public getALinkParamsKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1360
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getALinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1361
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1362
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1363
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getALinkParamsValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1369
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getALinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1370
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1371
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1372
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1373
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAltTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1391
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getAltTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1392
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1393
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1394
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAltTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1400
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getAltTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1401
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1402
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1403
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1404
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1623
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppChannel()Ljava/lang/String;
    .locals 1

    .line 804
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppIconResId()I
    .locals 1

    .line 1630
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppIconResId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 2

    .line 1634
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1635
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 2

    .line 1642
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1643
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1655
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArrPriceLocaleId(Lcom/netease/ntunisdk/base/OrderInfo;)[Ljava/lang/String;
    .locals 1

    .line 1321
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getArrPriceLocaleId()Ljava/lang/String;

    move-result-object p1

    .line 1322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1324
    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAuthTypeName()Ljava/lang/String;
    .locals 1

    .line 900
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAuthTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCCPerformance()I
    .locals 1

    .line 944
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getCCPerformance()I

    move-result v0

    return v0
.end method

.method public getCCTypeByImsi()Ljava/lang/String;
    .locals 1

    .line 912
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getCCTypeByImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCCWindowState()I
    .locals 1

    .line 948
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getCCWindowState()I

    move-result v0

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 800
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelByImsi()Ljava/lang/String;
    .locals 1

    .line 904
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannelByImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelByImsiEx()Ljava/lang/String;
    .locals 1

    .line 908
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannelByImsiEx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannelGoodsTypesKeys(Lcom/netease/ntunisdk/base/OrderInfo;)[Ljava/lang/String;
    .locals 1

    .line 1283
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getChannelGoodsTypes()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1284
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1286
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1287
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChannelGoodsTypesValues(Lcom/netease/ntunisdk/base/OrderInfo;[Ljava/lang/String;)[I
    .locals 3

    .line 1291
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getChannelGoodsTypes()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1292
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1294
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1295
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1296
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCpuCore()Ljava/lang/String;
    .locals 2

    .line 1662
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuCore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1663
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuMhz()Ljava/lang/String;
    .locals 2

    .line 1670
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuMhz()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1671
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCpuName()Ljava/lang/String;
    .locals 2

    .line 1678
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getCpuName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1679
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceUDID()Ljava/lang/String;
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDeviceUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1687
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayPixels()[I
    .locals 3

    .line 1694
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getDisplayPixels(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1695
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadSDKVersion()Ljava/lang/String;
    .locals 1

    .line 702
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkDownload;->getDownloadSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFFChannelByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 888
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getFFChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getILinkParamsKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1422
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getILinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1423
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1424
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1425
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getILinkParamsValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1431
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getILinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1432
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1433
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1434
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1435
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJellRatiosKeys(Lcom/netease/ntunisdk/base/OrderInfo;)[Ljava/lang/String;
    .locals 1

    .line 1302
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJellRatios()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1303
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1306
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJellRatiosValues(Lcom/netease/ntunisdk/base/OrderInfo;[Ljava/lang/String;)[I
    .locals 3

    .line 1310
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getJellRatios()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1311
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1313
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1314
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1315
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkParamsKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1453
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1454
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1455
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1456
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkParamsValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1462
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1463
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1464
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1465
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1466
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1484
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1485
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1486
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1487
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLinkTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1493
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLinkTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1494
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1495
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1496
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1497
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .line 1702
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1703
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobildBrand()Ljava/lang/String;
    .locals 2

    .line 1710
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobildBrand()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1711
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileIMEI()Ljava/lang/String;
    .locals 2

    .line 1718
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1719
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileIMSI()Ljava/lang/String;
    .locals 2

    .line 1762
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1763
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileManufacturer()Ljava/lang/String;
    .locals 2

    .line 1726
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileManufacturer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1727
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileModel()Ljava/lang/String;
    .locals 2

    .line 1734
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1735
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileModel2()Ljava/lang/String;
    .locals 2

    .line 1742
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileModel2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1743
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileSDKVersion()I
    .locals 1

    .line 1750
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileSDKVersion()I

    move-result v0

    return v0
.end method

.method public getMobileVersion()Ljava/lang/String;
    .locals 2

    .line 1754
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getMobileVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1755
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 199
    const-string v0, "unisdk"

    return-object v0
.end method

.method public getNetworktype()Ljava/lang/String;
    .locals 2

    .line 1810
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->ntGetNetworktype(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1811
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoticeMsgDone(Ljava/lang/String;)V
    .locals 0

    .line 578
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnStartupGetNoticeMsgDone(Ljava/lang/String;)V

    return-void
.end method

.method public getOrbitSessionId()Ljava/lang/String;
    .locals 1

    .line 706
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getDLInst()Lcom/netease/ntunisdk/base/SdkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkDownload;->getOrbitSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 808
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductListKeys()[Ljava/lang/String;
    .locals 2

    .line 1185
    invoke-static {}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductList()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1186
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1188
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1190
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProductListValues([Ljava/lang/String;)[Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;
    .locals 4

    .line 1194
    invoke-static {}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductList()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1195
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_2

    array-length v1, p1

    .line 1196
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 1198
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    const/4 v2, 0x0

    .line 1199
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1200
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 1

    .line 784
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 772
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 768
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRamMemory()[Ljava/lang/String;
    .locals 2

    .line 1770
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getRamMemory(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1771
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSDKVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 924
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSdkPidKeys(Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;)[Ljava/lang/String;
    .locals 1

    .line 1206
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1208
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1209
    iget-object p1, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getSdkPidKeys(Lcom/netease/ntunisdk/base/OrderInfo;)[Ljava/lang/String;
    .locals 2

    .line 1264
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1265
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1267
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1268
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSdkPidValues(Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1213
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    iget-object v1, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1215
    :cond_0
    iget-object v0, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1216
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1217
    iget-object v2, p1, Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;->sdkPids:Ljava/util/Map;

    aget-object v3, p2, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSdkPidValues(Lcom/netease/ntunisdk/base/OrderInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1272
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getSdkPids()Ljava/util/Map;

    move-result-object p1

    .line 1273
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1275
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1276
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1277
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1546
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getSubTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1547
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1548
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1549
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1555
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getSubTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1556
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1557
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1558
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1559
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurveyPaperLanguage()Ljava/lang/String;
    .locals 2

    .line 1778
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSurveyPaperLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 2

    .line 1786
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getSystemLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1787
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextMsgKeys(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1515
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1516
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1517
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1518
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextMsgValues(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 1524
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTextMsg()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1525
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1526
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1527
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 1528
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getToUserList(Lcom/netease/ntunisdk/base/ShareInfo;)[Ljava/lang/String;
    .locals 1

    .line 1577
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUserList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1579
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1580
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransid()Ljava/lang/String;
    .locals 2

    .line 1794
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getTransid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1795
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 932
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnisdkDeviceId()Ljava/lang/String;
    .locals 2

    .line 1802
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->getUnisdkDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1803
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 820
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1

    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .line 796
    const/4 v0, 0x1

    return v0
.end method

.method public hasProduct(Lcom/netease/ntunisdk/base/OrderInfo;)Z
    .locals 0

    .line 1248
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Lcom/netease/ntunisdk/base/OrderInfo;)Z

    move-result p1

    return p1
.end method

.method public hasProduct(Ljava/lang/String;)Z
    .locals 0

    .line 1244
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initDownload()V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    new-instance v1, Lcom/netease/neox/PluginUniSDK$2;

    invoke-direct {v1, p0}, Lcom/netease/neox/PluginUniSDK$2;-><init>(Lcom/netease/neox/PluginUniSDK;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBinded(Ljava/lang/String;)Z
    .locals 1

    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public isCCRecordMic()Z
    .locals 1

    .line 1072
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->isCCRecordMic()Z

    move-result v0

    return v0
.end method

.method public isCCRecording()Z
    .locals 1

    .line 1068
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->isCCRecording()Z

    move-result v0

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 1

    .line 1818
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDeviceRooted()Z

    move-result v0

    return v0
.end method

.method public isDomestic()Z
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDomestic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isEmulator()Z
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isIPv4(Ljava/lang/String;)Z
    .locals 0

    .line 1830
    invoke-static {p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isIPv4(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isInit()Z
    .locals 1

    .line 711
    const/4 v0, 0x1

    return v0
.end method

.method public isMuMu()Z
    .locals 1

    .line 1834
    invoke-static {}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isMuMu()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .line 1838
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWifiConnect()Z
    .locals 1

    .line 1846
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->isWifiConnect(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 0

    .line 1252
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;

    move-result-object p1

    return-object p1
.end method

.method public loginDone(I)V
    .locals 0

    .line 444
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnLoginDone(I)V

    return-void
.end method

.method public logoutDone(I)V
    .locals 0

    .line 473
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnLogoutDone(I)V

    return-void
.end method

.method public newAccountInfo()Lcom/netease/ntunisdk/base/AccountInfo;
    .locals 1

    .line 1607
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    return-object v0
.end method

.method public newAccountInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/AccountInfo;
    .locals 1

    .line 1611
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newOrderInfo(Lcom/netease/ntunisdk/base/OrderInfo;)Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 1

    .line 1181
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-object v0
.end method

.method public newOrderInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 1

    .line 1177
    new-instance v0, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newQueryRankInfo()Lcom/netease/ntunisdk/base/QueryRankInfo;
    .locals 1

    .line 1343
    new-instance v0, Lcom/netease/ntunisdk/base/QueryRankInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/QueryRankInfo;-><init>()V

    return-object v0
.end method

.method public newQueryRankInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/QueryRankInfo;
    .locals 0

    .line 1347
    invoke-static {p1}, Lcom/netease/ntunisdk/base/QueryRankInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/QueryRankInfo;

    move-result-object p1

    return-object p1
.end method

.method public newShareInfo()Lcom/netease/ntunisdk/base/ShareInfo;
    .locals 1

    .line 1352
    new-instance v0, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/ShareInfo;-><init>()V

    return-object v0
.end method

.method public newShareInfo(Ljava/lang/String;)Lcom/netease/ntunisdk/base/ShareInfo;
    .locals 0

    .line 1356
    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->jsonStr2Obj(Ljava/lang/String;)Lcom/netease/ntunisdk/base/ShareInfo;

    move-result-object p1

    return-object p1
.end method

.method public newSkuDetailsInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/ntunisdk/base/SkuDetailsInfo;
    .locals 9

    .line 1617
    new-instance v8, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public ntAntiAddiction(Ljava/lang/String;)V
    .locals 1

    .line 828
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntAntiAddiction(Ljava/lang/String;)V

    return-void
.end method

.method public ntApplyFriend(Ljava/lang/String;)V
    .locals 1

    .line 844
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntApplyFriend(Ljava/lang/String;)V

    return-void
.end method

.method public ntCCStartService()V
    .locals 1

    .line 936
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCCStartService()V

    return-void
.end method

.method public ntCCStopService()V
    .locals 1

    .line 940
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCCStopService()V

    return-void
.end method

.method public ntCallbackFail(Ljava/lang/String;)V
    .locals 1

    .line 1108
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCallbackFail(Ljava/lang/String;)V

    return-void
.end method

.method public ntCallbackSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1104
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCallbackSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public ntCancelLocalNotification(I)V
    .locals 1

    .line 992
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCancelLocalNotification(I)V

    return-void
.end method

.method public ntCheckArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z
    .locals 1

    .line 872
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckArgs(Lcom/netease/ntunisdk/base/ShareInfo;)Z

    move-result p1

    return p1
.end method

.method public ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    .line 732
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public ntCloseFlash()V
    .locals 1

    .line 1128
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCloseFlash()V

    return-void
.end method

.method public ntCloseWebView()V
    .locals 1

    .line 1120
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCloseWebView()V

    return-void
.end method

.method public ntCollectEvent(Ljava/lang/String;)V
    .locals 1

    .line 956
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCollectEvent(Ljava/lang/String;)V

    return-void
.end method

.method public ntConnectToChannel()V
    .locals 1

    .line 1004
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntConnectToChannel()V

    return-void
.end method

.method public ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 1

    .line 884
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntConsume(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 1154
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1158
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCreateQRCode(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntDeleteInviters([Ljava/lang/String;)V
    .locals 1

    .line 980
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDeleteInviters(Ljava/util/List;)V

    return-void
.end method

.method public ntDisConnectFromChannel()V
    .locals 1

    .line 1008
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisConnectFromChannel()V

    return-void
.end method

.method public ntDisplayAchievement()V
    .locals 1

    .line 1044
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisplayAchievement()V

    return-void
.end method

.method public ntDisplayLeaderboard(Ljava/lang/String;)V
    .locals 1

    .line 1040
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisplayLeaderboard(Ljava/lang/String;)V

    return-void
.end method

.method public ntDisplayQuests([I)V
    .locals 1

    .line 1056
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDisplayQuests([I)V

    return-void
.end method

.method public ntDoSdkRealNameRegister()V
    .locals 1

    .line 832
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntDoSdkRealNameRegister()V

    return-void
.end method

.method public ntExtendFunc(Ljava/lang/String;)V
    .locals 1

    .line 1132
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntExtendFunc(Ljava/lang/String;)V

    return-void
.end method

.method public ntFlushCustomEvents()V
    .locals 1

    .line 1084
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntFlushCustomEvents()V

    return-void
.end method

.method public ntGameLoginSuccess()V
    .locals 1

    .line 880
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGameLoginSuccess()V

    return-void
.end method

.method public ntGetAnnouncementInfo()V
    .locals 1

    .line 1092
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetAnnouncementInfo()V

    return-void
.end method

.method public ntGetChannelID()Ljava/lang/String;
    .locals 1

    .line 1016
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetChannelID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ntGetCheckedOrders()[Lcom/netease/ntunisdk/base/OrderInfo;
    .locals 2

    .line 1144
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetCheckedOrders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netease/ntunisdk/base/OrderInfo;

    .line 1147
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/base/OrderInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ntGetNotice(Z)V
    .locals 1

    .line 1076
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetNotice(Z)V

    return-void
.end method

.method public ntGetUsePushNotification()V
    .locals 1

    .line 996
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetUsePushNotification()V

    return-void
.end method

.method public ntGuestBind()V
    .locals 1

    .line 836
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGuestBind()V

    return-void
.end method

.method public ntHasChannelConnected()Z
    .locals 1

    .line 1012
    const/4 v0, 0x1

    return v0
.end method

.method public ntHasNotification()Z
    .locals 1

    .line 896
    const/4 v0, 0x1

    return v0
.end method

.method public ntHasPlatform(Ljava/lang/String;)Z
    .locals 1

    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public ntInit()V
    .locals 3

    .line 715
    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_init:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    if-nez v0, :cond_0

    .line 717
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SPLASH_PNG_SCALE_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 718
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    const/4 v0, 0x1

    .line 719
    iput-boolean v0, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    :cond_0
    return-void
.end method

.method public ntInviteFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 972
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInviteFriendList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntIsDarenUpdated()V
    .locals 1

    .line 892
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntIsDarenUpdated()V

    return-void
.end method

.method public ntLogin()V
    .locals 1

    .line 724
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogin()V

    return-void
.end method

.method public ntLogout()V
    .locals 1

    .line 740
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogout()V

    return-void
.end method

.method public ntMoreGame()V
    .locals 1

    .line 916
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntMoreGame()V

    return-void
.end method

.method public ntOpenEchoes()V
    .locals 1

    .line 1136
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenEchoes()V

    return-void
.end method

.method public ntOpenExitView()V
    .locals 1

    .line 764
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenExitView()V

    return-void
.end method

.method public ntOpenManager()V
    .locals 1

    .line 744
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenManager()V

    return-void
.end method

.method public ntOpenNearby()V
    .locals 1

    .line 752
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenNearby()V

    return-void
.end method

.method public ntOpenPauseView()V
    .locals 1

    .line 760
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    return-void
.end method

.method public ntOpenWebView(Ljava/lang/String;)V
    .locals 1

    .line 1116
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenWebView(Ljava/lang/String;)V

    return-void
.end method

.method public ntPrePay()V
    .locals 1

    .line 928
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPrePay()V

    return-void
.end method

.method public ntPresentQRCodeScanner(Ljava/lang/String;I)V
    .locals 1

    .line 1064
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPresentQRCodeScanner(Ljava/lang/String;I)V

    return-void
.end method

.method public ntPushGameVoice([B)V
    .locals 7

    .line 1167
    :try_start_0
    const-string v0, "com.netease.ntunisdk.ccmomentsdk.PushGameVoiceDataEfficiently"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1168
    const-string v1, "pushGameVoiceData"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, [B

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1169
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v1, v2, v6

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ntQueryAvailablesInvitees()V
    .locals 1

    .line 852
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryAvailablesInvitees()V

    return-void
.end method

.method public ntQueryFriendList()V
    .locals 1

    .line 848
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryFriendList()V

    return-void
.end method

.method public ntQueryFriendListInGame()V
    .locals 1

    .line 920
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryFriendListInGame()V

    return-void
.end method

.method public ntQueryInventory()V
    .locals 1

    .line 876
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryInventory()V

    return-void
.end method

.method public ntQueryInviterList()V
    .locals 1

    .line 976
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryInviterList()V

    return-void
.end method

.method public ntQueryMyAccount()V
    .locals 1

    .line 856
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryMyAccount()V

    return-void
.end method

.method public ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V
    .locals 1

    .line 860
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQueryRank(Lcom/netease/ntunisdk/base/QueryRankInfo;)V

    return-void
.end method

.method public ntQuerySkuDetails(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 728
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntQuerySkuDetails(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public ntRemoveCheckedOrders(Ljava/lang/String;)V
    .locals 1

    .line 1140
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntRemoveCheckedOrders(Ljava/lang/String;)V

    return-void
.end method

.method public ntScannerQRCode(Ljava/lang/String;)V
    .locals 1

    .line 1162
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntScannerQRCode(Ljava/lang/String;)V

    return-void
.end method

.method public ntSelectChannelOption(I)V
    .locals 1

    .line 1020
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSelectChannelOption(I)V

    return-void
.end method

.method public ntSendLocalNotification(Ljava/lang/String;)V
    .locals 1

    .line 988
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSendLocalNotification(Ljava/lang/String;)V

    return-void
.end method

.method public ntSendProfile(Ljava/lang/String;Z)V
    .locals 1

    .line 1088
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSendProfile(Ljava/lang/String;Z)V

    return-void
.end method

.method public ntSendPushNotification(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 984
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSendPushNotification(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public ntSetFloatBtnVisible(Z)V
    .locals 1

    .line 756
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    return-void
.end method

.method public ntSetUsePushNotification(Z)V
    .locals 1

    .line 1000
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetUsePushNotification(Z)V

    return-void
.end method

.method public ntSetUserIdentifier(Ljava/lang/String;)V
    .locals 1

    .line 1036
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public ntSetZone(Ljava/lang/String;)V
    .locals 1

    .line 1024
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetZone(Ljava/lang/String;)V

    return-void
.end method

.method public ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 1

    .line 868
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    return-void
.end method

.method public ntShowBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 960
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntShowCompactView(Z)V
    .locals 1

    .line 1112
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    return-void
.end method

.method public ntShowConversation()V
    .locals 1

    .line 1028
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowConversation()V

    return-void
.end method

.method public ntShowFAQs()V
    .locals 1

    .line 1032
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowFAQs()V

    return-void
.end method

.method public ntShowRewardView([Ljava/lang/String;)V
    .locals 1

    .line 968
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowRewardView(Ljava/util/List;)V

    return-void
.end method

.method public ntShowWeb(Ljava/lang/String;)V
    .locals 1

    .line 952
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowWeb(Ljava/lang/String;)V

    return-void
.end method

.method public ntSwitchAccount()V
    .locals 1

    .line 748
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSwitchAccount()V

    return-void
.end method

.method public ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1080
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntTrackCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntUpLoadUserInfo()V
    .locals 1

    .line 824
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    return-void
.end method

.method public ntUpdateAchievement(Ljava/lang/String;I)V
    .locals 1

    .line 1048
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateAchievement(Ljava/lang/String;I)V

    return-void
.end method

.method public ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1096
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateApi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ntUpdateEvent(Ljava/lang/String;I)V
    .locals 1

    .line 1052
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateEvent(Ljava/lang/String;I)V

    return-void
.end method

.method public ntUpdateRank(Ljava/lang/String;D)V
    .locals 1

    .line 864
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpdateRank(Ljava/lang/String;D)V

    return-void
.end method

.method public ntVerifyMobile(I)V
    .locals 1

    .line 1124
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntVerifyMobile(I)V

    return-void
.end method

.method public ntVerifyOrder()V
    .locals 1

    .line 736
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntVerifyOrder()V

    return-void
.end method

.method public ntvGenericFunctionCall(Ljava/lang/String;)V
    .locals 1

    .line 1060
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntvGenericFunctionCall(Ljava/lang/String;)V

    return-void
.end method

.method public obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Ljava/lang/String;
    .locals 0

    .line 1256
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1258
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 271
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onApplyFriendFinished(Z)V
    .locals 0

    .line 626
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryApplyFriendFinished(Z)V

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0

    .line 296
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnBackPressed()V

    return-void
.end method

.method public onCancelLocalPushFinished(Z)V
    .locals 0

    .line 513
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnCancelLocalPushFinished(Z)V

    return-void
.end method

.method public onClickSplash()V
    .locals 0

    .line 583
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnStartupClickSplash()V

    return-void
.end method

.method public onClosed()V
    .locals 0

    .line 568
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewClosed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 281
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConnectToChannelFinished(I)V
    .locals 0

    .line 323
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnConnectToChannelFinished(I)V

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    .line 204
    invoke-static {p1}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 205
    sget p2, Lcom/netease/neox/unisdk/R$string;->nxunisdk_engine:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 207
    const-string v0, "NeoX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const-string v0, "Cocos"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 211
    :cond_1
    const-string v0, "Unity3D"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 213
    :cond_2
    const-string v0, "Unreal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    .line 217
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unknown engine "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/neox/NXLog;->e(Ljava/lang/String;)V

    .line 220
    :goto_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v0, "GAME_ENGINE"

    invoke-interface {p2, v0, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 222
    sget p2, Lcom/netease/neox/unisdk/R$string;->nxunisdk_jf_gameid:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "JF_GAMEID"

    invoke-interface {v0, v2, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_4
    sget p2, Lcom/netease/neox/unisdk/R$string;->nxunisdk_jf_log_key:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 230
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v2, "JF_LOG_KEY"

    invoke-interface {v0, v2, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_5
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p2

    const-string v0, "UNISDK_JF_GAS3"

    invoke-interface {p2, v0, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 235
    iput-object p1, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    .line 238
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    const-string p2, "SPLASH_PNG_SCALE_TYPE"

    invoke-interface {p1, p2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 239
    iput-boolean v3, p0, Lcom/netease/neox/PluginUniSDK;->m_is_initing:Z

    .line 240
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    .line 306
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->destroyInst()V

    :cond_1
    return-void
.end method

.method public onDisConnectToChannelFinished(I)V
    .locals 0

    .line 328
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnDisConnectToChannelFinished(I)V

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 543
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnReceiveMsgEnterGame(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExtendFuncByteCall(Ljava/lang/String;[BI)V
    .locals 0

    .line 407
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnExtendFuncBytesCall(Ljava/lang/String;[BI)V

    return-void
.end method

.method public onExtendFuncCall(Ljava/lang/String;)V
    .locals 0

    .line 402
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnExtendFuncCall(Ljava/lang/String;)V

    return-void
.end method

.method public onFailed()V
    .locals 0

    .line 563
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewFailed()V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 593
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnVerifyFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onFinish(Lorg/json/JSONObject;)V
    .locals 4

    .line 454
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    const-string v1, "filebytes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 459
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    .line 460
    array-length v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    invoke-static {p1}, Lcom/netease/neox/NXLog;->logException(Ljava/lang/Exception;)V

    .line 467
    :cond_1
    :goto_0
    invoke-static {v0, v3}, Lcom/netease/neox/PluginUniSDK;->NativeOnDownloadFinish2(Ljava/lang/String;[B)V

    return-void
.end method

.method public onGetUserPushFinished(Z)V
    .locals 0

    .line 503
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnGetUserPushFinished(Z)V

    return-void
.end method

.method public onInviteFriendListFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 646
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 649
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryInviteFriendListFinished([Ljava/lang/String;)V

    return-void
.end method

.method public onInviterListFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 655
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 658
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryInviterListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onIsDarenUpdated(Z)V
    .locals 0

    .line 631
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryIsDarenUpdated(Z)V

    return-void
.end method

.method public onKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 343
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadKeyDown(ILcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 353
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadKeyPressure(IFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 348
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadKeyUp(ILcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 358
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadLeftStick(FFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    .line 286
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOpenExitViewFailed()V
    .locals 3

    .line 381
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnOpenExitViewFailed()V

    .line 382
    iget-object v0, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$bool;->nxunisdk_use_default_exit_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/neox/PluginUniSDK;->m_context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/netease/neox/unisdk/R$string;->nxunisdk_title_exit_game:I

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$string;->nxunisdk_message_exit_game:I

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$drawable;->ic_launcher:I

    .line 386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$string;->confirm:I

    new-instance v2, Lcom/netease/neox/PluginUniSDK$1;

    invoke-direct {v2, p0}, Lcom/netease/neox/PluginUniSDK$1;-><init>(Lcom/netease/neox/PluginUniSDK;)V

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/netease/neox/unisdk/R$string;->cancel:I

    const/4 v2, 0x0

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 0

    .line 558
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewOpened()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    .line 245
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    .line 246
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    return-void
.end method

.method public onProgress(Lorg/json/JSONObject;)V
    .locals 0

    .line 449
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnDownloadProgress(Ljava/lang/String;)V

    return-void
.end method

.method public onProtocolFinish(I)V
    .locals 0

    .line 488
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnProtocolFinish(I)V

    return-void
.end method

.method public onQueryAvailablesInviteesFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 613
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 616
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryAvailablesInviteesFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryFriendListFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 604
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 607
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryFriendListFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryFriendListInGameFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 637
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 640
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryFriendListInGameFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 0

    .line 621
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQueryRankFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 664
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/AccountInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 667
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryRankFinished([Lcom/netease/ntunisdk/base/AccountInfo;)V

    return-void
.end method

.method public onQuestCompleted(Ljava/lang/String;)V
    .locals 0

    .line 532
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQuestCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedNotification()V
    .locals 0

    .line 538
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnReceiveMsgNotification()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 301
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    .line 266
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRestart()V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    .line 256
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnResume()V

    return-void
.end method

.method public onRewarded()V
    .locals 0

    .line 553
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnShowViewRewarded()V

    return-void
.end method

.method public onRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 363
    invoke-static {p1, p2, p3}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadRightStick(FFLcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 291
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectChannelOptionFinished(Z)V
    .locals 0

    .line 333
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSelectChannelOptionFinished(Z)V

    return-void
.end method

.method public onSendLocalNotificationFinished(I)V
    .locals 0

    .line 498
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSendLocalNotificationFinished(I)V

    return-void
.end method

.method public onSendPushNotificationFinished(Z)V
    .locals 0

    .line 493
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSendPushNotificationFinished(Z)V

    return-void
.end method

.method public onSetUserPushFinished(Z)V
    .locals 0

    .line 508
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnSetUserPushFinished(Z)V

    return-void
.end method

.method public onShareFinished(Z)V
    .locals 0

    .line 548
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnShareFinished(Z)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    .line 261
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStart()V

    return-void
.end method

.method public onStateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V
    .locals 0

    .line 368
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnPadSateEvent(Lcom/netease/ntunisdk/base/PadEvent;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    .line 251
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStop()V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 0

    .line 588
    invoke-static {p1, p2}, Lcom/netease/neox/PluginUniSDK;->NativeOnVerifySuccess(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateAchievement(Z)V
    .locals 0

    .line 677
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryUpdateAchievement(Z)V

    return-void
.end method

.method public onUpdateRankFinished(Z)V
    .locals 0

    .line 672
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQueryUpdateRankFinished(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 0

    .line 276
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnWindowFocusChanged(Z)V

    return-void
.end method

.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 478
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnOrderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    .line 483
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnOrderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public querySkuDetailsFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/SkuDetailsInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 524
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 527
    :goto_0
    invoke-static {p1}, Lcom/netease/neox/PluginUniSDK;->NativeOnQuerySkuDetailsFinished([Lcom/netease/ntunisdk/base/SkuDetailsInfo;)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;)V
    .locals 0

    .line 1227
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0

    .line 1223
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 1233
    array-length v0, p6

    if-lez v0, :cond_0

    array-length v0, p5

    array-length v1, p6

    if-ne v0, v1, :cond_0

    .line 1235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1236
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_1

    .line 1237
    aget-object v2, p5, v1

    aget-object v3, p6, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1240
    :cond_1
    invoke-static {p1, p2, p3, p4, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    return-void
.end method

.method public setALinkParams(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1381
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1383
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1384
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1385
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1387
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setALinkParams(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAltTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1412
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1414
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1415
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1416
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1418
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setAltTextMsg(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setArrPriceLocaleId(Lcom/netease/ntunisdk/base/OrderInfo;[Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 1328
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1333
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 1334
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1336
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setArrPriceLocaleId(Ljava/lang/String;)V

    return-void

    .line 1329
    :cond_3
    :goto_1
    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setArrPriceLocaleId(Ljava/lang/String;)V

    return-void
.end method

.method public setILinkParams(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1443
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1445
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1446
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1447
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1449
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setILinkParams(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setJFSauthWithKey(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 780
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->setJFSauthWithKey(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLinkParams(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1474
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1476
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1477
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1478
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1480
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setLinkParams(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setLinkTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1505
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1507
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1508
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1509
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setLinkTextMsg(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 1

    .line 788
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 776
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1567
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1569
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1570
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1571
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1573
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setSubTextMsg(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTextMsg(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1536
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 1538
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1539
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1540
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1542
    :cond_1
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setTextMsg(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setToUserList(Lcom/netease/ntunisdk/base/ShareInfo;[Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1586
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1592
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1593
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setToUserList(Ljava/util/List;)V

    goto :goto_1

    .line 1587
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getToUserList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1589
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 816
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startupDone()V
    .locals 0

    .line 573
    invoke-static {}, Lcom/netease/neox/PluginUniSDK;->NativeOnStartupDone()V

    return-void
.end method

.method public toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1851
    instance-of v0, p1, Lcom/netease/ntunisdk/base/OrderInfo;

    if-eqz v0, :cond_0

    .line 1852
    check-cast p1, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->obj2Json(Lcom/netease/ntunisdk/base/OrderInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1853
    :cond_0
    instance-of v0, p1, Lcom/netease/ntunisdk/base/ShareInfo;

    if-eqz v0, :cond_1

    .line 1854
    check-cast p1, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->obj2JsonStr(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1855
    :cond_1
    instance-of v0, p1, Lcom/netease/ntunisdk/base/AccountInfo;

    if-eqz v0, :cond_2

    .line 1856
    check-cast p1, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1857
    :cond_2
    instance-of v0, p1, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    if-eqz v0, :cond_3

    .line 1858
    check-cast p1, Lcom/netease/ntunisdk/base/SkuDetailsInfo;

    invoke-static {p1}, Lcom/netease/ntunisdk/base/SkuDetailsInfo;->obj2Json(Lcom/netease/ntunisdk/base/SkuDetailsInfo;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateShareInfoBitmap(Lcom/netease/ntunisdk/base/ShareInfo;Ljava/lang/String;)V
    .locals 0

    .line 1598
    invoke-static {p2}, Lcom/netease/neox/PluginUniSDK;->bitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateShareInfoThumb(Lcom/netease/ntunisdk/base/ShareInfo;Ljava/lang/String;)V
    .locals 0

    .line 1602
    invoke-static {p2}, Lcom/netease/neox/PluginUniSDK;->bitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareThumb(Landroid/graphics/Bitmap;)V

    return-void
.end method
