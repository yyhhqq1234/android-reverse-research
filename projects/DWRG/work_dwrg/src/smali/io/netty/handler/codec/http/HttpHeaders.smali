.class public abstract Lio/netty/handler/codec/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpHeaders$Names;,
        Lio/netty/handler/codec/http/HttpHeaders$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CHUNKED_ENTITY:Ljava/lang/CharSequence;

.field private static final CLOSE_ENTITY:Ljava/lang/CharSequence;

.field private static final CONNECTION_ENTITY:Ljava/lang/CharSequence;

.field private static final CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

.field private static final CONTINUE_ENTITY:Ljava/lang/CharSequence;

.field private static final CRLF:[B

.field private static final DATE_ENTITY:Ljava/lang/CharSequence;

.field public static final EMPTY_HEADERS:Lio/netty/handler/codec/http/HttpHeaders;

.field private static final EXPECT_ENTITY:Ljava/lang/CharSequence;

.field private static final HEADER_SEPERATOR:[B

.field private static final HOST_ENTITY:Ljava/lang/CharSequence;

.field private static final KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_KEY1_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_KEY2_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_LOCATION_ENTITY:Ljava/lang/CharSequence;

.field private static final SEC_WEBSOCKET_ORIGIN_ENTITY:Ljava/lang/CharSequence;

.field private static final TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HEADER_SEPERATOR:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CRLF:[B

    .line 40
    const-string v0, "Content-Length"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    .line 41
    const-string v0, "Connection"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    .line 42
    const-string v0, "close"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    .line 43
    const-string v0, "keep-alive"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

    .line 44
    const-string v0, "Host"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    .line 45
    const-string v0, "Date"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    .line 46
    const-string v0, "Expect"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    .line 47
    const-string v0, "100-continue"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    .line 48
    const-string v0, "Transfer-Encoding"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    .line 49
    const-string v0, "chunked"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    .line 50
    const-string v0, "Sec-WebSocket-Key1"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY1_ENTITY:Ljava/lang/CharSequence;

    .line 51
    const-string v0, "Sec-WebSocket-Key2"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY2_ENTITY:Ljava/lang/CharSequence;

    .line 52
    const-string v0, "Sec-WebSocket-Origin"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_ORIGIN_ENTITY:Ljava/lang/CharSequence;

    .line 53
    const-string v0, "Sec-WebSocket-Location"

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpHeaders;->newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_LOCATION_ENTITY:Ljava/lang/CharSequence;

    .line 55
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaders$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/HttpHeaders$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/HttpHeaders;->EMPTY_HEADERS:Lio/netty/handler/codec/http/HttpHeaders;

    .line 120
    return-void

    .line 38
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 39
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 941
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 942
    return-void
.end method

.method public static addDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 932
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 933
    return-void
.end method

.method public static addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 717
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 718
    return-void
.end method

.method public static addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 706
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 707
    return-void
.end method

.method public static addIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .prologue
    .line 835
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 836
    return-void
.end method

.method public static addIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 828
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 829
    return-void
.end method

.method public static clearHeaders(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 738
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 739
    return-void
.end method

.method static encode(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p0, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1355
    instance-of v1, p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    if-eqz v1, :cond_1

    .line 1356
    check-cast p0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    .end local p0    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 1362
    :cond_0
    return-void

    .line 1358
    .restart local p0    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1359
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    goto :goto_0
.end method

.method static encode(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/CharSequence;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1366
    invoke-static {p0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HEADER_SEPERATOR:[B

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 1369
    :cond_0
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CRLF:[B

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 1372
    :cond_1
    return-void
.end method

.method public static encodeAscii(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)Z
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1375
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    if-eqz v0, :cond_0

    .line 1376
    check-cast p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    .end local p0    # "seq":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaderEntity;->encode(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    .line 1379
    :goto_0
    return v0

    .line 1378
    .restart local p0    # "seq":Ljava/lang/CharSequence;
    :cond_0
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->encodeAscii0(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    .line 1379
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static encodeAscii0(Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 1384
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1385
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1388
    return-void

    .line 1386
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 9
    .param p0, "name1"    # Ljava/lang/CharSequence;
    .param p1, "name2"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1301
    if-ne p0, p1, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return v4

    .line 1305
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v4, v5

    .line 1306
    goto :goto_0

    .line 1309
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1310
    .local v3, "nameLen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v3, v6, :cond_4

    move v4, v5

    .line 1311
    goto :goto_0

    .line 1314
    :cond_4
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 1315
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1316
    .local v0, "c1":C
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1317
    .local v1, "c2":C
    if-eq v0, v1, :cond_7

    .line 1318
    if-lt v0, v7, :cond_5

    if-gt v0, v8, :cond_5

    .line 1319
    add-int/lit8 v6, v0, 0x20

    int-to-char v0, v6

    .line 1321
    :cond_5
    if-lt v1, v7, :cond_6

    if-gt v1, v8, :cond_6

    .line 1322
    add-int/lit8 v6, v1, 0x20

    int-to-char v1, v6

    .line 1324
    :cond_6
    if-eq v0, v1, :cond_7

    move v4, v5

    .line 1325
    goto :goto_0

    .line 1314
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;)J
    .locals 6
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 957
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 959
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 966
    :cond_0
    return-wide v2

    .line 964
    :cond_1
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpHeaders;->getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I

    move-result v1

    int-to-long v2, v1

    .line 965
    .local v2, "webSocketContentLength":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 970
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v4, "header not found: Content-Length"

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J
    .locals 7
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # J

    .prologue
    .line 984
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 987
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 1001
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 988
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v1

    .line 989
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 995
    .end local v1    # "ignored":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpHeaders;->getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I

    move-result v4

    int-to-long v2, v4

    .line 996
    .local v2, "webSocketContentLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    move-wide p1, v2

    .line 997
    goto :goto_0
.end method

.method public static getDate(Lio/netty/handler/codec/http/HttpMessage;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1074
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Lio/netty/handler/codec/http/HttpMessage;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # Ljava/util/Date;

    .prologue
    .line 1083
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 857
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "header not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 859
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/util/Date;

    .prologue
    .line 878
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 886
    .end local p2    # "defaultValue":Ljava/util/Date;
    :goto_0
    return-object p2

    .line 884
    .restart local p2    # "defaultValue":Ljava/util/Date;
    :cond_0
    :try_start_0
    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "ignored":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;

    .prologue
    .line 866
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 631
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 654
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 638
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1042
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1050
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 758
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 760
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "header not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # I

    .prologue
    .line 781
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 789
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 787
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)I
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 745
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public static getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)I
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 769
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->getIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private static getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I
    .locals 5
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1010
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 1011
    .local v0, "h":Lio/netty/handler/codec/http/HttpHeaders;
    instance-of v3, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 1012
    check-cast v1, Lio/netty/handler/codec/http/HttpRequest;

    .line 1013
    .local v1, "req":Lio/netty/handler/codec/http/HttpRequest;
    sget-object v3, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpRequest;->getMethod()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1014
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY1_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1015
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_KEY2_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1016
    const/16 v3, 0x8

    .line 1028
    .end local v1    # "req":Lio/netty/handler/codec/http/HttpRequest;
    :goto_0
    return v3

    .line 1018
    :cond_0
    instance-of v3, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 1019
    check-cast v2, Lio/netty/handler/codec/http/HttpResponse;

    .line 1020
    .local v2, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    .line 1021
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_ORIGIN_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1022
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->SEC_WEBSOCKET_LOCATION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1023
    const/16 v3, 0x10

    goto :goto_0

    .line 1028
    .end local v2    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method static hash(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1333
    instance-of v3, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    if-eqz v3, :cond_1

    .line 1334
    check-cast p0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    .end local p0    # "name":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaderEntity;->hash()I

    move-result v1

    .line 1350
    .local v2, "i":I
    .restart local p0    # "name":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v1

    .line 1336
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 1337
    .local v1, "h":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-gez v2, :cond_2

    .line 1345
    if-gtz v1, :cond_0

    .line 1347
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_4

    .line 1348
    const v1, 0x7fffffff

    goto :goto_0

    .line 1338
    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1339
    .local v0, "c":C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 1340
    add-int/lit8 v3, v0, 0x20

    int-to-char v0, v3

    .line 1342
    :cond_3
    mul-int/lit8 v3, v1, 0x1f

    add-int v1, v3, v0

    .line 1337
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1350
    .end local v0    # "c":C
    :cond_4
    neg-int v1, v1

    goto :goto_0
.end method

.method public static is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 5
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1103
    instance-of v3, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-nez v3, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return v1

    .line 1108
    :cond_1
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpVersion;->compareTo(Lio/netty/handler/codec/http/HttpVersion;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1113
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1117
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1118
    goto :goto_0

    .line 1122
    :cond_2
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3, v4, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 2
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1293
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "connection":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    :cond_0
    :goto_0
    return v1

    .line 573
    :cond_1
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v2, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 576
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1265
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static newEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1395
    if-nez p0, :cond_0

    .line 1396
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newNameEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1406
    if-nez p0, :cond_0

    .line 1407
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->HEADER_SEPERATOR:[B

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static newValueEntity(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1417
    if-nez p0, :cond_0

    .line 1418
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1420
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CRLF:[B

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 731
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 732
    return-void
.end method

.method public static removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 725
    return-void
.end method

.method public static removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 5
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1269
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 1270
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1274
    .local v2, "valuesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1280
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1281
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 1275
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1276
    .local v0, "value":Ljava/lang/String;
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    invoke-static {v0, v3}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1277
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1283
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1131
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 1132
    return-void
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "set"    # Z

    .prologue
    .line 1142
    if-eqz p1, :cond_0

    .line 1143
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->CONTINUE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1147
    :goto_0
    return-void

    .line 1145
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->EXPECT_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public static setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "length"    # J

    .prologue
    .line 1035
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1036
    return-void
.end method

.method public static setDate(Lio/netty/handler/codec/http/HttpMessage;Ljava/util/Date;)V
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/util/Date;

    .prologue
    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1095
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->DATE_ENTITY:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 925
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Date;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 926
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 904
    if-eqz p2, :cond_0

    .line 905
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->get()Lio/netty/handler/codec/http/HttpHeaderDateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/netty/handler/codec/http/HttpHeaderDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Date;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 916
    return-void
.end method

.method public static setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 894
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->setDateHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/util/Date;)V

    .line 895
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 700
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 673
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 674
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 681
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 682
    return-void
.end method

.method public static setHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 661
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 662
    return-void
.end method

.method public static setHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 1064
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1065
    return-void
.end method

.method public static setHost(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->HOST_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 1058
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .prologue
    .line 805
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 806
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 820
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 821
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;I)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 797
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 798
    return-void
.end method

.method public static setIntHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/HttpMessage;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 813
    return-void
.end method

.method public static setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "keepAlive"    # Z

    .prologue
    .line 600
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 601
    .local v0, "h":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    if-eqz p1, :cond_0

    .line 603
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 614
    :goto_0
    return-void

    .line 605
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->CLOSE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 608
    :cond_1
    if-eqz p1, :cond_2

    .line 609
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaders;->KEEP_ALIVE_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 611
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CONNECTION_ENTITY:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public static setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 2
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    .line 1288
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->TRANSFER_ENCODING_ENTITY:Ljava/lang/CharSequence;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaders;->CHUNKED_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->addHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;Ljava/lang/Object;)V

    .line 1289
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaders;->CONTENT_LENGTH_ENTITY:Ljava/lang/CharSequence;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->removeHeader(Lio/netty/handler/codec/http/HttpMessage;Ljava/lang/CharSequence;)V

    .line 1290
    return-void
.end method

.method static validateHeaderName(Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "headerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 1156
    if-nez p0, :cond_0

    .line 1157
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Header names cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1160
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1179
    return-void

    .line 1162
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1165
    .local v0, "character":C
    const/16 v2, 0x7f

    if-le v0, v2, :cond_2

    .line 1166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1167
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Header name cannot contain non-ASCII characters: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1166
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1171
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 1160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1174
    :sswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Header name cannot contain the following prohibited characters: =,;: \\t\\r\\n\\v\\f: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1174
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1171
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method static validateHeaderValue(Ljava/lang/CharSequence;)V
    .locals 6
    .param p0, "headerValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1188
    if-nez p0, :cond_0

    .line 1189
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Header values cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1201
    :cond_0
    const/4 v2, 0x0

    .line 1205
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1252
    if-eqz v2, :cond_2

    .line 1253
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header value must not end with \'\\r\' or \'\\n\':"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1253
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1206
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1209
    .local v0, "character":C
    packed-switch v0, :pswitch_data_0

    .line 1219
    packed-switch v2, :pswitch_data_1

    .line 1205
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1211
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1212
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header value contains a prohibited character \'\\v\': "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1211
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :pswitch_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1215
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Header value contains a prohibited character \'\\f\': "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1214
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1221
    :pswitch_2
    packed-switch v0, :pswitch_data_2

    :pswitch_3
    goto :goto_1

    .line 1226
    :pswitch_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1223
    :pswitch_5
    const/4 v2, 0x1

    .line 1224
    goto :goto_1

    .line 1231
    :pswitch_6
    packed-switch v0, :pswitch_data_3

    .line 1236
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1237
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Only \'\\n\' is allowed after \'\\r\': "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1236
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1233
    :pswitch_7
    const/4 v2, 0x2

    .line 1234
    goto :goto_1

    .line 1241
    :pswitch_8
    sparse-switch v0, :sswitch_data_0

    .line 1246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1247
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Only \' \' and \'\\t\' are allowed after \'\\n\': "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1246
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1243
    :sswitch_0
    const/4 v2, 0x0

    .line 1244
    goto :goto_1

    .line 1256
    .end local v0    # "character":C
    :cond_2
    return-void

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1219
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 1221
    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 1231
    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_7
    .end packed-switch

    .line 1241
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .prologue
    .line 1545
    if-nez p1, :cond_0

    .line 1546
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "headers"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1548
    :cond_0
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1551
    return-object p0

    .line 1548
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1549
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 1536
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1510
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public abstract clear()Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1476
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCaseValue"    # Z

    .prologue
    .line 1674
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCaseValue"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1646
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1647
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return v2

    .line 1651
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1652
    .local v0, "v":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 1653
    invoke-static {v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 1654
    goto :goto_0

    .line 1657
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 1658
    goto :goto_0
.end method

.method public abstract entries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1438
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract names()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 1632
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
.end method

.method public set(Lio/netty/handler/codec/http/HttpHeaders;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .prologue
    .line 1610
    if-nez p1, :cond_0

    .line 1611
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "headers"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1613
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 1614
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1617
    return-object p0

    .line 1614
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1615
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .prologue
    .line 1601
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1573
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
.end method
