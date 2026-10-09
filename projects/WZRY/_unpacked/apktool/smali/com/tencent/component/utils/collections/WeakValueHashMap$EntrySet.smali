.class Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "WeakValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/collections/WeakValueHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;


# direct methods
.method private constructor <init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;Lcom/tencent/component/utils/collections/WeakValueHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/component/utils/collections/WeakValueHashMap;
    .param p2, "x1"    # Lcom/tencent/component/utils/collections/WeakValueHashMap$1;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;-><init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;)V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 7

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "h":I
    iget-object v5, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-static {v5}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->access$500(Lcom/tencent/component/utils/collections/WeakValueHashMap;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    .local v0, "ent":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    .line 345
    .local v4, "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    if-eqz v4, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .local v3, "k":Ljava/lang/Object;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    .line 347
    :goto_1
    invoke-virtual {v4}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->hashCode()I

    move-result v6

    xor-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 348
    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    .line 349
    .end local v0    # "ent":Ljava/util/Map$Entry;
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-static {v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->access$400(Lcom/tencent/component/utils/collections/WeakValueHashMap;)V

    .line 273
    new-instance v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet$1;-><init>(Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    instance-of v6, p1, Ljava/util/Map$Entry;

    if-nez v6, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .line 317
    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 319
    .local v1, "ek":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 320
    .local v2, "ev":Ljava/lang/Object;
    iget-object v6, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v6, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 321
    .local v3, "hv":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 324
    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v6, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 325
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v4, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 326
    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    iget-object v4, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v4, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    .line 333
    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "j":I
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_0
    return v1
.end method
