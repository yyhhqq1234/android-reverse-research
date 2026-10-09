.class public Lcom/tencent/tmapkupdatesdk/internal/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(I)I
    .locals 4

    .prologue
    .line 37
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 38
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 39
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 40
    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 42
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(S)S
    .locals 2

    .prologue
    .line 21
    and-int/lit16 v0, p0, 0xff

    .line 22
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 24
    shl-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method
