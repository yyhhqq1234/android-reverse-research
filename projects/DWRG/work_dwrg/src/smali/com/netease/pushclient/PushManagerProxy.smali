.class public Lcom/netease/pushclient/PushManagerProxy;
.super Ljava/lang/Object;
.source "PushManagerProxy.java"


# static fields
.field private static final INNER_PUSH_MANAGER:Ljava/lang/String; = "com.netease.pushclient.PushManager"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushclient/PushManagerProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushclient/PushManagerProxy;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoadPushManager(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.netease.pushclient.PushManager"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized loadPushManager(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-class v1, Lcom/netease/pushclient/PushManagerProxy;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.netease.pushclient.PushManager"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/4 v0, 0x1

    .line 48
    :goto_0
    monitor-exit v1

    return v0

    .line 44
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/netease/pushclient/PushManagerProxy;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public static run(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/netease/pushclient/PushManagerProxy;->isLoadPushManager(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/netease/pushclient/LoadThread;

    invoke-direct {v0, p0, p1}, Lcom/netease/pushclient/LoadThread;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/netease/pushclient/LoadThread;->start()V

    goto :goto_0
.end method
