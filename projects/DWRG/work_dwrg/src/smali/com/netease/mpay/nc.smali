.class public Lcom/netease/mpay/nc;
.super Lcom/netease/mpay/a;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/nc$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/k;

.field private e:Landroid/content/res/Resources;

.field private f:Ljava/lang/String;

.field private g:Lcom/netease/mpay/e/b/o;

.field private h:Lcom/netease/mpay/e/b;

.field private i:Lcom/netease/mpay/e/b/af;

.field private j:Lcom/netease/mpay/widget/s;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/graphics/Bitmap;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    new-instance v0, Lcom/netease/mpay/nd;

    invoke-direct {v0, p0}, Lcom/netease/mpay/nd;-><init>(Lcom/netease/mpay/nc;)V

    iput-object v0, p0, Lcom/netease/mpay/nc;->n:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/nc;->o:Z

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

.method static synthetic a(Lcom/netease/mpay/nc;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/nc;->m:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/nc;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nc;->j:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/nc;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/nc;->l:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/b/al;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/nc;->v()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/e/b/aj;Lcom/netease/mpay/e/b/al;)V
    .locals 10

    const/16 v4, 0x8

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dl:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dk:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->Z:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/GridView;

    iget-object v0, p1, Lcom/netease/mpay/e/b/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/e/b/aj$a;

    const-string v2, "logout"

    iget-object v0, v0, Lcom/netease/mpay/e/b/aj$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/netease/mpay/e/b/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p1, Lcom/netease/mpay/e/b/aj;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    invoke-static {v0}, Lcom/netease/mpay/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v9

    :cond_2
    invoke-virtual {v8, v3}, Landroid/widget/GridView;->setVisibility(I)V

    invoke-virtual {v8, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Lcom/netease/mpay/nn;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    new-instance v7, Lcom/netease/mpay/nc$a;

    const/4 v4, 0x0

    invoke-direct {v7, p0, v4}, Lcom/netease/mpay/nc$a;-><init>(Lcom/netease/mpay/nc;Lcom/netease/mpay/nd;)V

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/nn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/aj;Lcom/netease/mpay/e/b/al;ILcom/netease/mpay/nn$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/nn;->a()Lcom/netease/mpay/view/b;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v9, v0, :cond_5

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {v8, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->s:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/nc;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/mpay/nc;->l:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/netease/mpay/nc;->s()V

    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/b/r;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netease/mpay/f/y;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/y$a;->a:Lcom/netease/mpay/f/y$a;

    new-instance v5, Lcom/netease/mpay/nf;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nf;-><init>(Lcom/netease/mpay/nc;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/y$a;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/y;->h()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/netease/mpay/nc;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/nc;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/nc;)Lcom/netease/mpay/b/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method private b(Z)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/b;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/ae;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/netease/mpay/f/ae;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ae;->h()V

    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/nc;->t()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/b;->c(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/e/b/aj;Lcom/netease/mpay/e/b/al;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/nc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/nc;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/netease/mpay/nc;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->w()V

    return-void
.end method

.method private c(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/b/al;Z)V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/nc;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->t()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/nc;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->u()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/nc;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/nc;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->x()V

    return-void
.end method

.method private s()V
    .locals 6

    new-instance v0, Lcom/netease/mpay/f/af;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/af$a;->a:Lcom/netease/mpay/f/af$a;

    new-instance v5, Lcom/netease/mpay/nh;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nh;-><init>(Lcom/netease/mpay/nc;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/af;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/af$a;Lcom/netease/mpay/f/af$b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/af;->h()V

    return-void
.end method

.method private t()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ay:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aw:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/nc;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netease/mpay/nc;->l:Ljava/lang/String;

    :goto_0
    iget-boolean v2, p0, Lcom/netease/mpay/nc;->k:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/netease/mpay/cq;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cb:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    iget-object v1, v1, Lcom/netease/mpay/e/b/af;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/mpay/cq;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/netease/mpay/ni;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ni;-><init>(Lcom/netease/mpay/nc;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/nc;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/mpay/cq;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$d;->i:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4, v1, v1}, Lcom/netease/mpay/e/c/j$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/widget/bd;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/nc;->m:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/nc;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netease/mpay/nc;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->h:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private u()V
    .locals 11

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget v2, v2, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v3, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/netease/mpay/e/b/o;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v8, Lcom/netease/mpay/b$a;->B:Lcom/netease/mpay/b$a;

    new-instance v9, Lcom/netease/mpay/b/t;

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v10

    new-instance v0, Lcom/netease/mpay/b/p$a;

    iget-object v1, p0, Lcom/netease/mpay/nc;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    iget-object v6, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v6, v6, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/b/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "manage"

    invoke-direct {v9, v10, v0, v1}, Lcom/netease/mpay/b/t;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/b/p$a;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7, v8, v9, v0, v1}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method private v()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->d()Lcom/netease/mpay/e/b/ak;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/ak;->a:Z

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/netease/mpay/e/b/ak;->a:Z

    iget-object v1, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/b;->a(Lcom/netease/mpay/e/b/ak;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/r;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/r;->c:Z

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/netease/mpay/e/b/r;->c:Z

    iget-object v1, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/r;)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 4

    iget-boolean v0, p0, Lcom/netease/mpay/nc;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/nc;->o:Z

    iget-object v0, p0, Lcom/netease/mpay/nc;->j:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/nc;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/nc;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->K:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/nk;

    invoke-direct {v3, p0}, Lcom/netease/mpay/nk;-><init>(Lcom/netease/mpay/nc;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private x()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onLogout(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v6, v4, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ZZZLcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    invoke-direct {p0, v3}, Lcom/netease/mpay/nc;->c(Z)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/k;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    sparse-switch p1, :sswitch_data_0

    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->w()V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/nc;->w()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/f/y;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v3}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/y$a;->f:Lcom/netease/mpay/f/y$a;

    new-instance v5, Lcom/netease/mpay/nj;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nj;-><init>(Lcom/netease/mpay/nc;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/y$a;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/y;->h()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/b/al;Z)V

    goto :goto_0

    :sswitch_2
    instance-of v0, p4, Lcom/netease/mpay/b/ar$c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->x()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/nc;->k:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/nc;->k:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/mpay/nc;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/nc;->w()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/b;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v2, v2, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netease/mpay/e/c/b;->c(Ljava/lang/String;)Lcom/netease/mpay/e/b/al;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/e/b/aj;Lcom/netease/mpay/e/b/al;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dl:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->j:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/ng;

    invoke-direct {v2, p0}, Lcom/netease/mpay/ng;-><init>(Lcom/netease/mpay/nc;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/netease/mpay/server/response/ag;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/netease/mpay/server/response/ag;->a:Lcom/netease/mpay/e/b/aj;

    iget-object v1, p1, Lcom/netease/mpay/server/response/ag;->b:Lcom/netease/mpay/e/b/al;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/e/b/aj;Lcom/netease/mpay/e/b/al;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/ag;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/server/response/ag;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/nc;->j:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/nc;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/nc;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dA:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v0}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    invoke-direct {p0, v0, v5}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/b/al;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/nc;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/nc;->k:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mpay/nc;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v1}, Lcom/netease/mpay/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/o;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/o;->l:Z

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    invoke-direct {p0, v0, v5}, Lcom/netease/mpay/nc;->a(Lcom/netease/mpay/b/al;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/nc;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->t:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ay:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/nc;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aw:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/nc;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dc:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/netease/mpay/ne;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ne;-><init>(Lcom/netease/mpay/nc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dh:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->d:Lcom/netease/mpay/b/k;

    invoke-virtual {v2}, Lcom/netease/mpay/b/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/mpay/server/response/r;->h:Ljava/lang/String;

    move-object v2, v0

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->dj:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->di:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netease/mpay/widget/RIdentifier$d;->s:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-lt v2, v3, :cond_6

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ax:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "2.14.1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dl:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dk:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/netease/mpay/nc;->b(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_6
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->e()V

    return-void
.end method

.method public f()V
    .locals 7

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    iget-object v0, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/nc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/nc;->i:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/nc;->g:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "user_index"

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->h()V

    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netease/mpay/nc;->c(Z)V

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    invoke-direct {p0, v0}, Lcom/netease/mpay/nc;->c(Z)V

    return v0
.end method
