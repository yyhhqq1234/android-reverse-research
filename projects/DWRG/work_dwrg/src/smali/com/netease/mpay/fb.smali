.class Lcom/netease/mpay/fb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/d/a/f$d;


# instance fields
.field final synthetic a:Lcom/netease/mpay/d/a/f$b;

.field final synthetic b:Lcom/netease/mpay/server/response/ai;

.field final synthetic c:Lcom/netease/mpay/ex;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    iput-object p2, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iput-object p3, p0, Lcom/netease/mpay/fb;->b:Lcom/netease/mpay/server/response/ai;

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

    iget-object v0, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    move-object v4, v0

    check-cast v4, Lcom/netease/mpay/d/a/f$e;

    iget-boolean v0, v4, Lcom/netease/mpay/d/a/f$e;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, v4, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/fb;->b:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/fb;->b:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/ai;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->g(Lcom/netease/mpay/ex;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/fb;->b:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/ai;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    new-instance v0, Lcom/netease/mpay/d/a/af$e;

    iget-object v1, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    iget-object v4, v4, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/d/a/af$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Ljava/lang/String;Z)V

    invoke-static {v6, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/af$e;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    iget-object v1, v4, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/ex;->b(Lcom/netease/mpay/ex;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/w;)V
    .locals 9

    iget-object v0, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    new-instance v0, Lcom/netease/mpay/d/a/y$c;

    iget-object v1, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-object v1, v1, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-object v2, v2, Lcom/netease/mpay/d/a/f$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    check-cast v3, Lcom/netease/mpay/d/a/f$c;

    iget-object v3, v3, Lcom/netease/mpay/d/a/f$c;->d:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/netease/mpay/server/response/w;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/netease/mpay/server/response/w;->b:Ljava/lang/String;

    iget-object v7, p1, Lcom/netease/mpay/server/response/w;->c:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/d/a/y$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v8, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/y$c;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/fb;->b:Lcom/netease/mpay/server/response/ai;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/server/response/m;->a(Lcom/netease/mpay/server/response/ai;)V

    invoke-virtual {p2}, Lcom/netease/mpay/server/response/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    new-instance v2, Lcom/netease/mpay/d/a/f$e;

    iget-object v0, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-object v0, v0, Lcom/netease/mpay/d/a/f$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-object v3, v3, Lcom/netease/mpay/d/a/f$b;->b:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/netease/mpay/d/a/f$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p2, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    sget-object v3, Lcom/netease/mpay/server/response/ai$a;->d:Lcom/netease/mpay/server/response/ai$a;

    invoke-virtual {v0, v3}, Lcom/netease/mpay/server/response/ai;->c(Lcom/netease/mpay/server/response/ai$a;)Lcom/netease/mpay/server/response/ai;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/netease/mpay/server/response/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    new-instance v0, Lcom/netease/mpay/d/a/af$e;

    iget-object v1, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    iget-object v4, p2, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->u:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/d/a/af$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Ljava/lang/String;Z)V

    invoke-static {v6, v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/af$e;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/netease/mpay/server/response/m;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    iget-object v1, p2, Lcom/netease/mpay/server/response/m;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/ex;->b(Lcom/netease/mpay/ex;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    new-instance v1, Lcom/netease/mpay/b/ao;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/b/ao;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    iget v1, v5, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    iget-object v1, v1, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    invoke-virtual {v5, v3}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x7

    iget v1, v5, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v5}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    goto :goto_0
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    iget-object v0, v0, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->p:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/b;

    iget-object v3, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v3}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v5}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/b/b;-><init>(Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    iget-boolean v0, v0, Lcom/netease/mpay/d/a/f$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fb;->a:Lcom/netease/mpay/d/a/f$b;

    check-cast v0, Lcom/netease/mpay/d/a/f$e;

    iget-boolean v1, v0, Lcom/netease/mpay/d/a/f$e;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->f(Lcom/netease/mpay/ex;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v0, v0, Lcom/netease/mpay/d/a/f$e;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/fb;->c:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->g(Lcom/netease/mpay/ex;)V

    goto :goto_0
.end method
