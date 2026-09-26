.class final Lio/netty/channel/group/DefaultChannelGroupFuture;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lio/netty/channel/group/ChannelGroupFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/DefaultPromise",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/netty/channel/group/ChannelGroupFuture;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final childListener:Lio/netty/channel/ChannelFutureListener;

.field private failureCount:I

.field private final futures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final group:Lio/netty/channel/group/ChannelGroup;

.field private successCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/channel/group/DefaultChannelGroupFuture;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Collection;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 4
    .param p1, "group"    # Lio/netty/channel/group/ChannelGroup;
    .param p3, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/group/ChannelGroup;",
            "Ljava/util/Collection",
            "<",
            "Lio/netty/channel/ChannelFuture;",
            ">;",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "futures":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/channel/ChannelFuture;>;"
    invoke-direct {p0, p3}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 47
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture$1;

    invoke-direct {v2, p0}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;-><init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    iput-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "group"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    if-nez p2, :cond_1

    .line 89
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "futures"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    .line 94
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    .local v1, "futureMap":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    .line 101
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 106
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-direct {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess0()V

    .line 109
    :cond_2
    return-void

    .line 95
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFuture;

    .line 96
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    .end local v0    # "f":Lio/netty/channel/ChannelFuture;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFuture;

    .line 102
    .restart local v0    # "f":Lio/netty/channel/ChannelFuture;
    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_1
.end method

.method constructor <init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 3
    .param p1, "group"    # Lio/netty/channel/group/ChannelGroup;
    .param p3, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/group/ChannelGroup;",
            "Ljava/util/Map",
            "<",
            "Lio/netty/channel/Channel;",
            "Lio/netty/channel/ChannelFuture;",
            ">;",
            "Lio/netty/util/concurrent/EventExecutor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, "futures":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    invoke-direct {p0, p3}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 47
    new-instance v1, Lio/netty/channel/group/DefaultChannelGroupFuture$1;

    invoke-direct {v1, p0}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;-><init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    iput-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    .line 113
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    .line 114
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    .line 115
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess0()V

    .line 123
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFuture;

    .line 116
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->childListener:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method static synthetic access$28(Lio/netty/channel/group/DefaultChannelGroupFuture;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    return v0
.end method

.method static synthetic access$29(Lio/netty/channel/group/DefaultChannelGroupFuture;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    return-void
.end method

.method static synthetic access$30(Lio/netty/channel/group/DefaultChannelGroupFuture;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    return v0
.end method

.method static synthetic access$31(Lio/netty/channel/group/DefaultChannelGroupFuture;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    return-void
.end method

.method static synthetic access$32(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$33(Lio/netty/channel/group/DefaultChannelGroupFuture;Lio/netty/channel/group/ChannelGroupException;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setFailure0(Lio/netty/channel/group/ChannelGroupException;)V

    return-void
.end method

.method static synthetic access$34(Lio/netty/channel/group/DefaultChannelGroupFuture;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess0()V

    return-void
.end method

.method private setFailure0(Lio/netty/channel/group/ChannelGroupException;)V
    .locals 0
    .param p1, "cause"    # Lio/netty/channel/group/ChannelGroupException;

    .prologue
    .line 209
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    .line 210
    return-void
.end method

.method private setSuccess0()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 206
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 153
    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 159
    return-object p0
.end method

.method public bridge varargs synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->await()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    .line 178
    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->await()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->await()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    .line 184
    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public cause()Lio/netty/channel/group/ChannelGroupException;
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/channel/group/ChannelGroupException;

    return-object v0
.end method

.method public bridge synthetic cause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->cause()Lio/netty/channel/group/ChannelGroupException;

    move-result-object v0

    return-object v0
.end method

.method protected checkDeadLock()V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 235
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/util/concurrent/ImmediateEventExecutor;->INSTANCE:Lio/netty/util/concurrent/ImmediateEventExecutor;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    new-instance v1, Lio/netty/util/concurrent/BlockingOperationException;

    invoke-direct {v1}, Lio/netty/util/concurrent/BlockingOperationException;-><init>()V

    throw v1

    .line 238
    :cond_0
    return-void
.end method

.method public find(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .prologue
    .line 132
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelFuture;

    return-object v0
.end method

.method public group()Lio/netty/channel/group/ChannelGroup;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    return-object v0
.end method

.method public declared-synchronized isPartialFailure()Z
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->failureCount:I

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPartialSuccess()Z
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->successCount:I

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroupFuture;->futures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 165
    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/DefaultChannelGroupFuture;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 172
    return-object p0
.end method

.method public bridge varargs synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public setSuccess(Ljava/lang/Void;)Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->setSuccess(Ljava/lang/Void;)Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->sync()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    .line 196
    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->sync()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->sync()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    .line 190
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/DefaultChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic trySuccess(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->trySuccess(Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method public trySuccess(Ljava/lang/Void;)Z
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
