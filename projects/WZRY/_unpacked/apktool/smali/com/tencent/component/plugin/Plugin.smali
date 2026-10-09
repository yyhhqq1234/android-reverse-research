.class public abstract Lcom/tencent/component/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/Plugin$InstantiationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Plugin"

.field private static sDefaultClassLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;


# instance fields
.field private volatile mCalled:Z

.field private mContext:Landroid/content/Context;

.field private mPluginHelper:Lcom/tencent/component/plugin/PluginHelper;

.field private mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

.field private mPluginManager:Lcom/tencent/component/plugin/PluginManager;

.field private volatile mStarted:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    invoke-direct {v0}, Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/Plugin;->sDefaultClassLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mUIHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/Plugin;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/Plugin;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/Plugin;->onStartInner(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/component/plugin/Plugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/component/plugin/Plugin;->onStopInner()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/component/plugin/Plugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/component/plugin/Plugin;->onEnterBackgroundInner()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/component/plugin/Plugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/component/plugin/Plugin;->onCreateInner()V

    return-void
.end method

.method private checkSuperMethodCalled(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 172
    return-void
.end method

.method static instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    const/4 v3, 0x0

    .line 259
    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v3

    .line 263
    :cond_1
    iget-object v4, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    .line 264
    .local v4, "pluginClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 268
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/PluginClassLoader;->obtainClassLoader(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/PluginClassLoader;

    move-result-object v0

    .line 269
    .local v0, "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    invoke-virtual {v0, v4}, Lcom/tencent/component/plugin/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 270
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "Plugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new plugin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-nez v1, :cond_2

    .line 272
    .local v3, "plugin":Lcom/tencent/component/plugin/Plugin;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/tencent/component/plugin/PluginClassLoader;->setPlugin(Lcom/tencent/component/plugin/Plugin;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 274
    .end local v0    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lcom/tencent/component/plugin/Plugin$InstantiationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": make sure class name exists, is public, and has an"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " empty constructor that is public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/component/plugin/Plugin$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 271
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/component/plugin/Plugin;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v5

    goto :goto_1

    .line 277
    .end local v0    # "classLoader":Lcom/tencent/component/plugin/PluginClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v5, Lcom/tencent/component/plugin/Plugin$InstantiationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": make sure class name exists, is public, and has an"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " empty constructor that is public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/component/plugin/Plugin$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 280
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Lcom/tencent/component/plugin/Plugin$InstantiationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": make sure class name exists, is public, and has an"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " empty constructor that is public"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/component/plugin/Plugin$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method private isNeedCheckSuperHasCalled()Z
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/tencent/component/utils/DebugUtil;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method private notifyStartIfNeeded(ZLandroid/content/Intent;)V
    .locals 1
    .param p1, "force"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mStarted:Z

    if-nez v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mStarted:Z

    .line 112
    new-instance v0, Lcom/tencent/component/plugin/Plugin$1;

    invoke-direct {v0, p0, p2}, Lcom/tencent/component/plugin/Plugin$1;-><init>(Lcom/tencent/component/plugin/Plugin;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    return-void
.end method

.method private onCreateInner()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 164
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->onCreate()V

    .line 165
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->checkSuperMethodCalled(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private onEnterBackgroundInner()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 252
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->onEnterBackground()V

    .line 253
    const-string v0, "onEnterBackground()"

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->checkSuperMethodCalled(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private onStartInner(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 206
    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->onStart()V

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/component/plugin/Plugin;->onStart(Landroid/content/Intent;)V

    .line 210
    const-string v0, "onStart()"

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->checkSuperMethodCalled(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private onStopInner()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 223
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->onStop()V

    .line 224
    const-string v0, "onStop()"

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->checkSuperMethodCalled(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 301
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method final attach(Landroid/content/Context;Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginHelper;Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "pluginManager"    # Lcom/tencent/component/plugin/PluginManager;
    .param p3, "pluginHelper"    # Lcom/tencent/component/plugin/PluginHelper;
    .param p4, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 48
    iput-object p4, p0, Lcom/tencent/component/plugin/Plugin;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 49
    iput-object p2, p0, Lcom/tencent/component/plugin/Plugin;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    .line 50
    iput-object p3, p0, Lcom/tencent/component/plugin/Plugin;->mPluginHelper:Lcom/tencent/component/plugin/PluginHelper;

    .line 52
    new-instance v0, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4, p0}, Lcom/tencent/component/plugin/PluginContextWrapper;-><init>(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/Plugin;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->onAttach()V

    .line 54
    return-void
.end method

.method final enterBackground()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/tencent/component/plugin/Plugin$3;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/Plugin$3;-><init>(Lcom/tencent/component/plugin/Plugin;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public getClassLoaderInterceptor()Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lcom/tencent/component/plugin/Plugin;->sDefaultClassLoaderInterceptor:Lcom/tencent/component/plugin/PluginClassLoaderInterceptor;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPluginCommander()Lcom/tencent/component/plugin/PluginCommander;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPluginHelper()Lcom/tencent/component/plugin/PluginHelper;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mPluginHelper:Lcom/tencent/component/plugin/PluginHelper;

    return-object v0
.end method

.method public final getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .annotation build Lcom/tencent/component/plugin/annotation/CorePluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    return-object v0
.end method

.method public final getPluginManager()Lcom/tencent/component/plugin/PluginManager;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mPluginManager:Lcom/tencent/component/plugin/PluginManager;

    return-object v0
.end method

.method public getPluginReceiverHandler()Lcom/tencent/component/plugin/PluginReceiverHandler;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected final myPluginInfo()Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    return-object v0
.end method

.method final notifyStartIfNeeded()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/component/plugin/Plugin;->notifyStartIfNeeded(ZLandroid/content/Intent;)V

    .line 107
    return-void
.end method

.method protected onAttach()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onBusinessLifeCycle(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "datas"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x7
    .end annotation

    .prologue
    .line 183
    return-void
.end method

.method public onCreate()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 160
    return-void
.end method

.method public onEnterBackground()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 233
    return-void
.end method

.method public onStart()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 196
    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 201
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/Plugin;->mCalled:Z

    .line 219
    return-void
.end method

.method performCreate()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/tencent/component/plugin/Plugin$4;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/Plugin$4;-><init>(Lcom/tencent/component/plugin/Plugin;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public final start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/content/Intent;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/plugin/Plugin;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 98
    .local v0, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/tencent/component/plugin/Plugin;->mPluginHelper:Lcom/tencent/component/plugin/PluginHelper;

    invoke-virtual {p0}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/tencent/component/plugin/PluginHelper;->startActivity(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Ljava/lang/String;Landroid/content/Intent;)V

    .line 102
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, p2}, Lcom/tencent/component/plugin/Plugin;->notifyStartIfNeeded(ZLandroid/content/Intent;)V

    .line 103
    return-void
.end method

.method final stop()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/tencent/component/plugin/Plugin$2;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/Plugin$2;-><init>(Lcom/tencent/component/plugin/Plugin;)V

    invoke-direct {p0, v0}, Lcom/tencent/component/plugin/Plugin;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
