.class Lio/netty/bootstrap/Bootstrap$1;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/Bootstrap;->doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/bootstrap/Bootstrap;

.field private final synthetic val$channel:Lio/netty/channel/Channel;

.field private final synthetic val$localAddress:Ljava/net/SocketAddress;

.field private final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field private final synthetic val$regFuture:Lio/netty/channel/ChannelFuture;

.field private final synthetic val$remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/bootstrap/Bootstrap$1;->this$0:Lio/netty/bootstrap/Bootstrap;

    iput-object p2, p0, Lio/netty/bootstrap/Bootstrap$1;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iput-object p3, p0, Lio/netty/bootstrap/Bootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iput-object p4, p0, Lio/netty/bootstrap/Bootstrap$1;->val$remoteAddress:Ljava/net/SocketAddress;

    iput-object p5, p0, Lio/netty/bootstrap/Bootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    iput-object p6, p0, Lio/netty/bootstrap/Bootstrap$1;->val$promise:Lio/netty/channel/ChannelPromise;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lio/netty/bootstrap/Bootstrap$1;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iget-object v2, p0, Lio/netty/bootstrap/Bootstrap$1;->val$remoteAddress:Ljava/net/SocketAddress;

    iget-object v3, p0, Lio/netty/bootstrap/Bootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v4, p0, Lio/netty/bootstrap/Bootstrap$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/bootstrap/Bootstrap;->access$2(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 147
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/bootstrap/Bootstrap$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
