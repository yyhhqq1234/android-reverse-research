.class public Lcom/apm/insight/MonitorCrash$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/MonitorCrash;->initAppLogAsync(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/apm/insight/MonitorCrash;


# direct methods
.method constructor <init>(Lcom/apm/insight/MonitorCrash;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iput-boolean p2, p0, Lcom/apm/insight/MonitorCrash$1;->a:Z

    iput-object p3, p0, Lcom/apm/insight/MonitorCrash$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-boolean v0, v0, Lcom/apm/insight/MonitorCrash;->isAppLogInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lgbsdk/common/host/abev;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lgbsdk/common/host/abev;->c()V

    :cond_1
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/apm/insight/runtime/e;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apm/insight/MonitorCrash;->isAppLogInit:Z

    sget-object v0, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/apm/applog/UriConfig$Builder;

    invoke-direct {v0}, Lcom/apm/applog/UriConfig$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/apm/device_register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apm/applog/UriConfig$Builder;->setRegisterUri(Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/apm/insight/MonitorCrash;->sDefaultApplogUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/monitor/collect/c/session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/apm/applog/UriConfig$Builder;->setSendUris([Ljava/lang/String;)Lcom/apm/applog/UriConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/applog/UriConfig$Builder;->build()Lcom/apm/applog/UriConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    invoke-virtual {v1, v0}, Lcom/apm/applog/InitConfig;->setUriConfig(Lcom/apm/applog/UriConfig;)Lcom/apm/applog/InitConfig;

    :cond_3
    iget-boolean v0, p0, Lcom/apm/insight/MonitorCrash$1;->a:Z

    if-nez v0, :cond_4

    sget-object v0, Lgbsdk/common/host/abfg;->dX:Lcom/apm/insight/MonitorCrash;

    invoke-static {v0}, Lgbsdk/common/host/abfk;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "host_app_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->putCommonHeader(Ljava/util/Map;)Lcom/apm/applog/InitConfig;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-wide v1, v1, Lcom/apm/insight/MonitorCrash$Config;->d:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/apm/applog/InitConfig;->setUpdateVersionCode(I)Lcom/apm/applog/InitConfig;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-wide v1, v1, Lcom/apm/insight/MonitorCrash$Config;->d:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/apm/applog/InitConfig;->setVersionCode(I)Lcom/apm/applog/InitConfig;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setVersionMinor(Ljava/lang/String;)Lcom/apm/applog/InitConfig;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setManifestVersion(Ljava/lang/String;)Lcom/apm/applog/InitConfig;

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash$Config;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setVersion(Ljava/lang/String;)Lcom/apm/applog/InitConfig;

    :goto_0
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    invoke-virtual {v0}, Lcom/apm/insight/MonitorCrash$Config;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    invoke-virtual {v1}, Lcom/apm/insight/MonitorCrash$Config;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setDid(Ljava/lang/String;)Lcom/apm/applog/InitConfig;

    :cond_5
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash$Config;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setChannel(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    invoke-static {v1}, Lcom/apm/insight/MonitorCrash$Config;->a(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setCustomLaunch(Z)V

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    invoke-static {v1}, Lcom/apm/insight/MonitorCrash$Config;->b(Lcom/apm/insight/MonitorCrash$Config;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apm/applog/InitConfig;->setFixPageView(Z)V

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v0, v0, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    invoke-static {v0, v1}, Lcom/apm/applog/AppLog;->init(Landroid/content/Context;Lcom/apm/applog/InitConfig;)Lcom/apm/applog/AppLog;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/apm/insight/MonitorCrash$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v1, v1, Lcom/apm/insight/MonitorCrash;->mApmApplogConfig:Lcom/apm/applog/InitConfig;

    iget-object v2, p0, Lcom/apm/insight/MonitorCrash$1;->c:Lcom/apm/insight/MonitorCrash;

    iget-object v2, v2, Lcom/apm/insight/MonitorCrash;->mConfig:Lcom/apm/insight/MonitorCrash$Config;

    iget-object v2, v2, Lcom/apm/insight/MonitorCrash$Config;->j:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/apm/applog/AppLog;->init(Landroid/content/Context;Lcom/apm/applog/InitConfig;Ljava/util/Map;)Lcom/apm/applog/AppLog;

    :goto_1
    return-void
.end method
