.class public Lcom/tencent/component/utils/UniqueLock;
.super Ljava/lang/Object;
.source "UniqueLock.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLockMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lcom/tencent/component/utils/UniqueLock;, "Lcom/tencent/component/utils/UniqueLock<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/UniqueLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    return-void
.end method


# virtual methods
.method public obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/locks/Lock;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/tencent/component/utils/UniqueLock;, "Lcom/tencent/component/utils/UniqueLock<TK;>;"
    .local p1, "lockId":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/tencent/component/utils/UniqueLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    .line 22
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    if-nez v1, :cond_1

    .line 23
    iget-object v4, p0, Lcom/tencent/component/utils/UniqueLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/utils/UniqueLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    move-object v1, v0

    .line 25
    if-nez v1, :cond_0

    .line 26
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    :try_start_1
    iget-object v3, p0, Lcom/tencent/component/utils/UniqueLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 29
    .end local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 31
    :cond_1
    return-object v1

    .line 29
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    goto :goto_0
.end method
