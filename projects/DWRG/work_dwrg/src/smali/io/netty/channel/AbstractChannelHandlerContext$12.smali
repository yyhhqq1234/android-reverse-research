.class Lio/netty/channel/AbstractChannelHandlerContext$12;
.super Lio/netty/util/internal/OneTimeTask;
.source "AbstractChannelHandlerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final synthetic val$localAddress:Ljava/net/SocketAddress;

.field private final synthetic val$next:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final synthetic val$promise:Lio/netty/channel/ChannelPromise;

.field private final synthetic val$remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->this$0:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$next:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p3, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$remoteAddress:Ljava/net/SocketAddress;

    iput-object p4, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$localAddress:Ljava/net/SocketAddress;

    iput-object p5, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$promise:Lio/netty/channel/ChannelPromise;

    .line 483
    invoke-direct {p0}, Lio/netty/util/internal/OneTimeTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$next:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$remoteAddress:Ljava/net/SocketAddress;

    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v3, p0, Lio/netty/channel/AbstractChannelHandlerContext$12;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1, v2, v3}, Lio/netty/channel/AbstractChannelHandlerContext;->access$14(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 487
    return-void
.end method
