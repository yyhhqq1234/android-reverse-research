.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 26
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 27
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 28
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 29
    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    .line 26
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 27
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    .line 28
    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 21
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 36
    new-instance v18, Ljava/lang/StringBuilder;

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    :cond_0
    :goto_0
    const/16 v15, 0x14

    .line 67
    .local v15, "resultLength":I
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-lt v10, v0, :cond_6

    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    add-int v15, v15, v18

    .line 79
    new-array v14, v15, [Z

    .line 80
    .local v14, "result":[Z
    const/4 v13, 0x0

    .line 81
    .local v13, "position":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v11, v0, :cond_a

    .line 127
    return-object v14

    .line 39
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v13    # "position":I
    .end local v14    # "result":[Z
    .end local v15    # "resultLength":I
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 40
    .local v9, "firstChar":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 41
    .local v12, "lastChar":C
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v17

    .line 42
    .local v17, "startsNormal":Z
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v8

    .line 43
    .local v8, "endsNormal":Z
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v16

    .line 44
    .local v16, "startsAlt":Z
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v7

    .line 45
    .local v7, "endsAlt":Z
    if-eqz v17, :cond_2

    .line 46
    if-nez v8, :cond_0

    .line 47
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Invalid start/end guards: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 50
    :cond_2
    if-eqz v16, :cond_3

    .line 51
    if-nez v7, :cond_0

    .line 52
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Invalid start/end guards: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 57
    :cond_3
    if-nez v8, :cond_4

    if-eqz v7, :cond_5

    .line 58
    :cond_4
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Invalid start/end guards: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 61
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-char v19, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 68
    .end local v7    # "endsAlt":Z
    .end local v8    # "endsNormal":Z
    .end local v9    # "firstChar":C
    .end local v12    # "lastChar":C
    .end local v16    # "startsAlt":Z
    .end local v17    # "startsNormal":Z
    .restart local v10    # "i":I
    .restart local v15    # "resultLength":I
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isDigit(C)Z

    move-result v18

    if-nez v18, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x24

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 69
    :cond_7
    add-int/lit8 v15, v15, 0x9

    .line 67
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 70
    :cond_8
    sget-object v18, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 71
    add-int/lit8 v15, v15, 0xa

    .line 72
    goto :goto_3

    .line 73
    :cond_9
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Cannot encode : \'"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x27

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 82
    .restart local v11    # "index":I
    .restart local v13    # "position":I
    .restart local v14    # "result":[Z
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 83
    .local v3, "c":C
    if-eqz v11, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_c

    .line 85
    :cond_b
    sparse-switch v3, :sswitch_data_0

    .line 100
    :cond_c
    :goto_4
    const/4 v4, 0x0

    .line 101
    .local v4, "code":I
    const/4 v10, 0x0

    :goto_5
    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_e

    .line 108
    :goto_6
    const/4 v5, 0x1

    .line 109
    .local v5, "color":Z
    const/4 v6, 0x0

    .line 110
    .local v6, "counter":I
    const/4 v2, 0x0

    .line 111
    .local v2, "bit":I
    :goto_7
    const/16 v18, 0x7

    move/from16 v0, v18

    if-lt v2, v0, :cond_10

    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v11, v0, :cond_d

    .line 123
    const/16 v18, 0x0

    aput-boolean v18, v14, v13

    .line 124
    add-int/lit8 v13, v13, 0x1

    .line 81
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 87
    .end local v2    # "bit":I
    .end local v4    # "code":I
    .end local v5    # "color":Z
    .end local v6    # "counter":I
    :sswitch_0
    const/16 v3, 0x41

    .line 88
    goto :goto_4

    .line 90
    :sswitch_1
    const/16 v3, 0x42

    .line 91
    goto :goto_4

    .line 93
    :sswitch_2
    const/16 v3, 0x43

    .line 94
    goto :goto_4

    .line 96
    :sswitch_3
    const/16 v3, 0x44

    goto :goto_4

    .line 103
    .restart local v4    # "code":I
    :cond_e
    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v18, v18, v10

    move/from16 v0, v18

    if-ne v3, v0, :cond_f

    .line 104
    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v4, v18, v10

    .line 105
    goto :goto_6

    .line 101
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 112
    .restart local v2    # "bit":I
    .restart local v5    # "color":Z
    .restart local v6    # "counter":I
    :cond_10
    aput-boolean v5, v14, v13

    .line 113
    add-int/lit8 v13, v13, 0x1

    .line 114
    rsub-int/lit8 v18, v2, 0x6

    shr-int v18, v4, v18

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_13

    .line 115
    :cond_11
    if-eqz v5, :cond_12

    const/4 v5, 0x0

    .line 116
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 117
    const/4 v6, 0x0

    .line 118
    goto :goto_7

    .line 115
    :cond_12
    const/4 v5, 0x1

    goto :goto_8

    .line 119
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x45 -> :sswitch_3
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
