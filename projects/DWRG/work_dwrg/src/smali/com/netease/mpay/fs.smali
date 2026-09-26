.class Lcom/netease/mpay/fs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/e/b/o;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Lcom/netease/mpay/e/b;

.field final synthetic d:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;Lcom/netease/mpay/e/b;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iput-object p3, p0, Lcom/netease/mpay/fs;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/netease/mpay/fs;->c:Lcom/netease/mpay/e/b;

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

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/mpay/fs;->c:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/e/c/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v1, Lcom/netease/mpay/hb;->a:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/netease/mpay/f/a/b$a;->b:Lcom/netease/mpay/f/a/b$a;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v1}, Lcom/netease/mpay/e/a/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iget v3, v3, Lcom/netease/mpay/e/b/o;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, p0, Lcom/netease/mpay/fs;->b:Ljava/lang/Integer;

    invoke-static {v1, p2, v0, v2}, Lcom/netease/mpay/MpayApi;->a(Lcom/netease/mpay/MpayApi;Ljava/lang/String;ZLjava/lang/Integer;)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/b/m$d;

    new-instance v4, Lcom/netease/mpay/b/a$a;

    iget-object v5, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v6, v6, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v7, v7, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v5, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    invoke-static {v6}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/m$d;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v4, p0, Lcom/netease/mpay/fs;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/b/m$g;

    new-instance v4, Lcom/netease/mpay/b/a$a;

    iget-object v5, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v6, v6, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v7, v7, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v5, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    sget-object v6, Lcom/netease/mpay/b/m$b;->a:Lcom/netease/mpay/b/m$b;

    iget-object v7, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    invoke-static {v7}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netease/mpay/b/m$g;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/b/m$b;Lcom/netease/mpay/AuthenticationCallback;)V

    iget-object v4, p0, Lcom/netease/mpay/fs;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

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

    iget-object v1, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/b/m$e;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v4, v4, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v6, v6, Lcom/netease/mpay/MpayApi;->f:Lcom/netease/mpay/MpayConfig;

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v4, p0, Lcom/netease/mpay/fs;->a:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p2, Lcom/netease/mpay/server/response/m;->v:Lcom/netease/mpay/server/response/ai;

    iget-object v6, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    invoke-static {v6}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/netease/mpay/b/m$e;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/server/response/ai;Lcom/netease/mpay/AuthenticationCallback;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netease/mpay/fs;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/m;ZLjava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/fs;->d:Lcom/netease/mpay/MpayApi;

    invoke-static {v0}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    goto :goto_0
.end method
