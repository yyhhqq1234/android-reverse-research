.class Lcom/netease/mpay/fu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fu;->a:Lcom/netease/mpay/MpayApi;

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

    iget-object v0, p0, Lcom/netease/mpay/fu;->a:Lcom/netease/mpay/MpayApi;

    invoke-static {v0}, Lcom/netease/mpay/MpayApi;->e(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/BackgroundAuthenticationCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/netease/mpay/BackgroundAuthenticationCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fu;->a:Lcom/netease/mpay/MpayApi;

    invoke-static {v0}, Lcom/netease/mpay/MpayApi;->e(Lcom/netease/mpay/MpayApi;)Lcom/netease/mpay/BackgroundAuthenticationCallback;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/UserExt;

    invoke-direct {v1, p1, p2}, Lcom/netease/mpay/UserExt;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/BackgroundAuthenticationCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    return-void
.end method
