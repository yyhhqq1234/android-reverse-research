.class public Lcom/tencent/component/utils/collections/EqualWeakReference;
.super Ljava/lang/ref/WeakReference;
.source "EqualWeakReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    .local p1, "r":Ljava/lang/Object;, "TT;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 25
    .local p0, "this":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    if-eqz p1, :cond_1

    move-object v2, p1

    .line 26
    check-cast v2, Lcom/tencent/component/utils/collections/EqualWeakReference;

    .line 27
    .local v2, "er":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    invoke-virtual {v2}, Lcom/tencent/component/utils/collections/EqualWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, "b":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/EqualWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "a":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 35
    .end local v0    # "a":Ljava/lang/Object;, "TT;"
    .end local v1    # "b":Ljava/lang/Object;, "TT;"
    .end local v2    # "er":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    :goto_0
    return v3

    .line 31
    .restart local v0    # "a":Ljava/lang/Object;, "TT;"
    .restart local v1    # "b":Ljava/lang/Object;, "TT;"
    .restart local v2    # "er":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    :cond_0
    if-nez v1, :cond_1

    .line 32
    const/4 v3, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "a":Ljava/lang/Object;, "TT;"
    .end local v1    # "b":Ljava/lang/Object;, "TT;"
    .end local v2    # "er":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    .local p0, "this":Lcom/tencent/component/utils/collections/EqualWeakReference;, "Lcom/tencent/component/utils/collections/EqualWeakReference<TT;>;"
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/EqualWeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, "a":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 44
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
