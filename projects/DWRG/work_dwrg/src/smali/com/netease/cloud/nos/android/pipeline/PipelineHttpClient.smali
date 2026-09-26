.class public Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;
.super Ljava/lang/Object;
.source "PipelineHttpClient.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static final SESSION_KEY:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey",
            "<",
            "Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;",
            ">;"
        }
    .end annotation
.end field

.field private static httpCbs:Lio/netty/bootstrap/Bootstrap; = null

.field private static httpChannelList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private static httpsCbs:Lio/netty/bootstrap/Bootstrap; = null

.field private static httpsChannelList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field protected static final retryLimit:I = 0x1


# instance fields
.field private cbs:Lio/netty/bootstrap/Bootstrap;

.field private connectChannel:Lio/netty/channel/Channel;

.field private connectedChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field protected ip:Ljava/lang/String;

.field protected port:I

.field private session:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->LOGTAG:Ljava/lang/String;

    .line 25
    const-string v0, "PipelineHttpSession"

    invoke-static {v0}, Lio/netty/util/AttributeKey;->valueOf(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpChannelList:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/netease/cloud/nos/android/pipeline/HttpChannelInitializer;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/pipeline/HttpChannelInitializer;-><init>()V

    invoke-static {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->getBootstrap(Lio/netty/channel/ChannelInitializer;)Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpCbs:Lio/netty/bootstrap/Bootstrap;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpsChannelList:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/netease/cloud/nos/android/pipeline/HttpsChannelInitializer;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/pipeline/HttpsChannelInitializer;-><init>()V

    invoke-static {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->getBootstrap(Lio/netty/channel/ChannelInitializer;)Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpsCbs:Lio/netty/bootstrap/Bootstrap;

    return-void
.end method

.method public constructor <init>(IZLcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "isHttps"    # Z
    .param p3, "session"    # Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->cbs:Lio/netty/bootstrap/Bootstrap;

    .line 38
    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->port:I

    .line 48
    iput p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->port:I

    .line 49
    iput-object p3, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->session:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 51
    if-eqz p2, :cond_0

    .line 52
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpsChannelList:Ljava/util/List;

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    .line 53
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpsCbs:Lio/netty/bootstrap/Bootstrap;

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->cbs:Lio/netty/bootstrap/Bootstrap;

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpChannelList:Ljava/util/List;

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->httpCbs:Lio/netty/bootstrap/Bootstrap;

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->cbs:Lio/netty/bootstrap/Bootstrap;

    goto :goto_0
.end method

.method private doConnect()Lio/netty/channel/Channel;
    .locals 10

    .prologue
    .line 124
    iget-object v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    monitor-enter v7

    .line 125
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 124
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doConnect new connect start: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->cbs:Lio/netty/bootstrap/Bootstrap;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    iget v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->port:I

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v1

    .line 153
    .local v1, "future":Lio/netty/channel/ChannelFuture;
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->awaitUninterruptibly()Lio/netty/channel/ChannelFuture;

    .line 154
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->LOGTAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doConnect to uploadServer ip: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v7, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    monitor-enter v7

    .line 158
    :try_start_1
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 161
    .local v0, "channel":Lio/netty/channel/Channel;
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v6}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v6

    iget-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->session:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-interface {v6, v8}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 163
    iget-object v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    .end local v0    # "channel":Lio/netty/channel/Channel;
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    :goto_1
    return-object v0

    .line 126
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    .line 127
    .restart local v0    # "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "host":Ljava/lang/String;
    invoke-interface {v0}, Lio/netty/channel/Channel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 131
    .local v5, "port":I
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v6}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->port:I

    if-ne v5, v6, :cond_4

    .line 132
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "reuse active connection to uploadServer ip: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v6}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v6

    iget-object v8, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->session:Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    invoke-interface {v6, v8}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 135
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 124
    .end local v0    # "channel":Lio/netty/channel/Channel;
    .end local v2    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    :catchall_0
    move-exception v6

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v6

    .line 139
    .end local v3    # "i":I
    .restart local v0    # "channel":Lio/netty/channel/Channel;
    .restart local v4    # "i":I
    :cond_1
    :try_start_4
    sget-object v6, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->LOGTAG:Ljava/lang/String;

    const-string v8, "doConnect close inactive channel"

    invoke-static {v6, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v6, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :try_start_5
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 125
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_0

    .line 167
    .end local v0    # "channel":Lio/netty/channel/Channel;
    .restart local v1    # "future":Lio/netty/channel/ChannelFuture;
    :cond_3
    :try_start_6
    invoke-interface {v1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 168
    monitor-exit v7

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 156
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v6

    .line 124
    .end local v1    # "future":Lio/netty/channel/ChannelFuture;
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :catchall_2
    move-exception v6

    goto :goto_2

    .end local v3    # "i":I
    .restart local v0    # "channel":Lio/netty/channel/Channel;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "port":I
    :cond_4
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_3
.end method

.method private static getBootstrap(Lio/netty/channel/ChannelInitializer;)Lio/netty/bootstrap/Bootstrap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelInitializer",
            "<",
            "Lio/netty/channel/socket/SocketChannel;",
            ">;)",
            "Lio/netty/bootstrap/Bootstrap;"
        }
    .end annotation

    .prologue
    .local p0, "channelInitializer":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<Lio/netty/channel/socket/SocketChannel;>;"
    const/high16 v4, 0x100000

    .line 61
    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    .line 63
    .local v0, "cbs":Lio/netty/bootstrap/Bootstrap;
    new-instance v1, Lio/netty/channel/nio/NioEventLoopGroup;

    invoke-direct {v1}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>()V

    invoke-virtual {v0, v1}, Lio/netty/bootstrap/Bootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 64
    const-class v2, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v1, v2}, Lio/netty/bootstrap/Bootstrap;->channel(Ljava/lang/Class;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 65
    sget-object v2, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/netty/bootstrap/Bootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 66
    sget-object v2, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/netty/bootstrap/Bootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 67
    sget-object v2, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/netty/bootstrap/Bootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 68
    sget-object v2, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/netty/bootstrap/Bootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 69
    sget-object v2, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    .line 70
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 69
    invoke-virtual {v1, v2, v3}, Lio/netty/bootstrap/Bootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v1

    check-cast v1, Lio/netty/bootstrap/Bootstrap;

    .line 71
    invoke-virtual {v1, p0}, Lio/netty/bootstrap/Bootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 73
    return-object v0
.end method


# virtual methods
.method public channelClose()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v2}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    .line 111
    :cond_0
    monitor-exit v1

    .line 120
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Ljava/lang/String;)Lio/netty/channel/Channel;
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "retry":I
    iput-object p1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->ip:Ljava/lang/String;

    .line 82
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 93
    :goto_1
    return-object v2

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->doConnect()Lio/netty/channel/Channel;

    move-result-object v0

    .line 84
    .local v0, "channel":Lio/netty/channel/Channel;
    if-eqz v0, :cond_1

    .line 85
    iput-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    .line 86
    iget-object v2, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public get(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    if-eqz v0, :cond_1

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    invoke-interface {v0, p1}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 177
    :cond_0
    monitor-exit p0

    .line 183
    :cond_1
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public post(Lio/netty/handler/codec/http/DefaultFullHttpRequest;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "request"    # Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 188
    const/4 v0, 0x0

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    const/4 v0, 0x0

    .line 192
    .local v0, "cf":Lio/netty/channel/ChannelFuture;
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    if-eqz v1, :cond_0

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    invoke-interface {v1, p1}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 193
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectedChannelList:Ljava/util/List;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->connectChannel:Lio/netty/channel/Channel;

    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v2}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    .line 97
    :cond_0
    monitor-exit v1

    .line 107
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
