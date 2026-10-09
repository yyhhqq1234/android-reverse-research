.class public Lcom/tencent/mna/base/c/f;
.super Ljava/lang/Object;
.source "ReporterFactory.java"


# direct methods
.method public static a(Lcom/tencent/mna/base/c/c;)Lcom/tencent/mna/base/c/d;
    .locals 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/tencent/mna/base/c/c;->a()I

    move-result v0

    sget-object v1, Lcom/tencent/mna/base/c/c;->b:Lcom/tencent/mna/base/c/c;

    invoke-virtual {v1}, Lcom/tencent/mna/base/c/c;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/tencent/mna/base/c/a;

    invoke-direct {v0, p0}, Lcom/tencent/mna/base/c/a;-><init>(Lcom/tencent/mna/base/c/c;)V

    .line 13
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mna/base/c/g;

    invoke-direct {v0, p0}, Lcom/tencent/mna/base/c/g;-><init>(Lcom/tencent/mna/base/c/c;)V

    goto :goto_0
.end method
