.class public Lio/netty/handler/codec/http/HttpRequestEncoder;
.super Lio/netty/handler/codec/http/HttpObjectEncoder;
.source "HttpRequestEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http/HttpObjectEncoder",
        "<",
        "Lio/netty/handler/codec/http/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final QUESTION_MARK:C = '?'

.field private static final SLASH:C = '/'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/http/HttpRequestEncoder;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectEncoder;-><init>()V

    return-void
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
    .line 34
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p2, Lio/netty/handler/codec/http/HttpRequest;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpRequestEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpRequest;)V

    return-void
.end method

.method protected encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 11
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x2f

    .line 39
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->getMethod()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v6

    invoke-virtual {v6, p1}, Lio/netty/handler/codec/http/HttpMethod;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 40
    invoke-virtual {p1, v10}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 44
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->getUri()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "uri":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    :cond_0
    :goto_0
    sget-object v6, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 74
    invoke-virtual {p1, v10}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 75
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    invoke-virtual {v6, p1}, Lio/netty/handler/codec/http/HttpVersion;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 76
    sget-object v6, Lio/netty/handler/codec/http/HttpRequestEncoder;->CRLF:[B

    invoke-virtual {p1, v6}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 77
    return-void

    .line 49
    :cond_1
    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 50
    .local v3, "start":I
    if-eq v3, v7, :cond_0

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    .line 51
    add-int/lit8 v4, v3, 0x3

    .line 54
    .local v4, "startIndex":I
    const/16 v6, 0x3f

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 55
    .local v0, "index":I
    if-ne v0, v7, :cond_2

    .line 56
    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-gt v6, v4, :cond_0

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    if-gt v6, v4, :cond_0

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 62
    .local v1, "len":I
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v5, v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2, v5, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
