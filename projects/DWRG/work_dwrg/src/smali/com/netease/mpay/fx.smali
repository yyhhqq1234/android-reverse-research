.class Lcom/netease/mpay/fx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/fw;


# direct methods
.method constructor <init>(Lcom/netease/mpay/fw;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

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
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

    iget-object v1, v1, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

    iget-object v1, v1, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

    iget-object v1, v1, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

    iget-object v2, v2, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

    iget-object v5, v5, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    iget-object v5, v5, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/fx;->a:Lcom/netease/mpay/fw;

    iget-object v0, v0, Lcom/netease/mpay/fw;->b:Lcom/netease/mpay/MpayApi;

    invoke-static {v0}, Lcom/netease/mpay/MpayApi;->d(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/AuthenticationCallback;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/User;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    return-void
.end method
