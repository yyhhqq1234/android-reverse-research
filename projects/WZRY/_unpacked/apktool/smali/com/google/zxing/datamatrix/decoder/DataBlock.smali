.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
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
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    iput-object p2, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 27
    .param p0, "rawCodewords"    # [B
    .param p1, "version"    # Lcom/google/zxing/datamatrix/decoder/Version;

    .prologue
    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v4

    .line 52
    .local v4, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/16 v22, 0x0

    .line 53
    .local v22, "totalBlocks":I
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v3

    .line 54
    .local v3, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    array-length v0, v3

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 59
    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v19, v0

    .line 60
    .local v19, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/4 v15, 0x0

    .line 61
    .local v15, "numResultBlocks":I
    array-length v0, v3

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    .line 72
    const/16 v23, 0x0

    aget-object v23, v19, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v10, v0

    .line 75
    .local v10, "longerBlocksTotalCodewords":I
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v23

    sub-int v9, v10, v23

    .line 76
    .local v9, "longerBlocksNumDataCodewords":I
    add-int/lit8 v20, v9, -0x1

    .line 79
    .local v20, "shorterBlocksNumDataCodewords":I
    const/16 v17, 0x0

    .line 80
    .local v17, "rawCodewordsOffset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move/from16 v0, v20

    if-lt v5, v0, :cond_3

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v23

    const/16 v24, 0x18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v21, 0x1

    .line 88
    .local v21, "specialVersion":Z
    :goto_3
    if-eqz v21, :cond_6

    const/16 v14, 0x8

    .line 89
    .local v14, "numLongerBlocks":I
    :goto_4
    const/4 v7, 0x0

    .local v7, "j":I
    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .local v18, "rawCodewordsOffset":I
    :goto_5
    if-lt v7, v14, :cond_7

    .line 94
    const/16 v23, 0x0

    aget-object v23, v19, v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v11, v0

    .line 95
    .local v11, "max":I
    move v5, v9

    move/from16 v17, v18

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    :goto_6
    if-lt v5, v11, :cond_8

    .line 103
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 104
    new-instance v23, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v23

    .line 54
    .end local v5    # "i":I
    .end local v7    # "j":I
    .end local v9    # "longerBlocksNumDataCodewords":I
    .end local v10    # "longerBlocksTotalCodewords":I
    .end local v11    # "max":I
    .end local v14    # "numLongerBlocks":I
    .end local v15    # "numResultBlocks":I
    .end local v17    # "rawCodewordsOffset":I
    .end local v19    # "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .end local v20    # "shorterBlocksNumDataCodewords":I
    .end local v21    # "specialVersion":Z
    :cond_0
    aget-object v2, v3, v23

    .line 55
    .local v2, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v25

    add-int v22, v22, v25

    .line 54
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .restart local v15    # "numResultBlocks":I
    .restart local v19    # "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    :cond_1
    aget-object v2, v3, v23

    .line 62
    .restart local v2    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_7
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v25

    move/from16 v0, v25

    if-lt v5, v0, :cond_2

    .line 61
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v13

    .line 64
    .local v13, "numDataCodewords":I
    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v25

    add-int v12, v25, v13

    .line 65
    .local v12, "numBlockCodewords":I
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "numResultBlocks":I
    .local v16, "numResultBlocks":I
    new-instance v25, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    new-array v0, v12, [B

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v13, v1}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v25, v19, v15

    .line 62
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    .end local v16    # "numResultBlocks":I
    .restart local v15    # "numResultBlocks":I
    goto :goto_7

    .line 81
    .end local v2    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v12    # "numBlockCodewords":I
    .end local v13    # "numDataCodewords":I
    .restart local v9    # "longerBlocksNumDataCodewords":I
    .restart local v10    # "longerBlocksTotalCodewords":I
    .restart local v17    # "rawCodewordsOffset":I
    .restart local v20    # "shorterBlocksNumDataCodewords":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "j":I
    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    :goto_8
    if-lt v7, v15, :cond_4

    .line 80
    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v18

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    goto :goto_2

    .line 82
    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    :cond_4
    aget-object v23, v19, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    aget-byte v24, p0, v18

    aput-byte v24, v23, v5

    .line 81
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    goto :goto_8

    .line 87
    .end local v7    # "j":I
    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .restart local v21    # "specialVersion":Z
    :cond_6
    move v14, v15

    .line 88
    goto/16 :goto_4

    .line 90
    .end local v17    # "rawCodewordsOffset":I
    .restart local v7    # "j":I
    .restart local v14    # "numLongerBlocks":I
    .restart local v18    # "rawCodewordsOffset":I
    :cond_7
    aget-object v23, v19, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v9, -0x1

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    aget-byte v25, p0, v18

    aput-byte v25, v23, v24

    .line 89
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    goto/16 :goto_5

    .line 96
    .end local v18    # "rawCodewordsOffset":I
    .restart local v11    # "max":I
    .restart local v17    # "rawCodewordsOffset":I
    :cond_8
    const/4 v7, 0x0

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    :goto_9
    if-lt v7, v15, :cond_9

    .line 95
    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v18

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    goto/16 :goto_6

    .line 97
    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    :cond_9
    if-eqz v21, :cond_a

    add-int/lit8 v23, v7, 0x8

    rem-int v8, v23, v15

    .line 98
    .local v8, "jOffset":I
    :goto_a
    if-eqz v21, :cond_b

    const/16 v23, 0x7

    move/from16 v0, v23

    if-le v8, v0, :cond_b

    add-int/lit8 v6, v5, -0x1

    .line 99
    .local v6, "iOffset":I
    :goto_b
    aget-object v23, v19, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v23, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    aget-byte v24, p0, v18

    aput-byte v24, v23, v6

    .line 96
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v17

    .end local v17    # "rawCodewordsOffset":I
    .restart local v18    # "rawCodewordsOffset":I
    goto :goto_9

    .end local v6    # "iOffset":I
    .end local v8    # "jOffset":I
    :cond_a
    move v8, v7

    .line 97
    goto :goto_a

    .restart local v8    # "jOffset":I
    :cond_b
    move v6, v5

    .line 98
    goto :goto_b

    .line 107
    .end local v8    # "jOffset":I
    .end local v18    # "rawCodewordsOffset":I
    .restart local v17    # "rawCodewordsOffset":I
    :cond_c
    return-object v19
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
