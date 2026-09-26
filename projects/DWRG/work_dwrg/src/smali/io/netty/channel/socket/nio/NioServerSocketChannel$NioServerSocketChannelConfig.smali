.class final Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;
.super Lio/netty/channel/socket/DefaultServerSocketChannelConfig;
.source "NioServerSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/socket/nio/NioServerSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioServerSocketChannelConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/socket/nio/NioServerSocketChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/socket/nio/NioServerSocketChannel;Lio/netty/channel/socket/nio/NioServerSocketChannel;Ljava/net/ServerSocket;)V
    .locals 0
    .param p2, "channel"    # Lio/netty/channel/socket/nio/NioServerSocketChannel;
    .param p3, "javaSocket"    # Ljava/net/ServerSocket;

    .prologue
    .line 188
    iput-object p1, p0, Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;->this$0:Lio/netty/channel/socket/nio/NioServerSocketChannel;

    .line 189
    invoke-direct {p0, p2, p3}, Lio/netty/channel/socket/DefaultServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/ServerSocketChannel;Ljava/net/ServerSocket;)V

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/socket/nio/NioServerSocketChannel;Lio/netty/channel/socket/nio/NioServerSocketChannel;Ljava/net/ServerSocket;Lio/netty/channel/socket/nio/NioServerSocketChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/socket/nio/NioServerSocketChannel;
    .param p2, "x1"    # Lio/netty/channel/socket/nio/NioServerSocketChannel;
    .param p3, "x2"    # Ljava/net/ServerSocket;
    .param p4, "x3"    # Lio/netty/channel/socket/nio/NioServerSocketChannel$1;

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;-><init>(Lio/netty/channel/socket/nio/NioServerSocketChannel;Lio/netty/channel/socket/nio/NioServerSocketChannel;Ljava/net/ServerSocket;)V

    return-void
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioServerSocketChannel$NioServerSocketChannelConfig;->this$0:Lio/netty/channel/socket/nio/NioServerSocketChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/socket/nio/NioServerSocketChannel;->access$100(Lio/netty/channel/socket/nio/NioServerSocketChannel;Z)V

    .line 195
    return-void
.end method
