.class Lcom/netease/mpay/on;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# instance fields
.field final synthetic a:Lcom/netease/mpay/om;


# direct methods
.method constructor <init>(Lcom/netease/mpay/om;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

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
.method public onCancel()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/om;->a(Lcom/netease/mpay/om;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    new-instance v0, Lcom/netease/mpay/f/bt;

    iget-object v1, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v2}, Lcom/netease/mpay/om;->a(Lcom/netease/mpay/om;)Lcom/netease/mpay/b/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/b/aj;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v3}, Lcom/netease/mpay/om;->a(Lcom/netease/mpay/om;)Lcom/netease/mpay/b/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/mpay/b/aj;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    invoke-static {v4}, Lcom/netease/mpay/om;->b(Lcom/netease/mpay/om;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/netease/mpay/oo;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oo;-><init>(Lcom/netease/mpay/on;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bt;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bt;->h()V

    return-void
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/on;->a:Lcom/netease/mpay/om;

    iget-object v1, v1, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    return-void
.end method
