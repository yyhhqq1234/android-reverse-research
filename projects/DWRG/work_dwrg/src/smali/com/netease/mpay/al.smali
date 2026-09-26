.class public Lcom/netease/mpay/al;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/al$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/d;

.field private e:Lcom/netease/mpay/widget/s;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/netease/mpay/e/b;

.field private h:Landroid/widget/AutoCompleteTextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/Button;

.field private m:Lcom/netease/mpay/view/BottomLinkButtons;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/netease/mpay/e/b/o;

.field private p:Landroid/text/TextWatcher;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/al;->q:Z

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

.method static synthetic a(Lcom/netease/mpay/al;)Lcom/netease/mpay/b/d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    return-object v0
.end method

.method private a(J)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Lcom/netease/mpay/as;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/as;-><init>(Lcom/netease/mpay/al;JJ)V

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

.method private a(Lcom/netease/mpay/al$a;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/ao;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ao;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/ap;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ap;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/netease/mpay/widget/bf$b;

    invoke-direct {v1, p1}, Lcom/netease/mpay/widget/bf$b;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/aq;

    invoke-direct {v1, p0}, Lcom/netease/mpay/aq;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/al;Landroid/widget/EditText;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/al;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/al;Lcom/netease/mpay/server/response/m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/server/response/m;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/al;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/al;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/al;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/al;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/netease/mpay/b/ao;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget-object v0, v0, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget-object v0, v0, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    new-instance v1, Lcom/netease/mpay/User;

    invoke-direct {v1, p1}, Lcom/netease/mpay/User;-><init>(Lcom/netease/mpay/b/ao;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/AuthenticationCallback;->onGuestBindSuccess(Lcom/netease/mpay/User;)V

    :cond_0
    invoke-virtual {p1}, Lcom/netease/mpay/b/ao;->a()Lcom/netease/mpay/b/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ao;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/server/response/m;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/netease/mpay/oy;

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v2}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/netease/mpay/server/response/m;->i:Ljava/lang/String;

    iget v4, p1, Lcom/netease/mpay/server/response/m;->c:I

    iget-object v5, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v5}, Lcom/netease/mpay/b/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p1, Lcom/netease/mpay/server/response/m;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/mpay/server/response/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oy;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/b/ao;

    invoke-direct {v0, p2, p1}, Lcom/netease/mpay/b/ao;-><init>(Ljava/lang/String;Lcom/netease/mpay/server/response/m;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/b/ao;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->e:Lcom/netease/mpay/widget/s;

    invoke-virtual {v0, p1}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/netease/mpay/al;->y()V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/netease/mpay/al;->x()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/al;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/al;->y()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/al;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/al;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/al;->x()V

    return-void
.end method

.method static synthetic g(Lcom/netease/mpay/al;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/netease/mpay/al;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/al;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/netease/mpay/al;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/netease/mpay/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/al;->w()V

    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/al;->z()V

    return-void
.end method

.method static synthetic l(Lcom/netease/mpay/al;)Lcom/netease/mpay/e/b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->g:Lcom/netease/mpay/e/b;

    return-object v0
.end method

.method static synthetic m(Lcom/netease/mpay/al;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->o:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method private s()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/al;->q:Z

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->s:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ca:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bI:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->cc:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/al;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->bJ:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/al;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->as:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/mpay/al;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->F:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    iput-object v0, p0, Lcom/netease/mpay/al;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->ar:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/mpay/al;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/al;->f:Landroid/content/res/Resources;

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v2, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v2}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/al;->e:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v3}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->aC:I

    invoke-static {v2, v3, v4, v1}, Lcom/netease/mpay/cq;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget-object v0, v0, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-nez v0, :cond_2

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v2}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/al;->g:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/al;->g:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v1}, Lcom/netease/mpay/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/al;->o:Lcom/netease/mpay/e/b/o;

    goto :goto_1
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/netease/mpay/al;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/al$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/al$a;-><init>(Lcom/netease/mpay/al;Lcom/netease/mpay/am;)V

    invoke-direct {p0}, Lcom/netease/mpay/al;->v()V

    invoke-direct {p0, v0}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/al$a;)V

    iget-object v1, p0, Lcom/netease/mpay/al;->l:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/netease/mpay/al;->u()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/netease/mpay/widget/bf;->a(Landroid/widget/Button;Z)Z

    iget-object v1, p0, Lcom/netease/mpay/al;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/am;

    invoke-direct {v0, p0}, Lcom/netease/mpay/am;-><init>(Lcom/netease/mpay/al;)V

    iget-object v1, p0, Lcom/netease/mpay/al;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ax:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->n:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/au;

    invoke-direct {v0, p0}, Lcom/netease/mpay/au;-><init>(Lcom/netease/mpay/al;)V

    iget-object v1, p0, Lcom/netease/mpay/al;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->bc:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->m:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v1}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget v1, v1, Lcom/netease/mpay/b/d;->a:I

    if-ne v4, v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/netease/mpay/av;

    invoke-direct {v0, p0}, Lcom/netease/mpay/av;-><init>(Lcom/netease/mpay/al;)V

    iget-object v1, p0, Lcom/netease/mpay/al;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->N:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$e;->h:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/al;->m:Lcom/netease/mpay/view/BottomLinkButtons;

    invoke-virtual {v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    iget-object v0, p0, Lcom/netease/mpay/al;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/aw;

    invoke-direct {v1, p0}, Lcom/netease/mpay/aw;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget v0, v0, Lcom/netease/mpay/b/d;->a:I

    if-eq v4, v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget v1, v1, Lcom/netease/mpay/b/d;->a:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/al;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/netease/mpay/al;->y()V

    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/netease/mpay/al;->k:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/al;->a(Landroid/widget/EditText;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/ax;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ax;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/al;->n:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private u()Z
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private v()V
    .locals 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$g;->v:I

    sget v3, Lcom/netease/mpay/widget/RIdentifier$f;->bb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v5, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v5}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/mpay/server/response/u;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/server/response/u;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/netease/mpay/server/response/u;->b(I)Lcom/netease/mpay/server/response/r;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v7, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v7}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/netease/mpay/server/response/r;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/netease/mpay/widget/RIdentifier$f;->ce:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/netease/mpay/widget/ba;->a(Landroid/content/Context;Landroid/widget/AutoCompleteTextView;ILjava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;[Ljava/lang/String;[Ljava/lang/String;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/al;->p:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/mpay/al;->p:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/ay;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ay;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/az;

    invoke-direct {v1, p0}, Lcom/netease/mpay/az;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/netease/mpay/ba;

    invoke-direct {v1, p0}, Lcom/netease/mpay/ba;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/bb;

    invoke-direct {v1, p0}, Lcom/netease/mpay/bb;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/netease/mpay/an;

    invoke-direct {v1, p0}, Lcom/netease/mpay/an;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private w()V
    .locals 8

    const/4 v6, 0x1

    const/16 v4, 0x7d0

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/netease/mpay/widget/ba;->a(Landroid/widget/AutoCompleteTextView;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aj:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/al;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/netease/mpay/cq;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/netease/mpay/cq;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/al;->f:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->ab:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@163.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/al;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v1}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->ac:I

    invoke-static {v0, v1, v2, v6}, Lcom/netease/mpay/cq;->b(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/al;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/al;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->an:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/netease/mpay/al;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/f/br;

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v2}, Lcom/netease/mpay/b/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    invoke-virtual {v3}, Lcom/netease/mpay/b/d;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/mpay/al;->j:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/netease/mpay/ar;

    invoke-direct {v7, p0}, Lcom/netease/mpay/ar;-><init>(Lcom/netease/mpay/al;)V

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/br;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/netease/mpay/f/au$a;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/br;->h()V

    goto/16 :goto_0
.end method

.method private x()V
    .locals 2

    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/al;->a(J)V

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/al;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private z()V
    .locals 4

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/al;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->u:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/al;->f:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->K:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/at;

    invoke-direct {v3, p0}, Lcom/netease/mpay/at;-><init>(Lcom/netease/mpay/al;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/d;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/d;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p4, Lcom/netease/mpay/b/ao;

    invoke-direct {p0, p4}, Lcom/netease/mpay/al;->a(Lcom/netease/mpay/b/ao;)V

    goto :goto_0

    :cond_3
    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/netease/mpay/al;->z()V

    goto :goto_0

    :cond_4
    instance-of v0, p4, Lcom/netease/mpay/b/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p4, v0}, Lcom/netease/mpay/b/al;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/mpay/al;->p:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/widget/ba;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/netease/mpay/al;->p:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/al;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/netease/mpay/al;->q:Z

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/al;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/al;->t()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/al;->h:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/mpay/al;->s()V

    invoke-direct {p0}, Lcom/netease/mpay/al;->t()V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget-object v0, v0, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/al;->d:Lcom/netease/mpay/b/d;

    iget-object v0, v0, Lcom/netease/mpay/b/d;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method
