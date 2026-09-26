.class public abstract Lio/netty/handler/codec/http/HttpObjectDecoder;
.super Lio/netty/handler/codec/ReplayingDecoder;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/ReplayingDecoder",
        "<",
        "Lio/netty/handler/codec/http/HttpObjectDecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private chunkSize:J

.field private final chunkedSupported:Z

.field private contentLength:J

.field private final headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

.field private headerSize:I

.field private final lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

.field private final maxChunkSize:I

.field private final maxHeaderSize:I

.field private final maxInitialLineLength:I

.field private message:Lio/netty/handler/codec/http/HttpMessage;

.field private final seq:Lio/netty/util/internal/AppendableCharSequence;

.field protected final validateHeaders:Z


# direct methods
.method static synthetic $SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State()[I
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->$SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->values()[Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_1
    :try_start_1
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_2
    :try_start_2
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_3
    :try_start_3
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_4
    :try_start_4
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_5
    :try_start_5
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    :try_start_6
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_7
    :try_start_7
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_8
    :try_start_8
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_9
    :try_start_9
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_a
    :try_start_a
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_b
    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->$SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_b

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v1

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_3

    :catch_9
    move-exception v1

    goto :goto_2

    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lio/netty/handler/codec/http/HttpObjectDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2000

    .line 144
    const/16 v0, 0x1000

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    .line 145
    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z

    .prologue
    .line 152
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    .line 153
    return-void
.end method

.method protected constructor <init>(IIIZZ)V
    .locals 3
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z

    .prologue
    .line 162
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    .line 111
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->seq:Lio/netty/util/internal/AppendableCharSequence;

    .line 112
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    .line 113
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->seq:Lio/netty/util/internal/AppendableCharSequence;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;-><init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/util/internal/AppendableCharSequence;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    .line 118
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 164
    if-gtz p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxInitialLineLength must be a positive integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    if-gtz p2, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxHeaderSize must be a positive integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    if-gtz p3, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxChunkSize must be a positive integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_2
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxInitialLineLength:I

    .line 180
    iput p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxHeaderSize:I

    .line 181
    iput p3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    .line 182
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    .line 183
    iput-boolean p5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    .line 184
    return-void
.end method

.method static synthetic access$0(Lio/netty/handler/codec/http/HttpObjectDecoder;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    return-void
.end method

.method static synthetic access$1(Lio/netty/handler/codec/http/HttpObjectDecoder;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    return v0
.end method

.method static synthetic access$2(Lio/netty/handler/codec/http/HttpObjectDecoder;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxHeaderSize:I

    return v0
.end method

.method static synthetic access$3(Lio/netty/handler/codec/http/HttpObjectDecoder;)I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxInitialLineLength:I

    return v0
.end method

.method private contentLength()J
    .locals 4

    .prologue
    .line 524
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 527
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    return-wide v0
.end method

.method private static findEndOfString(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/CharSequence;

    .prologue
    .line 667
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .local v0, "result":I
    :goto_0
    if-gtz v0, :cond_1

    .line 672
    :cond_0
    return v0

    .line 668
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static findNonWhitespace(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 647
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 652
    :cond_0
    return v0

    .line 648
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static findWhitespace(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 657
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 662
    :cond_0
    return v0

    .line 658
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getChunkSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 572
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 573
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 581
    :goto_1
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 574
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 575
    .local v0, "c":C
    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 576
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 577
    goto :goto_1

    .line 573
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 458
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 459
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 460
    .local v0, "chunk":Lio/netty/handler/codec/http/HttpContent;
    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/HttpContent;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 462
    return-object v0
.end method

.method private invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 444
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 453
    .local v0, "ret":Lio/netty/handler/codec/http/HttpMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 454
    return-object v0

    .line 448
    .end local v0    # "ret":Lio/netty/handler/codec/http/HttpMessage;
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 449
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {p1}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    goto :goto_0
.end method

.method private readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 12
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 477
    iput v10, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    .line 478
    iget-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 479
    .local v4, "message":Lio/netty/handler/codec/http/HttpMessage;
    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    .line 481
    .local v2, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    iget-object v8, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v8, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v3

    .line 482
    .local v3, "line":Lio/netty/util/internal/AppendableCharSequence;
    const/4 v5, 0x0

    .line 483
    .local v5, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 484
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v3}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 485
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpHeaders;->clear()Lio/netty/handler/codec/http/HttpHeaders;

    .line 487
    :cond_0
    invoke-virtual {v3, v10}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v0

    .line 488
    .local v0, "firstChar":C
    if-eqz v5, :cond_3

    if-eq v0, v11, :cond_1

    const/16 v8, 0x9

    if-ne v0, v8, :cond_3

    .line 489
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 499
    :goto_0
    iget-object v8, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v8, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v3

    .line 500
    invoke-virtual {v3}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v8

    .line 486
    if-gtz v8, :cond_0

    .line 503
    if-eqz v5, :cond_2

    .line 504
    invoke-virtual {v2, v5, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 510
    .end local v0    # "firstChar":C
    :cond_2
    invoke-virtual {p0, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 511
    invoke-static {v4}, Lio/netty/handler/codec/http/HttpHeaders;->removeTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)V

    .line 512
    sget-object v6, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 520
    .local v6, "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :goto_1
    return-object v6

    .line 491
    .end local v6    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .restart local v0    # "firstChar":C
    :cond_3
    if-eqz v5, :cond_4

    .line 492
    invoke-virtual {v2, v5, v7}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 494
    :cond_4
    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "header":[Ljava/lang/String;
    aget-object v5, v1, v10

    .line 496
    const/4 v8, 0x1

    aget-object v7, v1, v8

    goto :goto_0

    .line 513
    .end local v0    # "firstChar":C
    .end local v1    # "header":[Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Lio/netty/handler/codec/http/HttpHeaders;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 514
    sget-object v6, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 515
    .restart local v6    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    goto :goto_1

    .end local v6    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :cond_6
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    .line 516
    sget-object v6, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 517
    .restart local v6    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    goto :goto_1

    .line 518
    .end local v6    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :cond_7
    sget-object v6, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .restart local v6    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    goto :goto_1
.end method

.method private readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 12
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    const/4 v11, 0x0

    .line 531
    iput v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerSize:I

    .line 532
    iget-object v9, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v9, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v5

    .line 533
    .local v5, "line":Lio/netty/util/internal/AppendableCharSequence;
    const/4 v3, 0x0

    .line 534
    .local v3, "lastHeader":Ljava/lang/String;
    invoke-virtual {v5}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 535
    new-instance v8, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v9, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    iget-boolean v10, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v8, v9, v10}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    .line 537
    .local v8, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :cond_0
    invoke-virtual {v5, v11}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v1

    .line 538
    .local v1, "firstChar":C
    if-eqz v3, :cond_3

    const/16 v9, 0x20

    if-eq v1, v9, :cond_1

    const/16 v9, 0x9

    if-ne v1, v9, :cond_3

    .line 539
    :cond_1
    invoke-interface {v8}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v9

    invoke-virtual {v9, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 540
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 541
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 542
    .local v4, "lastPos":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, "newString":Ljava/lang/String;
    invoke-interface {v0, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v0    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "lastPos":I
    .end local v7    # "newString":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v9, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v9, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v5

    .line 559
    invoke-virtual {v5}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v9

    .line 536
    if-gtz v9, :cond_0

    .line 564
    .end local v1    # "firstChar":C
    .end local v8    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :goto_1
    return-object v8

    .line 548
    .restart local v1    # "firstChar":C
    .restart local v8    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :cond_3
    invoke-static {v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "header":[Ljava/lang/String;
    aget-object v6, v2, v11

    .line 550
    .local v6, "name":Ljava/lang/String;
    const-string v9, "Content-Length"

    invoke-static {v6, v9}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 551
    const-string v9, "Transfer-Encoding"

    invoke-static {v6, v9}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 552
    const-string v9, "Trailer"

    invoke-static {v6, v9}, Lio/netty/handler/codec/http/HttpHeaders;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 553
    invoke-interface {v8}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v9, v6, v10}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 555
    :cond_4
    move-object v3, v6

    goto :goto_0

    .line 564
    .end local v1    # "firstChar":C
    .end local v2    # "header":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :cond_5
    sget-object v8, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    goto :goto_1
.end method

.method private reset()V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 430
    .local v0, "message":Lio/netty/handler/codec/http/HttpMessage;
    const/4 v2, 0x0

    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 431
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 432
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 433
    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 434
    .local v1, "res":Lio/netty/handler/codec/http/HttpResponse;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    .line 435
    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 441
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static skipControlCharacters(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 467
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v1

    int-to-char v0, v1

    .line 468
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 474
    return-void
.end method

.method private static splitHeader(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;

    .prologue
    const/16 v11, 0x3a

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 608
    invoke-virtual {p0}, Lio/netty/util/internal/AppendableCharSequence;->length()I

    move-result v2

    .line 615
    .local v2, "length":I
    invoke-static {p0, v9}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 616
    .local v4, "nameStart":I
    move v3, v4

    .local v3, "nameEnd":I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 623
    :cond_0
    move v1, v3

    .local v1, "colonEnd":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 630
    :goto_2
    invoke-static {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 631
    .local v6, "valueStart":I
    if-ne v6, v2, :cond_4

    .line 632
    new-array v7, v8, [Ljava/lang/String;

    .line 633
    invoke-virtual {p0, v4, v3}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 634
    const-string v8, ""

    aput-object v8, v7, v10

    .line 639
    :goto_3
    return-object v7

    .line 617
    .end local v1    # "colonEnd":I
    .end local v6    # "valueStart":I
    :cond_1
    invoke-virtual {p0, v3}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v0

    .line 618
    .local v0, "ch":C
    if-eq v0, v11, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 616
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 624
    .end local v0    # "ch":C
    .restart local v1    # "colonEnd":I
    :cond_2
    invoke-virtual {p0, v1}, Lio/netty/util/internal/AppendableCharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_3

    .line 625
    add-int/lit8 v1, v1, 0x1

    .line 626
    goto :goto_2

    .line 623
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 638
    .restart local v6    # "valueStart":I
    :cond_4
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 639
    .local v5, "valueEnd":I
    new-array v7, v8, [Ljava/lang/String;

    .line 640
    invoke-virtual {p0, v4, v3}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 641
    invoke-virtual {p0, v6, v5}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    goto :goto_3
.end method

.method private static splitInitialLine(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;
    .locals 9
    .param p0, "sb"    # Lio/netty/util/internal/AppendableCharSequence;

    .prologue
    const/4 v8, 0x0

    .line 592
    invoke-static {p0, v8}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 593
    .local v1, "aStart":I
    invoke-static {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findWhitespace(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 595
    .local v0, "aEnd":I
    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 596
    .local v3, "bStart":I
    invoke-static {p0, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findWhitespace(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 598
    .local v2, "bEnd":I
    invoke-static {p0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 599
    .local v5, "cStart":I
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 601
    .local v4, "cEnd":I
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    .line 602
    invoke-virtual {p0, v1, v0}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x1

    .line 603
    invoke-virtual {p0, v3, v2}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x2

    .line 604
    if-ge v5, v4, :cond_0

    invoke-virtual {p0, v5, v4}, Lio/netty/util/internal/AppendableCharSequence;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_0
    aput-object v6, v7, v8

    .line 601
    return-object v7

    .line 604
    :cond_0
    const-string v6, ""

    goto :goto_0
.end method


# virtual methods
.method protected abstract createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
.end method

.method protected abstract createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 22
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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
    .line 188
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lio/netty/handler/codec/http/HttpObjectDecoder;->$SWITCH_TABLE$io$netty$handler$codec$http$HttpObjectDecoder$State()[I

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->state()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual/range {v18 .. v18}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v18

    aget v18, v19, v18

    packed-switch v18, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 191
    :pswitch_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->skipControlCharacters(Lio/netty/buffer/ByteBuf;)V

    .line 192
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_INITIAL:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint()V

    .line 198
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitInitialLine(Lio/netty/util/internal/AppendableCharSequence;)[Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "initialLine":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 201
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 208
    .end local v10    # "initialLine":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 209
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 194
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint()V

    .line 195
    throw v18

    .line 205
    .restart local v10    # "initialLine":[Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 206
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 213
    .end local v10    # "initialLine":[Ljava/lang/String;
    :pswitch_2
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v13

    .line 214
    .local v13, "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 215
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_3

    .line 216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 217
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Chunked messages not supported"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 249
    .end local v13    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :catch_1
    move-exception v7

    .line 250
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 220
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v13    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 223
    :cond_3
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v18, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto/16 :goto_0

    .line 230
    :cond_4
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v8

    .line 231
    .local v8, "contentLength":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_5

    const-wide/16 v18, -0x1

    cmp-long v18, v8, v18

    if-nez v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v18, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto/16 :goto_0

    .line 238
    :cond_6
    sget-boolean v18, Lio/netty/handler/codec/http/HttpObjectDecoder;->$assertionsDisabled:Z

    if-nez v18, :cond_7

    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, v18

    if-eq v13, v0, :cond_7

    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, v18

    if-eq v13, v0, :cond_7

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 240
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, v18

    if-ne v13, v0, :cond_0

    .line 244
    move-object/from16 v0, p0

    iput-wide v8, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 255
    .end local v8    # "contentLength":J
    .end local v13    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 256
    .local v16, "toRead":I
    if-lez v16, :cond_9

    .line 257
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 258
    .local v6, "content":Lio/netty/buffer/ByteBuf;
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 259
    new-instance v18, Lio/netty/handler/codec/http/DefaultHttpContent;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 262
    :cond_8
    new-instance v18, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto/16 :goto_0

    .line 265
    .end local v6    # "content":Lio/netty/buffer/ByteBuf;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v18

    if-nez v18, :cond_0

    .line 267
    sget-object v18, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto/16 :goto_0

    .line 273
    .end local v16    # "toRead":I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v14

    .line 281
    .local v14, "readLimit":I
    if-eqz v14, :cond_0

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 286
    .restart local v16    # "toRead":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_a

    .line 287
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    .line 289
    :cond_a
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 290
    .restart local v6    # "content":Lio/netty/buffer/ByteBuf;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 292
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 294
    new-instance v18, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    goto/16 :goto_0

    .line 297
    :cond_b
    new-instance v18, Lio/netty/handler/codec/http/DefaultHttpContent;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 306
    .end local v6    # "content":Lio/netty/buffer/ByteBuf;
    .end local v14    # "readLimit":I
    .end local v16    # "toRead":I
    :pswitch_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v11

    .line 307
    .local v11, "line":Lio/netty/util/internal/AppendableCharSequence;
    invoke-virtual {v11}, Lio/netty/util/internal/AppendableCharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lio/netty/handler/codec/http/HttpObjectDecoder;->getChunkSize(Ljava/lang/String;)I

    move-result v5

    .line 308
    .local v5, "chunkSize":I
    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 309
    if-nez v5, :cond_c

    .line 310
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 315
    .end local v5    # "chunkSize":I
    .end local v11    # "line":Lio/netty/util/internal/AppendableCharSequence;
    :catch_2
    move-exception v7

    .line 316
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 313
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "chunkSize":I
    .restart local v11    # "line":Lio/netty/util/internal/AppendableCharSequence;
    :cond_c
    :try_start_6
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 320
    .end local v5    # "chunkSize":I
    .end local v11    # "line":Lio/netty/util/internal/AppendableCharSequence;
    :pswitch_6
    sget-boolean v18, Lio/netty/handler/codec/http/HttpObjectDecoder;->$assertionsDisabled:Z

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x7fffffff

    cmp-long v18, v18, v20

    if-lez v18, :cond_d

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 321
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 323
    .restart local v16    # "toRead":I
    new-instance v4, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lio/netty/buffer/ByteBufUtil;->readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 324
    .local v4, "chunk":Lio/netty/handler/codec/http/HttpContent;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 326
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    move-object/from16 v0, p0

    iget-wide v0, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_0

    .line 330
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    .line 337
    .end local v4    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    .end local v16    # "toRead":I
    :cond_e
    :goto_1
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v12

    .line 338
    .local v12, "next":B
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v12, v0, :cond_f

    .line 339
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 340
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 343
    :cond_f
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v12, v0, :cond_10

    .line 344
    sget-object v18, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 347
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->checkpoint()V

    goto :goto_1

    .line 352
    .end local v12    # "next":B
    :pswitch_8
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v17

    .line 353
    .local v17, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 356
    .end local v17    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :catch_3
    move-exception v7

    .line 357
    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 362
    .end local v7    # "e":Ljava/lang/Exception;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto/16 :goto_0

    .line 366
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v15

    .line 367
    .local v15, "readableBytes":I
    if-lez v15, :cond_0

    .line 372
    invoke-virtual/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->actualReadableBytes()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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
    .line 381
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 384
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const/4 v0, 0x1

    .line 397
    .local v0, "prematureClosure":Z
    :goto_0
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    .line 399
    if-nez v0, :cond_0

    .line 400
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v0    # "prematureClosure":Z
    :cond_0
    return-void

    .line 395
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "prematureClosure":Z
    :goto_1
    goto :goto_0

    .end local v0    # "prematureClosure":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 6
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    instance-of v4, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 407
    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 408
    .local v1, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    .line 415
    .local v0, "code":I
    const/16 v4, 0x64

    if-lt v0, v4, :cond_2

    const/16 v4, 0xc8

    if-ge v0, v4, :cond_2

    .line 417
    const/16 v4, 0x65

    if-ne v0, v4, :cond_1

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    const-string v5, "Sec-WebSocket-Accept"

    invoke-virtual {v4, v5}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 425
    .end local v0    # "code":I
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :cond_0
    :goto_0
    return v2

    .restart local v0    # "code":I
    .restart local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :cond_1
    move v2, v3

    .line 417
    goto :goto_0

    .line 420
    :cond_2
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 422
    goto :goto_0

    .line 420
    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method
