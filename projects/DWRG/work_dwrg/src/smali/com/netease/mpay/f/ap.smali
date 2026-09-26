.class public Lcom/netease/mpay/f/ap;
.super Lcom/netease/mpay/f/au;


# instance fields
.field private j:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/au;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZLcom/netease/mpay/f/au$a;)V

    iput-object p4, p0, Lcom/netease/mpay/f/ap;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p5, p0, Lcom/netease/mpay/f/ap;->k:Ljava/lang/String;

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
    .locals 7

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/f/ap;->b:Z

    if-eqz v0, :cond_0

    iget-object v6, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v0, Lcom/netease/mpay/server/a/w;

    iget-object v1, p0, Lcom/netease/mpay/f/ap;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/f/ap;->k:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    iget-object v5, v5, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/server/a/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/mpay/f/ap;->a(Lcom/netease/mpay/f/au$b;Lcom/netease/mpay/server/response/m;Lcom/netease/mpay/e/b/o$a;Z)V

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/f/au$b;->b:Lcom/netease/mpay/server/d;

    new-instance v1, Lcom/netease/mpay/server/a/u;

    iget-object v2, p0, Lcom/netease/mpay/f/ap;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/mpay/f/au$b;->c:Lcom/netease/mpay/e/b/f;

    iget-object v3, v3, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/f/ap;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/mpay/server/a/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/d;->a(Lcom/netease/mpay/server/a/ax;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/m;
    :try_end_0
    .catch Lcom/netease/mpay/server/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p1, Lcom/netease/mpay/f/au$b;->d:Lcom/netease/mpay/e/b/o;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/netease/mpay/server/a$f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/f/ap;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v2, p0, Lcom/netease/mpay/f/ap;->j:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_1
    throw v0
.end method
