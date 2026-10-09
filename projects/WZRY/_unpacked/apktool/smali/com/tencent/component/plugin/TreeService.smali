.class public Lcom/tencent/component/plugin/TreeService;
.super Landroid/app/Service;
.source "TreeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/TreeService$LeafPluginListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TreeService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIntentMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLeafServiceManager:Lcom/tencent/component/plugin/service/ILeafServiceManager$Stub;

.field private mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/LeafService;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/TreeService$LeafPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTreeServiceHelper:Lcom/tencent/component/plugin/TreeServiceHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mIntentMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Lcom/tencent/component/plugin/TreeService$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/TreeService$1;-><init>(Lcom/tencent/component/plugin/TreeService;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceManager:Lcom/tencent/component/plugin/service/ILeafServiceManager$Stub;

    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/TreeService;->registerPluginListener(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->getLeafService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/Intent;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/component/plugin/TreeService;->putLeafServiceIntentToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/component/plugin/TreeService;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/TreeService;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->getLeafServiceFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->removeLeafServiceFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->getLeafServiceIntentFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/component/plugin/TreeService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/component/plugin/TreeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/TreeService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLeafService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;
    .locals 10
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v2, v7

    .line 260
    :cond_1
    :goto_0
    return-object v2

    .line 239
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->getLeafServiceFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v2

    .line 240
    .local v2, "leafService":Lcom/tencent/component/plugin/LeafService;
    if-nez v2, :cond_1

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/tencent/component/plugin/TreeService;->loadPluginInfoFromIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v5

    .line 245
    .local v5, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-nez v5, :cond_4

    move-object v4, v7

    .line 246
    .local v4, "plugin":Lcom/tencent/component/plugin/Plugin;
    :goto_1
    if-eqz v5, :cond_3

    if-nez v4, :cond_6

    .line 247
    :cond_3
    const-string v6, "TreeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to init plugin for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_5

    .end local v5    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 248
    goto :goto_0

    .line 245
    .end local v4    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v5    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_4
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v4

    goto :goto_1

    .restart local v4    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :cond_5
    move-object v5, p2

    .line 247
    goto :goto_2

    .line 252
    :cond_6
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 253
    .local v3, "leafServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/tencent/component/plugin/LeafService;

    move-object v2, v0

    .line 254
    invoke-virtual {v2, v4, p0}, Lcom/tencent/component/plugin/LeafService;->init(Lcom/tencent/component/plugin/Plugin;Lcom/tencent/component/plugin/TreeService;)V

    .line 255
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/tencent/component/plugin/TreeService;->putLeafServiceToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v3    # "leafServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TreeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to init leaf service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " |"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v7

    .line 260
    goto :goto_0
.end method

.method private getLeafServiceFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 210
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/LeafService;

    .line 213
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getLeafServiceIntentFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object v2

    .line 173
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService;->mIntentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 175
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    goto :goto_0
.end method

.method private loadPluginInfoFromIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/PluginManager;->loadPluginInfoSync(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private putLeafServiceIntentToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mIntentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 162
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    if-nez v1, :cond_2

    .line 163
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 164
    .restart local v1    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mIntentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    invoke-virtual {v1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private putLeafServiceToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;)V
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "leafService"    # Lcom/tencent/component/plugin/LeafService;

    .prologue
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v1    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 221
    .restart local v1    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    invoke-virtual {v1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private registerPluginListener(Ljava/lang/String;)V
    .locals 3
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService;->mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    .line 188
    .local v0, "listener":Lcom/tencent/component/plugin/TreeService$LeafPluginListener;
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;

    .end local v0    # "listener":Lcom/tencent/component/plugin/TreeService$LeafPluginListener;
    invoke-direct {v0, p0, p1}, Lcom/tencent/component/plugin/TreeService$LeafPluginListener;-><init>(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;)V

    .line 190
    .restart local v0    # "listener":Lcom/tencent/component/plugin/TreeService$LeafPluginListener;
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService;->mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/component/plugin/PluginManager;->addPluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V

    .line 193
    :cond_0
    monitor-exit v2

    .line 195
    .end local v0    # "listener":Lcom/tencent/component/plugin/TreeService$LeafPluginListener;
    :cond_1
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeLeafServiceFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 230
    .local v1, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    return-void
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 39
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 40
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "TreeService"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unregisterPluginListener()V
    .locals 6

    .prologue
    .line 197
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService;->mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/tencent/component/plugin/TreeService;->mPluginListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/TreeService$LeafPluginListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, "platformId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    invoke-static {p0, v1}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/PluginManager$PluginListener;

    invoke-virtual {v5, v2}, Lcom/tencent/component/plugin/PluginManager;->removePluginListener(Lcom/tencent/component/plugin/PluginManager$PluginListener;)V

    goto :goto_0

    .line 204
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/TreeService$LeafPluginListener;>;"
    .end local v1    # "platformId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    return-void
.end method


# virtual methods
.method protected getTreeServiceHelper()Lcom/tencent/component/plugin/TreeServiceHelper;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mTreeServiceHelper:Lcom/tencent/component/plugin/TreeServiceHelper;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/tencent/component/plugin/TreeService;->newTreeServiceHelper()Lcom/tencent/component/plugin/TreeServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mTreeServiceHelper:Lcom/tencent/component/plugin/TreeServiceHelper;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mTreeServiceHelper:Lcom/tencent/component/plugin/TreeServiceHelper;

    return-object v0
.end method

.method protected newTreeServiceHelper()Lcom/tencent/component/plugin/TreeServiceHelper;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 279
    new-instance v0, Lcom/tencent/component/plugin/TreeServiceHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/TreeServiceHelper;-><init>(Landroid/app/Service;IIILjava/lang/Class;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceManager:Lcom/tencent/component/plugin/service/ILeafServiceManager$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 135
    const-string v0, "TreeService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 141
    invoke-direct {p0}, Lcom/tencent/component/plugin/TreeService;->unregisterPluginListener()V

    .line 142
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    .local v2, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "leafServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/component/plugin/LeafService;

    invoke-virtual {v3}, Lcom/tencent/component/plugin/LeafService;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v3

    goto :goto_0

    .line 153
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;>;"
    .end local v1    # "leafServiceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    .end local v2    # "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;>;"
    :cond_1
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService;->mLeafServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 154
    return-void
.end method

.method setTreeServiceBackground()V
    .locals 1

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/component/plugin/TreeService;->getTreeServiceHelper()Lcom/tencent/component/plugin/TreeServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/TreeServiceHelper;->setBackground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setTreeServiceForeground()V
    .locals 1

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/component/plugin/TreeService;->getTreeServiceHelper()Lcom/tencent/component/plugin/TreeServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/TreeServiceHelper;->setForeground()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    goto :goto_0
.end method
