.class public interface abstract Lio/netty/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lio/netty/util/AttributeMap;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/Channel$Unsafe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/AttributeMap;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract close()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract closeFuture()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract config()Lio/netty/channel/ChannelConfig;
.end method

.method public abstract connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract deregister()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract disconnect()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract eventLoop()Lio/netty/channel/EventLoop;
.end method

.method public abstract flush()Lio/netty/channel/Channel;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract isWritable()Z
.end method

.method public abstract localAddress()Ljava/net/SocketAddress;
.end method

.method public abstract metadata()Lio/netty/channel/ChannelMetadata;
.end method

.method public abstract newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract newPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract newSucceededFuture()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract parent()Lio/netty/channel/Channel;
.end method

.method public abstract pipeline()Lio/netty/channel/ChannelPipeline;
.end method

.method public abstract read()Lio/netty/channel/Channel;
.end method

.method public abstract remoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract unsafe()Lio/netty/channel/Channel$Unsafe;
.end method

.method public abstract voidPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
