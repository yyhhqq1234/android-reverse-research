.class public Lcom/tencent/qqgamemi/QmiCorePluginManager;
.super Ljava/lang/Object;
.source "QmiCorePluginManager.java"


# static fields
.field private static final PREFENCE_LAST_PLUGIN_DOWNLOAD_TIME:Ljava/lang/String; = "last_core_plugin_download_"

.field private static final PREFENCE_LAST_PLUGIN_UPATE_TIME:Ljava/lang/String; = "last_core_plugin_update_"

.field public static final RECORDER_PLUGIN_ID:Ljava/lang/String; = "com.tencent.qqgamemi.plugin.dpsrp"

.field private static TAG:Ljava/lang/String;

.field private static volatile qmiPluginManager:Lcom/tencent/qqgamemi/QmiCorePluginManager;

.field private static volatile sInit:Z


# instance fields
.field private volatile cachedPluginInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cachedRecorderPluginInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile context:Landroid/content/Context;

.field private curPluginVersion:I

.field private initErrorMsg:Ljava/lang/String;

.field private isDialogFinish:Z

.field isUpdate:Z

.field private lock:Ljava/lang/Object;

.field private volatile platformInitFinish:Z

.field private pluginManager:Lcom/tencent/component/plugin/PluginManager;

.field private pluginProgressDialog:Lcom/tencent/ui/NotFocusableProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "QmiCorePluginManager"

    sput-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->sInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->context:Landroid/content/Context;

    .line 37
    iput-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    .line 38
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->platformInitFinish:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->lock:Ljava/lang/Object;

    .line 40
    iput-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->initErrorMsg:Ljava/lang/String;

    .line 238
    iput v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->curPluginVersion:I

    .line 239
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isUpdate:Z

    .line 328
    iput-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginProgressDialog:Lcom/tencent/ui/NotFocusableProgressDialog;

    .line 329
    iput-boolean v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isDialogFinish:Z

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/qqgamemi/QmiCorePluginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->platformInitFinish:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getCorePluginListIfNesscary()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedRecorderPluginInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedRecorderPluginInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getCorePluginListInner(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$602(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedPluginInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Lcom/tencent/ui/NotFocusableProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginProgressDialog:Lcom/tencent/ui/NotFocusableProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tencent/qqgamemi/QmiCorePluginManager;Lcom/tencent/ui/NotFocusableProgressDialog;)Lcom/tencent/ui/NotFocusableProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;
    .param p1, "x1"    # Lcom/tencent/ui/NotFocusableProgressDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginProgressDialog:Lcom/tencent/ui/NotFocusableProgressDialog;

    return-object p1
.end method

.method private getCorePluginListIfNesscary()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->platformInitFinish:Z

    .line 159
    .local v0, "init":Z
    if-nez v0, :cond_0

    .line 160
    sget-object v1, Lcom/tencent/qqgamemi/QmiCorePluginManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pending to get corePluginList[platformInitFinish:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->platformInitFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    new-instance v1, Lcom/tencent/qqgamemi/QmiCorePluginManager$2;

    invoke-direct {v1, p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager$2;-><init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V

    invoke-direct {p0, v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->updatePluginList(Ljava/lang/Runnable;)V

    .line 173
    :cond_1
    return-void

    .line 164
    .end local v0    # "init":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getCorePluginListInner(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isUpdate:Z

    .line 245
    invoke-direct {p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->tryToSendPendingCmds()V

    .line 248
    :cond_0
    return-void
.end method

.method private getCorePluginMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v1, "pluginInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginInfo;

    .line 257
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const-string v4, "com.tencent.qqgamemi.plugin.dpsrp"

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    .end local v0    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    return-object v1
.end method

.method private getCurPluginVersion(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/PluginInfo;

    .line 224
    .local v0, "info":Lcom/tencent/component/plugin/PluginInfo;
    iget-object v2, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const-string v3, "com.tencent.qqgamemi.plugin.dpsrp"

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget v1, v0, Lcom/tencent/component/plugin/PluginInfo;->version:I

    .line 230
    .end local v0    # "info":Lcom/tencent/component/plugin/PluginInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->qmiPluginManager:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/tencent/qqgamemi/QmiCorePluginManager;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->qmiPluginManager:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->qmiPluginManager:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->qmiPluginManager:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getIntervalKey(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "update"    # Z
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 319
    if-eqz p0, :cond_0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_core_plugin_update_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 322
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_core_plugin_download_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-boolean v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->sInit:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->sInit:Z

    .line 133
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->initIfNecessary(Landroid/content/Context;)V

    .line 135
    :cond_0
    return-void
.end method

.method private isRecorderPluginExist()Z
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedRecorderPluginInfos:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getCorePluginMap(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 206
    .local v0, "pluginInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.tencent.qqgamemi.plugin.dpsrp"

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tryToSendPendingCmds()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->deletePluginLoadingDialog()V

    .line 216
    invoke-direct {p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isRecorderPluginExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->TAG:Ljava/lang/String;

    const-string v1, "All core plugin exist,send pending cmds."

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->sendPendingCmds()V

    .line 220
    :cond_0
    return-void
.end method

.method private static updateDownloadPluginTime(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "update"    # Z
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 142
    invoke-static {p2}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalCachePreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 143
    .local v2, "preferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, "now":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 146
    invoke-static {p0, p1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getIntervalKey(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 147
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    sget-object v3, Lcom/tencent/qqgamemi/QmiCorePluginManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " download time --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v0    # "now":J
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private updatePluginList(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    new-instance v1, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;-><init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/component/plugin/PluginManager;->getPluginList(Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;Z)V

    .line 201
    :cond_0
    return-void
.end method


# virtual methods
.method public addPendingInstallPlugin(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/PluginManager;->addPendingInstallPlugin(Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method

.method public addPendingInstallPlugin(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "pluginLocation"    # Ljava/lang/String;
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager;->addPendingInstallPlugin(Ljava/lang/String;ZLjava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public deletePluginLoadingDialog()V
    .locals 3

    .prologue
    .line 365
    sget-object v0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->TAG:Ljava/lang/String;

    const-string v1, "deletePluginLoadingDialog is called!"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isDialogFinish:Z

    .line 367
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->initErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginProgressDialog:Lcom/tencent/ui/NotFocusableProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginProgressDialog:Lcom/tencent/ui/NotFocusableProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/ui/NotFocusableProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->initErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->showUIToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    :cond_0
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqgamemi/QmiCorePluginManager$5;

    invoke-direct {v1, p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager$5;-><init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method getCachedPluginList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedPluginInfos:Ljava/util/List;

    return-object v0
.end method

.method public getCurPluginVersion()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedRecorderPluginInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->cachedRecorderPluginInfos:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getCurPluginVersion(Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method initIfNecessary(Landroid/content/Context;)V
    .locals 3
    .param p1, "iContext"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->context:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/tencent/component/plugin/PluginPlatformConfig;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginPlatformConfig;-><init>()V

    .line 67
    .local v0, "config":Lcom/tencent/component/plugin/PluginPlatformConfig;
    const-string v1, "qmi"

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->platformId:Ljava/lang/String;

    .line 68
    const-class v1, Lcom/tencent/qqgamemi/QmiPluginTreeReceiver;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginProxyReceiver:Ljava/lang/Class;

    .line 69
    const-class v1, Lcom/tencent/qqgamemi/QMiService;

    iput-object v1, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginTreeServiceClass:Ljava/lang/Class;

    .line 71
    invoke-static {p1, v0}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Lcom/tencent/component/plugin/PluginPlatformConfig;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    .line 72
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v1}, Lcom/tencent/component/plugin/PluginManager;->init()V

    .line 73
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    new-instance v2, Lcom/tencent/qqgamemi/QmiCorePluginManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager$1;-><init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V

    .line 74
    invoke-virtual {v1, v2}, Lcom/tencent/component/plugin/PluginManager;->addPluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V

    goto :goto_0
.end method

.method public install(Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "installPluginListener"    # Lcom/tencent/component/plugin/InstallPluginListener;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/component/plugin/PluginManager;->install(Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V

    .line 291
    :cond_0
    return-void
.end method

.method public isPlatformInitialFinish()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v1}, Lcom/tencent/component/plugin/PluginManager;->isPlatformInitialFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isRecorderPluginExist()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 313
    :cond_0
    return v0
.end method

.method public readDataFromPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/Object;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "readDataCallback"    # Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/plugin/PluginManager;->readDataFromPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPluginLoadingDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->isDialogFinish:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->initErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->initErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->showUIToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    if-eqz p1, :cond_0

    .line 339
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qqgamemi/QmiCorePluginManager$4;-><init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/Object;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager;->pluginManager:Lcom/tencent/component/plugin/PluginManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/component/plugin/PluginManager;->writeCommandToPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    :cond_0
    return-void
.end method
