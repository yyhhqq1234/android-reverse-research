.class Lcom/netease/mpay/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/netease/mpay/User;

.field final synthetic b:Lcom/netease/mpay/fm;


# direct methods
.method constructor <init>(Lcom/netease/mpay/fm;Lcom/netease/mpay/User;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/fo;->b:Lcom/netease/mpay/fm;

    iput-object p2, p0, Lcom/netease/mpay/fo;->a:Lcom/netease/mpay/User;

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
.method public run()V
    .locals 4

    const-string v0, "AuthenticationCallback : onGuestBindSuccess"

    invoke-static {v0}, Lcom/netease/mpay/do;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/mpay/ck$a;->a()Lcom/netease/mpay/ck$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fo;->b:Lcom/netease/mpay/fm;

    iget-object v1, v1, Lcom/netease/mpay/fm;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/ck$a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/f/bn;

    iget-object v1, p0, Lcom/netease/mpay/fo;->b:Lcom/netease/mpay/fm;

    iget-object v1, v1, Lcom/netease/mpay/fm;->c:Lcom/netease/mpay/MpayApi;

    iget-object v1, v1, Lcom/netease/mpay/MpayApi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/fo;->b:Lcom/netease/mpay/fm;

    iget-object v2, v2, Lcom/netease/mpay/fm;->c:Lcom/netease/mpay/MpayApi;

    iget-object v2, v2, Lcom/netease/mpay/MpayApi;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/fo;->b:Lcom/netease/mpay/fm;

    iget-object v3, v3, Lcom/netease/mpay/fm;->c:Lcom/netease/mpay/MpayApi;

    iget-object v3, v3, Lcom/netease/mpay/MpayApi;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/f/bn;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bn;->h()V

    iget-object v0, p0, Lcom/netease/mpay/fo;->b:Lcom/netease/mpay/fm;

    iget-object v0, v0, Lcom/netease/mpay/fm;->b:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/fo;->a:Lcom/netease/mpay/User;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onGuestBindSuccess(Lcom/netease/mpay/User;)V

    iget-object v0, p0, Lcom/netease/mpay/fo;->a:Lcom/netease/mpay/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/mpay/hy;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fo;->a:Lcom/netease/mpay/User;

    iget-object v0, v0, Lcom/netease/mpay/User;->uid:Ljava/lang/String;

    goto :goto_0
.end method
