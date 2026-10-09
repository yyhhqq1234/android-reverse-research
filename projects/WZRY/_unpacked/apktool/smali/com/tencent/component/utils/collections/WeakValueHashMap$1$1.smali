.class Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;
.super Ljava/lang/Object;
.source "WeakValueHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/collections/WeakValueHashMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private i:Ljava/util/Iterator;

.field final synthetic this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$1;


# direct methods
.method constructor <init>(Lcom/tencent/component/utils/collections/WeakValueHashMap$1;)V
    .locals 1
    .param p1, "this$1"    # Lcom/tencent/component/utils/collections/WeakValueHashMap$1;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;->this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;->this$1:Lcom/tencent/component/utils/collections/WeakValueHashMap$1;

    iget-object v0, v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;

    invoke-virtual {v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 400
    return-void
.end method
