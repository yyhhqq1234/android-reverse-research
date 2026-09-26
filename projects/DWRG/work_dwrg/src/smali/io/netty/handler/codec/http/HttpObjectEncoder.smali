.class public abstract Lio/netty/handler/codec/http/HttpObjectEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "HttpObjectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lio/netty/handler/codec/http/HttpMessage;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageEncoder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final CRLF_BUF:Lio/netty/buffer/ByteBuf;

.field private static final ST_CONTENT_CHUNK:I = 0x2

.field private static final ST_CONTENT_NON_CHUNK:I = 0x1

.field private static final ST_INIT:I

.field private static final ZERO_CRLF:[B

.field private static final ZERO_CRLF_CRLF:[B

.field private static final ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF:[B

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF:[B

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    .line 47
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF:[B

    array-length v0, v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF:[B

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    .line 48
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    array-length v0, v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 49
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    .line 53
    return-void

    .line 44
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 45
    nop

    :array_1
    .array-data 1
        0x30t
        0xdt
        0xat
    .end array-data

    .line 46
    :array_2
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 43
    return-void
.end method

.method private static contentLength(Ljava/lang/Object;)J
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 174
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    .line 175
    check-cast p0, Lio/netty/handler/codec/http/HttpContent;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    .line 181
    :goto_0
    return-wide v0

    .line 177
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    .line 178
    check-cast p0, Lio/netty/buffer/ByteBuf;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 180
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 181
    check-cast p0, Lio/netty/channel/FileRegion;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v0

    goto :goto_0

    .line 183
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .prologue
    .line 161
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 162
    check-cast p0, Lio/netty/buffer/ByteBuf;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 164
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_1

    .line 165
    check-cast p0, Lio/netty/handler/codec/http/HttpContent;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    .line 167
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 168
    check-cast p0, Lio/netty/channel/FileRegion;

    .end local p0    # "msg":Ljava/lang/Object;
    invoke-interface {p0}, Lio/netty/channel/FileRegion;->retain()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    goto :goto_0

    .line 170
    .restart local p0    # "msg":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static encodeAscii(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii0(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    .line 189
    return-void
.end method

.method private encodeChunkedContent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JLjava/util/List;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p5, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-wide/16 v6, 0x0

    .line 123
    cmp-long v3, p3, v6

    if-lez v3, :cond_0

    .line 124
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 125
    .local v2, "length":[B
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v3, v4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 126
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 127
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF:[B

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 128
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "length":[B
    :cond_0
    instance-of v3, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v3, :cond_3

    .line 134
    check-cast p2, Lio/netty/handler/codec/http/LastHttpContent;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    .line 135
    .local v1, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 153
    .end local v1    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :cond_1
    :goto_1
    return-void

    .line 138
    .restart local v1    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 139
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF:[B

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 140
    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->encode(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 141
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF:[B

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 142
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v1    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_3
    cmp-long v3, p3, v6

    if-nez v3, :cond_1

    .line 150
    sget-object v3, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpObject;

    if-nez v0, :cond_0

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
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
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v1, :cond_1

    .line 62
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected message type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v7, p2

    .line 67
    check-cast v7, Lio/netty/handler/codec/http/HttpMessage;

    .line 69
    .local v7, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, v7}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V

    .line 72
    invoke-interface {v7}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->encode(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 73
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF:[B

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 74
    invoke-static {v7}, Lio/netty/handler/codec/http/HttpHeaders;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 76
    .end local v7    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    :cond_1
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-nez v1, :cond_2

    instance-of v1, p2, Lio/netty/buffer/ByteBuf;

    if-nez v1, :cond_2

    instance-of v1, p2, Lio/netty/channel/FileRegion;

    if-eqz v1, :cond_d

    .line 77
    :cond_2
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-nez v1, :cond_4

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected message type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v7    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    :cond_3
    move v1, v3

    .line 74
    goto :goto_0

    .line 81
    .end local v7    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    :cond_4
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->contentLength(Ljava/lang/Object;)J

    move-result-wide v4

    .line 82
    .local v4, "contentLength":J
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-ne v1, v3, :cond_a

    .line 83
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-lez v1, :cond_8

    .line 84
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_6

    instance-of v1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v1, :cond_6

    move-object v1, p2

    .line 86
    check-cast v1, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 87
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_1
    instance-of v1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_5

    .line 105
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 120
    .end local v4    # "contentLength":J
    :cond_5
    :goto_2
    return-void

    .line 89
    .restart local v4    # "contentLength":J
    :cond_6
    if-eqz v0, :cond_7

    .line 90
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_7
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_8
    if-eqz v0, :cond_9

    .line 96
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    :cond_9
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_a
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-ne v1, v2, :cond_c

    .line 108
    if-eqz v0, :cond_b

    .line 109
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 111
    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeChunkedContent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JLjava/util/List;)V

    goto :goto_2

    .line 113
    :cond_c
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 116
    .end local v4    # "contentLength":J
    :cond_d
    if-eqz v0, :cond_5

    .line 117
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected abstract encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
