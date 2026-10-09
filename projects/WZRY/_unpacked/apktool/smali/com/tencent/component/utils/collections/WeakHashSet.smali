.class public Lcom/tencent/component/utils/collections/WeakHashSet;
.super Ljava/util/AbstractSet;
.source "WeakHashSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Object;


# instance fields
.field private transient map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/collections/WeakHashSet;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 30
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    .line 32
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 26
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/WeakHashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    .line 23
    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/collections/WeakHashSet;->addAll(Ljava/util/Collection;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/tencent/component/utils/collections/WeakHashSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 65
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/tencent/component/utils/collections/WeakHashSet;->PRESENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/tencent/component/utils/collections/WeakHashSet;, "Lcom/tencent/component/utils/collections/WeakHashSet<TE;>;"
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakHashSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method
