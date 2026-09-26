.class Lio/netty/channel/DefaultChannelPipeline$1;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/DefaultChannelPipeline;->remove(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;

.field private final synthetic val$ctx:Lio/netty/channel/AbstractChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$1;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iput-object p2, p0, Lio/netty/channel/DefaultChannelPipeline$1;->val$ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$1;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    monitor-enter v1

    .line 328
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$1;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline$1;->val$ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-virtual {v0, v2}, Lio/netty/channel/DefaultChannelPipeline;->remove0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 327
    monitor-exit v1

    .line 330
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
