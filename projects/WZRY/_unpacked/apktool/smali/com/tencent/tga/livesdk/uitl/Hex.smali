.class public abstract Lcom/tencent/tga/livesdk/uitl/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToHexDigits(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .prologue
    .line 96
    move v2, p0

    .line 97
    .local v2, "n":I
    if-gez v2, :cond_0

    .line 98
    add-int/lit16 v2, v2, 0x100

    .line 100
    :cond_0
    div-int/lit8 v0, v2, 0x10

    .line 101
    .local v0, "d1":I
    rem-int/lit8 v1, v2, 0x10

    .line 103
    .local v1, "d2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    aget-char v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    aget-char v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 25
    :cond_0
    const/4 v7, 0x0

    .line 45
    :goto_0
    return-object v7

    .line 29
    :cond_1
    array-length v7, p0

    shl-int/lit8 v7, v7, 0x1

    new-array v2, v7, [C

    .line 32
    .local v2, "chars":[C
    const/4 v0, 0x0

    .line 33
    .local v0, "b":B
    const/4 v4, 0x0

    .line 34
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 35
    aget-byte v0, p0, v3

    .line 36
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    and-int/lit16 v7, v0, 0xf0

    shr-int/lit8 v7, v7, 0x4

    int-to-char v7, v7

    aput-char v7, v2, v4

    .line 37
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "j":I
    .restart local v4    # "j":I
    and-int/lit8 v7, v0, 0xf

    int-to-char v7, v7

    aput-char v7, v2, v5

    .line 34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 43
    aget-char v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 45
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static bytesToHexes([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 114
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 123
    :goto_0
    return-object v2

    .line 118
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 121
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/tencent/tga/livesdk/uitl/Hex;->byteToHexDigits(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v8, 0x10

    .line 58
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 85
    :cond_1
    return-object v0

    .line 63
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    new-array v0, v7, [B

    .line 66
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 67
    .local v6, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 69
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 70
    .local v1, "c1":C
    invoke-static {v1, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    int-to-byte v4, v7

    .line 73
    .local v4, "gw":B
    add-int/lit8 v5, v5, 0x1

    .line 74
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 75
    .local v2, "c2":C
    invoke-static {v2, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    int-to-byte v3, v7

    .line 78
    .local v3, "dw":B
    shl-int/lit8 v7, v4, 0x4

    or-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static hexToInteger(C)I
    .locals 3
    .param p0, "hex"    # C

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0xa

    .line 132
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    aget-char v0, v0, v2

    if-lt p0, v0, :cond_0

    .line 133
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    aget-char v0, v0, v2

    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0xa

    .line 137
    :goto_0
    return v0

    .line 134
    :cond_0
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    aget-char v0, v0, v1

    if-lt p0, v0, :cond_1

    .line 135
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    aget-char v0, v0, v1

    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 137
    :cond_1
    sget-object v0, Lcom/tencent/tga/livesdk/uitl/Hex;->HEX_DIGITS:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sub-int v0, p0, v0

    goto :goto_0
.end method

.method public static hexesToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexes"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 167
    :cond_1
    return-object v0

    .line 151
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 152
    .local v4, "slen":I
    add-int/lit8 v6, v4, 0x1

    div-int/lit8 v3, v6, 0x2

    .line 153
    .local v3, "len":I
    new-array v0, v3, [B

    .line 154
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 156
    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 157
    .local v1, "c":C
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/Hex;->hexToInteger(C)I

    move-result v5

    .line 158
    .local v5, "val":I
    mul-int/lit8 v5, v5, 0x10

    .line 159
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v4, :cond_3

    .line 160
    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 161
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/Hex;->hexToInteger(C)I

    move-result v6

    add-int/2addr v5, v6

    .line 164
    :cond_3
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
