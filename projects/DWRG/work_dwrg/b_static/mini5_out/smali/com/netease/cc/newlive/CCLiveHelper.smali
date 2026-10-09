.class public Lcom/netease/cc/newlive/CCLiveHelper;
.super Ljava/lang/Object;
.source "CCLiveHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLiveError(I)Z
    .locals 1

    const/16 v0, -0x1324

    if-le p0, v0, :cond_0

    const/16 v0, -0xfa0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLiveEvent(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_0

    const/16 v0, 0x44c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
