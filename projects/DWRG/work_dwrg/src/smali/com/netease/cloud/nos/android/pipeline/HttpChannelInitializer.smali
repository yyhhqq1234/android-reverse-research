.class public Lcom/netease/cloud/nos/android/pipeline/HttpChannelInitializer;
.super Lio/netty/channel/ChannelInitializer;
.source "HttpChannelInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer",
        "<",
        "Lio/netty/channel/socket/SocketChannel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lio/netty/channel/socket/SocketChannel;

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/pipeline/HttpChannelInitializer;->initChannel(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/SocketChannel;)V
    .locals 4
    .param p1, "ch"    # Lio/netty/channel/socket/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-interface {p1}, Lio/netty/channel/socket/SocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 18
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    const-string v1, "decoder"

    new-instance v2, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-direct {v2}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 19
    const-string v1, "encoder"

    new-instance v2, Lio/netty/handler/codec/http/HttpRequestEncoder;

    invoke-direct {v2}, Lio/netty/handler/codec/http/HttpRequestEncoder;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 23
    const-string v1, "aggregator"

    new-instance v2, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const/high16 v3, 0x100000

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 24
    const-string v1, "handler"

    new-instance v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;

    invoke-direct {v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 25
    return-void
.end method
