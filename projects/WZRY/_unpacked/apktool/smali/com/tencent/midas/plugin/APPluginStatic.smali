.class public abstract Lcom/tencent/midas/plugin/APPluginStatic;
.super Ljava/lang/Object;
.source "APPluginStatic.java"


# static fields
.field public static final PARAM_CLASS_STATISTICS_UPLOADER:Ljava/lang/String; = "clsUploader"

.field public static final PARAM_CLEAR_TOP:Ljava/lang/String; = "cleartop"

.field static final PARAM_IS_IN_PLUGIN:Ljava/lang/String; = "pluginsdk_IsPluginActivity"

.field public static final PARAM_LAUNCH_ACTIVITY:Ljava/lang/String; = "pluginsdk_launchActivity"

.field public static final PARAM_PLUGIN_INTERNAL_ACTIVITIES_ONLY:Ljava/lang/String; = "PARAM_PLUGIN_INTERNAL_ACTIVITIES_ONLY"

.field public static final PARAM_PLUGIN_IS_NEW_PROCESS:Ljava/lang/String; = "pluginsdk_isNewProcess"

.field public static final PARAM_PLUGIN_LOCATION:Ljava/lang/String; = "pluginsdk_pluginLocation"

.field public static final PARAM_PLUGIN_LOG_ENABLE:Ljava/lang/String; = "pluginsdk_logEnable"

.field public static final PARAM_PLUGIN_NAME:Ljava/lang/String; = "pluginsdk_pluginName"

.field public static final PARAM_PLUGIN_PATH:Ljava/lang/String; = "pluginsdk_pluginpath"

.field public static final PARAM_PLUGIN_RECEIVER_CLASS_NAME:Ljava/lang/String; = "pluginsdk_launchReceiver"

.field private static final TAG:Ljava/lang/String; = "APPluginStatic"

.field public static final USER_QQ_RESOURCES_NO:I = -0x1

.field public static final USER_QQ_RESOURCES_YES:I = 0x1

.field private static sInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/midas/plugin/IAPPluginActivity;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Lcom/tencent/midas/plugin/IAPPluginActivity;)V
    .locals 3
    .param p0, "activity"    # Lcom/tencent/midas/plugin/IAPPluginActivity;

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->updateReference()V

    .line 59
    sget-object v1, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getActivitys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/midas/plugin/IAPPluginActivity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getOrCreateClassLoader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginLoader;->getOrCreateClassLoader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static release()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginLoader;->release()V

    .line 49
    sget-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 50
    const-string v0, "APPluginStatic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release sInstances size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static remove(Lcom/tencent/midas/plugin/IAPPluginActivity;)V
    .locals 0
    .param p0, "activity"    # Lcom/tencent/midas/plugin/IAPPluginActivity;

    .prologue
    .line 65
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->updateReference()V

    .line 66
    invoke-static {p0}, Lcom/tencent/midas/plugin/APPluginStatic;->removeActivity(Lcom/tencent/midas/plugin/IAPPluginActivity;)Z

    .line 67
    return-void
.end method

.method private static removeActivity(Lcom/tencent/midas/plugin/IAPPluginActivity;)Z
    .locals 4
    .param p0, "activity"    # Lcom/tencent/midas/plugin/IAPPluginActivity;

    .prologue
    .line 102
    sget-object v3, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    monitor-enter v3

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 104
    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 105
    .local v1, "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 106
    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    const/4 v2, 0x1

    monitor-exit v3

    .line 110
    .end local v1    # "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    :goto_1
    return v2

    .line 103
    .restart local v1    # "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    :cond_1
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static removeAll()V
    .locals 5

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->updateReference()V

    .line 71
    sget-object v4, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    monitor-enter v4

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 73
    sget-object v3, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 74
    .local v2, "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/midas/plugin/IAPPluginActivity;

    .line 75
    .local v0, "activity":Lcom/tencent/midas/plugin/IAPPluginActivity;
    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IFinish()V

    .line 77
    sget-object v3, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    add-int/lit8 v1, v1, -0x1

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "activity":Lcom/tencent/midas/plugin/IAPPluginActivity;
    .end local v2    # "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    :cond_1
    monitor-exit v4

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static updateReference()V
    .locals 4

    .prologue
    .line 90
    sget-object v3, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    monitor-enter v3

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 92
    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 93
    .local v1, "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 94
    sget-object v2, Lcom/tencent/midas/plugin/APPluginStatic;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    add-int/lit8 v0, v0, -0x1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "wact":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/tencent/midas/plugin/IAPPluginActivity;>;"
    :cond_1
    monitor-exit v3

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
