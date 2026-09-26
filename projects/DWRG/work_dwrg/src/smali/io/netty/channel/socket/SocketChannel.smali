.class public interface abstract Lio/netty/channel/socket/SocketChannel;
.super Ljava/lang/Object;
.source "SocketChannel.java"

# interfaces
.implements Lio/netty/channel/Channel;


# virtual methods
.method public abstract config()Lio/netty/channel/socket/SocketChannelConfig;
.end method

.method public abstract isInputShutdown()Z
.end method

.method public abstract isOutputShutdown()Z
.end method

.method public abstract localAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract parent()Lio/netty/channel/socket/ServerSocketChannel;
.end method

.method public abstract remoteAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract shutdownOutput()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
