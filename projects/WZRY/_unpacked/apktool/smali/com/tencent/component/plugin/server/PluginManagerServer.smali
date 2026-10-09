.class Lcom/tencent/component/plugin/server/PluginManagerServer;
.super Ljava/lang/Object;
.source "PluginManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    }
.end annotation


# static fields
.field private static final PREFENCE_ENABLE_KEY:Ljava/lang/String; = "plugin_enabled_"

.field private static final PREFENCE_PLUGIN_FILE:Ljava/lang/String; = "plugin_enable_records"

.field private static final TAG:Ljava/lang/String; = "PluginManagerServer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/tencent/component/plugin/PluginManageHandler;

.field private volatile mInitialed:Z

.field private mInternalHandler:Lcom/tencent/component/plugin/PluginManageInternalHandler;

.field private final mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

.field private final mPluginRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/component/utils/UniqueLock",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 1
    .param p1, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lcom/tencent/component/utils/UniqueLock;

    invoke-direct {v0}, Lcom/tencent/component/utils/UniqueLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;

    .line 54
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    .line 55
    invoke-virtual {p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/server/PluginManagerServer;)Lcom/tencent/component/plugin/server/PlatformServerContext;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/server/PluginManagerServer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    return-object v0
.end method

.method private broadcastPluginChanged(Ljava/lang/String;II)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/component/plugin/server/PlatformServerContext;->broadcastPluginChanged(Ljava/lang/String;II)V

    .line 332
    return-void
.end method

.method private getEnableState(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mContext:Landroid/content/Context;

    const-string v2, "plugin_enable_records"

    invoke-static {v1, v2}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin_enabled_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 189
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method private getPluginRecord(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 326
    :goto_0
    return-object v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    monitor-exit v1

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initPluginServiceHandler()Z
    .locals 3

    .prologue
    .line 357
    :try_start_0
    new-instance v1, Lcom/tencent/component/plugin/server/PluginManagerServer$1;

    invoke-direct {v1, p0}, Lcom/tencent/component/plugin/server/PluginManagerServer$1;-><init>(Lcom/tencent/component/plugin/server/PluginManagerServer;)V

    invoke-virtual {p0, v1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->setPluginInternalHandler(Lcom/tencent/component/plugin/PluginManageInternalHandler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    const/4 v1, 0x1

    .line 369
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PluginManagerServer"

    const-string v2, "fail to init plugin service handler"

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static notifyInitializeFinish(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 0
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->notifyInitializeFinish()V

    .line 353
    return-void
.end method

.method private static notifyInitializeStart(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    .locals 0
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->notifyInitializeStart()V

    .line 349
    return-void
.end method

.method private removeEnableState(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mContext:Landroid/content/Context;

    const-string v2, "plugin_enable_records"

    invoke-static {v1, v2}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin_enabled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private saveEnableState(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mContext:Landroid/content/Context;

    const-string v2, "plugin_enable_records"

    invoke-static {v1, v2}, Lcom/tencent/component/cache/sp/PreferenceUtil;->getGlobalPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin_enabled_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static throwIfRemoteBinder(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 342
    instance-of v0, p0, Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    return-void
.end method

.method private static throwIfRemoteCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public disablePlugin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginRecord(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    move-result-object v1

    .line 152
    .local v1, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    if-nez v1, :cond_0

    .line 167
    :goto_0
    return v2

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;

    invoke-virtual {v3, p1}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 156
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 158
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 164
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 161
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->setEnabled(Z)V

    .line 162
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->saveEnableState(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3, v2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->broadcastPluginChanged(Ljava/lang/String;II)V

    .line 167
    const/4 v2, 0x1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public enablePlugin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 131
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginRecord(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    move-result-object v1

    .line 132
    .local v1, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    if-nez v1, :cond_0

    .line 147
    :goto_0
    return v2

    .line 135
    :cond_0
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mUniqueRecordLock:Lcom/tencent/component/utils/UniqueLock;

    invoke-virtual {v4, p1}, Lcom/tencent/component/utils/UniqueLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 136
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->setEnabled(Z)V

    .line 142
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->saveEnableState(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    invoke-direct {p0, p1, v5, v5}, Lcom/tencent/component/plugin/server/PluginManagerServer;->broadcastPluginChanged(Ljava/lang/String;II)V

    move v2, v3

    .line 147
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public getAllCorePluginInfos()Ljava/util/List;
    .locals 5
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
    .line 230
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v3

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v0, 0x0

    monitor-exit v3

    .line 240
    :goto_0
    return-object v0

    .line 234
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo;

    .line 236
    .local v1, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v4, :cond_1

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v0    # "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    .end local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 240
    .restart local v0    # "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAllPluginInfos()Ljava/util/List;
    .locals 3
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
    .line 224
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginRecord(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    move-result-object v0

    .line 220
    .local v0, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    goto :goto_0
.end method

.method public handlePluginUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mHandler:Lcom/tencent/component/plugin/PluginManageHandler;

    .line 309
    .local v0, "handler":Lcom/tencent/component/plugin/PluginManageHandler;
    const/4 v1, 0x0

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/component/plugin/PluginManageHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-interface {v0, p1, p2}, Lcom/tencent/component/plugin/PluginManageHandler;->onInterceptPluginUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 313
    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 314
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 315
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 318
    :cond_1
    return-object v1
.end method

.method init()V
    .locals 3

    .prologue
    .line 59
    iget-boolean v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mInitialed:Z

    if-nez v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mInitialed:Z

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-static {v1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->notifyInitializeStart(Lcom/tencent/component/plugin/server/PlatformServerContext;)V

    .line 64
    invoke-direct {p0}, Lcom/tencent/component/plugin/server/PluginManagerServer;->initPluginServiceHandler()Z

    .line 66
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginLoader()Lcom/tencent/component/plugin/server/PluginLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PluginLoader;->load()V

    .line 68
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getBuiltinPluginLoader()Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;->load()V

    .line 70
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginInstaller()Lcom/tencent/component/plugin/server/PluginInstaller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/component/plugin/server/PluginInstaller;->install()V

    .line 72
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-static {v1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->notifyInitializeFinish(Lcom/tencent/component/plugin/server/PlatformServerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mInitialed:Z

    .line 75
    const-string v1, "PluginManagerServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "PluginManagerServer"

    const-string v2, "ignore init request.."

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public install(Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V
    .locals 5
    .param p1, "pluginLocation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tencent/component/plugin/InstallPluginListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginInstaller()Lcom/tencent/component/plugin/server/PluginInstaller;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/component/plugin/server/PluginInstaller;->install(Ljava/io/File;Z)I

    move-result v1

    .line 247
    .local v1, "result":I
    if-eqz p2, :cond_0

    .line 249
    if-lez v1, :cond_1

    .line 250
    :try_start_0
    invoke-interface {p2}, Lcom/tencent/component/plugin/InstallPluginListener;->onInstallSuccess()V

    .line 261
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v1    # "result":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/tencent/component/plugin/InstallPluginListener;->onInstallFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PluginManagerServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":I
    :cond_2
    if-eqz p2, :cond_0

    .line 259
    const-string v2, "pluginLocation is empty"

    invoke-interface {p2, v2}, Lcom/tencent/component/plugin/InstallPluginListener;->onInstallFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPluginEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginRecord(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    move-result-object v0

    .line 194
    .local v0, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPluginRegistered(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginRecord(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    move-result-object v0

    .line 127
    .local v0, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    .line 199
    .local v2, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v2, :cond_0

    .line 215
    .end local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :goto_0
    return-object v2

    .line 202
    .restart local v2    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mInternalHandler:Lcom/tencent/component/plugin/PluginManageInternalHandler;

    .line 206
    .local v1, "handler":Lcom/tencent/component/plugin/PluginManageInternalHandler;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p1}, Lcom/tencent/component/plugin/PluginManageInternalHandler;->onPluginNotFound(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const-string v3, "PluginManagerServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found, try to perform load on demand"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PluginManagerServer"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "handler":Lcom/tencent/component/plugin/PluginManageInternalHandler;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public markPluginSurviveable(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "surviveable"    # Z

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    .line 265
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_0

    .line 266
    iput-boolean p2, v0, Lcom/tencent/component/plugin/PluginInfo;->surviveable:Z

    .line 267
    const-string v1, "PluginManagerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark plugin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " surviveable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method public registerPlugin(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 83
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v4

    .line 87
    :try_start_0
    iget-object v5, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    monitor-exit v4

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 91
    :cond_2
    :try_start_1
    new-instance v0, Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {v0, p2}, Lcom/tencent/component/plugin/PluginInfo;-><init>(Lcom/tencent/component/plugin/PluginInfo;)V

    .line 93
    .local v0, "newPluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iput-object p1, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 96
    new-instance v1, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    invoke-direct {v1}, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;-><init>()V

    .line 97
    .local v1, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    iput-object v0, v1, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 98
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getEnableState(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    .line 99
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    invoke-direct {p0, p1, v3, v3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->broadcastPluginChanged(Ljava/lang/String;II)V

    move v2, v3

    .line 105
    goto :goto_0
.end method

.method public setPluginHandler(Lcom/tencent/component/plugin/PluginManageHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/tencent/component/plugin/PluginManageHandler;

    .prologue
    .line 300
    const-string v0, "cannot set plugin handler from remote process"

    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginManagerServer;->throwIfRemoteCall(Ljava/lang/String;)V

    .line 301
    if-eqz p1, :cond_0

    .line 302
    invoke-interface {p1}, Lcom/tencent/component/plugin/PluginManageHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "only support local process handler"

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->throwIfRemoteBinder(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mHandler:Lcom/tencent/component/plugin/PluginManageHandler;

    .line 305
    return-void
.end method

.method public setPluginInternalHandler(Lcom/tencent/component/plugin/PluginManageInternalHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/tencent/component/plugin/PluginManageInternalHandler;

    .prologue
    .line 292
    const-string v0, "cannot set plugin internal handler from remote process"

    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginManagerServer;->throwIfRemoteCall(Ljava/lang/String;)V

    .line 293
    if-eqz p1, :cond_0

    .line 294
    invoke-interface {p1}, Lcom/tencent/component/plugin/PluginManageInternalHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "only support local process handler"

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->throwIfRemoteBinder(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mInternalHandler:Lcom/tencent/component/plugin/PluginManageInternalHandler;

    .line 297
    return-void
.end method

.method public uninstall(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V
    .locals 4
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p2, "listener"    # Lcom/tencent/component/plugin/UninstallPluginListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p1, :cond_2

    .line 273
    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlatformServerContext:Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-virtual {v2}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginInstaller()Lcom/tencent/component/plugin/server/PluginInstaller;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/component/plugin/server/PluginInstaller;->uninstall(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v1

    .line 274
    .local v1, "success":Z
    if-eqz p2, :cond_0

    .line 276
    if-eqz v1, :cond_1

    .line 277
    :try_start_0
    invoke-interface {p2}, Lcom/tencent/component/plugin/UninstallPluginListener;->onUninstallSuccess()V

    .line 278
    iget-object v2, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->removeEnableState(Ljava/lang/String;)V

    .line 289
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v1    # "success":Z
    :cond_1
    const-string/jumbo v2, "uninstall failed."

    invoke-interface {p2, v2}, Lcom/tencent/component/plugin/UninstallPluginListener;->onUninstallFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PluginManagerServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "success":Z
    :cond_2
    if-eqz p2, :cond_0

    .line 287
    const-string v2, "pluginInfo is null"

    invoke-interface {p2, v2}, Lcom/tencent/component/plugin/UninstallPluginListener;->onUninstallFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterPlugin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-static {p1}, Lcom/tencent/component/plugin/PluginHelper;->checkPluginId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return v1

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    monitor-enter v3

    .line 114
    :try_start_0
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPluginRecords:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;

    .line 115
    .local v0, "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    if-nez v0, :cond_1

    .line 116
    monitor-exit v3

    goto :goto_0

    .line 120
    .end local v0    # "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 119
    .restart local v0    # "record":Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginManagerServer;->mPlugins:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-direct {p0, p1, v2, v1}, Lcom/tencent/component/plugin/server/PluginManagerServer;->broadcastPluginChanged(Ljava/lang/String;II)V

    move v1, v2

    .line 122
    goto :goto_0
.end method
