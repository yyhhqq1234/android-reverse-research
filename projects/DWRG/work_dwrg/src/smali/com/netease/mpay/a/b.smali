.class Lcom/netease/mpay/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/FacebookCallback;


# instance fields
.field final synthetic a:Lcom/netease/mpay/a/a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

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
.method public a(Lcom/facebook/login/LoginResult;)V
    .locals 2

    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    iget-object v0, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/a/a;->a(Lcom/netease/mpay/a/a;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;

    iget-object v0, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;Lcom/facebook/AccessToken;)V

    iget-object v0, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

    invoke-static {v0}, Lcom/netease/mpay/a/a;->a(Lcom/netease/mpay/a/a;)Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    new-instance v0, Lcom/netease/mpay/b/aq;

    invoke-direct {v0}, Lcom/netease/mpay/b/aq;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

    invoke-static {v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/aq;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    new-instance v0, Lcom/netease/mpay/b/an;

    iget-object v1, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

    invoke-static {v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ai:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/a/b;->a:Lcom/netease/mpay/a/a;

    invoke-static {v1}, Lcom/netease/mpay/a/a;->b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/a/b;->a(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
