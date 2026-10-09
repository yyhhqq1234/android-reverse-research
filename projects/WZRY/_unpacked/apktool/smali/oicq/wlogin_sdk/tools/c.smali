.class public Loicq/wlogin_sdk/tools/c;
.super Ljava/lang/Object;
.source "RegTLVParser.java"


# direct methods
.method public static a(I[BIILjava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/b/b;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 12
    array-length v1, p1

    add-int v2, p2, p3

    if-eq v1, v2, :cond_1

    .line 13
    const/4 v0, -0x1

    .line 36
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 17
    :goto_1
    if-ge v1, p0, :cond_0

    if-lez p3, :cond_0

    .line 18
    invoke-static {p1, p2}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v2

    .line 19
    add-int/lit8 v3, p2, 0x1

    .line 20
    add-int/lit8 v4, p3, -0x1

    .line 21
    invoke-static {p1, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v5

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    add-int/lit8 v4, v4, -0x1

    .line 26
    if-ge v4, v5, :cond_2

    .line 27
    const/4 v0, -0x2

    goto :goto_0

    .line 29
    :cond_2
    new-instance v6, Loicq/wlogin_sdk/b/b;

    invoke-direct {v6, v2}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    .line 30
    invoke-virtual {v6, p1, v3, v5}, Loicq/wlogin_sdk/b/b;->a([BII)V

    .line 31
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int p2, v3, v5

    .line 33
    sub-int p3, v4, v5

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
