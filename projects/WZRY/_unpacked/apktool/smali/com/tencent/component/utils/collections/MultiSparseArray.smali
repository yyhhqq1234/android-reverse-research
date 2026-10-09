.class public Lcom/tencent/component/utils/collections/MultiSparseArray;
.super Ljava/lang/Object;
.source "MultiSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private array:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 15
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 67
    return-void
.end method

.method public get(I)Ljava/util/List;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public keySize()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    if-nez p2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiSparseArray;->get(I)Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-nez v0, :cond_2

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v2, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 55
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 56
    return-void
.end method

.method public remove(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/MultiSparseArray;->get(I)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public valueAt(I)Ljava/util/List;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/tencent/component/utils/collections/MultiSparseArray;, "Lcom/tencent/component/utils/collections/MultiSparseArray<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/MultiSparseArray;->array:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
