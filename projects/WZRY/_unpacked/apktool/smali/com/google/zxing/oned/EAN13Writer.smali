.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 46
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode EAN_13, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 56
    .local v6, "length":I
    packed-switch v6, :pswitch_data_0

    .line 77
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Requested contents should be 12 or 13 digits long, but got "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 61
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    .local v0, "check":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    .end local v0    # "check":I
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 83
    .local v3, "firstDigit":I
    sget-object v10, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v7, v10, v3

    .line 84
    .local v7, "parities":I
    const/16 v10, 0x5f

    new-array v9, v10, [Z

    .line 85
    .local v9, "result":[Z
    const/4 v8, 0x0

    .line 87
    .local v8, "pos":I
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v11, 0x1

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 90
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v10, 0x6

    if-le v4, v10, :cond_1

    .line 98
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    const/4 v11, 0x0

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 100
    const/4 v4, 0x7

    :goto_1
    const/16 v10, 0xc

    if-le v4, v10, :cond_3

    .line 104
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v11, 0x1

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    .line 106
    return-object v9

    .line 62
    .end local v3    # "firstDigit":I
    .end local v4    # "i":I
    .end local v7    # "parities":I
    .end local v8    # "pos":I
    .end local v9    # "result":[Z
    :catch_0
    move-exception v2

    .line 63
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 69
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 70
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Contents do not pass checksum"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :catch_1
    move-exception v5

    .line 73
    .local v5, "ignored":Lcom/google/zxing/FormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Illegal contents"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 91
    .end local v5    # "ignored":Lcom/google/zxing/FormatException;
    .restart local v3    # "firstDigit":I
    .restart local v4    # "i":I
    .restart local v7    # "parities":I
    .restart local v8    # "pos":I
    .restart local v9    # "result":[Z
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 92
    .local v1, "digit":I
    rsub-int/lit8 v10, v4, 0x6

    shr-int v10, v7, v10

    and-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 93
    add-int/lit8 v1, v1, 0xa

    .line 95
    :cond_2
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v10, v10, v1

    const/4 v11, 0x0

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "digit":I
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 102
    .restart local v1    # "digit":I
    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v10, v10, v1

    const/4 v11, 0x1

    invoke-static {v9, v8, v10, v11}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v10

    add-int/2addr v8, v10

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
