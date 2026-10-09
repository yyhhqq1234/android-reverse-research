.class public Lcom/tencent/component/utils/FixedLinkedList;
.super Ljava/util/LinkedList;
.source "FixedLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mCapacity:I

.field private final mTrimHead:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 17
    .local p0, "this":Lcom/tencent/component/utils/FixedLinkedList;, "Lcom/tencent/component/utils/FixedLinkedList<TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/component/utils/FixedLinkedList;-><init>(IZ)V

    .line 18
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "trimHead"    # Z

    .prologue
    .line 21
    .local p0, "this":Lcom/tencent/component/utils/FixedLinkedList;, "Lcom/tencent/component/utils/FixedLinkedList<TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 22
    iput p1, p0, Lcom/tencent/component/utils/FixedLinkedList;->mCapacity:I

    .line 23
    iput-boolean p2, p0, Lcom/tencent/component/utils/FixedLinkedList;->mTrimHead:Z

    .line 24
    return-void
.end method

.method private ensureCapacity()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lcom/tencent/component/utils/FixedLinkedList;, "Lcom/tencent/component/utils/FixedLinkedList<TV;>;"
    :goto_0
    iget v0, p0, Lcom/tencent/component/utils/FixedLinkedList;->mCapacity:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/component/utils/FixedLinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/tencent/component/utils/FixedLinkedList;->mCapacity:I

    if-le v0, v1, :cond_1

    .line 47
    iget-boolean v0, p0, Lcom/tencent/component/utils/FixedLinkedList;->mTrimHead:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/tencent/component/utils/FixedLinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/component/utils/FixedLinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/tencent/component/utils/FixedLinkedList;, "Lcom/tencent/component/utils/FixedLinkedList<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_0

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 42
    invoke-direct {p0}, Lcom/tencent/component/utils/FixedLinkedList;->ensureCapacity()V

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/tencent/component/utils/FixedLinkedList;, "Lcom/tencent/component/utils/FixedLinkedList<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 31
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/tencent/component/utils/FixedLinkedList;->ensureCapacity()V

    goto :goto_0
.end method
