.class public Lcom/netease/mpay/jb;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/jb$b;,
        Lcom/netease/mpay/jb$a;
    }
.end annotation


# instance fields
.field private d:Landroid/content/res/Resources;

.field private e:Lcom/netease/mpay/b/t;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Lcom/netease/mpay/e/b/af;

.field private h:Lcom/netease/mpay/e/b/o;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/netease/mpay/server/response/e;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

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

.method static synthetic a(Lcom/netease/mpay/jb;)Lcom/netease/mpay/server/response/e;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->o:Lcom/netease/mpay/server/response/e;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/jb;Lcom/netease/mpay/server/response/e;)Lcom/netease/mpay/server/response/e;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/jb;->o:Lcom/netease/mpay/server/response/e;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/jb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/jb;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/jb;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/jb;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/jf;

    invoke-direct {v2, p0, p2}, Lcom/netease/mpay/jf;-><init>(Lcom/netease/mpay/jb;Z)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/jb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->g:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/jb;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/jb;)Lcom/netease/mpay/b/t;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/jb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/jb;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/jb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/jb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/jb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/jb;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/mpay/jb;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/jb;->t()V

    return-void
.end method

.method private t()V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/jb;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private u()V
    .locals 6

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/netease/mpay/jb;->o:Lcom/netease/mpay/server/response/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb;->o:Lcom/netease/mpay/server/response/e;

    iget-object v0, v0, Lcom/netease/mpay/server/response/e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->Q:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jb;->o:Lcom/netease/mpay/server/response/e;

    iget-object v1, v1, Lcom/netease/mpay/server/response/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/mpay/server/response/e$b;

    iget-boolean v5, v1, Lcom/netease/mpay/server/response/e$b;->d:Z

    if-nez v5, :cond_3

    iget v5, v1, Lcom/netease/mpay/server/response/e$b;->k:I

    if-ne v5, v2, :cond_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/netease/mpay/jb$a;

    iget-object v2, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v4}, Lcom/netease/mpay/b/t;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/netease/mpay/jb$a;-><init>(Lcom/netease/mpay/jb;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private w()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jb;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jb;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cP:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jb;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cR:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jb;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jb;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->r:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/mpay/jb;->p:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jb;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v2}, Lcom/netease/mpay/b/t;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/server/response/OrderInit;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 7

    new-instance v6, Lcom/netease/mpay/jd;

    invoke-direct {v6, p0}, Lcom/netease/mpay/jd;-><init>(Lcom/netease/mpay/jb;)V

    new-instance v0, Lcom/netease/mpay/je;

    iget-object v2, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v1}, Lcom/netease/mpay/b/t;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v1}, Lcom/netease/mpay/b/t;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/af$a;->b:Lcom/netease/mpay/f/af$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/je;-><init>(Lcom/netease/mpay/jb;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/af$a;Lcom/netease/mpay/f/af$b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/je;->h()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/t;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/t;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    iget-object v0, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    instance-of v0, p4, Lcom/netease/mpay/b/ar$g;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ar$c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v0, p4, Lcom/netease/mpay/b/ar$h;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/jb;->x()V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    check-cast p4, Lcom/netease/mpay/b/ar$h;

    iget-object v1, p4, Lcom/netease/mpay/b/ar$h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/b/ar$i;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$i;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$i;->a(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/jb;->m:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/jb;->m:Z

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ac:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/jb;->s()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/netease/mpay/jb;->v()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mpay/jb;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/jb;->d:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/jb;->m:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v2}, Lcom/netease/mpay/b/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/jb;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/jb;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v1}, Lcom/netease/mpay/b/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/jb;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jb;->g:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/jb;->g:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jb;->g:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "zhcz"

    iget-object v7, p0, Lcom/netease/mpay/jb;->n:Ljava/lang/String;

    const-string v8, "zhcz"

    invoke-static {v7, v8}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/netease/mpay/f/ar;

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v2}, Lcom/netease/mpay/b/t;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/jb;->e:Lcom/netease/mpay/b/t;

    invoke-virtual {v3}, Lcom/netease/mpay/b/t;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/jb;->h:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    new-instance v5, Lcom/netease/mpay/jc;

    invoke-direct {v5, p0}, Lcom/netease/mpay/jc;-><init>(Lcom/netease/mpay/jb;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/ar;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ar;->h()V

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/jb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ac:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/netease/mpay/jb;->u()V

    invoke-direct {p0}, Lcom/netease/mpay/jb;->w()V

    return-void
.end method
