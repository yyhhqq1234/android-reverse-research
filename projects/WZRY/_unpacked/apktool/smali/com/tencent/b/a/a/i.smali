.class public Lcom/tencent/b/a/a/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/b/a/a/i$b;,
        Lcom/tencent/b/a/a/i$a;,
        Lcom/tencent/b/a/a/i$j;,
        Lcom/tencent/b/a/a/i$i;,
        Lcom/tencent/b/a/a/i$f;,
        Lcom/tencent/b/a/a/i$c;,
        Lcom/tencent/b/a/a/i$h;,
        Lcom/tencent/b/a/a/i$d;,
        Lcom/tencent/b/a/a/i$g;,
        Lcom/tencent/b/a/a/i$e;
    }
.end annotation


# static fields
.field private static d:Lcom/tencent/b/a/a/i$b;


# instance fields
.field private a:Lcom/tencent/a/b/d/e;

.field private b:Lcom/tencent/a/b/d/a;

.field private c:Lcom/tencent/a/b/d/c;


# direct methods
.method public constructor <init>(Lcom/tencent/a/b/d/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->e()Lcom/tencent/a/b/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/a/i;->b:Lcom/tencent/a/b/d/a;

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    return-void
.end method

.method private a(Lcom/tencent/b/a/a/a;JLcom/tencent/b/a/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->f()Lcom/tencent/a/b/d/a$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/a$1;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/b/a/a/a;->a()Lcom/tencent/a/b/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/c/a;->a(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/b/a/a/a;->a()Lcom/tencent/a/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/tencent/a/b/c/a;->a(Lcom/tencent/b/a/a/c;)V

    invoke-virtual {p1}, Lcom/tencent/b/a/a/a;->a()Lcom/tencent/a/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/a/b/c/a;->a(J)V

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/b/a/a/a;->a()Lcom/tencent/a/b/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/b;->a(Lcom/tencent/a/b/c/a;)V

    return-void
.end method

.method public static f()Lcom/tencent/b/a/a/i$b;
    .locals 1

    sget-object v0, Lcom/tencent/b/a/a/i;->d:Lcom/tencent/b/a/a/i$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/c;->d()Lcom/tencent/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/tencent/a/a/a/h;)Lcom/tencent/a/a/a/g;
    .locals 2

    new-instance v0, Lcom/tencent/a/a/a/g;

    iget-object v1, p0, Lcom/tencent/b/a/a/i;->b:Lcom/tencent/a/b/d/a;

    invoke-virtual {v1, p1}, Lcom/tencent/a/b/d/a;->a(Lcom/tencent/a/a/a/h;)Lcom/tencent/a/b/e/a/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/a/a/a/g;-><init>(Lcom/tencent/a/b/e/a/c;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/c;->d(I)V

    return-void
.end method

.method public a(Lcom/tencent/a/a/a/e;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/b/a/a/i;->b()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/tencent/b/a/a/b;->a(Lcom/tencent/a/a/a/e;F)Lcom/tencent/b/a/a/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/b/a/a/a;JLcom/tencent/b/a/a/c;)V

    return-void
.end method

.method public a(Lcom/tencent/b/a/a/i$a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->h()Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/f;->a(Lcom/tencent/b/a/a/i$a;)V

    return-void
.end method

.method public a(Lcom/tencent/b/a/a/i$d;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->h()Lcom/tencent/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/f;->a(Lcom/tencent/b/a/a/i$d;)V

    return-void
.end method

.method public a(Lcom/tencent/b/a/a/i$f;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/b;->a(Lcom/tencent/b/a/a/i$f;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/e;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/b/a/a/i;->a:Lcom/tencent/a/b/d/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/e;->a(I)V

    goto :goto_0
.end method

.method public b()D
    .locals 2

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/c;->e()D

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/d/c;->c(I)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/c;->j()Lcom/tencent/a/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/b/a;->a()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 4

    int-to-float v0, p1

    invoke-static {v0}, Lcom/tencent/b/a/a/b;->a(F)Lcom/tencent/b/a/a/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/tencent/b/a/a/i;->a(Lcom/tencent/b/a/a/a;JLcom/tencent/b/a/a/c;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/i;->c:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/c;->k()Lcom/tencent/a/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/b/a;->a()I

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "1.2.5"

    return-object v0
.end method
