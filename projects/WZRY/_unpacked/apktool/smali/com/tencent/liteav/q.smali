.class public abstract Lcom/tencent/liteav/q;
.super Ljava/lang/Object;
.source "TXPlayerFactory.java"


# direct methods
.method public static a(Landroid/content/Context;I)Lcom/tencent/liteav/o;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 16
    .line 17
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Lcom/tencent/liteav/k;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/k;-><init>(Landroid/content/Context;)V

    .line 25
    :goto_0
    return-object v0

    .line 23
    :cond_1
    new-instance v0, Lcom/tencent/liteav/e;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/e;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
