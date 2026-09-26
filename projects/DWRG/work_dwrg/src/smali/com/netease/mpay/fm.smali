.class Lcom/netease/mpay/fm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/AuthenticationCallback;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/netease/mpay/AuthenticationCallback;

.field final synthetic c:Lcom/netease/mpay/MpayApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/MpayApi;Landroid/os/Handler;Lcom/netease/mpay/AuthenticationCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fm;->c:Lcom/netease/mpay/MpayApi;

    iput-object p2, p0, Lcom/netease/mpay/fm;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/netease/mpay/fm;->b:Lcom/netease/mpay/AuthenticationCallback;

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
.method public onDialogFinish()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/fq;

    invoke-direct {v1, p0}, Lcom/netease/mpay/fq;-><init>(Lcom/netease/mpay/fm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/fr;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/fr;-><init>(Lcom/netease/mpay/fm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGuestBindSuccess(Lcom/netease/mpay/User;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/fo;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/fo;-><init>(Lcom/netease/mpay/fm;Lcom/netease/mpay/User;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoginSuccess(Lcom/netease/mpay/User;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/fn;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/fn;-><init>(Lcom/netease/mpay/fm;Lcom/netease/mpay/User;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLogout(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fm;->a:Landroid/os/Handler;

    new-instance v1, Lcom/netease/mpay/fp;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/fp;-><init>(Lcom/netease/mpay/fm;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
