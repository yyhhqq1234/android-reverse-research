.class public interface abstract Lio/netty/channel/ChannelHandlerContext;
.super Ljava/lang/Object;
.source "ChannelHandlerContext.java"

# interfaces
.implements Lio/netty/util/AttributeMap;


# virtual methods
.method public abstract alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract channel()Lio/netty/channel/Channel;
.end method

.method public abstract close()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
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

.method public abstract executor()Lio/netty/util/concurrent/EventExecutor;
.end method

.method public abstract fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract flush()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract handler()Lio/netty/channel/ChannelHandler;
.end method

.method public abstract isRemoved()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract newPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract newSucceededFuture()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract pipeline()Lio/netty/channel/ChannelPipeline;
.end method

.method public abstract read()Lio/netty/channel/ChannelHandlerContext;
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
