.class public Lcom/netease/mpay/codescanner/e;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/codescanner/e$a;,
        Lcom/netease/mpay/codescanner/e$c;,
        Lcom/netease/mpay/codescanner/e$d;,
        Lcom/netease/mpay/codescanner/e$b;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/v;

.field private e:Lcom/netease/codescanner/CodeScanner;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/netease/mpay/codescanner/d;

.field private h:Z

.field private i:Lcom/netease/mpay/codescanner/e$a;

.field private j:Lcom/netease/mpay/codescanner/e$b;

.field private k:Z

.field private l:Lcom/netease/mpay/e/b;

.field private m:Lcom/netease/mpay/e/b/o;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->h:Z

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->k:Z

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->n:Z

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

.method private a(Landroid/view/View;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;Landroid/view/View;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/codescanner/e;->b(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;Lcom/netease/mpay/codescanner/e$b;)Lcom/netease/mpay/codescanner/e$b;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/codescanner/e;->j:Lcom/netease/mpay/codescanner/e$b;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;)Lcom/netease/mpay/codescanner/e$b;
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/e;->b(Ljava/lang/String;)Lcom/netease/mpay/codescanner/e$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;Lcom/netease/mpay/server/response/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/e;->a(Lcom/netease/mpay/server/response/aa;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/codescanner/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/netease/mpay/server/response/aa;)V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->G:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/w;

    new-instance v3, Lcom/netease/mpay/b/a$a;

    iget-object v4, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v4}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "webLogin"

    iget-object v6, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v6}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/netease/mpay/b/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    iget-object v4, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v4, v4, Lcom/netease/mpay/b/v;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Lcom/netease/mpay/b/w;-><init>(Lcom/netease/mpay/b/a$a;Ljava/lang/String;Lcom/netease/mpay/server/response/aa;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->d:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->cS:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/netease/mpay/widget/a;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v5, Lcom/netease/mpay/codescanner/j;

    invoke-direct {v5, p0, p2}, Lcom/netease/mpay/codescanner/j;-><init>(Lcom/netease/mpay/codescanner/e;Z)V

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/a$a;Z)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->p:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/netease/mpay/widget/a;->a(II)V

    invoke-virtual {v0}, Lcom/netease/mpay/widget/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/codescanner/e;->h:Z

    return p1
.end method

.method private b(Landroid/view/View;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/netease/mpay/codescanner/e;Landroid/view/View;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/codescanner/e;->a(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->g:Lcom/netease/mpay/codescanner/d;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/codescanner/e$b;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/mpay/server/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->a(Ljava/net/URL;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "uuid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "uid"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "data_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/netease/mpay/codescanner/e$c;

    invoke-direct {v0, p0, v1, v2}, Lcom/netease/mpay/codescanner/e$c;-><init>(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/netease/mpay/codescanner/e$d;

    invoke-direct {v1, p0, v0}, Lcom/netease/mpay/codescanner/e$d;-><init>(Lcom/netease/mpay/codescanner/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eq p1, v1, :cond_0

    :goto_1
    return v0

    :pswitch_0
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_1
    move p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/codescanner/e$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->j:Lcom/netease/mpay/codescanner/e$b;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/netease/mpay/codescanner/e;->h:Z

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->d:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->cS:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/netease/mpay/widget/a;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v6, Lcom/netease/mpay/codescanner/k;

    invoke-direct {v6, p0}, Lcom/netease/mpay/codescanner/k;-><init>(Lcom/netease/mpay/codescanner/e;)V

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/widget/a$b;Z)V

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->p:I

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lcom/netease/mpay/widget/a;->a(II)V

    invoke-virtual {v0}, Lcom/netease/mpay/widget/a;->a()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/codescanner/e;)Lcom/netease/mpay/b/v;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/codescanner/e;)Lcom/netease/codescanner/CodeScanner;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/codescanner/e;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/codescanner/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->w()V

    return-void
.end method

.method private u()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v1}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v1}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v1

    iget v1, v1, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v1}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v1

    iget v1, v1, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v0}, Lcom/netease/mpay/b/v;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->P:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->y()V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->w()V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aG:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/netease/mpay/codescanner/e;->h:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private x()V
    .locals 6

    new-instance v0, Lcom/netease/mpay/codescanner/d;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/codescanner/d;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->g:Lcom/netease/mpay/codescanner/d;

    new-instance v5, Lcom/netease/codescanner/CodeScanConfig;

    invoke-direct {v5}, Lcom/netease/codescanner/CodeScanConfig;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/netease/codescanner/CodeScanConfig;->decode_generateErrorPreview:Z

    new-instance v0, Lcom/netease/mpay/codescanner/f;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->aI:I

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$f;->aH:I

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/netease/codescanner/widget/ViewfinderView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/codescanner/f;-><init>(Lcom/netease/mpay/codescanner/e;Landroid/content/Context;Landroid/view/SurfaceView;Lcom/netease/codescanner/widget/ViewfinderView;Lcom/netease/codescanner/CodeScanConfig;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    new-instance v2, Lcom/netease/mpay/codescanner/i;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/codescanner/i;-><init>(Lcom/netease/mpay/codescanner/e;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0, v2}, Lcom/netease/codescanner/CodeScanner;->setFindPreviewSizeCallback(Lcom/netease/codescanner/camera/CameraConfigurationManager$CalculatePreviewSizeCallback;)V

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/v;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/v;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->l:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->m:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->m:Lcom/netease/mpay/e/b/o;

    iget-boolean v1, v1, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->m:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->pause()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->m:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    instance-of v0, p4, Lcom/netease/mpay/b/an;

    if-eqz v0, :cond_4

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/an;

    iget-object v0, v0, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    check-cast p4, Lcom/netease/mpay/b/an;

    iget-object v0, p4, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/e;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v0, p4, Lcom/netease/mpay/b/am;

    if-nez v0, :cond_2

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->pause()V

    :cond_6
    const/4 v0, 0x3

    if-ne v0, p1, :cond_7

    instance-of v0, p4, Lcom/netease/mpay/b/at;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->j:Lcom/netease/mpay/codescanner/e$b;

    instance-of v0, v0, Lcom/netease/mpay/codescanner/e$c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v1, v0, Lcom/netease/mpay/b/v;->b:Lcom/netease/mpay/QrCodeScannerCallback;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->j:Lcom/netease/mpay/codescanner/e$b;

    check-cast v0, Lcom/netease/mpay/codescanner/e$c;

    iget-object v2, v0, Lcom/netease/mpay/codescanner/e$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->j:Lcom/netease/mpay/codescanner/e$b;

    check-cast v0, Lcom/netease/mpay/codescanner/e$c;

    iget-object v0, v0, Lcom/netease/mpay/codescanner/e$c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/netease/mpay/QrCodeScannerCallback;->onFetchOrder(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    if-ne v0, p1, :cond_9

    if-eqz p4, :cond_9

    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-virtual {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->c:Lcom/netease/mpay/codescanner/QrScannerOptions;

    invoke-virtual {v0}, Lcom/netease/mpay/codescanner/QrScannerOptions;->c()Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/User;

    check-cast p4, Lcom/netease/mpay/b/ao;

    invoke-direct {v1, p4}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/codescanner/QrScannerOptions$InnerQrScannerOptionsCallback;->onLoginSuccess(Lcom/netease/mpay/User;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    goto/16 :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->v()V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->x()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->resume()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->f:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/bj;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->h:Z

    new-instance v0, Lcom/netease/mpay/codescanner/e$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/codescanner/e$a;-><init>(Lcom/netease/mpay/codescanner/e;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->i:Lcom/netease/mpay/codescanner/e$a;

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->u()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/e;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->k:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    invoke-virtual {v2}, Lcom/netease/mpay/b/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->l:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->l:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/e;->m:Lcom/netease/mpay/e/b/o;

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->k:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->v()V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/e;->x()V

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/codescanner/e;->s()V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0, p1}, Lcom/netease/codescanner/CodeScanner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->resume()V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->e:Lcom/netease/codescanner/CodeScanner;

    invoke-virtual {v0}, Lcom/netease/codescanner/CodeScanner;->pause()V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->h()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->i()V

    return-void
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lcom/netease/mpay/codescanner/e;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->d:Lcom/netease/mpay/b/v;

    iget-object v0, v0, Lcom/netease/mpay/b/v;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    move-result v0

    return v0
.end method

.method public s()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/e;->i:Lcom/netease/mpay/codescanner/e$a;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->n:Z

    return-void
.end method

.method public t()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/e;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/e;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/e;->i:Lcom/netease/mpay/codescanner/e$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
