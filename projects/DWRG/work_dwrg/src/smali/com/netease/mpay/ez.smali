.class Lcom/netease/mpay/ez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/d/a/a$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ex;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ex;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

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
    .locals 6

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    iget-object v1, v1, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v4}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v0, p1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/v;Z)V
    .locals 8

    iget-boolean v0, p2, Lcom/netease/mpay/server/response/v;->a:Z

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    new-instance v0, Lcom/netease/mpay/d/a/f$c;

    iget-object v1, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v1}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p2, Lcom/netease/mpay/server/response/v;->b:Z

    if-nez v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-boolean v5, p2, Lcom/netease/mpay/server/response/v;->c:Z

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/d/a/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/f$b;Lcom/netease/mpay/server/response/ai;)V

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    new-instance v1, Lcom/netease/mpay/d/a/o$d;

    iget-object v2, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v3}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, p3}, Lcom/netease/mpay/d/a/o$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/netease/mpay/ex;->a(Lcom/netease/mpay/ex;Lcom/netease/mpay/d/a/o$d;)V

    goto :goto_1
.end method

.method public b()V
    .locals 6

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    iget-object v1, v1, Lcom/netease/mpay/ex;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v2}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/m;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v4}, Lcom/netease/mpay/ex;->c(Lcom/netease/mpay/ex;)Lcom/netease/mpay/b/m;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/b/m;->e:Lcom/netease/mpay/AuthenticationCallback;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->d(Lcom/netease/mpay/ex;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ez;->a:Lcom/netease/mpay/ex;

    invoke-static {v0}, Lcom/netease/mpay/ex;->e(Lcom/netease/mpay/ex;)V

    return-void
.end method
