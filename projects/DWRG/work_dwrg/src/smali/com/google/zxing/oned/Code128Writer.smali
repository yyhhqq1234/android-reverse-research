.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/Code128Writer$CType;
    }
.end annotation


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    .line 53
    return-void
.end method

.method private static chooseCode(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "oldCode"    # I

    .prologue
    const/16 v2, 0x63

    const/16 v3, 0x64

    .line 210
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 211
    .local v1, "lookahead":Lcom/google/zxing/oned/Code128Writer$CType;
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_2

    :cond_0
    move p2, v3

    .line 252
    .end local p2    # "oldCode":I
    :cond_1
    :goto_0
    return p2

    .line 214
    .restart local p2    # "oldCode":I
    :cond_2
    if-eq p2, v2, :cond_1

    .line 217
    if-ne p2, v3, :cond_7

    .line 218
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_1

    .line 222
    add-int/lit8 v4, p1, 0x2

    invoke-static {p0, v4}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 223
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-eq v1, v4, :cond_1

    .line 226
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_4

    .line 227
    add-int/lit8 v4, p1, 0x3

    invoke-static {p0, v4}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v4

    .line 228
    sget-object v5, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v4, v5, :cond_3

    move p2, v2

    .line 229
    goto :goto_0

    :cond_3
    move p2, v3

    .line 231
    goto :goto_0

    .line 236
    :cond_4
    add-int/lit8 v0, p1, 0x4

    .line 237
    .local v0, "index":I
    :goto_1
    invoke-static {p0, v0}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_5

    .line 238
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 240
    :cond_5
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_6

    move p2, v3

    .line 241
    goto :goto_0

    :cond_6
    move p2, v2

    .line 243
    goto :goto_0

    .line 246
    .end local v0    # "index":I
    :cond_7
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_8

    .line 247
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4}, Lcom/google/zxing/oned/Code128Writer;->findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;

    move-result-object v1

    .line 249
    :cond_8
    sget-object v4, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    if-ne v1, v4, :cond_9

    move p2, v2

    .line 250
    goto :goto_0

    :cond_9
    move p2, v3

    .line 252
    goto :goto_0
.end method

.method private static findCType(Ljava/lang/CharSequence;I)Lcom/google/zxing/oned/Code128Writer$CType;
    .locals 5
    .param p0, "value"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .prologue
    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 188
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 189
    .local v1, "last":I
    if-lt p1, v1, :cond_0

    .line 190
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    .line 206
    :goto_0
    return-object v2

    .line 192
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 193
    .local v0, "c":C
    const/16 v2, 0xf1

    if-ne v0, v2, :cond_1

    .line 194
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->FNC_1:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_0

    .line 196
    :cond_1
    if-lt v0, v3, :cond_2

    if-le v0, v4, :cond_3

    .line 197
    :cond_2
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->UNCODABLE:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_0

    .line 199
    :cond_3
    add-int/lit8 v2, p1, 0x1

    if-lt v2, v1, :cond_4

    .line 200
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_0

    .line 202
    :cond_4
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 203
    if-lt v0, v3, :cond_5

    if-le v0, v4, :cond_6

    .line 204
    :cond_5
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->ONE_DIGIT:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_0

    .line 206
    :cond_6
    sget-object v2, Lcom/google/zxing/oned/Code128Writer$CType;->TWO_DIGITS:Lcom/google/zxing/oned/Code128Writer$CType;

    goto :goto_0
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
    .line 66
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode CODE_128, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 25
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 76
    .local v13, "length":I
    if-lez v13, :cond_0

    const/16 v22, 0x50

    move/from16 v0, v22

    if-le v13, v0, :cond_1

    .line 77
    :cond_0
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Contents length should be between 1 and 80 characters, but got "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 81
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v13, :cond_4

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 83
    .local v4, "c":C
    const/16 v22, 0x20

    move/from16 v0, v22

    if-lt v4, v0, :cond_2

    const/16 v22, 0x7e

    move/from16 v0, v22

    if-le v4, v0, :cond_3

    .line 84
    :cond_2
    packed-switch v4, :pswitch_data_0

    .line 91
    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Bad character in input: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 81
    :cond_3
    :pswitch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 96
    .end local v4    # "c":C
    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v17, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/4 v5, 0x0

    .line 98
    .local v5, "checkSum":I
    const/4 v6, 0x1

    .line 99
    .local v6, "checkWeight":I
    const/4 v7, 0x0

    .line 100
    .local v7, "codeSet":I
    const/16 v19, 0x0

    .line 102
    .local v19, "position":I
    :cond_5
    :goto_1
    move/from16 v0, v19

    if-ge v0, v13, :cond_a

    .line 104
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/google/zxing/oned/Code128Writer;->chooseCode(Ljava/lang/CharSequence;II)I

    move-result v14

    .line 108
    .local v14, "newCodeSet":I
    if-ne v14, v7, :cond_7

    .line 111
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    packed-switch v22, :pswitch_data_1

    .line 126
    const/16 v22, 0x64

    move/from16 v0, v22

    if-ne v7, v0, :cond_6

    .line 127
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    add-int/lit8 v16, v22, -0x20

    .line 133
    .local v16, "patternIndex":I
    :goto_2
    add-int/lit8 v19, v19, 0x1

    .line 153
    :goto_3
    sget-object v22, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v22, v22, v16

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 156
    mul-int v22, v16, v6

    add-int v5, v5, v22

    .line 157
    if-eqz v19, :cond_5

    .line 158
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 113
    .end local v16    # "patternIndex":I
    :pswitch_1
    const/16 v16, 0x66

    .line 114
    .restart local v16    # "patternIndex":I
    goto :goto_2

    .line 116
    .end local v16    # "patternIndex":I
    :pswitch_2
    const/16 v16, 0x61

    .line 117
    .restart local v16    # "patternIndex":I
    goto :goto_2

    .line 119
    .end local v16    # "patternIndex":I
    :pswitch_3
    const/16 v16, 0x60

    .line 120
    .restart local v16    # "patternIndex":I
    goto :goto_2

    .line 122
    .end local v16    # "patternIndex":I
    :pswitch_4
    const/16 v16, 0x64

    .line 123
    .restart local v16    # "patternIndex":I
    goto :goto_2

    .line 129
    .end local v16    # "patternIndex":I
    :cond_6
    add-int/lit8 v22, v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 130
    .restart local v16    # "patternIndex":I
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 137
    .end local v16    # "patternIndex":I
    :cond_7
    if-nez v7, :cond_9

    .line 139
    const/16 v22, 0x64

    move/from16 v0, v22

    if-ne v14, v0, :cond_8

    .line 140
    const/16 v16, 0x68

    .line 149
    .restart local v16    # "patternIndex":I
    :goto_4
    move v7, v14

    goto :goto_3

    .line 143
    .end local v16    # "patternIndex":I
    :cond_8
    const/16 v16, 0x69

    .restart local v16    # "patternIndex":I
    goto :goto_4

    .line 147
    .end local v16    # "patternIndex":I
    :cond_9
    move/from16 v16, v14

    .restart local v16    # "patternIndex":I
    goto :goto_4

    .line 163
    .end local v14    # "newCodeSet":I
    .end local v16    # "patternIndex":I
    :cond_a
    rem-int/lit8 v5, v5, 0x67

    .line 164
    sget-object v22, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v22, v22, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v22, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v23, 0x6a

    aget-object v22, v22, v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v8, 0x0

    .line 171
    .local v8, "codeWidth":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 172
    .local v3, "arr$":[I
    array-length v12, v3

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5
    if-ge v11, v12, :cond_b

    aget v21, v3, v11

    .line 173
    .local v21, "width":I
    add-int v8, v8, v21

    .line 172
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 178
    .end local v3    # "arr$":[I
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v21    # "width":I
    :cond_c
    new-array v0, v8, [Z

    move-object/from16 v20, v0

    .line 179
    .local v20, "result":[Z
    const/16 v18, 0x0

    .line 180
    .local v18, "pos":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    .line 181
    .local v15, "pattern":[I
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-static {v0, v1, v15, v2}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v22

    add-int v18, v18, v22

    .line 182
    goto :goto_6

    .line 184
    .end local v15    # "pattern":[I
    :cond_d
    return-object v20

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
