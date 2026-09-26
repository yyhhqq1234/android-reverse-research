.class public Lcom/netease/mpay/jg;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/jg$a;,
        Lcom/netease/mpay/jg$b;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/s;

.field private e:Landroid/content/res/Resources;

.field private f:Lcom/netease/mpay/widget/s;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/netease/mpay/e/b/af;

.field private r:Lcom/netease/mpay/e/b/o;

.field private s:Lcom/netease/mpay/jg$b;

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    new-instance v0, Lcom/netease/mpay/jg$b;

    invoke-direct {v0, p0}, Lcom/netease/mpay/jg$b;-><init>(Lcom/netease/mpay/jg;)V

    iput-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

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

.method static synthetic a(Lcom/netease/mpay/jg;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/jg;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/jg;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/jg;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/jg;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    const-string v0, ""

    :goto_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/netease/mpay/jg;Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/jg;->a(Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/netease/mpay/jg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(I)V
    .locals 10

    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    iget-boolean v0, v0, Lcom/netease/mpay/jg$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/jg$b;->a:Z

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_wydk"

    const-string v7, "cz_wydk_kh"

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    iget-boolean v0, v0, Lcom/netease/mpay/jg$b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/jg$b;->b:Z

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_wydk"

    const-string v7, "cz_wydk_mm"

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    iget-boolean v0, v0, Lcom/netease/mpay/jg$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jg;->s:Lcom/netease/mpay/jg$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/jg$b;->c:Z

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_wydk"

    const-string v7, "cz_wydk_cz"

    iget-object v8, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v9, "cz_wydk"

    invoke-static {v8, v9}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_wydk"

    const-string v7, "cz_wydk_cz"

    iget-object v8, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v8, v8, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v8, v8, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v9, "cz_wydk"

    invoke-static {v8, v9}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netease/mpay/js;

    invoke-direct {v2, p0}, Lcom/netease/mpay/js;-><init>(Lcom/netease/mpay/jg;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/jg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/jg;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/jg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/jg;)Lcom/netease/mpay/b/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/jg;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/jg;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/netease/mpay/jg;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/jg;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/netease/mpay/jg;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/mpay/jg;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->f:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/mpay/jg;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/jg;->t()V

    return-void
.end method

.method private s()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->aa:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->U:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->W:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jg;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->V:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->X:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jg;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->Y:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/jg;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jg;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cR:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jg;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jg;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jg;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cP:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/jg;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/mpay/jg;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v0, v0, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v0, v0, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/jg;->o:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v5, v5, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v5, v5, Lcom/netease/mpay/b/r$a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$h;->cv:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jg;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->j()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/server/response/OrderInit;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    :goto_0
    new-instance v0, Lcom/netease/mpay/jg$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/jg$a;-><init>(Lcom/netease/mpay/jg;Lcom/netease/mpay/jh;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->g:Landroid/widget/Button;

    iget-object v2, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    invoke-direct {p0, v2, v3}, Lcom/netease/mpay/jg;->a(Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v1, p0, Lcom/netease/mpay/jg;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/jj;

    invoke-direct {v2, p0}, Lcom/netease/mpay/jj;-><init>(Lcom/netease/mpay/jg;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/jl;

    invoke-direct {v2, p0}, Lcom/netease/mpay/jl;-><init>(Lcom/netease/mpay/jg;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/jn;

    invoke-direct {v2, p0}, Lcom/netease/mpay/jn;-><init>(Lcom/netease/mpay/jg;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/jp;

    invoke-direct {v2, p0}, Lcom/netease/mpay/jp;-><init>(Lcom/netease/mpay/jg;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_0
    new-instance v6, Lcom/netease/mpay/jh;

    invoke-direct {v6, p0}, Lcom/netease/mpay/jh;-><init>(Lcom/netease/mpay/jg;)V

    new-instance v0, Lcom/netease/mpay/ji;

    iget-object v2, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/af$a;->b:Lcom/netease/mpay/f/af$a;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/ji;-><init>(Lcom/netease/mpay/jg;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/af$a;Lcom/netease/mpay/f/af$b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ji;->h()V

    goto :goto_0
.end method

.method private t()V
    .locals 10

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/netease/mpay/jg;->b(I)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->E:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/netease/mpay/jg;->b(I)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->f:Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->F:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/netease/mpay/f/p;

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v3}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v4, v4, Lcom/netease/mpay/b/s;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v7}, Lcom/netease/mpay/b/s;->s()I

    move-result v7

    iget-object v8, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v8}, Lcom/netease/mpay/b/s;->k()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/netease/mpay/jr;

    invoke-direct {v9, p0}, Lcom/netease/mpay/jr;-><init>(Lcom/netease/mpay/jg;)V

    invoke-direct/range {v0 .. v9}, Lcom/netease/mpay/f/p;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/p;->h()V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v0}, Lcom/netease/mpay/b/s;->n()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/s;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/s;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v0, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/jg;->t:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/jg;->t:Z

    invoke-direct {p0}, Lcom/netease/mpay/jg;->s()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/netease/mpay/jg;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/jg;->e:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/jg;->t:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v2}, Lcom/netease/mpay/b/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    invoke-virtual {v1}, Lcom/netease/mpay/b/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/ii;

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/ii;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/netease/mpay/ii;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-boolean v0, v0, Lcom/netease/mpay/e/b/af;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/widget/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/jg;->q:Lcom/netease/mpay/e/b/af;

    iget-object v2, v2, Lcom/netease/mpay/e/b/af;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v3, v3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget-object v4, v4, Lcom/netease/mpay/e/b/o;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/jg;->r:Lcom/netease/mpay/e/b/o;

    iget v5, v5, Lcom/netease/mpay/e/b/o;->f:I

    const-string v6, "cz_wydk"

    iget-object v7, p0, Lcom/netease/mpay/jg;->d:Lcom/netease/mpay/b/s;

    iget-object v7, v7, Lcom/netease/mpay/b/s;->e:Lcom/netease/mpay/b/r$a;

    iget-object v7, v7, Lcom/netease/mpay/b/r$a;->b:Ljava/lang/String;

    const-string v8, "cz_wydk"

    invoke-static {v7, v8}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/widget/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/jg;->f:Lcom/netease/mpay/widget/s;

    invoke-direct {p0}, Lcom/netease/mpay/jg;->u()V

    invoke-direct {p0}, Lcom/netease/mpay/jg;->s()V

    goto/16 :goto_0
.end method

.method public l()Z
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jg;->h:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/jg;->j:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/netease/mpay/widget/bf;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    new-instance v0, Lcom/netease/mpay/b/ar$g;

    invoke-direct {v0}, Lcom/netease/mpay/b/ar$g;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/jg;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ar$g;->a(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method
