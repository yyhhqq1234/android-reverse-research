.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "numDataCodewords"    # I
    .param p2, "codewords"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 25
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/qrcode/decoder/Version;
    .param p2, "ecLevel"    # Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .prologue
    .line 51
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v23, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v23

    .line 57
    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    .line 60
    .local v5, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v22, 0x0

    .line 61
    .local v22, "totalBlocks":I
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v4

    .line 62
    .local v4, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v2, v4

    .local v2, "arr$":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v3, v2, v7

    .line 63
    .local v3, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    add-int v22, v22, v23

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 67
    .end local v3    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_1
    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v19, v0

    .line 68
    .local v19, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/4 v15, 0x0

    .line 69
    .local v15, "numResultBlocks":I
    move-object v2, v4

    array-length v10, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_3

    aget-object v3, v2, v7

    .line 70
    .restart local v3    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_2

    .line 71
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v14

    .line 72
    .local v14, "numDataCodewords":I
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v23

    add-int v13, v23, v14

    .line 73
    .local v13, "numBlockCodewords":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "numResultBlocks":I
    .local v16, "numResultBlocks":I
    new-instance v23, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v13, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v23, v19, v15

    .line 70
    add-int/lit8 v6, v6, 0x1

    move/from16 v15, v16

    .end local v16    # "numResultBlocks":I
    .restart local v15    # "numResultBlocks":I
    goto :goto_2

    .line 69
    .end local v13    # "numBlockCodewords":I
    .end local v14    # "numDataCodewords":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 79
    .end local v3    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v6    # "i":I
    :cond_3
    const/16 v23, 0x0

    aget-object v23, v19, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v21, v0

    .line 80
    .local v21, "shorterBlocksTotalCodewords":I
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v11, v23, -0x1

    .line 81
    .local v11, "longerBlocksStartAt":I
    :goto_3
    if-ltz v11, :cond_4

    .line 82
    aget-object v23, v19, v11

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    .line 83
    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 86
    add-int/lit8 v11, v11, -0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 90
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v23

    sub-int v20, v21, v23

    .line 93
    .local v20, "shorterBlocksNumDataCodewords":I
    const/16 v17, 0x0

    .line 94
    .local v17, "rawCodewordsOffset":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    move/from16 v0, v20

    if-ge v6, v0, :cond_6

    .line 95
    const/4 v9, 0x0

    .local v9, "j":I
    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .local v18, "rawCodewordsOffset":I
    :goto_5
    if-ge v9, v15, :cond_5

    .line 96
    aget-object v23, v19, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    aget-byte v24, p0, v18

    aput-byte v24, v23, v6

    .line 95
    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    goto :goto_5

    .line 94
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v18

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    goto :goto_4

    .line 100
    .end local v9    # "j":I
    :cond_6
    move v9, v11

    .restart local v9    # "j":I
    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    :goto_6
    if-ge v9, v15, :cond_7

    .line 101
    aget-object v23, v19, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    aget-byte v24, p0, v18

    aput-byte v24, v23, v20

    .line 100
    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    goto :goto_6

    .line 104
    :cond_7
    const/16 v23, 0x0

    aget-object v23, v19, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v12, v0

    .line 105
    .local v12, "max":I
    move/from16 v6, v20

    move/from16 v17, v18

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    :goto_7
    if-ge v6, v12, :cond_a

    .line 106
    const/4 v9, 0x0

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    :goto_8
    if-ge v9, v15, :cond_9

    .line 107
    if-ge v9, v11, :cond_8

    move v8, v6

    .line 108
    .local v8, "iOffset":I
    :goto_9
    aget-object v23, v19, v9

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    aget-byte v24, p0, v18

    aput-byte v24, v23, v8

    .line 106
    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    goto :goto_8

    .line 107
    .end local v8    # "iOffset":I
    :cond_8
    add-int/lit8 v8, v6, 0x1

    goto :goto_9

    .line 105
    :cond_9
    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v18

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    goto :goto_7

    .line 111
    :cond_a
    return-object v19
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
