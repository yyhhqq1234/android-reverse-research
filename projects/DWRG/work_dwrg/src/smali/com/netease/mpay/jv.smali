.class Lcom/netease/mpay/jv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/jt;


# direct methods
.method constructor <init>(Lcom/netease/mpay/jt;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 10

    iget-object v0, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->d(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    iget-object v0, v0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    iget-object v1, v1, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v2}, Lcom/netease/mpay/jt;->d(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v3}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v4}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v5}, Lcom/netease/mpay/jt;->e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "czds"

    const-string v7, "cz_cz"

    iget-object v8, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v8}, Lcom/netease/mpay/jt;->f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;

    move-result-object v8

    iget-object v8, v8, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v9, "czds"

    invoke-static {v8, v9}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/jv;->a(Z)V

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v0, p2}, Lcom/netease/mpay/jt;->b(Lcom/netease/mpay/jt;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->c(Lcom/netease/mpay/jt;)Lcom/netease/mpay/widget/s;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ae;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/mpay/jv;->a(Z)V

    iget-object v0, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    iget-object v1, p1, Lcom/netease/mpay/server/response/ae;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/jt;->a(Lcom/netease/mpay/jt;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jv;->a:Lcom/netease/mpay/jt;

    invoke-static {v0}, Lcom/netease/mpay/jt;->b(Lcom/netease/mpay/jt;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ae;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/jv;->a(Lcom/netease/mpay/server/response/ae;)V

    return-void
.end method
