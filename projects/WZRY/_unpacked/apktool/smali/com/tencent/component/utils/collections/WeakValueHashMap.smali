.class public Lcom/tencent/component/utils/collections/WeakValueHashMap;
.super Ljava/util/HashMap;
.source "WeakValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;,
        Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;,
        Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    }
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private hashEntrySet:Ljava/util/Set;

.field private queue:Ljava/lang/ref/ReferenceQueue;

.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 356
    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->hashEntrySet:Ljava/util/Set;

    .line 358
    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->entrySet:Ljava/util/Set;

    .line 373
    iput-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->values:Ljava/util/Collection;

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/component/utils/collections/WeakValueHashMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/utils/collections/WeakValueHashMap;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/component/utils/collections/WeakValueHashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/utils/collections/WeakValueHashMap;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->processQueue()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/component/utils/collections/WeakValueHashMap;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/utils/collections/WeakValueHashMap;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->hashEntrySet:Ljava/util/Set;

    return-object v0
.end method

.method private final getReferenceObject(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "ref"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 119
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private processQueue()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    :goto_0
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .end local v0    # "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    check-cast v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    .restart local v0    # "wv":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->access$200(Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;)Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->processQueue()V

    .line 52
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->access$000(Ljava/lang/Object;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 366
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->hashEntrySet:Ljava/util/Set;

    .line 367
    new-instance v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap$EntrySet;-><init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;Lcom/tencent/component/utils/collections/WeakValueHashMap$1;)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->entrySet:Ljava/util/Set;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->getReferenceObject(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->processQueue()V

    .line 98
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 99
    invoke-static {p1, p2, v1}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->access$100(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    move-result-object v1

    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    .line 100
    .local v0, "oldValue":Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    invoke-direct {p0, v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->getReferenceObject(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->getReferenceObject(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$1;-><init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->values:Ljava/util/Collection;

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap;->values:Ljava/util/Collection;

    return-object v0
.end method
