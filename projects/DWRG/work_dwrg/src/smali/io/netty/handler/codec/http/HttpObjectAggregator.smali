.class public Lio/netty/handler/codec/http/HttpObjectAggregator;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "HttpObjectAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;,
        Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder",
        "<",
        "Lio/netty/handler/codec/http/HttpObject;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

.field private final maxContentLength:I

.field private maxCumulationBufferComponents:I

.field private tooLongFrameFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const-class v0, Lio/netty/handler/codec/http/HttpObjectAggregator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->$assertionsDisabled:Z

    .line 57
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lio/netty/handler/codec/http/HttpResponseStatus;

    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;)V

    .line 56
    sput-object v0, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    .line 57
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxContentLength"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    .line 63
    const/16 v0, 0x400

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    .line 75
    if-gtz p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxContentLength must be a positive integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxContentLength:I

    .line 81
    return-void
.end method

.method private static toFullMessage(Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 4
    .param p0, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v3, 0x0

    .line 256
    instance-of v1, p0, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v1, :cond_0

    .line 257
    check-cast p0, Lio/netty/handler/codec/http/FullHttpMessage;

    .end local p0    # "msg":Lio/netty/handler/codec/http/HttpMessage;
    invoke-interface {p0}, Lio/netty/handler/codec/http/FullHttpMessage;->retain()Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v0

    .line 271
    .local v0, "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    :goto_0
    return-object v0

    .line 261
    .end local v0    # "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    .restart local p0    # "msg":Lio/netty/handler/codec/http/HttpMessage;
    :cond_0
    instance-of v1, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_1

    .line 262
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;

    .line 263
    check-cast p0, Lio/netty/handler/codec/http/HttpRequest;

    .end local p0    # "msg":Lio/netty/handler/codec/http/HttpMessage;
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    .line 262
    invoke-direct {v0, p0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;)V

    .line 264
    .restart local v0    # "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    goto :goto_0

    .end local v0    # "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    .restart local p0    # "msg":Lio/netty/handler/codec/http/HttpMessage;
    :cond_1
    instance-of v1, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_2

    .line 265
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;

    .line 266
    check-cast p0, Lio/netty/handler/codec/http/HttpResponse;

    .end local p0    # "msg":Lio/netty/handler/codec/http/HttpMessage;
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    .line 265
    invoke-direct {v0, p0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;)V

    .line 267
    .restart local v0    # "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    goto :goto_0

    .line 268
    .end local v0    # "fullMsg":Lio/netty/handler/codec/http/FullHttpMessage;
    .restart local p0    # "msg":Lio/netty/handler/codec/http/HttpMessage;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 230
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->release()Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 237
    :cond_0
    return-void
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/HttpObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 117
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 119
    .local v2, "currentMessage":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    instance-of v7, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v7, :cond_6

    .line 120
    const/4 v7, 0x0

    iput-boolean v7, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->tooLongFrameFound:Z

    .line 121
    sget-boolean v7, Lio/netty/handler/codec/http/HttpObjectAggregator;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_0
    move-object v5, p2

    .line 123
    check-cast v5, Lio/netty/handler/codec/http/HttpMessage;

    .line 130
    .local v5, "m":Lio/netty/handler/codec/http/HttpMessage;
    invoke-static {v5}, Lio/netty/handler/codec/http/HttpHeaders;->is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    sget-object v7, Lio/netty/handler/codec/http/HttpObjectAggregator;->CONTINUE:Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-interface {p1, v7}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v7

    new-instance v8, Lio/netty/handler/codec/http/HttpObjectAggregator$1;

    invoke-direct {v8, p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$1;-><init>(Lio/netty/handler/codec/http/HttpObjectAggregator;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v7, v8}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 141
    :cond_1
    invoke-interface {v5}, Lio/netty/handler/codec/http/HttpMessage;->getDecoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v7

    invoke-virtual {v7}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_3

    .line 142
    invoke-static {v5}, Lio/netty/handler/codec/http/HttpHeaders;->removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V

    .line 143
    invoke-static {v5}, Lio/netty/handler/codec/http/HttpObjectAggregator;->toFullMessage(Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/handler/codec/http/FullHttpMessage;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iput-object v10, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 226
    .end local v5    # "m":Lio/netty/handler/codec/http/HttpMessage;
    :cond_2
    :goto_0
    return-void

    .line 147
    .restart local v5    # "m":Lio/netty/handler/codec/http/HttpMessage;
    :cond_3
    instance-of v7, p2, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v7, :cond_4

    move-object v3, p2

    .line 148
    check-cast v3, Lio/netty/handler/codec/http/HttpRequest;

    .line 149
    .local v3, "header":Lio/netty/handler/codec/http/HttpRequest;
    new-instance v2, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;

    .line 150
    .end local v2    # "currentMessage":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    iget v8, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    invoke-interface {v7, v8}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v7

    invoke-direct {v2, v3, v7, v10, v10}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpRequest;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpRequest;)V

    .line 149
    .restart local v2    # "currentMessage":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 161
    .end local v3    # "header":Lio/netty/handler/codec/http/HttpRequest;
    :goto_1
    invoke-static {v2}, Lio/netty/handler/codec/http/HttpHeaders;->removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V

    goto :goto_0

    .line 151
    :cond_4
    instance-of v7, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v7, :cond_5

    move-object v3, p2

    .line 152
    check-cast v3, Lio/netty/handler/codec/http/HttpResponse;

    .line 153
    .local v3, "header":Lio/netty/handler/codec/http/HttpResponse;
    new-instance v2, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;

    .line 155
    .end local v2    # "currentMessage":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    iget v7, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    invoke-static {v7}, Lio/netty/buffer/Unpooled;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v7

    invoke-direct {v2, v3, v7, v10, v10}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;)V

    .line 153
    .restart local v2    # "currentMessage":Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    goto :goto_1

    .line 157
    .end local v3    # "header":Lio/netty/handler/codec/http/HttpResponse;
    :cond_5
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    throw v7

    .line 162
    .end local v5    # "m":Lio/netty/handler/codec/http/HttpMessage;
    :cond_6
    instance-of v7, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v7, :cond_d

    .line 163
    iget-boolean v7, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->tooLongFrameFound:Z

    if-eqz v7, :cond_7

    .line 164
    instance-of v7, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v7, :cond_2

    .line 165
    iput-object v10, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    goto :goto_0

    .line 170
    :cond_7
    sget-boolean v7, Lio/netty/handler/codec/http/HttpObjectAggregator;->$assertionsDisabled:Z

    if-nez v7, :cond_8

    if-nez v2, :cond_8

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    :cond_8
    move-object v0, p2

    .line 173
    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    .line 174
    .local v0, "chunk":Lio/netty/handler/codec/http/HttpContent;
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/CompositeByteBuf;

    .line 176
    .local v1, "content":Lio/netty/buffer/CompositeByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v7

    iget v8, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxContentLength:I

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v9

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_9

    .line 177
    const/4 v7, 0x1

    iput-boolean v7, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->tooLongFrameFound:Z

    .line 180
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->release()Z

    .line 181
    iput-object v10, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 183
    new-instance v7, Lio/netty/handler/codec/TooLongFrameException;

    .line 184
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "HTTP content length exceeded "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxContentLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 185
    const-string v9, " bytes."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 183
    invoke-direct {v7, v8}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 189
    :cond_9
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 190
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->retain()Lio/netty/handler/codec/http/HttpContent;

    .line 191
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-virtual {v1, v7}, Lio/netty/buffer/CompositeByteBuf;->addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 192
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v7

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-virtual {v8}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1, v7}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    .line 196
    :cond_a
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->getDecoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v7

    invoke-virtual {v7}, Lio/netty/handler/codec/DecoderResult;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_b

    .line 198
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->getDecoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v7

    invoke-virtual {v7}, Lio/netty/handler/codec/DecoderResult;->cause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v7}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v7

    .line 197
    invoke-virtual {v2, v7}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 199
    const/4 v4, 0x1

    .line 204
    .local v4, "last":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 205
    iput-object v10, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 208
    instance-of v7, v0, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v7, :cond_c

    move-object v6, v0

    .line 209
    check-cast v6, Lio/netty/handler/codec/http/LastHttpContent;

    .line 210
    .local v6, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-interface {v6}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v2, v7}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setTrailingHeaders(Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 216
    .end local v6    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :goto_3
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    .line 217
    const-string v8, "Content-Length"

    .line 218
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 216
    invoke-virtual {v7, v8, v9}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 221
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 201
    .end local v4    # "last":Z
    :cond_b
    instance-of v4, v0, Lio/netty/handler/codec/http/LastHttpContent;

    .restart local v4    # "last":Z
    goto :goto_2

    .line 212
    :cond_c
    new-instance v7, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v7}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    invoke-virtual {v2, v7}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setTrailingHeaders(Lio/netty/handler/codec/http/HttpHeaders;)V

    goto :goto_3

    .line 224
    .end local v0    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    .end local v1    # "content":Lio/netty/buffer/CompositeByteBuf;
    .end local v4    # "last":Z
    :cond_d
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    throw v7
.end method

.method protected bridge synthetic decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Lio/netty/handler/codec/http/HttpObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpObject;Ljava/util/List;)V

    return-void
.end method

.method public final getMaxCumulationBufferComponents()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    return v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 242
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToMessageDecoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 249
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->release()Z

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->currentMessage:Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;

    .line 253
    :cond_0
    return-void
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3
    .param p1, "maxCumulationBufferComponents"    # I

    .prologue
    .line 101
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxCumulationBufferComponents: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string v2, " (expected: >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_1

    .line 108
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectAggregator;->maxCumulationBufferComponents:I

    .line 113
    return-void

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    const-string v1, "decoder properties cannot be changed once the decoder is added to a pipeline."

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
