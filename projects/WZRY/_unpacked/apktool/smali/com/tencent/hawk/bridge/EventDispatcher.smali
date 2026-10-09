.class public Lcom/tencent/hawk/bridge/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dispatchEvent(ILjava/lang/String;)V
    .locals 2
    .param p0, "key"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/tencent/hawk/bridge/EventDispatcher;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/hawk/bridge/HawkNative;->postEvent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
