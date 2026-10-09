.class Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;
.super Ljava/lang/Object;
.source "WeakValueHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/collections/WeakValueHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private ent:Ljava/util/Map$Entry;

.field final synthetic this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0
    .param p2, "ent"    # Ljava/util/Map$Entry;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->ent:Ljava/util/Map$Entry;

    .line 224
    iput-object p3, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    .line 225
    return-void
.end method

.method private valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 245
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 249
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 250
    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->valEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->ent:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .local v0, "k":Ljava/lang/Object;
    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 258
    :goto_1
    xor-int/2addr v1, v2

    return v1

    .line 257
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    .line 239
    .local v0, "oldValue":Ljava/lang/Object;
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->value:Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->ent:Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-static {v3}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->access$300(Lcom/tencent/component/utils/collections/WeakValueHashMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->access$100(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-object v0
.end method
