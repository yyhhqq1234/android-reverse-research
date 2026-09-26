.class Lcom/netease/mpay/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netease/mpay/f/au$a;


# instance fields
.field final synthetic a:Lcom/netease/mpay/a/f;


# direct methods
.method constructor <init>(Lcom/netease/mpay/a/f;)V
    .locals 2

    iput-object p1, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

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
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v0}, Lcom/netease/mpay/a/f;->e(Lcom/netease/mpay/a/f;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/f/a/b$a;->c:Lcom/netease/mpay/f/a/b$a;

    if-ne v0, p1, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v1}, Lcom/netease/mpay/a/f;->e(Lcom/netease/mpay/a/f;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/a/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/a/i;-><init>(Lcom/netease/mpay/a/h;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v0, p1, p2}, Lcom/netease/mpay/a/f;->a(Lcom/netease/mpay/a/f;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v1}, Lcom/netease/mpay/a/f;->b(Lcom/netease/mpay/a/f;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v2}, Lcom/netease/mpay/a/f;->c(Lcom/netease/mpay/a/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v4, p2, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v5}, Lcom/netease/mpay/a/f;->d(Lcom/netease/mpay/a/f;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p2, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v2, p2, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    iget-object v1, p0, Lcom/netease/mpay/a/h;->a:Lcom/netease/mpay/a/f;

    invoke-static {v1}, Lcom/netease/mpay/a/f;->b(Lcom/netease/mpay/a/f;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    return-void
.end method
