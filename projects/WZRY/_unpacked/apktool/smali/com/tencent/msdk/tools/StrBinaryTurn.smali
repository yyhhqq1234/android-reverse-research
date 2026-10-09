.class public Lcom/tencent/msdk/tools/StrBinaryTurn;
.super Ljava/lang/Object;
.source "StrBinaryTurn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BinstrToChar(Ljava/lang/String;)C
    .locals 4
    .param p0, "binStr"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/tencent/msdk/tools/StrBinaryTurn;->BinstrToIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 51
    .local v2, "temp":[I
    const/4 v1, 0x0

    .line 52
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 53
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget v3, v2, v3

    shl-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    int-to-char v3, v1

    return v3
.end method

.method private static BinstrToIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p0, "binStr"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 70
    .local v2, "temp":[C
    array-length v3, v2

    new-array v1, v3, [I

    .line 71
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 72
    aget-char v3, v2, v0

    add-int/lit8 v3, v3, -0x30

    aput v3, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-object v1
.end method

.method public static BinstrToStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "binStr"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/tencent/msdk/tools/StrBinaryTurn;->StrToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "tempStr":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [C

    .line 39
    .local v1, "tempChar":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 40
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/tencent/msdk/tools/StrBinaryTurn;->BinstrToChar(Ljava/lang/String;)C

    move-result v3

    aput-char v3, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static StrToBinstr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 25
    .local v2, "strChar":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 27
    aget-char v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static StrToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
