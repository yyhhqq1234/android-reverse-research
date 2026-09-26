.class Lcom/netease/mpay/d/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/am$a;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/netease/mpay/d/a/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/o;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    iput-boolean p2, p0, Lcom/netease/mpay/d/a/w;->a:Z

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


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v1}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->aR:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netease/mpay/d/a/o$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->c(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/w;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v1}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v2}, Lcom/netease/mpay/d/a/o;->c(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v3}, Lcom/netease/mpay/d/a/o;->e(Lcom/netease/mpay/d/a/o;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/widget/az;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile_account"

    const-string v5, "get_code"

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/a$q;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    iget-object v1, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v1}, Lcom/netease/mpay/d/a/o;->h(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$d;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/d/a/o$d;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/server/a$q;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/a$q;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/mpay/d/a/o;->a(Lcom/netease/mpay/d/a/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->g(Lcom/netease/mpay/d/a/o;)Lcom/netease/mpay/d/a/o$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/mpay/d/a/o$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/d/a/w;->b:Lcom/netease/mpay/d/a/o;

    invoke-static {v0}, Lcom/netease/mpay/d/a/o;->f(Lcom/netease/mpay/d/a/o;)V

    goto :goto_0
.end method
