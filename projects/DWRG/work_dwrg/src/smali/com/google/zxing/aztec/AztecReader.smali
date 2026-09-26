.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 23
    .param p1, "image"    # Lcom/google/zxing/BinaryBitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/16 v20, 0x0

    .line 60
    .local v20, "notFoundException":Lcom/google/zxing/NotFoundException;
    const/16 v17, 0x0

    .line 61
    .local v17, "formatException":Lcom/google/zxing/FormatException;
    new-instance v13, Lcom/google/zxing/aztec/detector/Detector;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    invoke-direct {v13, v3}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 62
    .local v13, "detector":Lcom/google/zxing/aztec/detector/Detector;
    const/4 v6, 0x0

    .line 63
    .local v6, "points":[Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x0

    .line 65
    .local v12, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v13, v3}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v14

    .line 66
    .local v14, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v14}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 67
    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v3}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v3, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 73
    .end local v14    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :goto_0
    if-nez v12, :cond_0

    .line 75
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v13, v3}, Lcom/google/zxing/aztec/detector/Detector;->detect(Z)Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v14

    .line 76
    .restart local v14    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    invoke-virtual {v14}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 77
    new-instance v3, Lcom/google/zxing/aztec/decoder/Decoder;

    invoke-direct {v3}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v3, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v12

    .line 89
    .end local v14    # "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    :cond_0
    if-eqz p2, :cond_3

    .line 90
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/zxing/ResultPointCallback;

    .line 91
    .local v22, "rpcb":Lcom/google/zxing/ResultPointCallback;
    if-eqz v22, :cond_3

    .line 92
    move-object v10, v6

    .local v10, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v0, v6

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v21, v10, v18

    .line 93
    .local v21, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 92
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 69
    .end local v10    # "arr$":[Lcom/google/zxing/ResultPoint;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v21    # "point":Lcom/google/zxing/ResultPoint;
    .end local v22    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    :catch_0
    move-exception v20

    .line 72
    goto :goto_0

    .line 71
    :catch_1
    move-exception v17

    goto :goto_0

    .line 78
    :catch_2
    move-exception v3

    move-object v15, v3

    .line 79
    .local v15, "e":Lcom/google/zxing/ReaderException;
    :goto_2
    if-eqz v20, :cond_1

    .line 80
    throw v20

    .line 82
    :cond_1
    if-eqz v17, :cond_2

    .line 83
    throw v17

    .line 85
    :cond_2
    throw v15

    .line 98
    .end local v15    # "e":Lcom/google/zxing/ReaderException;
    :cond_3
    new-instance v2, Lcom/google/zxing/Result;

    invoke-virtual {v12}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/zxing/common/DecoderResult;->getNumBits()I

    move-result v5

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[BI[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 105
    .local v2, "result":Lcom/google/zxing/Result;
    invoke-virtual {v12}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v11

    .line 106
    .local v11, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v11, :cond_4

    .line 107
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v2, v3, v11}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 109
    :cond_4
    invoke-virtual {v12}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v16

    .line 110
    .local v16, "ecLevel":Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 111
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 114
    :cond_5
    return-object v2

    .line 78
    .end local v2    # "result":Lcom/google/zxing/Result;
    .end local v11    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v16    # "ecLevel":Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v15, v3

    goto :goto_2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
