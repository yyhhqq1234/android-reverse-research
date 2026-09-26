.class public Lcom/netease/mpay/codescanner/y;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/codescanner/y$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/x;

.field private e:Lcom/netease/mpay/codescanner/a;

.field private f:Landroid/content/res/Resources;

.field private g:Z


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

.method static synthetic a(Lcom/netease/mpay/codescanner/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->v()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/codescanner/y;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/codescanner/y;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/codescanner/y;)Lcom/netease/mpay/b/x;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/an;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netease/mpay/b/an;-><init>(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/an;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/mpay/codescanner/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->t()V

    return-void
.end method

.method static synthetic d(Lcom/netease/mpay/codescanner/y;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method private s()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->n:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ap:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$a;->a:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private t()V
    .locals 7

    const/4 v4, 0x2

    new-instance v1, Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    invoke-virtual {v2}, Lcom/netease/mpay/b/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->d()Lcom/netease/mpay/e/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/c;->a()Lcom/netease/mpay/e/b/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v3, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v3, v3, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    invoke-virtual {v3}, Lcom/netease/mpay/b/x$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, v0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    instance-of v0, v0, Lcom/netease/mpay/b/x$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->e:Lcom/netease/mpay/codescanner/a;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v1, v1, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    check-cast v1, Lcom/netease/mpay/b/x$b;

    iget-object v1, v1, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    iget-object v1, v1, Lcom/netease/mpay/server/response/aa;->e:Ljava/lang/String;

    iget-object v2, v2, Lcom/netease/mpay/e/b/f;->j:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/codescanner/y$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/netease/mpay/codescanner/y$a;-><init>(Lcom/netease/mpay/codescanner/y;Lcom/netease/mpay/codescanner/z;)V

    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/codescanner/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, v0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    instance-of v0, v0, Lcom/netease/mpay/b/x$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/at;

    invoke-direct {v0}, Lcom/netease/mpay/b/at;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/at;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, v0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    instance-of v0, v0, Lcom/netease/mpay/b/x$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, v0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    check-cast v0, Lcom/netease/mpay/b/x$b;

    iget-object v0, v0, Lcom/netease/mpay/b/x$b;->a:Lcom/netease/mpay/server/response/aa;

    iget-object v0, v0, Lcom/netease/mpay/server/response/aa;->d:Lcom/netease/mpay/server/response/aa$b;

    iget v0, v0, Lcom/netease/mpay/server/response/aa$b;->b:I

    if-ne v0, v4, :cond_3

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netease/mpay/e/c/k;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->cW:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/codescanner/z;

    invoke-direct {v3, p0}, Lcom/netease/mpay/codescanner/z;-><init>(Lcom/netease/mpay/codescanner/y;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/widget/s;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/codescanner/aa;

    invoke-direct {v3, p0}, Lcom/netease/mpay/codescanner/aa;-><init>(Lcom/netease/mpay/codescanner/y;)V

    iget-object v4, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->g:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/codescanner/ac;

    invoke-direct {v5, p0}, Lcom/netease/mpay/codescanner/ac;-><init>(Lcom/netease/mpay/codescanner/y;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0
.end method

.method private u()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/am;

    invoke-direct {v0}, Lcom/netease/mpay/b/am;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/am;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private v()V
    .locals 2

    new-instance v0, Lcom/netease/mpay/b/au;

    invoke-direct {v0}, Lcom/netease/mpay/b/au;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/au;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private w()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->co:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/x;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/x;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->u()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->s()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Z)V

    iget-boolean v0, p0, Lcom/netease/mpay/codescanner/y;->g:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/y;->g:Z

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->t()V

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->s()V

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, v0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    iget-object v0, v0, Lcom/netease/mpay/b/x;->a:Lcom/netease/mpay/b/x$c;

    invoke-virtual {v0}, Lcom/netease/mpay/b/x$c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/codescanner/y;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->cY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/codescanner/y;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/codescanner/y;->g:Z

    new-instance v0, Lcom/netease/mpay/codescanner/a;

    iget-object v1, p0, Lcom/netease/mpay/codescanner/y;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    invoke-virtual {v2}, Lcom/netease/mpay/b/x;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    invoke-virtual {v3}, Lcom/netease/mpay/b/x;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/codescanner/y;->d:Lcom/netease/mpay/b/x;

    invoke-virtual {v4}, Lcom/netease/mpay/b/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/mpay/codescanner/a;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/netease/mpay/MpayConfig;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/codescanner/y;->e:Lcom/netease/mpay/codescanner/a;

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->w()V

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/codescanner/y;->u()V

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    move-result v0

    return v0
.end method
