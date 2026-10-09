.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 39
    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 22
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    if-eqz p1, :cond_0

    sget-object v20, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 53
    sget-object v20, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 194
    :goto_0
    return-object v20

    .line 57
    :cond_0
    move-object/from16 v0, p0

    array-length v7, v0

    .line 58
    .local v7, "length":I
    const/4 v2, 0x1

    .line 59
    .local v2, "canBeISO88591":Z
    const/4 v3, 0x1

    .line 60
    .local v3, "canBeShiftJIS":Z
    const/4 v4, 0x1

    .line 61
    .local v4, "canBeUTF8":Z
    const/16 v17, 0x0

    .line 62
    .local v17, "utf8BytesLeft":I
    const/4 v14, 0x0

    .line 63
    .local v14, "utf2BytesChars":I
    const/4 v15, 0x0

    .line 64
    .local v15, "utf3BytesChars":I
    const/16 v16, 0x0

    .line 65
    .local v16, "utf4BytesChars":I
    const/4 v8, 0x0

    .line 66
    .local v8, "sjisBytesLeft":I
    const/4 v11, 0x0

    .line 67
    .local v11, "sjisKatakanaChars":I
    const/4 v10, 0x0

    .line 68
    .local v10, "sjisCurKatakanaWordLength":I
    const/4 v9, 0x0

    .line 69
    .local v9, "sjisCurDoubleBytesWordLength":I
    const/4 v13, 0x0

    .line 70
    .local v13, "sjisMaxKatakanaWordLength":I
    const/4 v12, 0x0

    .line 71
    .local v12, "sjisMaxDoubleBytesWordLength":I
    const/4 v6, 0x0

    .line 73
    .local v6, "isoHighOther":I
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 74
    const/16 v20, 0x0

    aget-byte v20, p0, v20

    const/16 v21, -0x11

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 75
    const/16 v20, 0x1

    aget-byte v20, p0, v20

    const/16 v21, -0x45

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 76
    const/16 v20, 0x2

    aget-byte v20, p0, v20

    const/16 v21, -0x41

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 73
    const/16 v18, 0x1

    .line 78
    .local v18, "utf8bom":Z
    :goto_1
    const/4 v5, 0x0

    .line 79
    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_1

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 158
    :cond_1
    if-eqz v4, :cond_2

    if-lez v17, :cond_2

    .line 159
    const/4 v4, 0x0

    .line 161
    :cond_2
    if-eqz v3, :cond_3

    if-lez v8, :cond_3

    .line 162
    const/4 v3, 0x0

    .line 166
    :cond_3
    if-eqz v4, :cond_19

    if-nez v18, :cond_4

    add-int v20, v14, v15

    add-int v20, v20, v16

    if-lez v20, :cond_19

    .line 167
    :cond_4
    const-string v20, "UTF8"

    goto :goto_0

    .line 73
    .end local v5    # "i":I
    .end local v18    # "utf8bom":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_1

    .line 82
    .restart local v5    # "i":I
    .restart local v18    # "utf8bom":Z
    :cond_6
    aget-byte v20, p0, v5

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 85
    .local v19, "value":I
    if-eqz v4, :cond_7

    .line 86
    if-lez v17, :cond_c

    .line 87
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 88
    const/4 v4, 0x0

    .line 117
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 118
    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_11

    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 119
    const/4 v2, 0x0

    .line 126
    :cond_8
    :goto_4
    if-eqz v3, :cond_a

    .line 127
    if-lez v8, :cond_14

    .line 128
    const/16 v20, 0x40

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v20, 0xfc

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    .line 129
    :cond_9
    const/4 v3, 0x0

    .line 80
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 90
    :cond_b
    add-int/lit8 v17, v17, -0x1

    .line 92
    goto :goto_3

    :cond_c
    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 93
    and-int/lit8 v20, v19, 0x40

    if-nez v20, :cond_d

    .line 94
    const/4 v4, 0x0

    .line 95
    goto :goto_3

    .line 96
    :cond_d
    add-int/lit8 v17, v17, 0x1

    .line 97
    and-int/lit8 v20, v19, 0x20

    if-nez v20, :cond_e

    .line 98
    add-int/lit8 v14, v14, 0x1

    .line 99
    goto :goto_3

    .line 100
    :cond_e
    add-int/lit8 v17, v17, 0x1

    .line 101
    and-int/lit8 v20, v19, 0x10

    if-nez v20, :cond_f

    .line 102
    add-int/lit8 v15, v15, 0x1

    .line 103
    goto :goto_3

    .line 104
    :cond_f
    add-int/lit8 v17, v17, 0x1

    .line 105
    and-int/lit8 v20, v19, 0x8

    if-nez v20, :cond_10

    .line 106
    add-int/lit8 v16, v16, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_10
    const/4 v4, 0x0

    goto :goto_3

    .line 120
    :cond_11
    const/16 v20, 0x9f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    const/16 v20, 0xc0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_12

    const/16 v20, 0xd7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    const/16 v20, 0xf7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 121
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 131
    :cond_13
    add-int/lit8 v8, v8, -0x1

    .line 133
    goto :goto_5

    :cond_14
    const/16 v20, 0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    const/16 v20, 0xef

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_16

    .line 134
    :cond_15
    const/4 v3, 0x0

    .line 135
    goto :goto_5

    :cond_16
    const/16 v20, 0xa0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_17

    const/16 v20, 0xe0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 136
    add-int/lit8 v11, v11, 0x1

    .line 137
    const/4 v9, 0x0

    .line 138
    add-int/lit8 v10, v10, 0x1

    .line 139
    if-le v10, v13, :cond_a

    .line 140
    move v13, v10

    .line 142
    goto/16 :goto_5

    :cond_17
    const/16 v20, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    .line 143
    add-int/lit8 v8, v8, 0x1

    .line 145
    const/4 v10, 0x0

    .line 146
    add-int/lit8 v9, v9, 0x1

    .line 147
    if-le v9, v12, :cond_a

    .line 148
    move v12, v9

    .line 150
    goto/16 :goto_5

    .line 152
    :cond_18
    const/4 v10, 0x0

    .line 153
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 170
    .end local v19    # "value":I
    :cond_19
    if-eqz v3, :cond_1b

    sget-boolean v20, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v20, :cond_1a

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v13, v0, :cond_1a

    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v12, v0, :cond_1b

    .line 171
    :cond_1a
    const-string v20, "SJIS"

    goto/16 :goto_0

    .line 178
    :cond_1b
    if-eqz v2, :cond_1f

    if-eqz v3, :cond_1f

    .line 179
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v13, v0, :cond_1c

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_1d

    :cond_1c
    mul-int/lit8 v20, v6, 0xa

    move/from16 v0, v20

    if-lt v0, v7, :cond_1e

    .line 180
    :cond_1d
    const-string v20, "SJIS"

    goto/16 :goto_0

    :cond_1e
    const-string v20, "ISO8859_1"

    goto/16 :goto_0

    .line 184
    :cond_1f
    if-eqz v2, :cond_20

    .line 185
    const-string v20, "ISO8859_1"

    goto/16 :goto_0

    .line 187
    :cond_20
    if-eqz v3, :cond_21

    .line 188
    const-string v20, "SJIS"

    goto/16 :goto_0

    .line 190
    :cond_21
    if-eqz v4, :cond_22

    .line 191
    const-string v20, "UTF8"

    goto/16 :goto_0

    .line 194
    :cond_22
    sget-object v20, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_0
.end method
