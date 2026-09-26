.class public Lcom/netease/mpay/ah;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ah$b;,
        Lcom/netease/mpay/ah$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/c;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/e/b;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/netease/mpay/e/b/o;

.field private i:Landroid/widget/GridView;

.field private j:I

.field private k:Lcom/netease/mpay/widget/s;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ah;->l:Z

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

.method static synthetic a(Lcom/netease/mpay/ah;)Lcom/netease/mpay/b/c;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    return-object v0
.end method

.method private a(Lcom/netease/mpay/b/ao;)V
    .locals 2

    iget-boolean v0, p1, Lcom/netease/mpay/b/ao;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onGuestBindSuccess(Lcom/netease/mpay/User;)V

    :cond_1
    invoke-virtual {p1}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ah;->k:Lcom/netease/mpay/widget/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/ah;->k:Lcom/netease/mpay/widget/s;

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ah;->k:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ah;->u()V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ah;->v()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ah;->w()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mpay/ah;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ah;->x()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/ah;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ah;->f:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/ah;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ah;->h:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method private s()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/netease/mpay/ah;->j:I

    iget v0, p0, Lcom/netease/mpay/ah;->j:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/ah;->l:Z

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->x:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/ah;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ah;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->E:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/netease/mpay/ah;->i:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget v0, v0, Lcom/netease/mpay/b/c;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/ah;->f:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/ah;->f:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v1}, Lcom/netease/mpay/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ah;->h:Lcom/netease/mpay/e/b/o;

    goto :goto_1
.end method

.method private t()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/netease/mpay/ah;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/ai;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ai;-><init>(Lcom/netease/mpay/ah;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget v0, v0, Lcom/netease/mpay/b/c;->a:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/ah;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/aj;

    invoke-direct {v1, p0}, Lcom/netease/mpay/aj;-><init>(Lcom/netease/mpay/ah;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v3}, Lcom/netease/mpay/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/netease/mpay/server/response/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s$a;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/server/response/s$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/s;

    iget v0, v0, Lcom/netease/mpay/server/response/s;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const/4 v0, 0x3

    iget-object v4, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget v4, v4, Lcom/netease/mpay/b/c;->a:I

    if-eq v0, v4, :cond_1

    new-instance v0, Lcom/netease/mpay/ah$b;

    invoke-direct {v0, p0, v5}, Lcom/netease/mpay/ah$b;-><init>(Lcom/netease/mpay/ah;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/ah;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget v0, v0, Lcom/netease/mpay/b/c;->a:I

    if-eq v6, v0, :cond_1

    new-instance v0, Lcom/netease/mpay/ah$b;

    const/4 v4, 0x7

    invoke-direct {v0, p0, v4}, Lcom/netease/mpay/ah$b;-><init>(Lcom/netease/mpay/ah;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/netease/mpay/ah$b;

    invoke-direct {v0, p0, v7}, Lcom/netease/mpay/ah$b;-><init>(Lcom/netease/mpay/ah;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/netease/mpay/ah$b;

    const/4 v4, 0x5

    invoke-direct {v0, p0, v4}, Lcom/netease/mpay/ah$b;-><init>(Lcom/netease/mpay/ah;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/ah;->i:Landroid/widget/GridView;

    new-instance v2, Lcom/netease/mpay/ah$a;

    invoke-direct {v2, p0, v1}, Lcom/netease/mpay/ah$a;-><init>(Lcom/netease/mpay/ah;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/netease/mpay/ah;->j:I

    if-eq v1, v6, :cond_4

    if-ge v0, v7, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/netease/mpay/ah;->i:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private u()V
    .locals 4

    const-string v0, "on Facebook binding"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/aq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->a(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ah;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/ah;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    const-string v0, "on Google binding"

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/aq;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ah;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/ah;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private w()V
    .locals 6

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v4, v4, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->b(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method private x()V
    .locals 6

    invoke-static {}, Lcom/netease/mpay/hi;->a()Lcom/netease/mpay/hi;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    invoke-virtual {v2}, Lcom/netease/mpay/b/c;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v4, v4, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/hi;->c(Landroid/app/Activity;Lcom/netease/mpay/b/a$a;ILcom/netease/mpay/AuthenticationCallback;Ljava/lang/Integer;)V

    return-void
.end method

.method private y()V
    .locals 4

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/ah;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ah;->e:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->K:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/ak;

    invoke-direct {v3, p0}, Lcom/netease/mpay/ak;-><init>(Lcom/netease/mpay/ah;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/c;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/c;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p4}, Lcom/netease/mpay/ah;->a(Lcom/netease/mpay/b/ao;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-nez v0, :cond_3

    instance-of v0, p4, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_4
    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    instance-of v0, p4, Lcom/netease/mpay/b/an;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/an;

    iget-boolean v0, v0, Lcom/netease/mpay/b/an;->c:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/netease/mpay/ah;->y()V

    goto :goto_0

    :cond_6
    check-cast p4, Lcom/netease/mpay/b/an;

    iget-object v0, p4, Lcom/netease/mpay/b/an;->b:Ljava/lang/String;

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/ah;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/ah;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/netease/mpay/ah;->l:Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ah;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/ah;->t()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/ah;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ah;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/ah;->t()V

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget v0, v0, Lcom/netease/mpay/b/c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ah;->d:Lcom/netease/mpay/b/c;

    iget-object v0, v0, Lcom/netease/mpay/b/c;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method
