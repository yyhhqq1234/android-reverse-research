.class public Lcom/tencent/android/tpush/service/channel/security/g;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/tencent/android/tpush/service/channel/security/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid key: Key was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    array-length v0, p1

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid key: Length was less than 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    move v2, v1

    .line 48
    :goto_0
    if-ge v0, v5, :cond_2

    .line 49
    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v2, v4

    aput v2, v3, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method


# virtual methods
.method a([B[II)V
    .locals 6

    .prologue
    const/16 v1, 0x18

    const/4 v3, 0x0

    .line 129
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    if-nez v0, :cond_0

    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    array-length v2, p2

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_0
    aput v3, p2, p3

    move v0, v1

    move v2, v3

    .line 133
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 134
    aget v4, p2, p3

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    or-int/2addr v4, v5

    aput v4, p2, p3

    .line 135
    if-nez v0, :cond_1

    .line 137
    add-int/lit8 p3, p3, 0x1

    .line 138
    array-length v0, p2

    if-ge p3, v0, :cond_3

    aput v3, p2, p3

    move v0, v1

    .line 143
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_1
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 145
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method a([I)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 89
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    if-nez v0, :cond_0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 92
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 93
    const/16 v2, 0x20

    .line 94
    aget v7, p1, v0

    .line 95
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    move v4, v5

    move v6, v3

    .line 97
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 98
    const v2, 0x61c88647

    sub-int/2addr v4, v2

    .line 99
    shl-int/lit8 v2, v6, 0x4

    iget-object v8, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    aget v8, v8, v5

    add-int/2addr v2, v8

    xor-int/2addr v2, v6

    ushr-int/lit8 v8, v6, 0x5

    xor-int/2addr v8, v4

    add-int/2addr v2, v8

    iget-object v8, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    aget v8, v8, v1

    add-int/2addr v2, v8

    add-int/2addr v7, v2

    .line 100
    shl-int/lit8 v2, v7, 0x4

    iget-object v8, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    add-int/2addr v2, v8

    xor-int/2addr v2, v7

    ushr-int/lit8 v8, v7, 0x5

    xor-int/2addr v8, v4

    add-int/2addr v2, v8

    iget-object v8, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    const/4 v9, 0x3

    aget v8, v8, v9

    add-int/2addr v2, v8

    add-int/2addr v6, v2

    move v2, v3

    goto :goto_1

    .line 102
    :cond_1
    aput v7, p1, v0

    .line 103
    add-int/lit8 v2, v0, 0x1

    aput v6, p1, v2

    .line 104
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 106
    :cond_2
    return-void
.end method

.method public a([B)[B
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    array-length v0, p1

    div-int/lit8 v3, v0, 0x8

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    .line 67
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 68
    array-length v3, p1

    aput v3, v0, v1

    .line 69
    invoke-virtual {p0, p1, v0, v2}, Lcom/tencent/android/tpush/service/channel/security/g;->a([B[II)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/g;->a([I)V

    .line 71
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/security/g;->a([III)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0
.end method

.method a([III)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 148
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    if-nez v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x4

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 149
    :cond_0
    new-array v4, p3, [B

    move v3, v1

    move v0, v1

    move v2, p2

    .line 152
    :goto_0
    if-ge v3, p3, :cond_2

    .line 153
    aget v5, p1, v2

    mul-int/lit8 v6, v0, 0x8

    rsub-int/lit8 v6, v6, 0x18

    shr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 157
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .line 152
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_2
    return-object v4
.end method

.method b([I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 109
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    if-nez v0, :cond_0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    .line 112
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 113
    const/16 v2, 0x20

    .line 114
    aget v6, p1, v0

    .line 115
    add-int/lit8 v3, v0, 0x1

    aget v5, p1, v3

    .line 116
    const v3, -0x3910c8e0

    move v4, v3

    .line 117
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 118
    shl-int/lit8 v2, v6, 0x4

    iget-object v7, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    add-int/2addr v2, v7

    xor-int/2addr v2, v6

    ushr-int/lit8 v7, v6, 0x5

    xor-int/2addr v7, v4

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    add-int/2addr v2, v7

    sub-int/2addr v5, v2

    .line 119
    shl-int/lit8 v2, v5, 0x4

    iget-object v7, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v2, v7

    xor-int/2addr v2, v5

    ushr-int/lit8 v7, v5, 0x5

    xor-int/2addr v7, v4

    add-int/2addr v2, v7

    iget-object v7, p0, Lcom/tencent/android/tpush/service/channel/security/g;->b:[I

    aget v7, v7, v1

    add-int/2addr v2, v7

    sub-int/2addr v6, v2

    .line 120
    const v2, 0x61c88647

    add-int/2addr v4, v2

    move v2, v3

    goto :goto_1

    .line 122
    :cond_1
    aput v6, p1, v0

    .line 123
    add-int/lit8 v2, v0, 0x1

    aput v5, p1, v2

    .line 124
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 126
    :cond_2
    return-void
.end method

.method public b([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    if-nez v0, :cond_0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/g;->a:Z

    if-nez v0, :cond_1

    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    .line 83
    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/channel/security/g;->a([B[II)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/g;->b([I)V

    .line 85
    aget v1, v0, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/tencent/android/tpush/service/channel/security/g;->a([III)[B

    move-result-object v0

    return-object v0
.end method
