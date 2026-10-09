.class public Lcom/tencent/qqgamemi/SDKApiHelper;
.super Lcom/tencent/qqgamemi/SDKDetectableCommander;
.source "SDKApiHelper.java"


# static fields
.field private static volatile instance:Lcom/tencent/qqgamemi/SDKApiHelper;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final TYPE_DEFAULT:I

.field private final TYPE_JUGEMENT:I

.field private final TYPE_MANUAL:I

.field private final TYPE_MOMENT:I

.field private volatile isLoaded:Z

.field private volatile isPluginInit:Z

.field private volatile isSDKInit:Z

.field private lifecycleCallback:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;-><init>()V

    .line 19
    const-string v0, "SDKApiHelper"

    iput-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isLoaded:Z

    .line 22
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isSDKInit:Z

    .line 23
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isPluginInit:Z

    .line 24
    iput v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TYPE_DEFAULT:I

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TYPE_MOMENT:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TYPE_MANUAL:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TYPE_JUGEMENT:I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqgamemi/SDKApiHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isSDKInit:Z

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qqgamemi/SDKApiHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isSDKInit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->bugly(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqgamemi/SDKApiHelper;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->enableRecording(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqgamemi/SDKApiHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isPluginInit:Z

    return v0
.end method

.method static synthetic access$502(Lcom/tencent/qqgamemi/SDKApiHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isPluginInit:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/qqgamemi/SDKApiHelper;)Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->lifecycleCallback:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/tencent/qqgamemi/SDKApiHelper;Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;)Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->lifecycleCallback:Lcom/tencent/qqgamemi/ApplicationLifecycleCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/qqgamemi/SDKApiHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isLoaded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tencent/qqgamemi/SDKApiHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/SDKApiHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper;->showRecorderWarning(Landroid/content/Context;I)V

    return-void
.end method

.method private bugly(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v0, "7e13aebe82"

    .line 93
    .local v0, "SDK_APP_ID":Ljava/lang/String;
    const-string v1, "1.7.0.0"

    .line 94
    .local v1, "SDK_VERSION":Ljava/lang/String;
    const-string v4, "BuglySdkInfos"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 95
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 96
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method

.method private enableRecording(I)Z
    .locals 2
    .param p1, "sdkFeature"    # I

    .prologue
    const/4 v0, 0x0

    .line 247
    sget-object v1, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Maintaining:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v1, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Moment:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v1, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Manual:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v1, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/tencent/qqgamemi/SDKApiHelper;->instance:Lcom/tencent/qqgamemi/SDKApiHelper;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/tencent/qqgamemi/SDKApiHelper;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/SDKApiHelper;->instance:Lcom/tencent/qqgamemi/SDKApiHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/SDKApiHelper;->instance:Lcom/tencent/qqgamemi/SDKApiHelper;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/SDKApiHelper;->instance:Lcom/tencent/qqgamemi/SDKApiHelper;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showRecorderWarning(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 207
    const-string/jumbo v0, "\u6682\u4e0d\u652f\u6301\u6b64\u624b\u673a\u5f00\u542f%s\u5f55\u50cf\u529f\u80fd,\n\u5f85\u6d4b\u8bd5\u5b8c\u5584\u540e\u5f00\u653e\uff01"

    .line 208
    .local v0, "format":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 224
    const/4 v1, 0x0

    .line 227
    .local v1, "warn":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->showUIToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    return-void

    .line 211
    .end local v1    # "warn":Ljava/lang/String;
    :pswitch_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/qqgamemi/QMiConfig;->getManualTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .restart local v1    # "warn":Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v1    # "warn":Ljava/lang/String;
    :pswitch_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/qqgamemi/QMiConfig;->getMomentsTile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .restart local v1    # "warn":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v1    # "warn":Ljava/lang/String;
    :pswitch_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qqgamemi/QMiConfig;->getInstance()Lcom/tencent/qqgamemi/QMiConfig;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/tencent/qqgamemi/QMiConfig;->getJugementTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .restart local v1    # "warn":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v1    # "warn":Ljava/lang/String;
    :pswitch_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1    # "warn":Ljava/lang/String;
    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    invoke-static {p1}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->getInstance(Landroid/content/Context;)Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->onCheckSDKPermission(Landroid/content/Context;Z)V

    .line 236
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$9;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper$9;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 244
    return-void
.end method

.method public initPlugin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    const-string v1, "initPlugin is called!"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->isPluginInit:Z

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz p1, :cond_0

    .line 60
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper$2;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    goto :goto_0
.end method

.method public initSDK(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper$1;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public showDefaultWarning(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->showRecorderWarning(Landroid/content/Context;I)V

    .line 232
    return-void
.end method

.method public showRecorder(Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameEngineType"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    const-string v1, "showRecorder is called"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper;->initPlugin(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqgamemi/SDKApiHelper$4;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;FF)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 133
    return-void
.end method

.method public showUIToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper$3;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showVideoListDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    const-string v1, "showVideoListDialog is called \uff1a"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$8;

    invoke-direct {v0, p0}, Lcom/tencent/qqgamemi/SDKApiHelper$8;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 203
    return-void
.end method

.method public startARRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    const-string v1, "startARRecording is called"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper$7;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 188
    return-void
.end method

.method public startJudgementRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    const-string v1, "startJudgementRecording is called"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper$6;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 171
    return-void
.end method

.method public startMomentRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper;->TAG:Ljava/lang/String;

    const-string v1, "startMomentRecording is called"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper;->initPlugin(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/tencent/qqgamemi/SDKApiHelper$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qqgamemi/SDKApiHelper$5;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->checkSDKFeature(Landroid/content/Context;Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;)V

    .line 153
    return-void
.end method

.method public writeManualFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 257
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeCmdWithCheckAndFeature(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 258
    return-void
.end method

.method public writeManualOrMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 269
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeCmdWithCheckOrFeature(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 270
    return-void
.end method

.method public writeManualOrMomentOrReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 273
    const/16 v0, 0x13

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeCmdWithCheckOrFeature(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 274
    return-void
.end method

.method public writeMomentFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeCmdWithCheckAndFeature(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 254
    return-void
.end method

.method public writeReportFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 261
    const/16 v0, 0x10

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeCmdWithCheckAndFeature(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 262
    return-void
.end method

.method public writeSgameArFeatureCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 265
    const/16 v0, 0x40

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->writeCmdWithCheckAndFeature(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 266
    return-void
.end method
