.class public abstract Lcom/tencent/a/b/h/b/a;
.super Lcom/tencent/a/a/a/l;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/a/a/a/l;-><init>()V

    return-void
.end method

.method protected static a(II)I
    .locals 2

    rem-int v0, p0, p1

    mul-int v1, v0, p1

    if-gez v1, :cond_0

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method
