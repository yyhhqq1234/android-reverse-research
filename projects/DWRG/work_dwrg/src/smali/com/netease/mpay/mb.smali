.class public Lcom/netease/mpay/mb;
.super Lcom/netease/mpay/a;


# instance fields
.field private d:Lcom/netease/mpay/b/ae;

.field private e:Lcom/netease/mpay/widget/s;

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Lcom/netease/mpay/view/BottomLinkButtons;

.field private n:Z

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/mb;->n:Z

    new-instance v0, Lcom/netease/mpay/mf;

    invoke-direct {v0, p0}, Lcom/netease/mpay/mf;-><init>(Lcom/netease/mpay/mb;)V

    iput-object v0, p0, Lcom/netease/mpay/mb;->o:Landroid/view/View$OnClickListener;

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

.method private a(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/mg;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mg;-><init>(Lcom/netease/mpay/mb;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/mh;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mh;-><init>(Lcom/netease/mpay/mb;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v1, p1}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/mi;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mi;-><init>(Lcom/netease/mpay/mb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/mb;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/mb;->v()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/mb;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/mb;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/mb;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/mb;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mb;->e:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/mb;)Lcom/netease/mpay/b/ae;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/mb;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mb;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/mb;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/mb;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/netease/mpay/mb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/mb;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mb;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/mb;->n:Z

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->T:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bI:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bJ:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/mb;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bg:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/mb;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aQ:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    iput-object v0, p0, Lcom/netease/mpay/mb;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/mb;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mb;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->dg:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/mb;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mb;->f:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/mb;->e:Lcom/netease/mpay/widget/s;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 7

    invoke-virtual {p0}, Lcom/netease/mpay/mb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/mc;

    invoke-direct {v0, p0}, Lcom/netease/mpay/mc;-><init>(Lcom/netease/mpay/mb;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/mb;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/mb;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/mb;->f:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->bo:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    iget-object v6, v6, Lcom/netease/mpay/b/ae;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/netease/mpay/mb;->j:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/mb;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ax:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$e;->n:I

    iget-object v3, p0, Lcom/netease/mpay/mb;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    invoke-virtual {v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/mb;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/md;

    invoke-direct {v1, p0}, Lcom/netease/mpay/md;-><init>(Lcom/netease/mpay/mb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->l:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/me;

    invoke-direct {v1, p0}, Lcom/netease/mpay/me;-><init>(Lcom/netease/mpay/mb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private u()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/mb;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->an:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/mb;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/mb;->w()V

    goto :goto_0
.end method

.method private w()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/mb;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/netease/mpay/f/br;

    iget-object v1, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    invoke-virtual {v2}, Lcom/netease/mpay/b/ae;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ae;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    iget-object v4, v4, Lcom/netease/mpay/b/ae;->a:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lcom/netease/mpay/mj;

    invoke-direct {v7, p0}, Lcom/netease/mpay/mj;-><init>(Lcom/netease/mpay/mb;)V

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/br;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/br;->h()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/ae;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ae;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    iget-object v0, p0, Lcom/netease/mpay/mb;->d:Lcom/netease/mpay/b/ae;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    instance-of v0, p4, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/mb;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/netease/mpay/mb;->n:Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/mb;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/mb;->t()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/mpay/mb;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/mb;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method
