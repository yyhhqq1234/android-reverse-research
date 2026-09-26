.class Lio/netty/channel/group/DefaultChannelGroupFuture$1;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/DefaultChannelGroupFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;


# direct methods
.method constructor <init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 8
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v3

    .line 52
    .local v3, "success":Z
    iget-object v5, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    monitor-enter v5

    .line 53
    if-eqz v3, :cond_0

    .line 54
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$28(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$29(Lio/netty/channel/group/DefaultChannelGroupFuture;I)V

    .line 59
    :goto_0
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$28(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v4

    iget-object v6, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v6}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$30(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v6}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$32(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v4, v6, :cond_1

    const/4 v0, 0x1

    .line 60
    .local v0, "callSetDone":Z
    :goto_1
    sget-boolean v4, Lio/netty/channel/group/DefaultChannelGroupFuture;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$28(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v4

    iget-object v6, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v6}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$30(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v6}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$32(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-le v4, v6, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 52
    .end local v0    # "callSetDone":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 56
    :cond_0
    :try_start_1
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$30(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$31(Lio/netty/channel/group/DefaultChannelGroupFuture;I)V

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 52
    .restart local v0    # "callSetDone":Z
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$30(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v4

    if-lez v4, :cond_6

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$30(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v2, "failed":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;>;"
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$32(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 72
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    new-instance v5, Lio/netty/channel/group/ChannelGroupException;

    invoke-direct {v5, v2}, Lio/netty/channel/group/ChannelGroupException;-><init>(Ljava/util/Collection;)V

    invoke-static {v4, v5}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$33(Lio/netty/channel/group/DefaultChannelGroupFuture;Lio/netty/channel/group/ChannelGroupException;)V

    .line 77
    .end local v2    # "failed":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;>;"
    :cond_4
    :goto_3
    return-void

    .line 67
    .restart local v2    # "failed":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelFuture;

    .line 68
    .local v1, "f":Lio/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_3

    .line 69
    new-instance v5, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    .end local v1    # "f":Lio/netty/channel/ChannelFuture;
    .end local v2    # "failed":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;>;"
    :cond_6
    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$34(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    goto :goto_3
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

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
