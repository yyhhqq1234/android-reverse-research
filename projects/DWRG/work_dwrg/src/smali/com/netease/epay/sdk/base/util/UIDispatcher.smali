.class public Lcom/netease/epay/sdk/base/util/UIDispatcher;
.super Ljava/lang/Object;
.source "UIDispatcher.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized runOnLooperThread(Ljava/lang/Runnable;Landroid/os/Looper;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 34
    const-class v1, Lcom/netease/epay/sdk/base/util/UIDispatcher;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 35
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 36
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 37
    sget-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    .line 40
    :cond_3
    sget-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    const-class v1, Lcom/netease/epay/sdk/base/util/UIDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    .line 18
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v1

    return-void

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized runOnUiThread(Ljava/lang/Runnable;I)V
    .locals 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delayTimes"    # I

    .prologue
    .line 22
    const-class v1, Lcom/netease/epay/sdk/base/util/UIDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    .line 25
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/util/UIDispatcher;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
