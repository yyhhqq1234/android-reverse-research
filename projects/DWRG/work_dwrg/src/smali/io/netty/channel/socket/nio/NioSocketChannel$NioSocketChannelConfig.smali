.class final Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;
.super Lio/netty/channel/socket/DefaultSocketChannelConfig;
.source "NioSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/socket/nio/NioSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioSocketChannelConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/socket/nio/NioSocketChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;)V
    .locals 0
    .param p2, "channel"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p3, "javaSocket"    # Ljava/net/Socket;

    .prologue
    .line 312
    iput-object p1, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 313
    invoke-direct {p0, p2, p3}, Lio/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Lio/netty/channel/socket/SocketChannel;Ljava/net/Socket;)V

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;Lio/netty/channel/socket/nio/NioSocketChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p2, "x1"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p3, "x2"    # Ljava/net/Socket;
    .param p4, "x3"    # Lio/netty/channel/socket/nio/NioSocketChannel$1;

    .prologue
    .line 311
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;)V

    return-void
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/socket/nio/NioSocketChannel;->access$100(Lio/netty/channel/socket/nio/NioSocketChannel;Z)V

    .line 319
    return-void
.end method
