.class Lcom/netease/mpay/op;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/oo;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oo;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/op;->a:Lcom/netease/mpay/oo;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/op;->a:Lcom/netease/mpay/oo;

    iget-object v0, v0, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v0, v0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v0}, Lcom/netease/mpay/om;->d(Lcom/netease/mpay/om;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/op;->a:Lcom/netease/mpay/oo;

    iget-object v1, v1, Lcom/netease/mpay/oo;->a:Lcom/netease/mpay/on;

    iget-object v1, v1, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v1}, Lcom/netease/mpay/om;->c(Lcom/netease/mpay/om;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    return-void
.end method
