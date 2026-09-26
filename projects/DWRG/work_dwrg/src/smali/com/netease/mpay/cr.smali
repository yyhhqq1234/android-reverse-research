.class public Lcom/netease/mpay/cr;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lcom/netease/forum/ForumApi;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/netease/mpay/e/b/o;

.field private h:Lcom/netease/mpay/e/b;

.field private i:Lcom/netease/forum/ForumApiCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mpay_"

    iput-object v0, p0, Lcom/netease/mpay/cr;->a:Ljava/lang/String;

    const-string v0, "mpay"

    iput-object v0, p0, Lcom/netease/mpay/cr;->b:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/cu;

    invoke-direct {v0, p0}, Lcom/netease/mpay/cu;-><init>(Lcom/netease/mpay/cr;)V

    iput-object v0, p0, Lcom/netease/mpay/cr;->i:Lcom/netease/forum/ForumApiCallback;

    iput-object p1, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/cr;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/cr;->f:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/cr;->e:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/cr;->h:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/cr;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/cr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/cr;->g:Lcom/netease/mpay/e/b/o;

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

.method static synthetic a(Lcom/netease/mpay/cr;)Lcom/netease/forum/ForumApi;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netease/forum/ForumApi;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/netease/forum/ForumApi;

    iget-object v1, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mpay_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mpay"

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/netease/forum/ForumApi;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    iget-object v0, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    invoke-virtual {v0}, Lcom/netease/forum/ForumApi;->createDefaultTheme()Lcom/netease/forum/ThemeConfig;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->l:I

    iput v1, v0, Lcom/netease/forum/ThemeConfig;->mActionBarTextColor:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->m:I

    iput v1, v0, Lcom/netease/forum/ThemeConfig;->mButtonColor:I

    iget-object v1, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$d;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/netease/forum/ThemeConfig;->mActionBarHeight:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->p:I

    iput v1, v0, Lcom/netease/forum/ThemeConfig;->mActionBarBackIcon:I

    iget-object v1, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$d;->f:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/netease/forum/ThemeConfig;->mActionBarBackIconSize:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->n:I

    iput v1, v0, Lcom/netease/forum/ThemeConfig;->mStatusBarColor:I

    iget-object v1, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    invoke-virtual {v1, v0}, Lcom/netease/forum/ForumApi;->setTheme(Lcom/netease/forum/ThemeConfig;)V

    iget-object v1, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/netease/mpay/ct;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ct;-><init>(Lcom/netease/mpay/cr;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/forum/ForumApi;->setForumApiCallback(Lcom/netease/forum/ForumApiCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/cr;->i:Lcom/netease/forum/ForumApiCallback;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    const-string v1, "com.netease.forum.ForumApi"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/cr;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/cr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cr;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/cr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/cr;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/mpay/cr;->g:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netease/mpay/cr;->g:Lcom/netease/mpay/e/b/o;

    iget v2, v2, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/cr;->g:Lcom/netease/mpay/e/b/o;

    iget v1, v1, Lcom/netease/mpay/e/b/o;->f:I

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/cr;->a(Ljava/lang/String;Z)V

    :cond_1
    if-nez v0, :cond_3

    new-instance v0, Lcom/netease/mpay/f/ad;

    iget-object v1, p0, Lcom/netease/mpay/cr;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/netease/mpay/cr;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/cr;->f:Ljava/lang/String;

    new-instance v4, Lcom/netease/mpay/cs;

    invoke-direct {v4, p0}, Lcom/netease/mpay/cs;-><init>(Lcom/netease/mpay/cr;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/f/ad;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ad;->b()Lcom/netease/mpay/f/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/f/ad;->h()V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/cr;->c:Lcom/netease/forum/ForumApi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/forum/ForumApi;->openGameForum(Ljava/lang/String;)V

    goto :goto_1
.end method
