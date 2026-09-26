.class Lcom/netease/mpay/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/ah;


# direct methods
.method constructor <init>(Lcom/netease/mpay/ah;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->f(Lcom/netease/mpay/ah;)Lcom/netease/mpay/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v1}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v1}, Lcom/netease/mpay/ah;->f(Lcom/netease/mpay/ah;)Lcom/netease/mpay/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v0}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v1}, Lcom/netease/mpay/ah;->g(Lcom/netease/mpay/ah;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    iget-object v1, v1, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v2}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-static {v5}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;

    move-result-object v5

    iget-object v6, v5, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    invoke-virtual {v0}, Lcom/netease/mpay/ah;->m()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ak;->a:Lcom/netease/mpay/ah;

    iget-object v1, v1, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/au;->a(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method
