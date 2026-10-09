.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


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
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode EAN_8, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 13
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 60
    .local v5, "length":I
    packed-switch v5, :pswitch_data_0

    .line 81
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Requested contents should be 8 digits long, but got "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 65
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 69
    .local v0, "check":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 85
    .end local v0    # "check":I
    :cond_0
    const/16 v8, 0x43

    new-array v7, v8, [Z

    .line 86
    .local v7, "result":[Z
    const/4 v6, 0x0

    .line 88
    .local v6, "pos":I
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v7, v6, v8, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 90
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v8, 0x3

    if-le v3, v8, :cond_1

    .line 95
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v7, v6, v8, v11}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 97
    const/4 v3, 0x4

    :goto_1
    const/4 v8, 0x7

    if-le v3, v8, :cond_2

    .line 101
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v7, v6, v8, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    .line 103
    return-object v7

    .line 66
    .end local v3    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "result":[Z
    :catch_0
    move-exception v2

    .line 67
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 73
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :pswitch_1
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Contents do not pass checksum"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :catch_1
    move-exception v4

    .line 77
    .local v4, "ignored":Lcom/google/zxing/FormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Illegal contents"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    .end local v4    # "ignored":Lcom/google/zxing/FormatException;
    .restart local v3    # "i":I
    .restart local v6    # "pos":I
    .restart local v7    # "result":[Z
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 92
    .local v1, "digit":I
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v8, v8, v1

    invoke-static {v7, v6, v8, v11}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "digit":I
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 99
    .restart local v1    # "digit":I
    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v8, v8, v1

    invoke-static {v7, v6, v8, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
