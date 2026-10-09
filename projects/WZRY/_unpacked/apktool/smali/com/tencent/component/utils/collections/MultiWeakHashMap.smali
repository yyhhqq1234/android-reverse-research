.class public Lcom/tencent/component/utils/collections/MultiWeakHashMap;
.super Ljava/lang/Object;
.source "MultiWeakHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Ljava/util/WeakHashMap",
            "<TV;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 25
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 31
    .local v0, "values":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TV;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 41
    .local v0, "values":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TV;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "values":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TV;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 43
    .restart local v0    # "values":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TV;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 54
    .local v0, "values":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TV;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public size(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiWeakHashMap;, "Lcom/tencent/component/utils/collections/MultiWeakHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/tencent/component/utils/collections/MultiWeakHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 69
    .local v0, "values":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TV;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    .line 72
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
