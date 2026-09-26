.class abstract Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;
.super Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWriteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/internal/RecyclableMpscLinkedQueueNode",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private ctx:Lio/netty/channel/AbstractChannelHandlerContext;

.field private msg:Ljava/lang/Object;

.field private promise:Lio/netty/channel/ChannelPromise;

.field private size:I


# direct methods
.method private constructor <init>(Lio/netty/util/Recycler$Handle;)V
    .locals 0

    .prologue
    .line 903
    .local p1, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/RecyclableMpscLinkedQueueNode;-><init>(Lio/netty/util/Recycler$Handle;)V

    .line 904
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;-><init>(Lio/netty/util/Recycler$Handle;)V

    return-void
.end method

.method protected static init(Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "task"    # Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "size"    # I
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 908
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 909
    iput-object p2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 910
    iput-object p4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 911
    iput p3, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    .line 912
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 917
    :try_start_0
    iget v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    if-lez v1, :cond_0

    .line 918
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->access$0(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannel;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 920
    .local v0, "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    .line 921
    iget v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->size:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 924
    .end local v0    # "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    iget-object v3, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {p0, v1, v2, v3}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    iput-object v4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 928
    iput-object v4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 929
    iput-object v4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 931
    return-void

    .line 925
    :catchall_0
    move-exception v1

    .line 927
    iput-object v4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->ctx:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 928
    iput-object v4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->msg:Ljava/lang/Object;

    .line 929
    iput-object v4, p0, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->promise:Lio/netty/channel/ChannelPromise;

    .line 930
    throw v1
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;->value()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 935
    return-object p0
.end method

.method protected write(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/AbstractChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 939
    invoke-static {p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 940
    return-void
.end method
