.class public Lcom/tencent/component/utils/UniqueReadWriteLock;
.super Ljava/lang/Object;
.source "UniqueReadWriteLock.java"


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
            "Ljava/util/concurrent/locks/ReadWriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/tencent/component/utils/UniqueReadWriteLock;, "Lcom/tencent/component/utils/UniqueReadWriteLock<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/UniqueReadWriteLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    return-void
.end method

.method private obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/locks/ReadWriteLock;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/tencent/component/utils/UniqueReadWriteLock;, "Lcom/tencent/component/utils/UniqueReadWriteLock<TK;>;"
    .local p1, "lockId":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lcom/tencent/component/utils/UniqueReadWriteLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReadWriteLock;

    .line 44
    .local v1, "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    if-nez v1, :cond_1

    .line 45
    iget-object v4, p0, Lcom/tencent/component/utils/UniqueReadWriteLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/utils/UniqueReadWriteLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/locks/ReadWriteLock;

    move-object v1, v0

    .line 47
    if-nez v1, :cond_0

    .line 48
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    .local v2, "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    :try_start_1
    iget-object v3, p0, Lcom/tencent/component/utils/UniqueReadWriteLock;->mLockMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 51
    .end local v2    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 53
    :cond_1
    return-object v1

    .line 51
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    .restart local v2    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/ReadWriteLock;
    goto :goto_0
.end method


# virtual methods
.method public readLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/locks/Lock;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/tencent/component/utils/UniqueReadWriteLock;, "Lcom/tencent/component/utils/UniqueReadWriteLock<TK;>;"
    .local p1, "lockId":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/tencent/component/utils/UniqueReadWriteLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public writeLock(Ljava/lang/Object;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/locks/Lock;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/tencent/component/utils/UniqueReadWriteLock;, "Lcom/tencent/component/utils/UniqueReadWriteLock<TK;>;"
    .local p1, "lockId":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/tencent/component/utils/UniqueReadWriteLock;->obtain(Ljava/lang/Object;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
