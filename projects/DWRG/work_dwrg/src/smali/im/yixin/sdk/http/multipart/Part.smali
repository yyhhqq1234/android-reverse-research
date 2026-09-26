.class public abstract Lim/yixin/sdk/http/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------314159265358979323846"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->BOUNDARY_BYTES:[B

    .line 44
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 50
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    .line 56
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->QUOTE_BYTES:[B

    .line 62
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->EXTRA_BYTES:[B

    .line 68
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 74
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 80
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->CHARSET_BYTES:[B

    .line 87
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 86
    sput-object v0, Lim/yixin/sdk/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "----------------314159265358979323846"

    return-object v0
.end method

.method public static getLengthOfParts([Lim/yixin/sdk/http/multipart/Part;)J
    .locals 2
    .param p0, "parts"    # [Lim/yixin/sdk/http/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->getLengthOfParts([Lim/yixin/sdk/http/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lim/yixin/sdk/http/multipart/Part;[B)J
    .locals 7
    .param p0, "parts"    # [Lim/yixin/sdk/http/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    if-nez p0, :cond_0

    .line 427
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 429
    :cond_0
    const-wide/16 v3, 0x0

    .line 430
    .local v3, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-lt v0, v5, :cond_1

    .line 439
    sget-object v5, Lim/yixin/sdk/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 440
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 441
    sget-object v5, Lim/yixin/sdk/http/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 442
    sget-object v5, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, v3

    .line 443
    :goto_1
    return-wide v5

    .line 432
    :cond_1
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lim/yixin/sdk/http/multipart/Part;->setPartBoundary([B)V

    .line 433
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lim/yixin/sdk/http/multipart/Part;->length()J

    move-result-wide v1

    .line 434
    .local v1, "l":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    .line 435
    const-wide/16 v5, -0x1

    goto :goto_1

    .line 437
    :cond_2
    add-long/2addr v3, v1

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lim/yixin/sdk/http/multipart/Part;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lim/yixin/sdk/http/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lim/yixin/sdk/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lim/yixin/sdk/http/multipart/Part;[B)V

    .line 360
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lim/yixin/sdk/http/multipart/Part;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lim/yixin/sdk/http/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 383
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_3

    .line 390
    sget-object v1, Lim/yixin/sdk/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 391
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 392
    sget-object v1, Lim/yixin/sdk/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 393
    sget-object v1, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 394
    return-void

    .line 387
    :cond_3
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lim/yixin/sdk/http/multipart/Part;->setPartBoundary([B)V

    .line 388
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lim/yixin/sdk/http/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lim/yixin/sdk/http/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 324
    const-wide/16 v1, -0x1

    .line 333
    :goto_0
    return-wide v1

    .line 326
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 327
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 328
    invoke-virtual {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 329
    invoke-virtual {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 330
    invoke-virtual {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 331
    invoke-virtual {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 332
    invoke-virtual {p0, v0}, Lim/yixin/sdk/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 333
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 305
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 306
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 307
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 308
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 309
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 310
    invoke-virtual {p0, p1}, Lim/yixin/sdk/http/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 311
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 218
    sget-object v2, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 219
    sget-object v2, Lim/yixin/sdk/http/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 221
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 223
    sget-object v2, Lim/yixin/sdk/http/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 224
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 227
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 203
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 204
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 291
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 258
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 186
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 187
    sget-object v0, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 188
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 241
    sget-object v1, Lim/yixin/sdk/http/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 242
    sget-object v1, Lim/yixin/sdk/http/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 243
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 245
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    .prologue
    .line 161
    iput-object p1, p0, Lim/yixin/sdk/http/multipart/Part;->boundaryBytes:[B

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Lim/yixin/sdk/http/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
