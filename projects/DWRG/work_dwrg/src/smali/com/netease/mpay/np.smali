.class public Lcom/netease/mpay/np;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/np$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/a;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/widget/s;

.field private g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/netease/mpay/widget/af$b;

.field private j:Lcom/netease/mpay/c/a;


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

.method private a(Landroid/widget/AdapterView;Ljava/util/ArrayList;)V
    .locals 6

    new-instance v5, Lcom/netease/mpay/nz;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nz;-><init>(Lcom/netease/mpay/np;)V

    new-instance v0, Lcom/netease/mpay/oa;

    invoke-direct {v0, p0, p1}, Lcom/netease/mpay/oa;-><init>(Lcom/netease/mpay/np;Landroid/widget/AdapterView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/netease/mpay/widget/af$b;

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$g;->z:I

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/af$b;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/np;->i:Lcom/netease/mpay/widget/af$b;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/np;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/np;->s()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/np;Lcom/netease/mpay/widget/af$b;Ljava/util/ArrayList;Lcom/netease/mpay/np$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/np;->a(Lcom/netease/mpay/widget/af$b;Ljava/util/ArrayList;Lcom/netease/mpay/np$a;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/np;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/np;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/widget/af$b;Ljava/util/ArrayList;Lcom/netease/mpay/np$a;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/netease/mpay/ob;->b:[I

    invoke-virtual {p3}, Lcom/netease/mpay/np$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p1}, Lcom/netease/mpay/widget/af$b;->a()Lcom/netease/mpay/widget/af$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/af$a;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/netease/mpay/widget/af$b;->a()Lcom/netease/mpay/widget/af$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/widget/af$a;->a()V

    invoke-virtual {p1}, Lcom/netease/mpay/widget/af$b;->a()Lcom/netease/mpay/widget/af$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/af$a;->a(Ljava/util/List;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/netease/mpay/widget/af$b;->a()Lcom/netease/mpay/widget/af$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/netease/mpay/widget/af$a;->a(Ljava/util/List;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->y:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cS:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->di:I

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->A:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aU:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    iput-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aR:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/netease/mpay/np;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aS:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/netease/mpay/np;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$f;->aT:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$f;->aV:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    new-instance v5, Lcom/netease/mpay/ns;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ns;-><init>(Lcom/netease/mpay/np;)V

    iget-object v6, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v7, Lcom/netease/mpay/widget/RIdentifier$f;->bm:I

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v8, Lcom/netease/mpay/widget/RIdentifier$a;->b:I

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    sget v9, Lcom/netease/mpay/widget/RIdentifier$a;->c:I

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->init(Landroid/view/View;Landroid/widget/ListView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList$a;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    new-instance v1, Lcom/netease/mpay/nt;

    invoke-direct {v1, p0}, Lcom/netease/mpay/nt;-><init>(Lcom/netease/mpay/np;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->setOnStartPullingListener(Lcom/netease/mpay/widget/pull2refresh/a$i;)V

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    new-instance v1, Lcom/netease/mpay/nu;

    invoke-direct {v1, p0}, Lcom/netease/mpay/nu;-><init>(Lcom/netease/mpay/np;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->setOnHeaderCompleteListener(Lcom/netease/mpay/widget/pull2refresh/a$e;)V

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    new-instance v1, Lcom/netease/mpay/nv;

    invoke-direct {v1, p0}, Lcom/netease/mpay/nv;-><init>(Lcom/netease/mpay/np;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->setOnRefreshListener(Lcom/netease/mpay/widget/pull2refresh/a$h;)V

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    new-instance v1, Lcom/netease/mpay/nx;

    invoke-direct {v1, p0}, Lcom/netease/mpay/nx;-><init>(Lcom/netease/mpay/np;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->setOnLoadListener(Lcom/netease/mpay/widget/pull2refresh/a$g;)V

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aR:I

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0, p1}, Lcom/netease/mpay/np;->a(Landroid/widget/AdapterView;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/np;)Lcom/netease/mpay/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/np;->g:Lcom/netease/mpay/widget/pull2refresh/Pull2RefreshList;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/af$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/np;->i:Lcom/netease/mpay/widget/af$b;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/np;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/np;->f:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/np;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/np;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/np;)Lcom/netease/mpay/c/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/np;->j:Lcom/netease/mpay/c/a;

    return-object v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/ap;

    invoke-direct {v0}, Lcom/netease/mpay/b/ap;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ap;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    iget-object v0, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    if-nez p1, :cond_0

    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/np;->s()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/np;->e:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/np;->f:Lcom/netease/mpay/widget/s;

    new-instance v0, Lcom/netease/mpay/c/a;

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->A:I

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/netease/mpay/np;->j:Lcom/netease/mpay/c/a;

    iget-object v0, p0, Lcom/netease/mpay/np;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dk:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/f/y;

    iget-object v1, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/np;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mpay/f/y$a;->e:Lcom/netease/mpay/f/y$a;

    new-instance v5, Lcom/netease/mpay/nq;

    invoke-direct {v5, p0}, Lcom/netease/mpay/nq;-><init>(Lcom/netease/mpay/np;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/y$a;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/y;->b()Lcom/netease/mpay/f/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/f/y;->h()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    return-void
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/np;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
