.class public Lcom/tencent/trbt/videosdk/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "num":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, p1, 0x4

    if-ge v0, v2, :cond_0

    .line 30
    shl-int/lit8 v1, v1, 0x8

    .line 31
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return v1
.end method

.method public static intToBytes(I)[B
    .locals 4
    .param p0, "num"    # I

    .prologue
    const/4 v3, 0x4

    .line 13
    new-array v0, v3, [B

    .line 14
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 15
    mul-int/lit8 v2, v1, 0x8

    rsub-int/lit8 v2, v2, 0x18

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    return-object v0
.end method
