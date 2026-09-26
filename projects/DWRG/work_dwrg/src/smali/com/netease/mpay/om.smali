.class public Lcom/netease/mpay/om;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Lcom/netease/mpay/b/aj;

.field private e:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private f:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private g:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private h:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    new-instance v0, Lcom/netease/mpay/on;

    invoke-direct {v0, p0}, Lcom/netease/mpay/on;-><init>(Lcom/netease/mpay/om;)V

    iput-object v0, p0, Lcom/netease/mpay/om;->h:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

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

.method static synthetic a(Lcom/netease/mpay/om;)Lcom/netease/mpay/b/aj;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/om;->d:Lcom/netease/mpay/b/aj;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/om;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/om;->g:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/mpay/om;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/om;->g:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/om;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/om;->h:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/om;)Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/om;->e:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/aj;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/aj;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/om;->d:Lcom/netease/mpay/b/aj;

    iget-object v0, p0, Lcom/netease/mpay/om;->d:Lcom/netease/mpay/b/aj;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/om;->e:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/om;->e:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/om;->d:Lcom/netease/mpay/b/aj;

    invoke-virtual {v0}, Lcom/netease/mpay/b/aj;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v1, p0, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/om;->d:Lcom/netease/mpay/b/aj;

    iget-object v2, v2, Lcom/netease/mpay/b/aj;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/om;->d:Lcom/netease/mpay/b/aj;

    iget-object v3, v3, Lcom/netease/mpay/b/aj;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/om;->f:Lcom/sina/weibo/sdk/auth/AuthInfo;

    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/netease/mpay/om;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/om;->f:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcom/netease/mpay/om;->e:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, p0, Lcom/netease/mpay/om;->e:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/netease/mpay/om;->h:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0
.end method
