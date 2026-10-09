.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .locals 6
    .param p1, "codewordBytes"    # [B
    .param p2, "numDataCodewords"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 107
    array-length v3, p1

    .line 109
    .local v3, "numCodewords":I
    new-array v0, v3, [I

    .line 110
    .local v0, "codewordsInts":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 114
    :try_start_0
    iget-object v4, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    array-length v5, p1

    sub-int/2addr v5, p2

    invoke-virtual {v4, v0, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p2, :cond_1

    .line 123
    return-void

    .line 111
    :cond_0
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 121
    .end local v2    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    :cond_1
    aget v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 17
    .param p1, "bits"    # Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v10, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 67
    .local v10, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v13

    .line 70
    .local v13, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    invoke-virtual {v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v2

    .line 72
    .local v2, "codewords":[B
    invoke-static {v2, v13}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v4

    .line 75
    .local v4, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v12, 0x0

    .line 76
    .local v12, "totalBytes":I
    array-length v15, v4

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_0

    .line 79
    new-array v11, v12, [B

    .line 81
    .local v11, "resultBytes":[B
    array-length v5, v4

    .line 83
    .local v5, "dataBlocksCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-lt v8, v5, :cond_1

    .line 95
    invoke-static {v11}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v14

    return-object v14

    .line 76
    .end local v5    # "dataBlocksCount":I
    .end local v8    # "j":I
    .end local v11    # "resultBytes":[B
    :cond_0
    aget-object v6, v4, v14

    .line 77
    .local v6, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v6}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v16

    add-int v12, v12, v16

    .line 76
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 84
    .end local v6    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .restart local v5    # "dataBlocksCount":I
    .restart local v8    # "j":I
    .restart local v11    # "resultBytes":[B
    :cond_1
    aget-object v3, v4, v8

    .line 85
    .local v3, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v1

    .line 86
    .local v1, "codewordBytes":[B
    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v9

    .line 87
    .local v9, "numDataCodewords":I
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v9}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 88
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-lt v7, v9, :cond_2

    .line 83
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 90
    :cond_2
    mul-int v14, v7, v5

    add-int/2addr v14, v8

    aget-byte v15, v1, v7

    aput-byte v15, v11, v14

    .line 88
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .param p1, "image"    # [[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lcom/google/zxing/common/BitMatrix;->parse([[Z)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    return-object v0
.end method
