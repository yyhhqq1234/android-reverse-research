.class public Lcom/netease/mpay/ck;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ck$a;
    }
.end annotation


# instance fields
.field private final d:I

.field private e:Lcom/netease/mpay/b/a;

.field private f:Lcom/netease/mpay/widget/s;

.field private g:Lcom/netease/mpay/e/b;

.field private h:Lcom/netease/mpay/e/b/o;

.field private i:Landroid/content/res/Resources;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/Button;

.field private m:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/16 v0, 0xfa

    iput v0, p0, Lcom/netease/mpay/ck;->d:I

    new-instance v0, Lcom/netease/mpay/cl;

    invoke-direct {v0, p0}, Lcom/netease/mpay/cl;-><init>(Lcom/netease/mpay/ck;)V

    iput-object v0, p0, Lcom/netease/mpay/ck;->m:Landroid/text/TextWatcher;

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

.method static synthetic a(Lcom/netease/mpay/ck;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/mpay/ck;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/ck;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ck;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/ck;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/ck;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ck;->f:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ck;->v()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ck;->t()V

    return-void
.end method

.method private s()V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/ck;->f:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aa:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/netease/mpay/ck;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ab:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/ck;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/ck;->h:Lcom/netease/mpay/e/b/o;

    iget v0, v0, Lcom/netease/mpay/e/b/o;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ck;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/netease/mpay/ck;->h:Lcom/netease/mpay/e/b/o;

    invoke-static {v1}, Lcom/netease/mpay/e/b/x;->a(Lcom/netease/mpay/e/b/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v1, Lcom/netease/mpay/cn;

    invoke-direct {v1, p0}, Lcom/netease/mpay/cn;-><init>(Lcom/netease/mpay/ck;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v1}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ac:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/ck;->v()V

    iget-object v0, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private t()V
    .locals 9

    invoke-direct {p0}, Lcom/netease/mpay/ck;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ck;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/f/s;

    iget-object v1, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/ck;->k:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/netease/mpay/ck$a;->a()Lcom/netease/mpay/ck$a;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v7}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/netease/mpay/ck$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/netease/mpay/ck$a;->a()Lcom/netease/mpay/ck$a;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v8}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/netease/mpay/ck$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/netease/mpay/co;

    invoke-direct {v8, p0}, Lcom/netease/mpay/co;-><init>(Lcom/netease/mpay/ck;)V

    invoke-direct/range {v0 .. v8}, Lcom/netease/mpay/f/s;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/s;->h()V

    goto :goto_0
.end method

.method private u()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    invoke-direct {p0}, Lcom/netease/mpay/ck;->u()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v0, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->p:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/netease/mpay/ck;->l:Landroid/widget/Button;

    iget-object v3, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    if-eqz v1, :cond_2

    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->j:I

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/netease/mpay/widget/RIdentifier$c;->i:I

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    iget-object v0, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v0}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/ck;->g:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/ck;->g:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ck;->e:Lcom/netease/mpay/b/a;

    invoke-virtual {v1}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ck;->h:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0}, Lcom/netease/mpay/ck;->s()V

    goto :goto_0
.end method

.method public n()Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/mpay/a;->n()Z

    iget-object v1, p0, Lcom/netease/mpay/ck;->i:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->l:I

    invoke-virtual {p0, v1}, Lcom/netease/mpay/ck;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/ck;->j:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/ck;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/netease/mpay/ck;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
