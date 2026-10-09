.class public Lcom/subao/common/a/b;
.super Ljava/lang/Object;
.source "AccelEngineInstance.java"


# static fields
.field private static a:Lcom/subao/common/a/a;


# direct methods
.method public static declared-synchronized a()Lcom/subao/common/a/a;
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/subao/common/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/subao/common/a/b;->a:Lcom/subao/common/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/subao/common/a/a;)Lcom/subao/common/a/a;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/subao/common/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/subao/common/a/b;->a:Lcom/subao/common/a/a;

    .line 18
    sput-object p0, Lcom/subao/common/a/b;->a:Lcom/subao/common/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
