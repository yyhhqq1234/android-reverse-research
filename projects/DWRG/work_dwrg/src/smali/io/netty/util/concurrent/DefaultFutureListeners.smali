.class final Lio/netty/util/concurrent/DefaultFutureListeners;
.super Ljava/lang/Object;
.source "DefaultFutureListeners.java"


# instance fields
.field private listeners:[Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private progressiveSize:I

.field private size:I


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/GenericFutureListener;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<*>;>;",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "first":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    .local p2, "second":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    const/4 v2, 0x2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v2, [Lio/netty/util/concurrent/GenericFutureListener;

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 30
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 31
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 32
    iput v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 33
    instance-of v0, p1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v0, :cond_0

    .line 34
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 36
    :cond_0
    instance-of v0, p2, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v0, :cond_1

    .line 37
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 43
    .local v0, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;
    iget v1, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 44
    .local v1, "size":I
    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 45
    shl-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listeners":[Lio/netty/util/concurrent/GenericFutureListener;
    check-cast v0, [Lio/netty/util/concurrent/GenericFutureListener;

    .restart local v0    # "listeners":[Lio/netty/util/concurrent/GenericFutureListener;
    iput-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 47
    :cond_0
    aput-object p1, v0, v1

    .line 48
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 50
    instance-of v2, p1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v2, :cond_1

    .line 51
    iget v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 53
    :cond_1
    return-void
.end method

.method public listeners()[Lio/netty/util/concurrent/GenericFutureListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    return-object v0
.end method

.method public progressiveSize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    return v0
.end method

.method public remove(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 57
    .local v1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;
    iget v3, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 58
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 59
    :cond_1
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_3

    .line 60
    sub-int v4, v3, v0

    add-int/lit8 v2, v4, -0x1

    .line 61
    .local v2, "listenersToMove":I
    if-lez v2, :cond_2

    .line 62
    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_2
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 65
    iput v3, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 67
    instance-of v4, p1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v4, :cond_0

    .line 68
    iget v4, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    goto :goto_1

    .line 58
    .end local v2    # "listenersToMove":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    return v0
.end method
