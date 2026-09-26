.class public Lcom/netease/dwrg/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;
.implements Lcom/netease/ntunisdk/base/OnLogoutDoneListener;
.implements Lcom/netease/ntunisdk/base/OnLeaveSdkListener;
.implements Lcom/netease/ntunisdk/base/OnContinueListener;
.implements Lcom/netease/ntunisdk/base/OnWebViewListener;
.implements Lcom/netease/ntunisdk/base/OnExitListener;
.implements Lcom/netease/ntunisdk/base/OnShareListener;
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;
.implements Lcom/netease/ntunisdk/base/QueryFriendListener;


# static fields
.field private static s_instance:Lcom/netease/dwrg/Channel;


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_is_init:Z

.field private m_is_initializing:Z

.field private m_pre_login_suc_time:J

.field private m_pre_login_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_init:Z

    .line 27
    iput-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_initializing:Z

    .line 28
    iput-wide v2, p0, Lcom/netease/dwrg/Channel;->m_pre_login_time:J

    .line 29
    iput-wide v2, p0, Lcom/netease/dwrg/Channel;->m_pre_login_suc_time:J

    .line 41
    iput-object p1, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/SdkMgr;->init(Landroid/content/Context;)V

    .line 43
    sput-object p0, Lcom/netease/dwrg/Channel;->s_instance:Lcom/netease/dwrg/Channel;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/netease/dwrg/Channel;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Channel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/netease/dwrg/Channel;->isChannel(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netease/dwrg/Channel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/dwrg/Channel;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netease/dwrg/Channel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Channel;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/netease/dwrg/Channel;->m_is_init:Z

    return p1
.end method

.method static synthetic access$302(Lcom/netease/dwrg/Channel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/dwrg/Channel;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/netease/dwrg/Channel;->m_is_initializing:Z

    return p1
.end method

.method private static getAnimation(FFJ)Landroid/view/animation/AlphaAnimation;
    .locals 2
    .param p0, "fromAlpha"    # F
    .param p1, "toAlpha"    # F
    .param p2, "time"    # J

    .prologue
    .line 151
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 152
    .local v0, "a":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 153
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/netease/dwrg/Channel;
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/netease/dwrg/Channel;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/dwrg/Channel;->s_instance:Lcom/netease/dwrg/Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static popStartup(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 118
    new-instance v0, Landroid/app/Dialog;

    const v6, 0x103000a

    invoke-direct {v0, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 119
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v4, "imageView":Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sdk_startup_logo"

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "id":I
    if-lez v3, :cond_0

    .line 124
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 127
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const-wide/16 v8, 0xbb8

    invoke-static {v6, v7, v8, v9}, Lcom/netease/dwrg/Channel;->getAnimation(FFJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    .line 130
    .local v2, "hideAnim1":Landroid/view/animation/AlphaAnimation;
    new-instance v6, Lcom/netease/dwrg/Channel$2;

    invoke-direct {v6, v0}, Lcom/netease/dwrg/Channel$2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 141
    new-instance v5, Lcom/netease/dwrg/Channel$3;

    invoke-direct {v5, v4, v2}, Lcom/netease/dwrg/Channel$3;-><init>(Landroid/widget/ImageView;Landroid/view/animation/AlphaAnimation;)V

    .line 146
    .local v5, "runnable2":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 147
    .local v1, "handler1":Landroid/os/Handler;
    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method private showProtocol(Z)V
    .locals 1
    .param p1, "type"    # Z

    .prologue
    .line 306
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    .line 307
    return-void
.end method


# virtual methods
.method public DRPF(Ljava/lang/String;)I
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->DRPF(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public OnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnWebViewCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public antiAddiction(Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntAntiAddiction(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-static {p1, p2}, Lcom/netease/neox/NativeInterface;->NativeOnCodeScannerFinish(ILjava/lang/String;)V

    .line 638
    return-void
.end method

.method public continueGame()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public exitApp()V
    .locals 2

    .prologue
    .line 399
    invoke-static {}, Lcom/netease/neox/NativeInterface;->NativeOnExitApp()V

    .line 400
    const-string v1, "quicksdk"

    invoke-direct {p0, v1}, Lcom/netease/dwrg/Channel;->isChannel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->exit()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    check-cast v0, Landroid/app/NativeActivity;

    .line 404
    .local v0, "main_act":Landroid/app/NativeActivity;
    invoke-virtual {v0}, Landroid/app/NativeActivity;->finish()V

    .line 405
    return-void
.end method

.method public gameLoginSuccess()V
    .locals 1

    .prologue
    .line 567
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGameLoginSuccess()V

    .line 568
    return-void
.end method

.method public getAnnouncementInfo()V
    .locals 1

    .prologue
    .line 330
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGetAnnouncementInfo()V

    .line 331
    return-void
.end method

.method public getAuthType()I
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAuthType()I

    move-result v0

    return v0
.end method

.method public getAvailablePayChannels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannel()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/netease/dwrg/Channel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_1
    return-object v0
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getAppChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "channelName":Ljava/lang/String;
    const-string v2, "lenovo_open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "APPID"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "val":Ljava/lang/String;
    const-string v2, "1409170819125.app.ln"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const-string v0, "lenovo_preinstall"

    .line 234
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPlatform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "defaultVal"    # I

    .prologue
    .line 277
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPropStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prop"    # Ljava/lang/String;

    .prologue
    .line 288
    const-string v1, "UID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "UIN"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "val":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 293
    const-string v0, ""

    .line 294
    :cond_0
    return-object v0

    .line 291
    .end local v0    # "val":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "val":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "channelName":Ljava/lang/String;
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getSDKVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public guestBind()V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntGuestBind()V

    .line 326
    return-void
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    .line 537
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 1
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntHasPlatform(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasProduct(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->hasProduct(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_init:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_initializing:Z

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDK_NAME"

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "APP_NAME"

    iget-object v2, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "ENABLE_EXLOGIN_GUEST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 68
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_GAMEID"

    const-string v2, "Please Contact JF"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_OPEN_LOG_URL"

    const-string v2, "Please Contact JF"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_PAY_LOG_URL"

    const-string v2, "Please Contact JF"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "JF_LOG_KEY"

    const-string v2, "Please Contact JF"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    new-instance v1, Lcom/netease/dwrg/Channel$1;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Channel$1;-><init>(Lcom/netease/dwrg/Channel;)V

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntInit(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_initializing:Z

    .line 114
    :cond_0
    return-void
.end method

.method public isDarenUpdated()V
    .locals 1

    .prologue
    .line 648
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntIsDarenUpdated()V

    .line 649
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_init:Z

    return v0
.end method

.method public isInitializing()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_initializing:Z

    return v0
.end method

.method public leaveSdk(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 359
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnLeaveSdk(I)V

    .line 360
    return-void
.end method

.method public login()V
    .locals 4

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/netease/dwrg/Channel;->m_is_init:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/dwrg/Channel;->m_pre_login_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/dwrg/Channel;->m_pre_login_time:J

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/dwrg/Channel;->loginDone(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public loginDone(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/dwrg/Channel;->m_pre_login_suc_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/dwrg/Channel;->m_pre_login_suc_time:J

    .line 390
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnLogin(I)V

    .line 392
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/netease/dwrg/Channel;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_LOGOUT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntLogout()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_SWITCH_ACCOUNT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSwitchAccount()V

    goto :goto_0
.end method

.method public logoutDone(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 366
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnLogout(I)V

    .line 368
    return-void
.end method

.method public ngShare(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "channel"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "link"    # Ljava/lang/String;
    .param p6, "imagePath"    # Ljava/lang/String;
    .param p7, "thumbImagePath"    # Ljava/lang/String;

    .prologue
    .line 603
    new-instance v1, Lcom/netease/ntunisdk/base/ShareInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/base/ShareInfo;-><init>()V

    .line 604
    .local v1, "shareInfo":Lcom/netease/ntunisdk/base/ShareInfo;
    invoke-virtual {v1, p1}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareChannel(I)V

    .line 605
    invoke-virtual {v1, p2}, Lcom/netease/ntunisdk/base/ShareInfo;->setTitle(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v1, p3}, Lcom/netease/ntunisdk/base/ShareInfo;->setText(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1, p4}, Lcom/netease/ntunisdk/base/ShareInfo;->setDesc(Ljava/lang/String;)V

    .line 608
    const-string v2, ""

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 609
    invoke-virtual {v1, p5}, Lcom/netease/ntunisdk/base/ShareInfo;->setLink(Ljava/lang/String;)V

    .line 612
    :cond_0
    const-string v2, "http"

    invoke-virtual {p6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    invoke-virtual {v1, p6}, Lcom/netease/ntunisdk/base/ShareInfo;->setImage(Ljava/lang/String;)V

    .line 620
    :cond_1
    :goto_0
    const-string v2, ""

    invoke-virtual {p7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 621
    invoke-static {p7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 622
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareThumb(Landroid/graphics/Bitmap;)V

    .line 625
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShare(Lcom/netease/ntunisdk/base/ShareInfo;)V

    .line 626
    const/4 v2, 0x1

    return v2

    .line 614
    :cond_3
    const-string v2, ""

    invoke-virtual {p6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 616
    invoke-static {p6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 617
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/base/ShareInfo;->setShareBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onApplyFriendFinished(Z)V
    .locals 0
    .param p1, "result"    # Z

    .prologue
    .line 675
    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 353
    return-void
.end method

.method public onInviteFriendListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "inviteeIDList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onInviterListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/netease/ntunisdk/base/AccountInfo;>;"
    return-void
.end method

.method public onIsDarenUpdated(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 654
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnIsDarenUpdated(Z)V

    .line 655
    return-void
.end method

.method public onOpenExitViewFailed()V
    .locals 5

    .prologue
    .line 409
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Exit Game"

    .line 410
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Confirm to exit?"

    .line 411
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    .line 412
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_launcher"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    .line 414
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "neox_confirm"

    const-string v3, "string"

    iget-object v4, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/netease/dwrg/Channel$4;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Channel$4;-><init>(Lcom/netease/dwrg/Channel;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    .line 425
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "neox_cancel"

    const-string v3, "string"

    iget-object v4, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 428
    return-void
.end method

.method public onQueryAvailablesInviteesFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/netease/ntunisdk/base/AccountInfo;>;"
    return-void
.end method

.method public onQueryFriendListFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/netease/ntunisdk/base/AccountInfo;>;"
    return-void
.end method

.method public onQueryFriendListInGameFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/netease/ntunisdk/base/AccountInfo;>;"
    return-void
.end method

.method public onQueryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V
    .locals 0
    .param p1, "account"    # Lcom/netease/ntunisdk/base/AccountInfo;

    .prologue
    .line 671
    return-void
.end method

.method public onShareFinished(Z)V
    .locals 0
    .param p1, "bSuccess"    # Z

    .prologue
    .line 631
    invoke-static {p1}, Lcom/netease/neox/NativeInterface;->NativeOnShareFinished(Z)V

    .line 632
    return-void
.end method

.method public on_activityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 474
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnActivityResult(IILandroid/content/Intent;)V

    .line 475
    return-void
.end method

.method public on_backPressed()V
    .locals 1

    .prologue
    .line 486
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnBackPressed()V

    .line 487
    return-void
.end method

.method public on_configChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 490
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 491
    return-void
.end method

.method public on_destroy()V
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->destroyInst()V

    .line 470
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 471
    return-void
.end method

.method public on_newIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 478
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnNewIntent(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method public on_pause()V
    .locals 1

    .prologue
    .line 460
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnPause()V

    .line 461
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    .line 462
    return-void
.end method

.method public on_restart()V
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnRestart()V

    .line 495
    return-void
.end method

.method public on_resume()V
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnResume()V

    .line 466
    return-void
.end method

.method public on_saveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 482
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnSaveInstanceState(Landroid/os/Bundle;)V

    .line 483
    return-void
.end method

.method public on_start()V
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStart()V

    .line 499
    return-void
.end method

.method public on_stop()V
    .locals 3

    .prologue
    .line 502
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->handleOnStop()V

    .line 503
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_UID"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_DATATYPE"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "USERINFO_STAGE"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    .line 508
    :cond_0
    return-void
.end method

.method public openManager()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenManager()V

    .line 321
    return-void
.end method

.method public openPauseView()V
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenPauseView()V

    .line 528
    return-void
.end method

.method public openWebView(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenWebView(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 3
    .param p1, "arg0"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderErrReason()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/neox/NativeInterface;->NativeOnOrderCheckDone(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p1, "oi"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 380
    return-void
.end method

.method public orderProduct(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "order_id"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "order_etc"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 242
    .local v1, "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :try_start_0
    new-instance v2, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v2, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .local v2, "order":Lcom/netease/ntunisdk/base/OrderInfo;
    invoke-virtual {v2, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2, p5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, p3}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 252
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 253
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .restart local v1    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :goto_0
    return v3

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public orderProductEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "order_id"    # Ljava/lang/String;
    .param p3, "etc"    # Ljava/lang/String;
    .param p4, "count"    # I
    .param p5, "desc"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v1, 0x0

    .line 261
    .local v1, "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :try_start_0
    new-instance v2, Lcom/netease/ntunisdk/base/OrderInfo;

    invoke-direct {v2, p1}, Lcom/netease/ntunisdk/base/OrderInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .local v2, "order":Lcom/netease/ntunisdk/base/OrderInfo;
    invoke-virtual {v2, p2}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2, p3}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderEtc(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2, p5}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderDesc(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->setCount(I)V

    .line 271
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntCheckOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 272
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    .restart local v1    # "order":Lcom/netease/ntunisdk/base/OrderInfo;
    :goto_0
    return v3

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public presentQRCodeScanner(Ljava/lang/String;I)V
    .locals 1
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 588
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->ntPresentQRCodeScanner(Ljava/lang/String;I)V

    .line 589
    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "price"    # F
    .param p4, "ratio"    # I

    .prologue
    .line 160
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    .line 161
    return-void
.end method

.method public regProduct(Ljava/lang/String;Ljava/lang/String;FI[Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "price"    # F
    .param p4, "ratio"    # I
    .param p5, "pids"    # [Ljava/lang/String;

    .prologue
    .line 165
    array-length v2, p5

    if-nez v2, :cond_0

    .line 166
    invoke-static {p1, p2, p3, p4}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FI)V

    .line 188
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v1, "map_pids":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p5

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    .line 173
    mul-int/lit8 v2, v0, 0x2

    aget-object v2, p5, v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p5, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    invoke-static {p1, p2, p3, p4, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->regProduct(Ljava/lang/String;Ljava/lang/String;FILjava/util/Map;)V

    goto :goto_0
.end method

.method public setPropInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 282
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method public setPropStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v0, "UID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "UIN"

    invoke-interface {v0, v1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntUpLoadUserInfo()V

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/ntunisdk/base/GamerInterface;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCompactView(Z)V
    .locals 1
    .param p1, "only_yes"    # Z

    .prologue
    .line 593
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowCompactView(Z)V

    .line 594
    return-void
.end method

.method public showDaren()V
    .locals 1

    .prologue
    .line 643
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntShowDaren()V

    .line 644
    return-void
.end method

.method public showFloatButton(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 532
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSetFloatBtnVisible(Z)V

    .line 533
    return-void
.end method

.method public switchAccount()V
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_HAS_SWITCH_ACCOUNT"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntSwitchAccount()V

    .line 343
    :cond_0
    return-void
.end method

.method public tryExit()Z
    .locals 2

    .prologue
    .line 437
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_EXIT_VIEW"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "quicksdk"

    invoke-direct {p0, v0}, Lcom/netease/dwrg/Channel;->isChannel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "FEATURE_EXIT_VIEW"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->ntOpenExitView()V

    .line 448
    :goto_0
    const/4 v0, 0x1

    .line 450
    :goto_1
    return v0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/Channel;->m_context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/netease/dwrg/Channel$5;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/Channel$5;-><init>(Lcom/netease/dwrg/Channel;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 450
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 8
    .param p1, "rankType"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 516
    :try_start_0
    const-class v3, Lcom/netease/ntunisdk/base/GamerInterface;

    const-string v4, "ntUpdateRank"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 517
    .local v2, "m":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 524
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 519
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    .line 520
    .local v1, "gi":Lcom/netease/ntunisdk/base/GamerInterface;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    .end local v1    # "gi":Lcom/netease/ntunisdk/base/GamerInterface;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
