.class public Lcom/netease/mpay/jt;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/jt$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/r;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/e/b/af;

.field private g:Lcom/netease/mpay/e/b/o;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/netease/mpay/widget/s;

.field private k:Z

.field private final l:[I

.field private m:[Z

.field private n:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/mpay/jt;->l:[I

    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/netease/mpay/jt;->m:[Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/mpay/jt;->n:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x32
        0x64
        0xc8
        0x1f4
        0x3e8
        0x7d0
        0xbb8
        0x2710
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic a(Lcom/netease/mpay/jt;I)I
    .locals 0

    iput p1, p0, Lcom/netease/mpay/jt;->n:I

    return p1
.end method

.method static synthetic a(Lcom/netease/mpay/jt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/jt;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILcom/netease/mpay/b/al;)V
    .locals 2

    instance-of v0, p2, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/netease/mpay/b/ar$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/jt;->y()V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/b/s;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/e;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v2}, Lcom/netease/mpay/b/r;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v3}, Lcom/netease/mpay/b/r;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v4, v4, Lcom/netease/mpay/b/r;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jt;->i:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/jy;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/jy;-><init>(Lcom/netease/mpay/jt;Lcom/netease/mpay/b/s;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/e;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/jt;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/jt;->u()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/jt;ILcom/netease/mpay/b/al;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/jt;->a(ILcom/netease/mpay/b/al;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/jt;Lcom/netease/mpay/b/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/jt;->a(Lcom/netease/mpay/b/s;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/jt;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/jt;->v()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/jt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/jt;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/jx;

    invoke-direct {v2, p0}, Lcom/netease/mpay/jx;-><init>(Lcom/netease/mpay/jt;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/jt;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->j:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/jt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/jt;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->f:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/jt;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/jt;)Lcom/netease/mpay/b/r;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/jt;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/jt;->y()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/jt;)[I
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->l:[I

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/jt;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/jt;->n:I

    return v0
.end method

.method static synthetic j(Lcom/netease/mpay/jt;)[Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->m:[Z

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/jt;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/jt;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/netease/mpay/jt;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method private s()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ae:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v1, v1, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v1, v1, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->r:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cP:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v2}, Lcom/netease/mpay/b/r;->j()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/server/response/OrderInit;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->P:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/jt;->t()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    new-instance v1, Lcom/netease/mpay/ju;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ju;-><init>(Lcom/netease/mpay/jt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/mpay/jt;->w()V

    return-void

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method private t()Z
    .locals 2

    iget v0, p0, Lcom/netease/mpay/jt;->n:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/jt;->n:I

    iget-object v1, p0, Lcom/netease/mpay/jt;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 10

    invoke-direct {p0}, Lcom/netease/mpay/jt;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/jt;->j:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->de:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->f:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jt;->f:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "czds"

    const-string v7, "cz_cz"

    iget-object v8, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v8, v8, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v9, "czds"

    invoke-static {v8, v9}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/netease/mpay/f/d;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v2}, Lcom/netease/mpay/b/r;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v3}, Lcom/netease/mpay/b/r;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v4, v4, Lcom/netease/mpay/b/r;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jt;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v6}, Lcom/netease/mpay/b/r;->s()I

    move-result v6

    iget-object v7, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v7}, Lcom/netease/mpay/b/r;->k()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/netease/mpay/jv;

    invoke-direct {v8, p0}, Lcom/netease/mpay/jv;-><init>(Lcom/netease/mpay/jt;)V

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/f/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/d;->h()V

    goto :goto_0
.end method

.method private v()V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v0}, Lcom/netease/mpay/b/r;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v0, v0, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v2, "epay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "czds"

    invoke-static {v0, v2}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cz_cz"

    invoke-static {v0, v2}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    :goto_0
    new-instance v5, Lcom/netease/mpay/b/r;

    iget-object v6, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v7, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v7, v7, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    invoke-direct {v5, v6, v7}, Lcom/netease/mpay/b/r;-><init>(Lcom/netease/mpay/b/t;Lcom/netease/mpay/b/r$a;)V

    iget-object v6, v5, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iput-object v0, v6, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    new-instance v0, Lcom/netease/mpay/b/s;

    new-instance v6, Lcom/netease/mpay/b/s$a;

    iget-object v7, p0, Lcom/netease/mpay/jt;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/mpay/jt;->h:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/netease/mpay/b/s$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5, v6}, Lcom/netease/mpay/b/s;-><init>(Lcom/netease/mpay/b/r;Lcom/netease/mpay/b/s$a;)V

    const-string v5, "epay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, v0}, Lcom/netease/mpay/jt;->a(Lcom/netease/mpay/b/s;)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "uppay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/netease/mpay/b$a;->w:Lcom/netease/mpay/b$a;

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "bankcard"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/netease/mpay/b$a;->x:Lcom/netease/mpay/b$a;

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    const-string v2, "alipay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "czds"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cz_cz"

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netease/mpay/b$a;->y:Lcom/netease/mpay/b$a;

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v2, "weixinpay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/netease/mpay/b$a;->z:Lcom/netease/mpay/b$a;

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    const-string v2, "tenpay"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/netease/mpay/b$a;->A:Lcom/netease/mpay/b$a;

    const/4 v1, 0x6

    goto :goto_0

    :cond_5
    const-string v5, "weixinpayqr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "alipayqr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    new-instance v1, Lcom/netease/mpay/kv;

    iget-object v2, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/mpay/jw;

    invoke-direct {v3, p0}, Lcom/netease/mpay/jw;-><init>(Lcom/netease/mpay/jt;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/netease/mpay/kv;-><init>(Landroid/app/Activity;Lcom/netease/mpay/b/s;Lcom/netease/mpay/kv$b;)V

    invoke-virtual {v1}, Lcom/netease/mpay/kv;->a()V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    iget-object v4, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v2, v0, v3, v1}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object v2, v3

    goto/16 :goto_0
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->H:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-boolean v1, p0, Lcom/netease/mpay/jt;->k:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v1, Lcom/netease/mpay/jt$a;

    iget-object v2, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netease/mpay/jt$a;-><init>(Lcom/netease/mpay/jt;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 5

    new-instance v0, Lcom/netease/mpay/b/ar$a;

    iget-object v1, p0, Lcom/netease/mpay/jt;->i:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v3, v3, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v3, v3, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v4, "czds"

    invoke-static {v3, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cz_cz"

    invoke-static {v3, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/b/ar$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$a;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/r;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/r;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v0, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    invoke-direct {p0, p1, p4}, Lcom/netease/mpay/jt;->a(ILcom/netease/mpay/b/al;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/jt;->k:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/jt;->k:Z

    invoke-direct {p0}, Lcom/netease/mpay/jt;->s()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/jt;->j:Lcom/netease/mpay/widget/s;

    invoke-direct {p0}, Lcom/netease/mpay/jt;->x()V

    iget-object v0, p0, Lcom/netease/mpay/jt;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/jt;->k:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v2}, Lcom/netease/mpay/b/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    invoke-virtual {v2}, Lcom/netease/mpay/b/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jt;->f:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/jt;->f:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jt;->f:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jt;->g:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "czds"

    iget-object v7, p0, Lcom/netease/mpay/jt;->d:Lcom/netease/mpay/b/r;

    iget-object v7, v7, Lcom/netease/mpay/b/r;->e:Lcom/netease/mpay/b/r$a;

    iget-object v7, v7, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v8, "czds"

    invoke-static {v7, v8}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/jt;->s()V

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jt;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method
