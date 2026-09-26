.class public Lcom/netease/mpay/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/AccessToken;

.field private e:Lcom/facebook/CallbackManager;

.field private f:Landroid/app/Activity;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Lcom/netease/mpay/e/b;

.field private n:Lcom/facebook/FacebookCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

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

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "email"

    iput-object v0, p0, Lcom/netease/mpay/a/a;->a:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lcom/netease/mpay/a/a;->b:Ljava/lang/String;

    const-string v0, "id"

    iput-object v0, p0, Lcom/netease/mpay/a/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/a/a;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/a/a;->l:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/a/b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/a/b;-><init>(Lcom/netease/mpay/a/a;)V

    iput-object v0, p0, Lcom/netease/mpay/a/a;->n:Lcom/facebook/FacebookCallback;

    iput-object p1, p0, Lcom/netease/mpay/a/a;->f:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/a/a;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/a/a;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/a/a;->l:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/netease/mpay/a/a;->k:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/a/a;->f:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/a/a;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/a/a;->m:Lcom/netease/mpay/e/b;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/a/a;)Lcom/facebook/AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/a;->d:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/a/a;Lcom/facebook/AccessToken;)Lcom/facebook/AccessToken;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/a/a;->d:Lcom/facebook/AccessToken;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/a/a;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/netease/mpay/e/b/o;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1}, Lcom/netease/mpay/e/b/k;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/f/r$a;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/f/r$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/f/r$a;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/AccessToken;)V
    .locals 4

    new-instance v0, Lcom/netease/mpay/a/c;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/a/c;-><init>(Lcom/netease/mpay/a/a;Lcom/facebook/AccessToken;)V

    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fields"

    const-string v3, "id,name,email"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method private a(Z)V
    .locals 4

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/a/a;->e:Lcom/facebook/CallbackManager;

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/a/a;->e:Lcom/facebook/CallbackManager;

    iget-object v2, p0, Lcom/netease/mpay/a/a;->n:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_profile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "email"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/a/a;->f:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void

    :cond_0
    sget-object v1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/a/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/a;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/a/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static b(Landroid/content/Context;Lcom/netease/mpay/e/b/o;)V
    .locals 2

    invoke-static {p1}, Lcom/netease/mpay/e/b/k;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netease/mpay/f/r$a;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/f/r$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/f/r$a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/a/a;Lcom/facebook/AccessToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/a/a;->a(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/a/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/mpay/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/a/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/a/a;->k:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/a/a;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    iget-object v2, p0, Lcom/netease/mpay/a/a;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/a/a;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/netease/mpay/a/a;->k:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/a/a;->m:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/netease/mpay/a/a;->a(Z)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/netease/mpay/a/a;->m:Lcom/netease/mpay/e/b;

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/netease/mpay/a/a;->a(Z)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/a/a;->e:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultcode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    return-void
.end method
