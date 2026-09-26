.class Lcom/netease/mpay/codescanner/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/codescanner/m;


# direct methods
.method constructor <init>(Lcom/netease/mpay/codescanner/m;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

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

    iget-object v0, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0, p2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

    iget-object v1, v1, Lcom/netease/mpay/codescanner/m;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v2}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/w;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v5}, Lcom/netease/mpay/codescanner/m;->a(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/b/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/mpay/b/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oy;->a()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/s;->a:Lcom/netease/mpay/codescanner/m;

    invoke-static {v0}, Lcom/netease/mpay/codescanner/m;->b(Lcom/netease/mpay/codescanner/m;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    :cond_0
    return-void
.end method
