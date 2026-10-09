.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I = null

.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode()[I
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 68
    const-string v2, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 67
    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 71
    const-string v2, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 70
    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 73
    const-string v2, "ISO-8859-1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 81
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 82
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 83
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 84
    .local v1, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 85
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 90
    return-void

    .line 86
    :cond_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 18
    .param p0, "mode"    # I
    .param p1, "codewords"    # [I
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "codeIndex"    # I
    .param p4, "result"    # Ljava/lang/StringBuilder;

    .prologue
    .line 479
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 480
    .local v7, "decodedBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 481
    .local v5, "count":I
    const-wide/16 v12, 0x0

    .line 482
    .local v12, "value":J
    const/4 v8, 0x0

    .line 484
    .local v8, "end":Z
    sparse-switch p0, :sswitch_data_0

    .line 571
    :cond_0
    :goto_0
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    return p3

    .line 489
    :sswitch_0
    const/4 v14, 0x6

    new-array v2, v14, [I

    .line 490
    .local v2, "byteCompactedCodewords":[I
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v11, p1, p3

    .local v11, "nextCode":I
    move/from16 p3, v4

    .line 491
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_1
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_1

    if-eqz v8, :cond_3

    .line 523
    :cond_1
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    const/16 v14, 0x384

    if-ge v11, v14, :cond_2

    .line 524
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .local v6, "count":I
    aput v11, v2, v5

    move v5, v6

    .line 530
    .end local v6    # "count":I
    .restart local v5    # "count":I
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_0

    .line 531
    aget v14, v2, v9

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 492
    .end local v9    # "i":I
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "count":I
    .restart local v6    # "count":I
    aput v11, v2, v5

    .line 494
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    .line 495
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v11, p1, p3

    .line 497
    sparse-switch v11, :sswitch_data_1

    .line 509
    rem-int/lit8 v14, v6, 0x5

    if-nez v14, :cond_9

    if-lez v6, :cond_9

    .line 512
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    const/4 v14, 0x6

    if-lt v10, v14, :cond_4

    .line 515
    const-wide/16 v12, 0x0

    .line 516
    const/4 v5, 0x0

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_1

    .line 505
    .end local v5    # "count":I
    .end local v10    # "j":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    :sswitch_1
    add-int/lit8 p3, v4, -0x1

    .line 506
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    move v5, v6

    .line 507
    .end local v6    # "count":I
    .restart local v5    # "count":I
    goto :goto_1

    .line 513
    .end local v5    # "count":I
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v10    # "j":I
    :cond_4
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 512
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 540
    .end local v2    # "byteCompactedCodewords":[I
    .end local v4    # "codeIndex":I
    .end local v6    # "count":I
    .end local v10    # "j":I
    .end local v11    # "nextCode":I
    .restart local v5    # "count":I
    .restart local p3    # "codeIndex":I
    :cond_5
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    aget v3, p1, p3

    .line 541
    .local v3, "code":I
    const/16 v14, 0x384

    if-ge v3, v14, :cond_7

    .line 542
    add-int/lit8 v5, v5, 0x1

    .line 544
    const-wide/16 v14, 0x384

    mul-long/2addr v14, v12

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v12, v14, v16

    move/from16 p3, v4

    .line 559
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    :goto_4
    rem-int/lit8 v14, v5, 0x5

    if-nez v14, :cond_6

    if-lez v5, :cond_6

    .line 562
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    const/4 v14, 0x6

    if-lt v10, v14, :cond_8

    .line 565
    const-wide/16 v12, 0x0

    .line 566
    const/4 v5, 0x0

    .line 539
    .end local v3    # "code":I
    .end local v10    # "j":I
    :cond_6
    :sswitch_2
    const/4 v14, 0x0

    aget v14, p1, v14

    move/from16 v0, p3

    if-ge v0, v14, :cond_0

    if-eqz v8, :cond_5

    goto/16 :goto_0

    .line 546
    .end local p3    # "codeIndex":I
    .restart local v3    # "code":I
    .restart local v4    # "codeIndex":I
    :cond_7
    sparse-switch v3, :sswitch_data_2

    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto :goto_4

    .line 554
    .end local p3    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :sswitch_3
    add-int/lit8 p3, v4, -0x1

    .line 555
    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    const/4 v8, 0x1

    goto :goto_4

    .line 563
    .restart local v10    # "j":I
    :cond_8
    rsub-int/lit8 v14, v10, 0x5

    mul-int/lit8 v14, v14, 0x8

    shr-long v14, v12, v14

    long-to-int v14, v14

    int-to-byte v14, v14

    invoke-virtual {v7, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 562
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v3    # "code":I
    .end local v5    # "count":I
    .end local v10    # "j":I
    .end local p3    # "codeIndex":I
    .restart local v2    # "byteCompactedCodewords":[I
    .restart local v4    # "codeIndex":I
    .restart local v6    # "count":I
    .restart local v11    # "nextCode":I
    :cond_9
    move v5, v6

    .end local v6    # "count":I
    .restart local v5    # "count":I
    move/from16 p3, v4

    .end local v4    # "codeIndex":I
    .restart local p3    # "codeIndex":I
    goto/16 :goto_1

    .line 484
    :sswitch_data_0
    .sparse-switch
        0x385 -> :sswitch_0
        0x39c -> :sswitch_2
    .end sparse-switch

    .line 497
    :sswitch_data_1
    .sparse-switch
        0x384 -> :sswitch_1
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch

    .line 546
    :sswitch_data_2
    .sparse-switch
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
        0x386 -> :sswitch_3
        0x39a -> :sswitch_3
        0x39b -> :sswitch_3
        0x39c -> :sswitch_3
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 10
    .param p0, "codewords"    # [I
    .param p1, "ecLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v6, "result":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    .line 99
    .local v5, "encoding":Ljava/nio/charset/Charset;
    const/4 v2, 0x1

    .line 100
    .local v2, "codeIndex":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .local v3, "codeIndex":I
    aget v1, p0, v2

    .line 101
    .local v1, "code":I
    new-instance v7, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v7}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v7, "resultMetadata":Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move v2, v3

    .line 102
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :goto_0
    const/4 v8, 0x0

    aget v8, p0, v8

    if-lt v2, v8, :cond_0

    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 152
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 103
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 141
    add-int/lit8 v2, v2, -0x1

    .line 142
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 145
    :goto_1
    array-length v8, p0

    if-ge v2, v8, :cond_1

    .line 146
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v1, p0, v2

    move v2, v3

    .line 147
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_0

    .line 105
    :sswitch_0
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 106
    goto :goto_1

    .line 109
    :sswitch_1
    invoke-static {v1, p0, v5, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    .line 110
    goto :goto_1

    .line 112
    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v8, p0, v2

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 113
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 115
    :sswitch_3
    invoke-static {p0, v2, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    .line 116
    goto :goto_1

    .line 119
    :sswitch_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local v3    # "codeIndex":I
    aget v8, p0, v2

    invoke-static {v8}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    .line 120
    .local v0, "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    invoke-virtual {v0}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    move v2, v3

    .line 121
    .end local v3    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    goto :goto_1

    .line 124
    .end local v0    # "charsetECI":Lcom/google/zxing/common/CharacterSetECI;
    :sswitch_5
    add-int/lit8 v2, v2, 0x2

    .line 125
    goto :goto_1

    .line 128
    :sswitch_6
    add-int/lit8 v2, v2, 0x1

    .line 129
    goto :goto_1

    .line 131
    :sswitch_7
    invoke-static {p0, v2, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    .line 132
    goto :goto_1

    .line 136
    :sswitch_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 148
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8

    .line 154
    :cond_2
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v9, v8, v9, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 155
    .local v4, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v4, v7}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 156
    return-object v4

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_3
        0x391 -> :sswitch_2
        0x39a -> :sswitch_8
        0x39b -> :sswitch_8
        0x39c -> :sswitch_1
        0x39d -> :sswitch_6
        0x39e -> :sswitch_5
        0x39f -> :sswitch_4
        0x3a0 -> :sswitch_7
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .param p0, "codewords"    # [I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 666
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 667
    .local v1, "result":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 670
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "resultString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 672
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 668
    .end local v2    # "resultString":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .restart local v2    # "resultString":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "resultMetadata"    # Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 161
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_0

    .line 163
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 165
    :cond_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 166
    .local v8, "segmentIndexArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v9, 0x2

    if-lt v7, v9, :cond_1

    .line 170
    const/4 v9, 0x2

    .line 169
    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v6, "fileId":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 176
    aget v9, p0, p1

    packed-switch v9, :pswitch_data_0

    .line 207
    :goto_1
    return p1

    .line 167
    .end local v6    # "fileId":Ljava/lang/StringBuilder;
    :cond_1
    aget v9, p0, p1

    aput v9, v8, v7

    .line 166
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 178
    .restart local v6    # "fileId":Ljava/lang/StringBuilder;
    :pswitch_0
    add-int/lit8 p1, p1, 0x1

    .line 179
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .line 180
    .local v0, "additionalOptionCodeWords":[I
    const/4 v1, 0x0

    .line 182
    .local v1, "additionalOptionCodeWordsIndex":I
    const/4 v5, 0x0

    .line 183
    .local v5, "end":Z
    :goto_2
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_2

    if-eqz v5, :cond_3

    .line 199
    :cond_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_1

    .line 184
    :cond_3
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v4, "codeIndex":I
    aget v3, p0, p1

    .line 185
    .local v3, "code":I
    const/16 v9, 0x384

    if-ge v3, v9, :cond_4

    .line 186
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "additionalOptionCodeWordsIndex":I
    .local v2, "additionalOptionCodeWordsIndex":I
    aput v3, v0, v1

    move v1, v2

    .end local v2    # "additionalOptionCodeWordsIndex":I
    .restart local v1    # "additionalOptionCodeWordsIndex":I
    move p1, v4

    .line 187
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_2

    .line 188
    .end local p1    # "codeIndex":I
    .restart local v4    # "codeIndex":I
    :cond_4
    packed-switch v3, :pswitch_data_1

    .line 195
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 190
    :pswitch_1
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 191
    add-int/lit8 p1, v4, 0x1

    .line 192
    .end local v4    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v5, 0x1

    .line 193
    goto :goto_2

    .line 202
    .end local v0    # "additionalOptionCodeWords":[I
    .end local v1    # "additionalOptionCodeWordsIndex":I
    .end local v3    # "code":I
    .end local v5    # "end":Z
    :pswitch_2
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 203
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 188
    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "textCompactionData"    # [I
    .param p1, "byteCompactionData"    # [I
    .param p2, "length"    # I
    .param p3, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 292
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 293
    .local v3, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 294
    .local v2, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 295
    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 460
    return-void

    .line 296
    :cond_0
    aget v4, p0, v1

    .line 297
    .local v4, "subModeCh":I
    const/4 v0, 0x0

    .line 298
    .local v0, "ch":C
    invoke-static {}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->$SWITCH_TABLE$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode()[I

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 454
    :goto_1
    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :pswitch_0
    if-ge v4, v7, :cond_2

    .line 303
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .line 304
    goto :goto_1

    .line 305
    :cond_2
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 307
    :sswitch_0
    const/16 v0, 0x20

    .line 308
    goto :goto_1

    .line 310
    :sswitch_1
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 311
    goto :goto_1

    .line 313
    :sswitch_2
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 314
    goto :goto_1

    .line 317
    :sswitch_3
    move-object v2, v3

    .line 318
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 319
    goto :goto_1

    .line 321
    :sswitch_4
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 324
    :sswitch_5
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 332
    :pswitch_1
    if-ge v4, v7, :cond_3

    .line 333
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    .line 334
    goto :goto_1

    .line 335
    :cond_3
    sparse-switch v4, :sswitch_data_1

    goto :goto_1

    .line 337
    :sswitch_6
    const/16 v0, 0x20

    .line 338
    goto :goto_1

    .line 341
    :sswitch_7
    move-object v2, v3

    .line 342
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 343
    goto :goto_1

    .line 345
    :sswitch_8
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 346
    goto :goto_1

    .line 349
    :sswitch_9
    move-object v2, v3

    .line 350
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 351
    goto :goto_1

    .line 354
    :sswitch_a
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 357
    :sswitch_b
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 365
    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_4

    .line 366
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    .line 367
    goto :goto_1

    .line 368
    :cond_4
    sparse-switch v4, :sswitch_data_2

    goto :goto_1

    .line 370
    :sswitch_c
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 371
    goto :goto_1

    .line 373
    :sswitch_d
    const/16 v0, 0x20

    .line 374
    goto :goto_1

    .line 376
    :sswitch_e
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 377
    goto :goto_1

    .line 379
    :sswitch_f
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 380
    goto :goto_1

    .line 383
    :sswitch_10
    move-object v2, v3

    .line 384
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 385
    goto :goto_1

    .line 387
    :sswitch_11
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 390
    :sswitch_12
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 398
    :pswitch_3
    if-ge v4, v8, :cond_5

    .line 399
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .line 400
    goto :goto_1

    .line 401
    :cond_5
    sparse-switch v4, :sswitch_data_3

    goto :goto_1

    .line 403
    :sswitch_13
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 404
    goto :goto_1

    .line 406
    :sswitch_14
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 409
    :sswitch_15
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 417
    :pswitch_4
    move-object v3, v2

    .line 418
    if-ge v4, v7, :cond_6

    .line 419
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    .line 420
    goto/16 :goto_1

    .line 421
    :cond_6
    sparse-switch v4, :sswitch_data_4

    goto/16 :goto_1

    .line 423
    :sswitch_16
    const/16 v0, 0x20

    .line 424
    goto/16 :goto_1

    .line 426
    :sswitch_17
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 434
    :pswitch_5
    move-object v3, v2

    .line 435
    if-ge v4, v8, :cond_7

    .line 436
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    .line 437
    goto/16 :goto_1

    .line 438
    :cond_7
    sparse-switch v4, :sswitch_data_5

    goto/16 :goto_1

    .line 440
    :sswitch_18
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 441
    goto/16 :goto_1

    .line 445
    :sswitch_19
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 448
    :sswitch_1a
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 298
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

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_1
        0x1c -> :sswitch_2
        0x1d -> :sswitch_3
        0x384 -> :sswitch_5
        0x391 -> :sswitch_4
    .end sparse-switch

    .line 335
    :sswitch_data_1
    .sparse-switch
        0x1a -> :sswitch_6
        0x1b -> :sswitch_7
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x384 -> :sswitch_b
        0x391 -> :sswitch_a
    .end sparse-switch

    .line 368
    :sswitch_data_2
    .sparse-switch
        0x19 -> :sswitch_c
        0x1a -> :sswitch_d
        0x1b -> :sswitch_e
        0x1c -> :sswitch_f
        0x1d -> :sswitch_10
        0x384 -> :sswitch_12
        0x391 -> :sswitch_11
    .end sparse-switch

    .line 401
    :sswitch_data_3
    .sparse-switch
        0x1d -> :sswitch_13
        0x384 -> :sswitch_15
        0x391 -> :sswitch_14
    .end sparse-switch

    .line 421
    :sswitch_data_4
    .sparse-switch
        0x1a -> :sswitch_16
        0x384 -> :sswitch_17
    .end sparse-switch

    .line 438
    :sswitch_data_5
    .sparse-switch
        0x1d -> :sswitch_18
        0x384 -> :sswitch_1a
        0x391 -> :sswitch_19
    .end sparse-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 7
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 584
    const/4 v2, 0x0

    .line 585
    .local v2, "count":I
    const/4 v3, 0x0

    .line 587
    .local v3, "end":Z
    const/16 v5, 0xf

    new-array v4, v5, [I

    .line 589
    .local v4, "numericCodewords":[I
    :cond_0
    :goto_0
    aget v5, p0, v6

    if-ge p1, v5, :cond_1

    if-eqz v3, :cond_2

    .line 619
    :cond_1
    return p1

    .line 590
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v1, "codeIndex":I
    aget v0, p0, p1

    .line 591
    .local v0, "code":I
    aget v5, p0, v6

    if-ne v1, v5, :cond_3

    .line 592
    const/4 v3, 0x1

    .line 594
    :cond_3
    const/16 v5, 0x384

    if-ge v0, v5, :cond_5

    .line 595
    aput v0, v4, v2

    .line 596
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 610
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    :goto_1
    rem-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_4

    const/16 v5, 0x386

    if-eq v0, v5, :cond_4

    if-eqz v3, :cond_0

    :cond_4
    if-lez v2, :cond_0

    .line 615
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const/4 v2, 0x0

    goto :goto_0

    .line 598
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :cond_5
    sparse-switch v0, :sswitch_data_0

    move p1, v1

    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_1

    .line 605
    .end local p1    # "codeIndex":I
    .restart local v1    # "codeIndex":I
    :sswitch_0
    add-int/lit8 p1, v1, -0x1

    .line 606
    .end local v1    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    goto :goto_1

    .line 598
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_0
        0x39a -> :sswitch_0
        0x39b -> :sswitch_0
        0x39c -> :sswitch_0
        0x3a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .param p0, "codewords"    # [I
    .param p1, "codeIndex"    # I
    .param p2, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 222
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [I

    .line 224
    .local v6, "textCompactionData":[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    mul-int/lit8 v7, v7, 0x2

    new-array v0, v7, [I

    .line 226
    .local v0, "byteCompactionData":[I
    const/4 v4, 0x0

    .line 227
    .local v4, "index":I
    const/4 v3, 0x0

    .line 228
    .local v3, "end":Z
    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_0

    if-eqz v3, :cond_1

    .line 264
    :cond_0
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 265
    return p1

    .line 229
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "codeIndex":I
    .local v2, "codeIndex":I
    aget v1, p0, p1

    .line 230
    .local v1, "code":I
    if-ge v1, v10, :cond_2

    .line 231
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 232
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 233
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .line 234
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 235
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :cond_2
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 238
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    move p1, v2

    .line 239
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    goto :goto_0

    .line 246
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 247
    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    const/4 v3, 0x1

    .line 248
    goto :goto_0

    .line 256
    .end local p1    # "codeIndex":I
    .restart local v2    # "codeIndex":I
    :sswitch_2
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 257
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "codeIndex":I
    .restart local p1    # "codeIndex":I
    aget v1, p0, v2

    .line 258
    aput v1, v0, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_1
        0x391 -> :sswitch_2
        0x39a -> :sswitch_1
        0x39b -> :sswitch_1
        0x39c -> :sswitch_1
        0x3a0 -> :sswitch_1
    .end sparse-switch
.end method
