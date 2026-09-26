.class public Lcom/netease/cloud/nos/android/pipeline/HttpsChannelInitializer;
.super Lio/netty/channel/ChannelInitializer;
.source "HttpsChannelInitializer.java"


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
    .line 15
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

    invoke-virtual {p0, p1}, Lcom/netease/cloud/nos/android/pipeline/HttpsChannelInitializer;->initChannel(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/SocketChannel;)V
    .locals 5
    .param p1, "ch"    # Lio/netty/channel/socket/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-interface {p1}, Lio/netty/channel/socket/SocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 23
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-static {}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 22
    check-cast v2, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    .line 23
    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->getSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 24
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 25
    const-string v2, "ssl"

    new-instance v3, Lio/netty/handler/ssl/SslHandler;

    invoke-direct {v3, v0}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;)V

    invoke-interface {v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 28
    const-string v2, "decoder"

    new-instance v3, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-direct {v3}, Lio/netty/handler/codec/http/HttpResponseDecoder;-><init>()V

    invoke-interface {v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 29
    const-string v2, "encoder"

    new-instance v3, Lio/netty/handler/codec/http/HttpRequestEncoder;

    invoke-direct {v3}, Lio/netty/handler/codec/http/HttpRequestEncoder;-><init>()V

    invoke-interface {v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 33
    const-string v2, "aggregator"

    new-instance v3, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const/high16 v4, 0x100000

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    invoke-interface {v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 34
    const-string v2, "handler"

    new-instance v3, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;

    invoke-direct {v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;-><init>()V

    invoke-interface {v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 35
    return-void
.end method
