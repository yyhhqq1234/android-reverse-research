.class public final Lcom/tencent/b/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(F)Lcom/tencent/b/a/a/a;
    .locals 2

    new-instance v0, Lcom/tencent/b/a/a/a;

    new-instance v1, Lcom/tencent/a/b/c/c;

    invoke-direct {v1}, Lcom/tencent/a/b/c/c;-><init>()V

    invoke-virtual {v1, p0}, Lcom/tencent/a/b/c/c;->a(F)V

    invoke-direct {v0, v1}, Lcom/tencent/b/a/a/a;-><init>(Lcom/tencent/a/b/c/a;)V

    return-object v0
.end method

.method public static a(Lcom/tencent/a/a/a/e;F)Lcom/tencent/b/a/a/a;
    .locals 2

    new-instance v0, Lcom/tencent/b/a/a/a;

    invoke-static {}, Lcom/tencent/a/a/a/c;->a()Lcom/tencent/a/a/a/c$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/a/a/a/c$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/a/a/a/c$a;->a(F)Lcom/tencent/a/a/a/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/a/a/a/c$a;->a()Lcom/tencent/a/a/a/c;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Lcom/tencent/a/a/a/c;)Lcom/tencent/a/b/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/b/a/a/a;-><init>(Lcom/tencent/a/b/c/a;)V

    return-object v0
.end method
