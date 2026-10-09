.class public final Lcom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArrayKt;
.super Ljava/lang/Object;
.source "ByteSubArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteSubArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteSubArray.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArrayKt\n*L\n1#1,106:1\n106#1:107\n106#1:108\n106#1:109\n106#1:110\n106#1:111\n103#1:112\n103#1:113\n103#1:114\n103#1:115\n103#1:116\n103#1:117\n103#1:118\n103#1:119\n*S KotlinDebug\n*F\n+ 1 ByteSubArray.kt\ncom/netease/androidcrashhandler/thirdparty/shark/internal/ByteSubArrayKt\n*L\n76#1:107\n83#1:108\n84#1:109\n85#1:110\n86#1:111\n92#1:112\n93#1:113\n94#1:114\n95#1:115\n96#1:116\n97#1:117\n98#1:118\n99#1:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0000\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0082\u000c\u001a\u0015\u0010\u0000\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u000c\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\u0008\u001a\u00020\u0004*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\t\u001a\u00020\n*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "and",
        "",
        "",
        "other",
        "",
        "readInt",
        "",
        "index",
        "readLong",
        "readShort",
        "",
        "CrashHunterLib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final and(BI)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method private static final and(BJ)J
    .locals 2

    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final readInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 83
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    .line 84
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .line 85
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    .line 86
    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method public static final readLong([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x1

    .line 92
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 p1, 0x38

    shl-long/2addr v1, p1

    add-int/lit8 p1, v0, 0x1

    .line 93
    aget-byte v0, p0, v0

    int-to-long v5, v0

    and-long/2addr v5, v3

    const/16 v0, 0x30

    shl-long/2addr v5, v0

    or-long v0, v1, v5

    add-int/lit8 v2, p1, 0x1

    .line 94
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x28

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    add-int/lit8 p1, v2, 0x1

    .line 95
    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x20

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 96
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x18

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    add-int/lit8 p1, v2, 0x1

    .line 97
    aget-byte v2, p0, v2

    int-to-long v5, v2

    and-long/2addr v5, v3

    const/16 v2, 0x10

    shl-long/2addr v5, v2

    or-long/2addr v0, v5

    add-int/lit8 v2, p1, 0x1

    .line 98
    aget-byte p1, p0, p1

    int-to-long v5, p1

    and-long/2addr v5, v3

    const/16 p1, 0x8

    shl-long/2addr v5, p1

    or-long/2addr v0, v5

    .line 99
    aget-byte p0, p0, v2

    int-to-long p0, p0

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final readShort([BI)S
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 76
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method
