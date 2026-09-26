.class public Lcom/netease/mpay/mk;
.super Lcom/netease/mpay/a;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/view/View;

.field private C:Z

.field private D:Z

.field private E:Landroid/view/View$OnClickListener;

.field private d:Lcom/netease/mpay/b/af;

.field private e:Lcom/netease/mpay/widget/s;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/netease/mpay/widget/bf$a;

.field private h:Lcom/netease/mpay/view/LoginTabView;

.field private i:Lcom/netease/mpay/view/LoginTabView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/Button;

.field private v:Landroid/view/View;

.field private w:Lcom/netease/mpay/view/BottomLinkButtons;

.field private x:Landroid/widget/LinearLayout;

.field private y:Lcom/netease/mpay/view/TintIconView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/mk;->C:Z

    new-instance v0, Lcom/netease/mpay/my;

    invoke-direct {v0, p0}, Lcom/netease/mpay/my;-><init>(Lcom/netease/mpay/mk;)V

    iput-object v0, p0, Lcom/netease/mpay/mk;->E:Landroid/view/View$OnClickListener;

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

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mk;->g:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->b()V

    iget-object v0, p0, Lcom/netease/mpay/mk;->t:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->s:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->t:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/mr;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mr;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private B()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/mk;->t:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->g:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->a()V

    new-instance v0, Lcom/netease/mpay/f/am;

    iget-object v1, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    invoke-virtual {v2}, Lcom/netease/mpay/b/af;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    invoke-virtual {v3}, Lcom/netease/mpay/b/af;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/netease/mpay/f/am$c;

    iget-object v5, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v5, v5, Lcom/netease/mpay/b/af;->c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    iget-object v5, v5, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v6, v6, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/netease/mpay/f/am$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-instance v6, Lcom/netease/mpay/ms;

    invoke-direct {v6, p0}, Lcom/netease/mpay/ms;-><init>(Lcom/netease/mpay/mk;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/am;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/am$d;ZLcom/netease/mpay/f/am$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/am;->h()V

    return-void
.end method

.method private C()V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/mk;->h:Lcom/netease/mpay/view/LoginTabView;

    iget-boolean v4, p0, Lcom/netease/mpay/mk;->D:Z

    invoke-virtual {v0, v4}, Lcom/netease/mpay/view/LoginTabView;->setSelected(Z)V

    iget-object v4, p0, Lcom/netease/mpay/mk;->j:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netease/mpay/mk;->D:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/netease/mpay/mk;->i:Lcom/netease/mpay/view/LoginTabView;

    iget-boolean v0, p0, Lcom/netease/mpay/mk;->D:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/netease/mpay/view/LoginTabView;->setSelected(Z)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->o:Landroid/view/View;

    iget-boolean v4, p0, Lcom/netease/mpay/mk;->D:Z

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->v:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/netease/mpay/mk;->v:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netease/mpay/mk;->D:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/mk;->w:Lcom/netease/mpay/view/BottomLinkButtons;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/netease/mpay/mk;->w:Lcom/netease/mpay/view/BottomLinkButtons;

    iget-boolean v0, p0, Lcom/netease/mpay/mk;->D:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/mk;->x:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/mk;->x:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/netease/mpay/mk;->D:Z

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_4
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->an:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/mk;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/mk;->E()V

    goto :goto_0
.end method

.method private E()V
    .locals 8

    iget-object v0, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/netease/mpay/f/br;

    iget-object v1, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    invoke-virtual {v2}, Lcom/netease/mpay/b/af;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    invoke-virtual {v3}, Lcom/netease/mpay/b/af;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v4, v4, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lcom/netease/mpay/mt;

    invoke-direct {v7, p0}, Lcom/netease/mpay/mt;-><init>(Lcom/netease/mpay/mk;)V

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/br;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/br;->h()V

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

.method static synthetic a(Lcom/netease/mpay/mk;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/mk;->A()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/mk;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/mk;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/mk;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/mk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->e:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/mk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/mk;->D:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/mk;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/mk;->D:Z

    return v0
.end method

.method static synthetic c(Lcom/netease/mpay/mk;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/mk;->C()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/mk;)Lcom/netease/mpay/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/mk;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/mk;->D()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/mk;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/mk;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/mk;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/netease/mpay/mk;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/mk;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/mk;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->e:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/mk;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->u:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/mpay/mk;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/mk;->z()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/netease/mpay/mk;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/mk;->x()V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/mk;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/mk;->B()V

    return-void
.end method

.method static synthetic o(Lcom/netease/mpay/mk;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method private s()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/mk;->C:Z

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->U:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cB:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/LoginTabView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->h:Lcom/netease/mpay/view/LoginTabView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->db:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/LoginTabView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->i:Lcom/netease/mpay/view/LoginTabView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cA:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->dg:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bI:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bJ:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cz:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/mk;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cZ:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->o:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->br:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->da:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bW:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aY:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aZ:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cY:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/mk;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aM:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->v:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aQ:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    iput-object v0, p0, Lcom/netease/mpay/mk;->w:Lcom/netease/mpay/view/BottomLinkButtons;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ah:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/mpay/mk;->x:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ai:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/TintIconView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->y:Lcom/netease/mpay/view/TintIconView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->aj:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->z:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/mk;->A:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->B:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/mk;->e:Lcom/netease/mpay/widget/s;

    new-instance v0, Lcom/netease/mpay/widget/bf$a;

    iget-object v2, p0, Lcom/netease/mpay/mk;->s:Landroid/widget/TextView;

    const/16 v3, 0x3c

    new-instance v4, Lcom/netease/mpay/ml;

    invoke-direct {v4, p0}, Lcom/netease/mpay/ml;-><init>(Lcom/netease/mpay/mk;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/netease/mpay/widget/bf$a;-><init>(Landroid/widget/TextView;IILcom/netease/mpay/widget/bf$a$a;)V

    iput-object v0, p0, Lcom/netease/mpay/mk;->g:Lcom/netease/mpay/widget/bf$a;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lcom/netease/mpay/mk;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/mk;->h:Lcom/netease/mpay/view/LoginTabView;

    iget-object v1, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bs:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->i:Lcom/netease/mpay/view/LoginTabView;

    iget-object v1, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->br:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->h:Lcom/netease/mpay/view/LoginTabView;

    new-instance v1, Lcom/netease/mpay/mu;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mu;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->i:Lcom/netease/mpay/view/LoginTabView;

    new-instance v1, Lcom/netease/mpay/mv;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mv;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/view/LoginTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/mpay/mk;->u()V

    invoke-direct {p0}, Lcom/netease/mpay/mk;->w()V

    iget-object v0, p0, Lcom/netease/mpay/mk;->w:Lcom/netease/mpay/view/BottomLinkButtons;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/mk;->w:Lcom/netease/mpay/view/BottomLinkButtons;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->ax:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$e;->n:I

    iget-object v3, p0, Lcom/netease/mpay/mk;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->w:Lcom/netease/mpay/view/BottomLinkButtons;

    invoke-virtual {v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/mk;->x:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/mk;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/netease/mpay/mk;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->y:Lcom/netease/mpay/view/TintIconView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->n:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$e;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/view/TintIconView;->a(II)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ax:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/mk;->A:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/mw;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mw;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->B:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/mx;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mx;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/mk;->D:Z

    invoke-direct {p0}, Lcom/netease/mpay/mk;->C()V

    goto/16 :goto_0
.end method

.method private u()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/mk;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bo:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v4, v4, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mpay/mz;

    invoke-direct {v0, p0}, Lcom/netease/mpay/mz;-><init>(Lcom/netease/mpay/mk;)V

    iget-object v1, p0, Lcom/netease/mpay/mk;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/na;

    invoke-direct {v2, p0}, Lcom/netease/mpay/na;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/nb;

    invoke-direct {v2, p0}, Lcom/netease/mpay/nb;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/mm;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mm;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->n:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/mk;->v()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    return-void
.end method

.method private v()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mk;->l:Landroid/widget/EditText;

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

.method private w()V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/mk;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v4, v4, Lcom/netease/mpay/b/af;->c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    iget-object v4, v4, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->q:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/mn;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mn;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/netease/mpay/mk;->A()V

    iget-object v0, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/mpay/mo;

    invoke-direct {v1, p0}, Lcom/netease/mpay/mo;-><init>(Lcom/netease/mpay/mk;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/netease/mpay/mp;

    invoke-direct {v0, p0}, Lcom/netease/mpay/mp;-><init>(Lcom/netease/mpay/mk;)V

    iget-object v1, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/netease/mpay/mk;->u:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/mk;->z()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v1, p0, Lcom/netease/mpay/mk;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/mk;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aB:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/mk;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/mk;->y()V

    goto :goto_0
.end method

.method private y()V
    .locals 9

    iget-object v0, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/netease/mpay/f/m;

    iget-object v1, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    invoke-virtual {v2}, Lcom/netease/mpay/b/af;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    invoke-virtual {v3}, Lcom/netease/mpay/b/af;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v4, v4, Lcom/netease/mpay/b/af;->c:Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;

    iget-object v4, v4, Lcom/netease/mpay/server/response/urslogin/EmailRelatedMobile;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v6, v6, Lcom/netease/mpay/b/af;->a:Ljava/lang/String;

    const/4 v7, 0x1

    new-instance v8, Lcom/netease/mpay/mq;

    invoke-direct {v8, p0}, Lcom/netease/mpay/mq;-><init>(Lcom/netease/mpay/mk;)V

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/f/m;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/m;->h()V

    return-void
.end method

.method private z()Z
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/mk;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/af;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/af;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    iget-object v0, p0, Lcom/netease/mpay/mk;->d:Lcom/netease/mpay/b/af;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    instance-of v0, p4, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/mk;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/netease/mpay/mk;->C:Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/mk;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/mk;->t()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/mpay/mk;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/mk;->t()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->j()V

    iget-object v0, p0, Lcom/netease/mpay/mk;->g:Lcom/netease/mpay/widget/bf$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/mk;->g:Lcom/netease/mpay/widget/bf$a;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/bf$a;->b()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method
