.class public Lcom/netease/mpay/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private a:Landroid/support/v4/app/FragmentActivity;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/netease/mpay/a/f;->d:Z

    iput-boolean v0, p0, Lcom/netease/mpay/a/f;->e:Z

    iput-boolean v0, p0, Lcom/netease/mpay/a/f;->f:Z

    iput-object p1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/netease/mpay/a/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/a/f;->g:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/a/f;->d:Z

    iput-boolean p5, p0, Lcom/netease/mpay/a/f;->c:Z

    iput-boolean p6, p0, Lcom/netease/mpay/a/f;->e:Z

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

.method static synthetic a(Lcom/netease/mpay/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/a/f;->b()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/a/f;Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/a/f;->a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    new-instance v1, Lcom/netease/mpay/b/an;

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/a/f;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p2, v0}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/an;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/a/f;)Landroid/support/v4/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private b()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/netease/mpay/a/f;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    const/16 v2, 0x2328

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/a/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 7

    iget-boolean v0, p0, Lcom/netease/mpay/a/f;->e:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/a/f;->d()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/a/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/a/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->i:[B

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    iget v0, v4, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/a/f;->d()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/bm;

    iget-object v1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/a/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/a/f;->g:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/netease/mpay/a/j;

    invoke-direct {v6, p0}, Lcom/netease/mpay/a/j;-><init>(Lcom/netease/mpay/a/f;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/bm;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/bm;->h()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/netease/mpay/a/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aw:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/a/f;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/f;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/a/f;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iget-object v1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/netease/mpay/server/response/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/a/f;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v0, p0, Lcom/netease/mpay/a/f;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/mpay/a/f;->d:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/a/f;->f:Z

    iget-boolean v0, p0, Lcom/netease/mpay/a/f;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/a/f;->b()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 8

    const/16 v0, 0x2328

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v0, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/a/f;->c()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/ap;

    iget-object v1, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/a/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/a/f;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/a/f;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v6, p0, Lcom/netease/mpay/a/f;->d:Z

    new-instance v7, Lcom/netease/mpay/a/h;

    invoke-direct {v7, p0}, Lcom/netease/mpay/a/h;-><init>(Lcom/netease/mpay/a/f;)V

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/ap;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ap;->h()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ad:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/a/f;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/netease/mpay/a/f;->c()V

    goto :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/netease/mpay/a/f;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/a/f;->f:Z

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lcom/netease/mpay/a/f;->h:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/a/g;

    invoke-direct {v1, p0}, Lcom/netease/mpay/a/g;-><init>(Lcom/netease/mpay/a/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/a/f;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ad:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/a/f;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/a/f;->c()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/a/f;->c()V

    return-void
.end method
