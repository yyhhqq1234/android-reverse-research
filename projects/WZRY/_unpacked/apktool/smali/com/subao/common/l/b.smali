.class public Lcom/subao/common/l/b;
.super Ljava/lang/Object;
.source "QosHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/b$d;,
        Lcom/subao/common/l/b$c;,
        Lcom/subao/common/l/b$f;,
        Lcom/subao/common/l/b$e;,
        Lcom/subao/common/l/b$b;,
        Lcom/subao/common/l/b$a;,
        Lcom/subao/common/l/b$g;
    }
.end annotation


# direct methods
.method public static a(Lcom/subao/common/j/k$a;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/subao/common/j/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 34
    invoke-static {p0}, Lcom/subao/common/j/k;->b(Lcom/subao/common/j/k$a;)[B

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lcom/subao/common/j/k;->a(Lcom/subao/common/j/k$a;)[B

    move-result-object v0

    .line 38
    :cond_0
    invoke-static {v0}, Lcom/subao/common/j/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 39
    return-object v0
.end method
