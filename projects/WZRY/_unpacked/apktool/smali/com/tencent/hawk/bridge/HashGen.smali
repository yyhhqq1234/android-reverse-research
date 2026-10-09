.class public Lcom/tencent/hawk/bridge/HashGen;
.super Ljava/lang/Object;
.source "HashGen.java"


# static fields
.field static cryptTable:[I

.field static init_crypt_tbl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x500

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/hawk/bridge/HashGen;->cryptTable:[I

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/hawk/bridge/HashGen;->init_crypt_tbl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oneWayHash(Ljava/lang/String;I)J
    .locals 10
    .param p0, "lpszFileName"    # Ljava/lang/String;
    .param p1, "dwHashType"    # I

    .prologue
    .line 42
    sget-boolean v5, Lcom/tencent/hawk/bridge/HashGen;->init_crypt_tbl:Z

    if-nez v5, :cond_0

    .line 44
    invoke-static {}, Lcom/tencent/hawk/bridge/HashGen;->prepare_crypt_tbl()V

    .line 45
    const/4 v5, 0x1

    sput-boolean v5, Lcom/tencent/hawk/bridge/HashGen;->init_crypt_tbl:Z

    .line 49
    :cond_0
    const v3, 0x7fed7fed

    .local v3, "seed1":I
    const v4, -0x11111112

    .line 51
    .local v4, "seed2":I
    const/4 v1, 0x0

    .line 52
    .local v1, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 59
    const-wide/16 v6, 0x0

    .line 60
    .local v6, "unsignedValue":J
    if-gez v3, :cond_2

    .line 61
    const v5, 0x7fffffff

    and-int/2addr v5, v3

    int-to-long v6, v5

    .line 62
    const-wide v8, 0x80000000L

    or-long/2addr v6, v8

    .line 67
    :goto_1
    return-wide v6

    .line 54
    .end local v6    # "unsignedValue":J
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "pos":I
    .local v2, "pos":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/tencent/hawk/bridge/HashGen;->toupper(C)C

    move-result v0

    .line 55
    .local v0, "ch":I
    sget-object v5, Lcom/tencent/hawk/bridge/HashGen;->cryptTable:[I

    shl-int/lit8 v8, p1, 0x8

    add-int/2addr v8, v0

    rem-int/lit16 v8, v8, 0x500

    aget v5, v5, v8

    add-int v8, v3, v4

    xor-int v3, v5, v8

    .line 56
    add-int v5, v0, v3

    add-int/2addr v5, v4

    shl-int/lit8 v8, v4, 0x5

    add-int/2addr v5, v8

    add-int/lit8 v4, v5, 0x3

    move v1, v2

    .end local v2    # "pos":I
    .restart local v1    # "pos":I
    goto :goto_0

    .line 64
    .end local v0    # "ch":I
    .restart local v6    # "unsignedValue":J
    :cond_2
    int-to-long v6, v3

    goto :goto_1
.end method

.method public static prepare_crypt_tbl()V
    .locals 10

    .prologue
    const v9, 0x2aaaab

    const v8, 0xffff

    .line 14
    const v3, 0x100001

    .local v3, "seed":I
    const/4 v1, 0x0

    .local v1, "index1":I
    const/4 v2, 0x0

    .line 16
    .local v2, "index2":I
    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0x100

    if-lt v1, v6, :cond_0

    .line 31
    return-void

    .line 18
    :cond_0
    move v2, v1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v6, 0x5

    if-lt v0, v6, :cond_1

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    mul-int/lit8 v6, v3, 0x7d

    add-int/lit8 v6, v6, 0x3

    rem-int v3, v6, v9

    .line 23
    and-int v6, v3, v8

    shl-int/lit8 v4, v6, 0x10

    .line 25
    .local v4, "temp1":I
    mul-int/lit8 v6, v3, 0x7d

    add-int/lit8 v6, v6, 0x3

    rem-int v3, v6, v9

    .line 26
    and-int v5, v3, v8

    .line 28
    .local v5, "temp2":I
    sget-object v6, Lcom/tencent/hawk/bridge/HashGen;->cryptTable:[I

    or-int v7, v4, v5

    aput v7, v6, v2

    .line 18
    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v2, v2, 0x100

    goto :goto_1
.end method

.method public static toupper(C)C
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 35
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 36
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .line 37
    :cond_0
    return p0
.end method
