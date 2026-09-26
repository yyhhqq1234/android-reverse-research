.class Lcom/netease/mpay/gh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/BackgroundAuthenticationCallback;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

.field final synthetic c:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/BackgroundAuthenticationCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/gh;->c:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/gh;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/mpay/gh;->b:Lcom/netease/mpay/BackgroundAuthenticationCallback;

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
.method public onLoginFail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/gh;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/gj;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/gj;-><init>(Lcom/netease/mpay/gh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/gh;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/gi;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/gi;-><init>(Lcom/netease/mpay/gh;Lcom/netease/mpay/User;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/netease/mpay/f/bn;

    iget-object v1, p0, Lcom/netease/mpay/gh;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/gh;->c:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/gh;->c:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/f/bn;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bn;->h()V

    return-void
.end method
