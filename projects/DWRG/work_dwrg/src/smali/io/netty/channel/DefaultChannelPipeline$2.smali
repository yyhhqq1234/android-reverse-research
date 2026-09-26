.class Lio/netty/channel/DefaultChannelPipeline$2;
.super Ljava/lang/Object;
.source "DefaultChannelPipeline.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/DefaultChannelPipeline;->replace(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/DefaultChannelPipeline;

.field private final synthetic val$ctx:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final synthetic val$newCtx:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/channel/DefaultChannelPipeline$2;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iput-object p2, p0, Lio/netty/channel/DefaultChannelPipeline$2;->val$ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iput-object p3, p0, Lio/netty/channel/DefaultChannelPipeline$2;->val$newName:Ljava/lang/String;

    iput-object p4, p0, Lio/netty/channel/DefaultChannelPipeline$2;->val$newCtx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 410
    iget-object v1, p0, Lio/netty/channel/DefaultChannelPipeline$2;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelPipeline$2;->this$0:Lio/netty/channel/DefaultChannelPipeline;

    iget-object v2, p0, Lio/netty/channel/DefaultChannelPipeline$2;->val$ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v3, p0, Lio/netty/channel/DefaultChannelPipeline$2;->val$newName:Ljava/lang/String;

    iget-object v4, p0, Lio/netty/channel/DefaultChannelPipeline$2;->val$newCtx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0, v2, v3, v4}, Lio/netty/channel/DefaultChannelPipeline;->access$1(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/String;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 410
    monitor-exit v1

    .line 413
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
