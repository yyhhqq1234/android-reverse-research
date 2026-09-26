.class public Lcom/netease/mpay/hl;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/hl$d;,
        Lcom/netease/mpay/hl$a;,
        Lcom/netease/mpay/hl$c;,
        Lcom/netease/mpay/hl$b;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/k;

.field private e:Lcom/netease/mpay/hl$d;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/netease/mpay/hl$a;

.field private j:Lcom/netease/mpay/widget/am;

.field private k:Lcom/netease/mpay/widget/s;

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/hl;->h:Z

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

.method static synthetic a(Lcom/netease/mpay/hl;Lcom/netease/mpay/widget/am;)Lcom/netease/mpay/widget/am;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/hl;->j:Lcom/netease/mpay/widget/am;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/hl;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/hl;->s()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/hl;Lcom/netease/mpay/hx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/hl;->a(Lcom/netease/mpay/hx;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/hx;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/hl;->k:Lcom/netease/mpay/widget/s;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->cO:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$h;->n:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/netease/mpay/hn;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/hn;-><init>(Lcom/netease/mpay/hl;Lcom/netease/mpay/hx;)V

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/widget/s;->a([Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/hl;)Lcom/netease/mpay/b/k;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/hl;)Lcom/netease/mpay/hl$d;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl;->e:Lcom/netease/mpay/hl$d;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/am;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl;->j:Lcom/netease/mpay/widget/am;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/hl;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/hl;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl;->l:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/hl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/hl;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/netease/mpay/hl;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/hl;->f:I

    return v0
.end method

.method static synthetic i(Lcom/netease/mpay/hl;)I
    .locals 1

    iget v0, p0, Lcom/netease/mpay/hl;->g:I

    return v0
.end method

.method static synthetic j(Lcom/netease/mpay/hl;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/hl;->k:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/hl;->i:Lcom/netease/mpay/hl$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hl$a;->cancel(Z)Z

    iget-object v0, p0, Lcom/netease/mpay/hl;->j:Lcom/netease/mpay/widget/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hl;->j:Lcom/netease/mpay/widget/am;

    invoke-virtual {v0}, Lcom/netease/mpay/widget/am;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/k;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/k;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/hl;->d:Lcom/netease/mpay/b/k;

    iget-object v0, p0, Lcom/netease/mpay/hl;->d:Lcom/netease/mpay/b/k;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/hl;->f:I

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/hl;->g:I

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->Y:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->bE:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/netease/mpay/hl$d;

    iget-object v3, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, p0, v3}, Lcom/netease/mpay/hl$d;-><init>(Lcom/netease/mpay/hl;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/netease/mpay/hl;->e:Lcom/netease/mpay/hl$d;

    iget-object v2, p0, Lcom/netease/mpay/hl;->e:Lcom/netease/mpay/hl$d;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/netease/mpay/hl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/mpay/hl$a;-><init>(Lcom/netease/mpay/hl;Lcom/netease/mpay/hm;)V

    iput-object v0, p0, Lcom/netease/mpay/hl;->i:Lcom/netease/mpay/hl$a;

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->at:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/hm;

    invoke-direct {v1, p0}, Lcom/netease/mpay/hm;-><init>(Lcom/netease/mpay/hl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/hl;->k:Lcom/netease/mpay/widget/s;

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$a;->d:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/hl;->l:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/netease/mpay/hl;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$a;->e:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/hl;->m:Landroid/view/animation/Animation;

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    iget-object v0, p0, Lcom/netease/mpay/hl;->i:Lcom/netease/mpay/hl$a;

    invoke-virtual {v0}, Lcom/netease/mpay/hl$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hl;->i:Lcom/netease/mpay/hl$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/hl$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/hl;->s()V

    iget-object v0, p0, Lcom/netease/mpay/hl;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/hl;->d:Lcom/netease/mpay/b/k;

    iget-object v0, v0, Lcom/netease/mpay/b/k;->e:Lcom/netease/mpay/AuthenticationCallback;

    invoke-interface {v0}, Lcom/netease/mpay/AuthenticationCallback;->onDialogFinish()V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->l()Z

    move-result v0

    return v0
.end method
