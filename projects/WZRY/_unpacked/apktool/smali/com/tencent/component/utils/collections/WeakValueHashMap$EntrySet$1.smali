.class Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;
.super Ljava/lang/Object;
.source "WeakValueHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hashIterator:Ljava/util/Iterator;

.field next:Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

.field final synthetic this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;)V
    .locals 1
    .param p1, "this$1"    # Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;

    iget-object v0, v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-static {v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->access$500(Lcom/tencent/component/utils/collections/WeakValueHashMap;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->next:Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    .line 278
    iget-object v3, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, "ent":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    .line 283
    .local v2, "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 284
    .local v1, "v":Ljava/lang/Object;
    :goto_0
    new-instance v3, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;

    iget-object v4, v4, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-direct {v3, v4, v0, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;-><init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;Ljava/util/Map$Entry;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->next:Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    .line 285
    const/4 v3, 0x1

    .line 287
    .end local v0    # "ent":Ljava/util/Map$Entry;
    .end local v1    # "v":Ljava/lang/Object;
    .end local v2    # "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    :goto_1
    return v3

    .line 283
    .restart local v0    # "ent":Ljava/util/Map$Entry;
    .restart local v2    # "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 287
    .end local v0    # "ent":Ljava/util/Map$Entry;
    .end local v2    # "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->next:Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->next:Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    .line 294
    .local v0, "e":Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->next:Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    .line 295
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;->hashIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 300
    return-void
.end method
