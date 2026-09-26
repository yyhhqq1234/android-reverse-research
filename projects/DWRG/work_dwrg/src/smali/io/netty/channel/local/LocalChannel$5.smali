.class Lio/netty/channel/local/LocalChannel$5;
.super Ljava/lang/Object;
.source "LocalChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/local/LocalChannel;->doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/local/LocalChannel;

.field private final synthetic val$msgsCopy:[Ljava/lang/Object;

.field private final synthetic val$peer:Lio/netty/channel/local/LocalChannel;

.field private final synthetic val$peerPipeline:Lio/netty/channel/ChannelPipeline;


# direct methods
.method constructor <init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;[Ljava/lang/Object;Lio/netty/channel/ChannelPipeline;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel$5;->this$0:Lio/netty/channel/local/LocalChannel;

    iput-object p2, p0, Lio/netty/channel/local/LocalChannel$5;->val$peer:Lio/netty/channel/local/LocalChannel;

    iput-object p3, p0, Lio/netty/channel/local/LocalChannel$5;->val$msgsCopy:[Ljava/lang/Object;

    iput-object p4, p0, Lio/netty/channel/local/LocalChannel$5;->val$peerPipeline:Lio/netty/channel/ChannelPipeline;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$5;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-static {v0}, Lio/netty/channel/local/LocalChannel;->access$3(Lio/netty/channel/local/LocalChannel;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/local/LocalChannel$5;->val$msgsCopy:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$5;->val$peer:Lio/netty/channel/local/LocalChannel;

    iget-object v1, p0, Lio/netty/channel/local/LocalChannel$5;->val$peerPipeline:Lio/netty/channel/ChannelPipeline;

    invoke-static {v0, v1}, Lio/netty/channel/local/LocalChannel;->access$9(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/ChannelPipeline;)V

    .line 313
    return-void
.end method
