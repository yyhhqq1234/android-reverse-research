.class Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/embedded/EmbeddedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/embedded/EmbeddedChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 337
    invoke-virtual {p0, p3}, Lio/netty/channel/embedded/EmbeddedChannel$DefaultUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 338
    return-void
.end method
