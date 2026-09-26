.class public abstract Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;
.super Lio/netty/util/internal/MpscLinkedQueueNode;
.source "RecyclableMpscLinkedQueueNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/MpscLinkedQueueNode",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final handle:Lio/netty/util/Recycler$Handle;


# direct methods
.method protected constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 2
    .param p1, "handle"    # Lio/netty/util/Recycler$Handle;

    .prologue
    .line 28
    .local p0, "this":Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;, "Lio/netty/util/internal/RecyclableMpscLinkedQueueNode<TT;>;"
    invoke-direct {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handle"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;->handle:Lio/netty/util/Recycler$Handle;

    .line 33
    return-void
.end method


# virtual methods
.method protected abstract recycle(Lio/netty/util/Recycler$Handle;)V
.end method

.method final unlink()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;, "Lio/netty/util/internal/RecyclableMpscLinkedQueueNode<TT;>;"
    invoke-super {p0}, Lio/netty/util/internal/MpscLinkedQueueNode;->unlink()V

    .line 38
    iget-object v0, p0, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;->handle:Lio/netty/util/Recycler$Handle;

    invoke-virtual {p0, v0}, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;->recycle(Lio/netty/util/Recycler$Handle;)V

    .line 39
    return-void
.end method
