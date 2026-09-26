.class public Lcom/netease/mpay/f/bt;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/bt;->j:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

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
.method protected a(Lcom/netease/mpay/f/au$b;)Lcom/netease/mpay/server/response/m;
    .locals 6

    iget-object v0, p0, Lcom/netease/mpay/f/bt;->c:Landroid/app/Activity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/f/bt;->j:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mpay/server/a$f;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/f/bt;->j:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/f/bt;->j:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v1, Lcom/netease/mpay/server/a$f;

    invoke-direct {v1, v0}, Lcom/netease/mpay/server/a$f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v3, Lcom/netease/mpay/server/a/bk;

    iget-object v4, p0, Lcom/netease/mpay/f/bt;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v5, v5, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/netease/mpay/server/a/bk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/mpay/f/bt;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    iget-object v1, p0, Lcom/netease/mpay/f/bt;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/f/bt;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/bt;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/bt;->j:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-static {v1, v2, v3, v4}, Lcom/netease/mpay/social/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    return-object v0
.end method
