.class Lcom/tencent/component/utils/collections/WeakValueHashMap$1;
.super Ljava/util/AbstractCollection;
.source "WeakValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/utils/collections/WeakValueHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;


# direct methods
.method constructor <init>(Lcom/tencent/component/utils/collections/WeakValueHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/utils/collections/WeakValueHashMap;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$1$1;-><init>(Lcom/tencent/component/utils/collections/WeakValueHashMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$1;->this$0:Lcom/tencent/component/utils/collections/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/tencent/component/utils/collections/WeakValueHashMap;->size()I

    move-result v0

    return v0
.end method
