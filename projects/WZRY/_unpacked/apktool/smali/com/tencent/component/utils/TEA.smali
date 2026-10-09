.class public Lcom/tencent/component/utils/TEA;
.super Ljava/lang/Object;
.source "TEA.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CUPS:I = 0x20

.field private static final SUGAR:I = -0x61c88647

.field private static final UNSUGAR:I = -0x3910c8e0


# instance fields
.field private S:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/tencent/component/utils/TEA;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "key"    # [B

    .prologue
    const/4 v6, 0x4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/tencent/component/utils/TEA;->S:[I

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid key: Key was null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_0
    array-length v3, p1

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 19
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid key: Length was less than 16 bytes"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_1
    const/4 v1, 0x0

    .local v1, "off":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 21
    iget-object v3, p0, Lcom/tencent/component/utils/TEA;->S:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "off":I
    .restart local v1    # "off":I
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "off":I
    .restart local v2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "off":I
    .restart local v1    # "off":I
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "off":I
    .restart local v2    # "off":I
    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_2
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "key"    # [I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/component/utils/TEA;->S:[I

    .line 29
    iput-object p1, p0, Lcom/tencent/component/utils/TEA;->S:[I

    .line 30
    return-void
.end method


# virtual methods
.method brew([I)V
    .locals 10
    .param p1, "buf"    # [I

    .prologue
    const/4 v9, 0x1

    .line 69
    sget-boolean v6, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    array-length v6, p1

    rem-int/lit8 v6, v6, 0x2

    if-eq v6, v9, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 72
    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 73
    const/16 v1, 0x20

    .line 74
    .local v1, "n":I
    aget v4, p1, v0

    .line 75
    .local v4, "v0":I
    add-int/lit8 v6, v0, 0x1

    aget v5, p1, v6

    .line 76
    .local v5, "v1":I
    const/4 v3, 0x0

    .local v3, "sum":I
    move v2, v1

    .line 77
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-lez v2, :cond_1

    .line 78
    const v6, 0x61c88647

    sub-int/2addr v3, v6

    .line 79
    shl-int/lit8 v6, v5, 0x4

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    xor-int/2addr v6, v5

    ushr-int/lit8 v7, v5, 0x5

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 80
    shl-int/lit8 v6, v4, 0x4

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    xor-int/2addr v6, v4

    ushr-int/lit8 v7, v4, 0x5

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_1

    .line 82
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_1
    aput v4, p1, v0

    .line 83
    add-int/lit8 v6, v0, 0x1

    aput v5, p1, v6

    .line 84
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 86
    .end local v1    # "n":I
    .end local v3    # "sum":I
    .end local v4    # "v0":I
    .end local v5    # "v1":I
    :cond_2
    return-void
.end method

.method public decrypt([B)[B
    .locals 4
    .param p1, "crypt"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    sget-boolean v1, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 57
    :cond_0
    sget-boolean v1, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x2

    if-eq v1, v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_1
    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v0, v1, [I

    .line 59
    .local v0, "buffer":[I
    invoke-virtual {p0, p1, v0, v2}, Lcom/tencent/component/utils/TEA;->pack([B[II)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/tencent/component/utils/TEA;->unbrew([I)V

    .line 61
    aget v1, v0, v2

    invoke-virtual {p0, v0, v3, v1}, Lcom/tencent/component/utils/TEA;->unpack([III)[B

    move-result-object v1

    return-object v1
.end method

.method public decryptToString([B)Ljava/lang/String;
    .locals 2
    .param p1, "crypt"    # [B

    .prologue
    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/component/utils/TEA;->decrypt([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/component/utils/TEA;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1, "clear"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    array-length v2, p1

    div-int/lit8 v5, v2, 0x8

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/2addr v2, v5

    mul-int/lit8 v1, v2, 0x2

    .line 39
    .local v1, "paddedSize":I
    add-int/lit8 v2, v1, 0x1

    new-array v0, v2, [I

    .line 40
    .local v0, "buffer":[I
    array-length v2, p1

    aput v2, v0, v3

    .line 41
    invoke-virtual {p0, p1, v0, v4}, Lcom/tencent/component/utils/TEA;->pack([B[II)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/tencent/component/utils/TEA;->brew([I)V

    .line 43
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v0, v3, v2}, Lcom/tencent/component/utils/TEA;->unpack([III)[B

    move-result-object v2

    return-object v2

    .end local v0    # "buffer":[I
    .end local v1    # "paddedSize":I
    :cond_0
    move v2, v4

    .line 38
    goto :goto_0
.end method

.method pack([B[II)V
    .locals 6
    .param p1, "src"    # [B
    .param p2, "dest"    # [I
    .param p3, "destOffset"    # I

    .prologue
    const/4 v5, 0x0

    .line 109
    sget-boolean v3, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    array-length v3, p1

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, p3

    array-length v4, p2

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 110
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    const/16 v2, 0x18

    .line 111
    .local v2, "shift":I
    move v1, p3

    .line 112
    .local v1, "j":I
    aput v5, p2, v1

    .line 113
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 114
    aget v3, p2, v1

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    aput v3, p2, v1

    .line 115
    if-nez v2, :cond_2

    .line 116
    const/16 v2, 0x18

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    array-length v3, p2

    if-ge v1, v3, :cond_1

    aput v5, p2, v1

    .line 123
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    .line 125
    :cond_3
    return-void
.end method

.method unbrew([I)V
    .locals 10
    .param p1, "buf"    # [I

    .prologue
    const/4 v9, 0x1

    .line 89
    sget-boolean v6, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    array-length v6, p1

    rem-int/lit8 v6, v6, 0x2

    if-eq v6, v9, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 91
    :cond_0
    const/4 v0, 0x1

    .line 92
    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    .line 93
    const/16 v1, 0x20

    .line 94
    .local v1, "n":I
    aget v4, p1, v0

    .line 95
    .local v4, "v0":I
    add-int/lit8 v6, v0, 0x1

    aget v5, p1, v6

    .line 96
    .local v5, "v1":I
    const v3, -0x3910c8e0

    .local v3, "sum":I
    move v2, v1

    .line 97
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-lez v2, :cond_1

    .line 98
    shl-int/lit8 v6, v4, 0x4

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    xor-int/2addr v6, v4

    ushr-int/lit8 v7, v4, 0x5

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 99
    shl-int/lit8 v6, v5, 0x4

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v6, v7

    xor-int/2addr v6, v5

    ushr-int/lit8 v7, v5, 0x5

    xor-int/2addr v7, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/tencent/component/utils/TEA;->S:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 100
    const v6, 0x61c88647

    add-int/2addr v3, v6

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_1

    .line 102
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_1
    aput v4, p1, v0

    .line 103
    add-int/lit8 v6, v0, 0x1

    aput v5, p1, v6

    .line 104
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 106
    .end local v1    # "n":I
    .end local v3    # "sum":I
    .end local v4    # "v0":I
    .end local v5    # "v1":I
    :cond_2
    return-void
.end method

.method unpack([III)[B
    .locals 6
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "destLength"    # I

    .prologue
    .line 128
    sget-boolean v4, Lcom/tencent/component/utils/TEA;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    array-length v4, p1

    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x4

    if-le p3, v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 129
    :cond_0
    new-array v1, p3, [B

    .line 130
    .local v1, "dest":[B
    move v2, p2

    .line 131
    .local v2, "i":I
    const/4 v0, 0x0

    .line 132
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, p3, :cond_2

    .line 133
    aget v4, p1, v2

    mul-int/lit8 v5, v0, 0x8

    rsub-int/lit8 v5, v5, 0x18

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 137
    add-int/lit8 v2, v2, 0x1

    .line 132
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_2
    return-object v1
.end method
