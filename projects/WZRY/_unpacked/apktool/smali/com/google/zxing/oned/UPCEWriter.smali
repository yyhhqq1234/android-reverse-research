.class public final Lcom/google/zxing/oned/UPCEWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "UPCEWriter.java"


# static fields
.field private static final CODE_WIDTH:I = 0x33


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
    .line 44
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode UPC_E, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 14
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 54
    .local v7, "length":I
    packed-switch v7, :pswitch_data_0

    .line 75
    new-instance v11, Ljava/lang/IllegalArgumentException;

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Requested contents should be 8 digits long, but got "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 75
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 59
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 63
    .local v0, "check":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    .end local v0    # "check":I
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 80
    .local v4, "firstDigit":I
    if-eqz v4, :cond_1

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1

    .line 81
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Number system must be 0 or 1"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 60
    .end local v4    # "firstDigit":I
    :catch_0
    move-exception v3

    .line 61
    .local v3, "fe":Lcom/google/zxing/FormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 67
    .end local v3    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 68
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Contents do not pass checksum"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :catch_1
    move-exception v6

    .line 71
    .local v6, "ignored":Lcom/google/zxing/FormatException;
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Illegal contents"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 84
    .end local v6    # "ignored":Lcom/google/zxing/FormatException;
    .restart local v4    # "firstDigit":I
    :cond_1
    const/4 v11, 0x7

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 85
    .local v1, "checkDigit":I
    sget-object v11, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v11, v11, v4

    aget v8, v11, v1

    .line 86
    .local v8, "parities":I
    const/16 v11, 0x33

    new-array v10, v11, [Z

    .line 87
    .local v10, "result":[Z
    const/4 v9, 0x0

    .line 89
    .local v9, "pos":I
    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v12, 0x1

    invoke-static {v10, v9, v11, v12}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v11

    add-int/2addr v9, v11

    .line 91
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    const/4 v11, 0x6

    if-le v5, v11, :cond_2

    .line 99
    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    const/4 v12, 0x0

    invoke-static {v10, v9, v11, v12}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    .line 101
    return-object v10

    .line 92
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 93
    .local v2, "digit":I
    rsub-int/lit8 v11, v5, 0x6

    shr-int v11, v8, v11

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 94
    add-int/lit8 v2, v2, 0xa

    .line 96
    :cond_3
    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v11, v11, v2

    const/4 v12, 0x0

    invoke-static {v10, v9, v11, v12}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v11

    add-int/2addr v9, v11

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
