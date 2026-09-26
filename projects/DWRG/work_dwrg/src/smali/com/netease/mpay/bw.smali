.class Lcom/netease/mpay/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b/o;

.field final synthetic b:Lcom/netease/mpay/AuthenticationCallback;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/netease/mpay/bu;


# direct methods
.method constructor <init>(Lcom/netease/mpay/bu;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    iput-object p2, p0, Lcom/netease/mpay/bw;->a:Lcom/netease/mpay/e/b/o;

    iput-object p3, p0, Lcom/netease/mpay/bw;->b:Lcom/netease/mpay/AuthenticationCallback;

    iput-object p4, p0, Lcom/netease/mpay/bw;->c:Ljava/lang/Integer;

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
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/netease/mpay/bw;->a:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mpay/by;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    iget-object v1, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    invoke-static {v1}, Lcom/netease/mpay/bu;->b(Lcom/netease/mpay/bu;)Lcom/netease/mpay/e/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/bw;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, p0, Lcom/netease/mpay/bw;->b:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v5, p0, Lcom/netease/mpay/bw;->c:Ljava/lang/Integer;

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    iget-object v1, v1, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$d;

    iget-object v3, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    invoke-static {v3}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bw;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/bw;->b:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v2, v3, v4, v5}, Lcom/netease/mpay/b/m$d;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v3, p0, Lcom/netease/mpay/bw;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    iget-object v1, v1, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$g;

    iget-object v3, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    invoke-static {v3}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bw;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v5, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    iget-object v6, p0, Lcom/netease/mpay/bw;->b:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v3, p0, Lcom/netease/mpay/bw;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 7

    invoke-virtual {p2}, Lcom/netease/mpay/server/response/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    iget-object v1, v1, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/m$e;

    iget-object v3, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    invoke-static {v3}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/e;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/bw;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    iget-object v6, p0, Lcom/netease/mpay/bw;->b:Lcom/netease/mpay/AuthenticationCallback;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$e;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/server/response/ai;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netease/mpay/bw;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    iget-object v1, v1, Lcom/netease/mpay/bu;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    invoke-static {v2}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p0, Lcom/netease/mpay/bw;->d:Lcom/netease/mpay/bu;

    invoke-static {v5}, Lcom/netease/mpay/bu;->a(Lcom/netease/mpay/bu;)Lcom/netease/mpay/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/b/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/bw;->b:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    goto :goto_0
.end method
