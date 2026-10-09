.class final Lcom/squareup/wire/WireInput;
.super Ljava/lang/Object;
.source "WireInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/WireInput$1;
    }
.end annotation


# static fields
.field private static final ENCOUNTERED_A_MALFORMED_VARINT:Ljava/lang/String; = "WireInput encountered a malformed varint."

.field private static final ENCOUNTERED_A_NEGATIVE_SIZE:Ljava/lang/String; = "Encountered a negative size"

.field private static final INPUT_ENDED_UNEXPECTEDLY:Ljava/lang/String; = "The input ended unexpectedly in the middle of a field"

.field private static final PROTOCOL_MESSAGE_CONTAINED_AN_INVALID_TAG_ZERO:Ljava/lang/String; = "Protocol message contained an invalid tag (zero)."

.field private static final PROTOCOL_MESSAGE_END_GROUP_TAG_DID_NOT_MATCH_EXPECTED_TAG:Ljava/lang/String; = "Protocol message end-group tag did not match expected tag."

.field public static final RECURSION_LIMIT:I = 0x40

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private currentLimit:I

.field private lastTag:I

.field private pos:I

.field public recursionDepth:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/WireInput;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Lokio/BufferedSource;)V
    .locals 1
    .param p1, "source"    # Lokio/BufferedSource;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 253
    const v0, 0x7fffffff

    iput v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 265
    iput-object p1, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    .line 266
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 225
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 239
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private isAtEnd()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    goto :goto_0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/squareup/wire/WireInput;
    .locals 2
    .param p0, "source"    # Ljava/io/InputStream;

    .prologue
    .line 79
    new-instance v0, Lcom/squareup/wire/WireInput;

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance(Lokio/Source;)Lcom/squareup/wire/WireInput;
    .locals 2
    .param p0, "source"    # Lokio/Source;

    .prologue
    .line 83
    new-instance v0, Lcom/squareup/wire/WireInput;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/squareup/wire/WireInput;
    .locals 2
    .param p0, "buf"    # [B

    .prologue
    .line 68
    new-instance v0, Lcom/squareup/wire/WireInput;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance([BII)Lcom/squareup/wire/WireInput;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 75
    new-instance v0, Lcom/squareup/wire/WireInput;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method private skip(J)V
    .locals 3
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 348
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    .line 349
    return-void
.end method

.method private skipField(I)Z
    .locals 4
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 329
    sget-object v1, Lcom/squareup/wire/WireInput$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-static {p1}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :pswitch_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint64()J

    .line 339
    :goto_0
    return v0

    .line 331
    :pswitch_1
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readFixed32()I

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readFixed64()J

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/squareup/wire/WireInput;->skip(J)V

    goto :goto_0

    .line 335
    :pswitch_4
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->skipGroup()V

    .line 336
    and-int/lit8 v1, p1, -0x8

    sget-object v2, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->value()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    goto :goto_0

    .line 339
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 294
    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    if-gez p1, :cond_0

    .line 276
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Encountered a negative size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr p1, v1

    .line 279
    iget v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 280
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 281
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_1
    iput p1, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 284
    return v0
.end method

.method public readBytes()Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 133
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public readBytes(I)Lokio/ByteString;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 139
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 205
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 211
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 123
    .local v0, "count":I
    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 124
    iget-object v1, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    sget-object v4, Lcom/squareup/wire/WireInput;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v2, v3, v4}, Lokio/BufferedSource;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iput v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    .line 104
    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    .line 100
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    goto :goto_0
.end method

.method public readVarint32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 148
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    .line 149
    .local v2, "tmp":B
    if-ltz v2, :cond_0

    move v3, v2

    .end local v2    # "tmp":B
    .local v3, "tmp":B
    move v1, v2

    .line 183
    :goto_0
    return v1

    .line 152
    .end local v3    # "tmp":B
    .restart local v2    # "tmp":B
    :cond_0
    and-int/lit8 v1, v2, 0x7f

    .line 153
    .local v1, "result":I
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 154
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_2

    .line 155
    shl-int/lit8 v4, v2, 0x7

    or-int/2addr v1, v4

    :cond_1
    :goto_1
    move v3, v2

    .line 183
    .end local v2    # "tmp":B
    .restart local v3    # "tmp":B
    goto :goto_0

    .line 157
    .end local v3    # "tmp":B
    .restart local v2    # "tmp":B
    :cond_2
    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v1, v4

    .line 158
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 159
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_3

    .line 160
    shl-int/lit8 v4, v2, 0xe

    or-int/2addr v1, v4

    goto :goto_1

    .line 162
    :cond_3
    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v1, v4

    .line 163
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 164
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_4

    .line 165
    shl-int/lit8 v4, v2, 0x15

    or-int/2addr v1, v4

    goto :goto_1

    .line 167
    :cond_4
    and-int/lit8 v4, v2, 0x7f

    shl-int/lit8 v4, v4, 0x15

    or-int/2addr v1, v4

    .line 168
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 169
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v2

    shl-int/lit8 v4, v2, 0x1c

    or-int/2addr v1, v4

    .line 170
    if-gez v2, :cond_1

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_6

    .line 173
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 174
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_5

    move v3, v2

    .line 175
    .end local v2    # "tmp":B
    .restart local v3    # "tmp":B
    goto :goto_0

    .line 172
    .end local v3    # "tmp":B
    .restart local v2    # "tmp":B
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 178
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "WireInput encountered a malformed varint."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public readVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 190
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 191
    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 192
    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v0

    .line 193
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 194
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 195
    return-wide v2

    .line 197
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 198
    goto :goto_0

    .line 199
    .end local v0    # "b":B
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "WireInput encountered a malformed varint."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public skipGroup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v0

    .line 321
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/squareup/wire/WireInput;->skipField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :cond_1
    return-void
.end method
