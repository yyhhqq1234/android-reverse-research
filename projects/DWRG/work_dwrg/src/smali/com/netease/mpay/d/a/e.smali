.class Lcom/netease/mpay/d/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/netease/mpay/d/a/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/d/a/a;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    iput-object p2, p0, Lcom/netease/mpay/d/a/e;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/netease/mpay/d/a/e;->b:Z

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
.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a;->a(Lcom/netease/mpay/d/a/a;)Lcom/netease/mpay/d/a/a$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/mpay/d/a/a$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/server/response/v;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a;->b(Lcom/netease/mpay/d/a/a;)Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/netease/mpay/server/response/v;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a;->e(Lcom/netease/mpay/d/a/a;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v1}, Lcom/netease/mpay/d/a/a;->c(Lcom/netease/mpay/d/a/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v2}, Lcom/netease/mpay/d/a/a;->b(Lcom/netease/mpay/d/a/a;)Lcom/netease/mpay/e/b/af;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v3}, Lcom/netease/mpay/d/a/a;->d(Lcom/netease/mpay/d/a/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/mpay/widget/az;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile_account"

    const-string v5, "click"

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/e;->c:Lcom/netease/mpay/d/a/a;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a;->a(Lcom/netease/mpay/d/a/a;)Lcom/netease/mpay/d/a/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/d/a/e;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/netease/mpay/d/a/e;->b:Z

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/mpay/d/a/a$b;->a(Ljava/lang/String;Lcom/netease/mpay/server/response/v;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/v;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/d/a/e;->a(Lcom/netease/mpay/server/response/v;)V

    return-void
.end method
