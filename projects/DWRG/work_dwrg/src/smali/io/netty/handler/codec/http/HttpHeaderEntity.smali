.class final Lio/netty/handler/codec/http/HttpHeaderEntity;
.super Ljava/lang/Object;
.source "HttpHeaderEntity.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private final bytes:[B

.field private final hash:I

.field private final name:Ljava/lang/String;

.field private final separatorLen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;[B)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "separator"    # [B

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->name:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lio/netty/handler/codec/http/HttpHeaders;->hash(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->hash:I

    .line 35
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 36
    .local v0, "nameBytes":[B
    if-nez p2, :cond_0

    .line 37
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    .line 38
    iput v4, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    array-length v1, p2

    iput v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    .line 41
    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    .line 42
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v2, v0

    array-length v3, p2

    invoke-static {p2, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method encode(Lio/netty/buffer/ByteBuf;)Z
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 75
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 76
    iget v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hash()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->hash:I

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->separatorLen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 66
    new-instance v0, Lio/netty/handler/codec/http/HttpHeaderEntity;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpHeaderEntity;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpHeaderEntity;->name:Ljava/lang/String;

    return-object v0
.end method
