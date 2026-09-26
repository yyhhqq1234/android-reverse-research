.class public Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "PipelineHttpClientHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 31
    return-void
.end method

.method private handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;
    .param p3, "errCode"    # I
    .param p4, "cause"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handlerError cause: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->notifySessionResult(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;I)V

    .line 140
    return-void
.end method

.method private notifySessionResult(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;I)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "rs"    # Lcom/netease/cloud/nos/android/http/HttpResult;
    .param p3, "isSuccess"    # I

    .prologue
    .line 144
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v1, v2}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 145
    .local v0, "s":Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {v0, p3, p2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setSessionSuccess(ILcom/netease/cloud/nos/android/http/HttpResult;)V

    goto :goto_0
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v1, 0x31f

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 112
    .local v0, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v1, 0x1

    const-string v2, "pipeline channelInactive"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 37
    .local v3, "nosInfo":Lorg/json/JSONObject;
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v10, "Do channelRead"

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p2

    .line 48
    check-cast v6, Lio/netty/handler/codec/http/FullHttpResponse;

    .line 50
    .local v6, "res":Lio/netty/handler/codec/http/FullHttpResponse;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v9

    sget-object v10, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v9, v10}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v9

    invoke-interface {v9}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 51
    .local v8, "s":Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;
    if-nez v8, :cond_0

    .line 52
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v10, "pipeline no httpSession"

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 58
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "nosInfo":Lorg/json/JSONObject;
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v9

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v3    # "nosInfo":Lorg/json/JSONObject;
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "received nosInfo: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1
    invoke-interface {v6}, Lio/netty/handler/codec/http/FullHttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    .line 66
    .local v0, "httpRespCode":I
    new-instance v7, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v3, v9}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 68
    .local v7, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    invoke-virtual {v8}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->hasBreakQuery()Z

    move-result v9

    if-nez v9, :cond_2

    .line 69
    invoke-virtual {v8, v0, v3}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handleBreakInfo(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 61
    .end local v0    # "httpRespCode":I
    .end local v7    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "nosInfo":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .restart local v3    # "nosInfo":Lorg/json/JSONObject;
    sget-object v9, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v10, "no content in response"

    invoke-static {v9, v10}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    .restart local v0    # "httpRespCode":I
    .restart local v7    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_2
    sget-object v9, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v9}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v9

    if-eq v0, v9, :cond_3

    .line 76
    const/4 v9, 0x7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "HTTP Response Code:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v7, v9, v10}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    if-eqz v3, :cond_4

    const-string v9, "context"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "offset"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 82
    :cond_4
    new-instance v5, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v9, 0x2bd

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 83
    new-instance v11, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;

    const-string v12, "context or offset is missing in response"

    invoke-direct {v11, v12}, Lcom/netease/cloud/nos/android/exception/InvalidOffsetException;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-direct {v5, v9, v10, v11}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 84
    .local v5, "offsetRs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/16 v9, 0x8

    const-string v10, "no context or offset in response"

    invoke-direct {p0, p1, v5, v9, v10}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v5    # "offsetRs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_5
    :try_start_0
    const-string v9, "context"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "newUploadContext":Ljava/lang/String;
    const-string v9, "offset"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 93
    .local v4, "offset":I
    invoke-virtual {v8, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->setUploadContext(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v8, v4, v7}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->handleOffset(ILcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 96
    .end local v2    # "newUploadContext":Ljava/lang/String;
    .end local v4    # "offset":I
    :catch_0
    move-exception v1

    .line 97
    .local v1, "jsonException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "post response has not context or offset"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channelWritabilityChanged isWritable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClient;->SESSION_KEY:Lio/netty/util/AttributeKey;

    invoke-interface {v1, v2}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;

    .line 120
    .local v0, "s":Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;
    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    sget-object v1, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->LOGTAG:Ljava/lang/String;

    const-string v2, "get PipelineHttpSession from the channel"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpSession;->writeDone()V

    goto :goto_0
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v2, 0x31f

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v1, p2

    check-cast v1, Ljava/lang/Exception;

    invoke-direct {v0, v2, v3, v1}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 106
    .local v0, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pipeline exception Caught:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/netease/cloud/nos/android/pipeline/PipelineHttpClientHandler;->handlerError(Lio/netty/channel/ChannelHandlerContext;Lcom/netease/cloud/nos/android/http/HttpResult;ILjava/lang/String;)V

    .line 107
    return-void
.end method

.method public getLogPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "PipelineHttpClientHandler"

    return-object v0
.end method
