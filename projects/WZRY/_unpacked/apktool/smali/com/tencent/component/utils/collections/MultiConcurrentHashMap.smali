.class public Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "MultiConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<TK;",
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;, "Lcom/tencent/component/utils/collections/MultiConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;, "Lcom/tencent/component/utils/collections/MultiConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 22
    .local v0, "array":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TV;>;"
    if-nez v0, :cond_1

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .end local v0    # "array":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TV;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 24
    .restart local v0    # "array":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<TV;>;"
    invoke-virtual {p0, p1, v0}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public delete(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;, "Lcom/tencent/component/utils/collections/MultiConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 31
    if-nez p2, :cond_1

    .line 32
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 35
    .local v0, "array":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 36
    .local v1, "removed":Z
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v1

    .line 39
    goto :goto_0

    .end local v1    # "removed":Z
    :cond_3
    move v1, v3

    .line 35
    goto :goto_1
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;, "Lcom/tencent/component/utils/collections/MultiConcurrentHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 45
    .local v0, "array":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0
.end method
