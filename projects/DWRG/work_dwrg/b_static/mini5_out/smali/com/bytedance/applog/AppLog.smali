.class public final Lcom/bytedance/applog/AppLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/bytedance/applog/IAppLogInstance;

.field public static volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->newInstance()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/applog/AppLog;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activateALink(Landroid/net/Uri;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->activateALink(Landroid/net/Uri;)V

    return-void
.end method

.method public static addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    return-void
.end method

.method public static addEventJsonObserver(Lcom/bytedance/applog/IEventJsonObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->addEventJsonObserver(Lcom/bytedance/applog/IEventJsonObserver;)V

    return-void
.end method

.method public static addEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->addEventObserver(Lcom/bytedance/applog/IEventObserver;)V

    return-void
.end method

.method public static addEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->addEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V

    return-void
.end method

.method public static addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/bytedance/applog/IAppLogInstance;->addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public static bind(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/oneid/IDBindCallback;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->bind(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V

    return-void
.end method

.method public static clearDb()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->clearDb()V

    return-void
.end method

.method public static flush()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->flush()V

    return-void
.end method

.method public static getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getAbSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getAid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getAid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllAbTestConfigs()Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getAllAbTestConfigs()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getAppContext()Lgbsdk/optional/applog/abbh;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getAppContext()Lgbsdk/optional/applog/abbh;

    move-result-object v0

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientUdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getClientUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEncryptAndCompress()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/ttgame/tob/gradle/applog/AppLogVerifyUtils;->isVerifyOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getEncryptAndCompress()Z

    move-result v0

    return v0
.end method

.method public static getExternalAbVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getExternalAbVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getHeader()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getIid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getIid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitConfig()Lcom/bytedance/applog/InitConfig;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/bytedance/applog/IAppLogInstance;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    return-object v0
.end method

.method public static getNetClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenUdid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getOpenUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getRequestHeader()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSsid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSsidGroup(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->getSsidGroup(Ljava/util/Map;)V

    return-void
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriRuntime()Lcom/bytedance/applog/UriConfig;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUriRuntime()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUserID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUserUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewExposureManager()Lcom/bytedance/applog/exposure/ViewExposureManager;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getViewExposureManager()Lcom/bytedance/applog/exposure/ViewExposureManager;

    move-result-object v0

    return-object v0
.end method

.method public static getViewProperties(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->getViewProperties(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static hasStarted()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->hasStarted()Z

    move-result v0

    return v0
.end method

.method public static ignoreAutoTrackClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->ignoreAutoTrackClick(Landroid/view/View;)V

    return-void
.end method

.method public static varargs ignoreAutoTrackClickByViewType([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->ignoreAutoTrackClickByViewType([Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs ignoreAutoTrackPage([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->ignoreAutoTrackPage([Ljava/lang/Class;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .locals 3

    const-class v0, Lcom/bytedance/applog/AppLog;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/bytedance/applog/AppLog;->b:Z

    const-string v2, "Default AppLog is initialized, please create another instance by `AppLog.newInstance()`"

    invoke-static {v1, v2}, Lgbsdk/optional/applog/abce;->a(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/bytedance/applog/AppLog;->b:Z

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "applog_stats"

    invoke-virtual {p1, v1}, Lcom/bytedance/applog/InitConfig;->setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;

    :cond_1
    sget-object v1, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v1, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V
    .locals 3

    const-class v0, Lcom/bytedance/applog/AppLog;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/bytedance/applog/AppLog;->b:Z

    const-string v2, "Default AppLog is initialized, please create another instance by `new AppLogInstance()`"

    invoke-static {v1, v2}, Lgbsdk/optional/applog/abce;->a(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/bytedance/applog/AppLog;->b:Z

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "applog_stats"

    invoke-virtual {p1, v1}, Lcom/bytedance/applog/InitConfig;->setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;

    :cond_1
    sget-object v1, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initH5Bridge(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->initH5Bridge(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static initWebViewBridge(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->initWebViewBridge(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static isAutoTrackClickIgnored(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->isAutoTrackClickIgnored(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isAutoTrackPageIgnored(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->isAutoTrackPageIgnored(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isH5BridgeEnable()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->isH5BridgeEnable()Z

    move-result v0

    return v0
.end method

.method public static isH5CollectEnable()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->isH5CollectEnable()Z

    move-result v0

    return v0
.end method

.method public static isNewUser()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->isNewUser()Z

    move-result v0

    return v0
.end method

.method public static isPrivacyMode()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->isPrivacyMode()Z

    move-result v0

    return v0
.end method

.method public static manualActivate()Z
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->manualActivate()Z

    move-result v0

    return v0
.end method

.method public static newEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->newEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance()Lcom/bytedance/applog/IAppLogInstance;
    .locals 1

    new-instance v0, Lcom/bytedance/bdtracker/d;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/d;-><init>()V

    return-object v0
.end method

.method public static onActivityPause()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->onActivityPause()V

    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;I)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onActivityResumed(Landroid/app/Activity;I)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public static onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public static pauseDurationEvent(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->pauseDurationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static profileAppend(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->profileAppend(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static profileIncrement(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->profileIncrement(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static profileSet(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->profileSet(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static profileSetOnce(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->profileSetOnce(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static profileUnset(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->profileUnset(Ljava/lang/String;)V

    return-void
.end method

.method public static pullAbTestConfigs()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->pullAbTestConfigs()V

    return-void
.end method

.method public static pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V

    return-void
.end method

.method public static putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/bytedance/applog/IAppLogInstance;->putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V

    return-void
.end method

.method public static registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V

    return-void
.end method

.method public static removeAllDataObserver()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->removeAllDataObserver()V

    return-void
.end method

.method public static removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    return-void
.end method

.method public static removeEventJsonObserver(Lcom/bytedance/applog/IEventJsonObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->removeJsonEventObserver(Lcom/bytedance/applog/IEventJsonObserver;)V

    return-void
.end method

.method public static removeEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->removeJsonEventObserver(Lcom/bytedance/applog/IEventObserver;)V

    return-void
.end method

.method public static removeEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->removeEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V

    return-void
.end method

.method public static removeHeaderInfo(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->removeHeaderInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static removeOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->removeOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V

    return-void
.end method

.method public static removeSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->removeSessionHook(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public static reportPhoneDetailInfo()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->reportPhoneDetailInfo()Z

    move-result v0

    return v0
.end method

.method public static resumeDurationEvent(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->resumeDurationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static setALinkListener(Lcom/bytedance/applog/alink/IALinkListener;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setALinkListener(Lcom/bytedance/applog/alink/IALinkListener;)V

    return-void
.end method

.method public static setAccount(Landroid/accounts/Account;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setAccount(Landroid/accounts/Account;)V

    return-void
.end method

.method public static setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V

    return-void
.end method

.method public static setAppContext(Lgbsdk/optional/applog/abbh;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setAppContext(Lgbsdk/optional/applog/abbh;)V

    return-void
.end method

.method public static setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppTrack(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setAppTrack(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setClipboardEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setClipboardEnabled(Z)V

    return-void
.end method

.method public static setDevToolsEnable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/applog/log/LogUtils;->setEnable(Z)V

    return-void
.end method

.method public static setEncryptAndCompress(Z)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setEncryptAndCompress(Z)V

    return-void
.end method

.method public static setEventFilterByClient(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setEventFilterByClient(Ljava/util/List;Z)V

    return-void
.end method

.method public static setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V

    return-void
.end method

.method public static setExternalAbVersion(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setExternalAbVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setExtraParams(Lcom/bytedance/applog/IExtraParams;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setExtraParams(Lcom/bytedance/applog/IExtraParams;)V

    return-void
.end method

.method public static setForbidReportPhoneDetailInfo(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setForbidReportPhoneDetailInfo(Z)V

    return-void
.end method

.method public static setGPSLocation(FFLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->setGPSLocation(FFLjava/lang/String;)V

    return-void
.end method

.method public static setGoogleAid(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setGoogleAid(Ljava/lang/String;)V

    return-void
.end method

.method public static setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setHeaderInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setHeaderInfo(Ljava/util/HashMap;)V

    return-void
.end method

.method public static setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V

    return-void
.end method

.method public static setPrivacyMode(Z)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setPrivacyMode(Z)V

    return-void
.end method

.method public static setPullAbTestConfigsThrottleMills(Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setPullAbTestConfigsThrottleMills(Ljava/lang/Long;)V

    return-void
.end method

.method public static setRangersEventVerifyEnable(ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setRangersEventVerifyEnable(ZLjava/lang/String;)V

    return-void
.end method

.method public static setTouchPoint(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setTouchPoint(Ljava/lang/String;)V

    return-void
.end method

.method public static setTracerData(Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setTracerData(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setUriRuntime(Lcom/bytedance/applog/UriConfig;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setUriRuntime(Lcom/bytedance/applog/UriConfig;)V

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserID(J)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setUserID(J)V

    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->setUserUniqueID(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setViewId(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setViewId(Landroid/app/Dialog;Ljava/lang/String;)V

    return-void
.end method

.method public static setViewId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setViewId(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setViewId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setViewId(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static start()V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->start()V

    return-void
.end method

.method public static startDurationEvent(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->startDurationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static startSimulator(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->startSimulator(Ljava/lang/String;)V

    return-void
.end method

.method public static stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/applog/IAppLogInstance;->stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static trackClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->trackClick(Landroid/view/View;)V

    return-void
.end method

.method public static trackClick(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->trackClick(Landroid/view/View;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static trackPage(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->trackPage(Landroid/app/Activity;)V

    return-void
.end method

.method public static trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static trackPage(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0}, Lcom/bytedance/applog/IAppLogInstance;->trackPage(Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static userProfileSetOnce(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->userProfileSetOnce(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V

    return-void
.end method

.method public static userProfileSync(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->userProfileSync(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V

    return-void
.end method
