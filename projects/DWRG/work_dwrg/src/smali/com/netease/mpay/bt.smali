.class Lcom/netease/mpay/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/bu$b;


# instance fields
.field final synthetic a:Lcom/netease/mpay/server/response/i;

.field final synthetic b:Lcom/netease/mpay/bm;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bm;Lcom/netease/mpay/server/response/i;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    iput-object p2, p0, Lcom/netease/mpay/bt;->a:Lcom/netease/mpay/server/response/i;

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
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v0}, Lcom/netease/mpay/bm;->e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v1}, Lcom/netease/mpay/bm;->a(Lcom/netease/mpay/bm;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v2}, Lcom/netease/mpay/bm;->b(Lcom/netease/mpay/bm;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v2}, Lcom/netease/mpay/bm;->c(Lcom/netease/mpay/bm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v2}, Lcom/netease/mpay/bm;->e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/User;

    iget-object v1, v1, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/e/b/o;)V

    invoke-interface {v2, v3}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    iget-object v1, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/bt;->a:Lcom/netease/mpay/server/response/i;

    iget-object v2, v2, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget-object v2, v2, Lcom/netease/mpay/server/response/i$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v1, p0, Lcom/netease/mpay/bt;->a:Lcom/netease/mpay/server/response/i;

    iget-object v1, v1, Lcom/netease/mpay/server/response/i;->d:Lcom/netease/mpay/server/response/i$a;

    iget v1, v1, Lcom/netease/mpay/server/response/i$a;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v0}, Lcom/netease/mpay/bm;->e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bt;->a:Lcom/netease/mpay/server/response/i;

    iget-object v1, v1, Lcom/netease/mpay/server/response/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/bt;->a:Lcom/netease/mpay/server/response/i;

    iget-object v2, v2, Lcom/netease/mpay/server/response/i;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/AuthenticationCallback;->onEnterGame(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v0}, Lcom/netease/mpay/bm;->e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v0}, Lcom/netease/mpay/bm;->e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/bt;->b:Lcom/netease/mpay/bm;

    invoke-static {v0}, Lcom/netease/mpay/bm;->e(Lcom/netease/mpay/bm;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    return-void
.end method
