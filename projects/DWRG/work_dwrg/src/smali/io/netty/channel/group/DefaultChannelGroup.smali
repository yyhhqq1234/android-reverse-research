.class public Lio/netty/channel/group/DefaultChannelGroup;
.super Ljava/util/AbstractSet;
.source "DefaultChannelGroup.java"

# interfaces
.implements Lio/netty/channel/group/ChannelGroup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lio/netty/channel/Channel;",
        ">;",
        "Lio/netty/channel/group/ChannelGroup;"
    }
.end annotation


# static fields
.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final name:Ljava/lang/String;

.field private final nonServerChannels:Lio/netty/util/internal/ConcurrentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ConcurrentSet",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private final remover:Lio/netty/channel/ChannelFutureListener;

.field private final serverChannels:Lio/netty/util/internal/ConcurrentSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ConcurrentSet",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lio/netty/channel/group/DefaultChannelGroup;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group-0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/netty/channel/group/DefaultChannelGroup;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/group/DefaultChannelGroup;-><init>(Ljava/lang/String;Lio/netty/util/concurrent/EventExecutor;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/util/concurrent/EventExecutor;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 45
    new-instance v0, Lio/netty/util/internal/ConcurrentSet;

    invoke-direct {v0}, Lio/netty/util/internal/ConcurrentSet;-><init>()V

    iput-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    .line 46
    new-instance v0, Lio/netty/util/internal/ConcurrentSet;

    invoke-direct {v0}, Lio/netty/util/internal/ConcurrentSet;-><init>()V

    iput-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    .line 47
    new-instance v0, Lio/netty/channel/group/DefaultChannelGroup$1;

    invoke-direct {v0, p0}, Lio/netty/channel/group/DefaultChannelGroup$1;-><init>(Lio/netty/channel/group/DefaultChannelGroup;)V

    iput-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->remover:Lio/netty/channel/ChannelFutureListener;

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroup;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lio/netty/channel/group/DefaultChannelGroup;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 73
    return-void
.end method

.method private static safeDuplicate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "message"    # Ljava/lang/Object;

    .prologue
    .line 188
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 189
    check-cast p0, Lio/netty/buffer/ByteBuf;

    .end local p0    # "message":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 193
    .restart local p0    # "message":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 190
    :cond_0
    instance-of v0, p0, Lio/netty/buffer/ByteBufHolder;

    if-eqz v0, :cond_1

    .line 191
    check-cast p0, Lio/netty/buffer/ByteBufHolder;

    .end local p0    # "message":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/buffer/ByteBufHolder;->duplicate()Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/buffer/ByteBufHolder;->retain()Lio/netty/buffer/ByteBufHolder;

    move-result-object v0

    goto :goto_0

    .line 193
    .restart local p0    # "message":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->retain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Lio/netty/channel/Channel;)Z
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .prologue
    .line 107
    instance-of v2, p1, Lio/netty/channel/ServerChannel;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    .line 109
    .local v1, "set":Lio/netty/util/internal/ConcurrentSet;, "Lio/netty/util/internal/ConcurrentSet<Lio/netty/channel/Channel;>;"
    :goto_0
    invoke-virtual {v1, p1}, Lio/netty/util/internal/ConcurrentSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p1}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->remover:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 113
    :cond_0
    return v0

    .line 107
    .end local v0    # "added":Z
    .end local v1    # "set":Lio/netty/util/internal/ConcurrentSet;, "Lio/netty/util/internal/ConcurrentSet<Lio/netty/channel/Channel;>;"
    :cond_1
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/channel/Channel;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroup;->add(Lio/netty/channel/Channel;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v0}, Lio/netty/util/internal/ConcurrentSet;->clear()V

    .line 139
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v0}, Lio/netty/util/internal/ConcurrentSet;->clear()V

    .line 140
    return-void
.end method

.method public close()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lio/netty/channel/group/ChannelMatchers;->all()Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/group/DefaultChannelGroup;->close(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 4
    .param p1, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "matcher"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 264
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 269
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 275
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v2

    .line 264
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 265
    .local v0, "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    .end local v0    # "c":Lio/netty/channel/Channel;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 270
    .restart local v0    # "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public compareTo(Lio/netty/channel/group/ChannelGroup;)I
    .locals 3
    .param p1, "o"    # Lio/netty/channel/group/ChannelGroup;

    .prologue
    .line 347
    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/group/ChannelGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "v":I
    if-eqz v0, :cond_0

    .line 352
    .end local v0    # "v":I
    :goto_0
    return v0

    .restart local v0    # "v":I
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/channel/group/ChannelGroup;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroup;->compareTo(Lio/netty/channel/group/ChannelGroup;)I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 92
    instance-of v1, p1, Lio/netty/channel/Channel;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 93
    check-cast v0, Lio/netty/channel/Channel;

    .line 94
    .local v0, "c":Lio/netty/channel/Channel;
    instance-of v1, p1, Lio/netty/channel/ServerChannel;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v1, v0}, Lio/netty/util/internal/ConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    .end local v0    # "c":Lio/netty/channel/Channel;
    :goto_0
    return v1

    .line 97
    .restart local v0    # "c":Lio/netty/channel/Channel;
    :cond_0
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v1, v0}, Lio/netty/util/internal/ConcurrentSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 100
    .end local v0    # "c":Lio/netty/channel/Channel;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deregister()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lio/netty/channel/group/ChannelMatchers;->all()Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/group/DefaultChannelGroup;->deregister(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 4
    .param p1, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "matcher"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 287
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 292
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 298
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v2

    .line 287
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 288
    .local v0, "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 289
    invoke-interface {v0}, Lio/netty/channel/Channel;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    .end local v0    # "c":Lio/netty/channel/Channel;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 293
    .restart local v0    # "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 294
    invoke-interface {v0}, Lio/netty/channel/Channel;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public disconnect()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lio/netty/channel/group/ChannelMatchers;->all()Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/group/DefaultChannelGroup;->disconnect(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 4
    .param p1, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "matcher"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 241
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 246
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 252
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v2

    .line 241
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 242
    .local v0, "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    invoke-interface {v0}, Lio/netty/channel/Channel;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    .end local v0    # "c":Lio/netty/channel/Channel;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 247
    .restart local v0    # "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    invoke-interface {v0}, Lio/netty/channel/Channel;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 342
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flush()Lio/netty/channel/group/ChannelGroup;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lio/netty/channel/group/ChannelMatchers;->all()Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/group/DefaultChannelGroup;->flush(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public flush(Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroup;
    .locals 3
    .param p1, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 303
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v1}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    return-object p0

    .line 303
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 304
    .local v0, "c":Lio/netty/channel/Channel;
    invoke-interface {p1, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-interface {v0}, Lio/netty/channel/Channel;->flush()Lio/netty/channel/Channel;

    goto :goto_0
.end method

.method public flushAndWrite(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroup;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public flushAndWrite(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 313
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/group/DefaultChannelGroup;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v0}, Lio/netty/util/internal/ConcurrentSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v0}, Lio/netty/util/internal/ConcurrentSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lio/netty/channel/group/CombinedIterator;

    .line 145
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v1}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    invoke-direct {v0, v1, v2}, Lio/netty/channel/group/CombinedIterator;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 118
    instance-of v3, p1, Lio/netty/channel/Channel;

    if-nez v3, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 122
    check-cast v0, Lio/netty/channel/Channel;

    .line 123
    .local v0, "c":Lio/netty/channel/Channel;
    instance-of v3, v0, Lio/netty/channel/ServerChannel;

    if-eqz v3, :cond_2

    .line 124
    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v3, v0}, Lio/netty/util/internal/ConcurrentSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 128
    .local v1, "removed":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v0}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v2

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->remover:Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 133
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "removed":Z
    :cond_2
    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v3, v0}, Lio/netty/util/internal/ConcurrentSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    .restart local v1    # "removed":Z
    goto :goto_1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v0}, Lio/netty/util/internal/ConcurrentSet;->size()I

    move-result v0

    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v1}, Lio/netty/util/internal/ConcurrentSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v0, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/channel/Channel;>;"
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 154
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v0, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lio/netty/channel/Channel;>;"
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->serverChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 182
    invoke-static {}, Lio/netty/channel/group/ChannelMatchers;->all()Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/group/DefaultChannelGroup;->write(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "message"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    if-nez p2, :cond_1

    .line 203
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "matcher"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 207
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 214
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v2

    .line 207
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 208
    .local v0, "c":Lio/netty/channel/Channel;
    invoke-interface {p2, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroup;->safeDuplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/netty/channel/Channel;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 229
    invoke-static {}, Lio/netty/channel/group/ChannelMatchers;->all()Lio/netty/channel/group/ChannelMatcher;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/group/DefaultChannelGroup;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/group/ChannelMatcher;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "matcher"    # Lio/netty/channel/group/ChannelMatcher;

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "message"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Lio/netty/channel/group/DefaultChannelGroup;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 324
    .local v1, "futures":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/Channel;Lio/netty/channel/ChannelFuture;>;"
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroup;->nonServerChannels:Lio/netty/util/internal/ConcurrentSet;

    invoke-virtual {v2}, Lio/netty/util/internal/ConcurrentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 330
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Lio/netty/channel/group/DefaultChannelGroupFuture;

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroup;->executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-direct {v2, p0, v1, v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;-><init>(Lio/netty/channel/group/ChannelGroup;Ljava/util/Map;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v2

    .line 324
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 325
    .local v0, "c":Lio/netty/channel/Channel;
    invoke-interface {p2, v0}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    invoke-static {p1}, Lio/netty/channel/group/DefaultChannelGroup;->safeDuplicate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
