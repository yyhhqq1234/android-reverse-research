.class public Lcom/netease/mpay/ij;
.super Lcom/netease/mpay/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/ij$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/p;

.field private e:Lcom/netease/mpay/ij$a;

.field private f:Z

.field private g:Landroid/content/res/Resources;

.field private h:Lcom/netease/mpay/e/b;

.field private i:Lcom/netease/mpay/e/b/af;

.field private j:Ljava/lang/Integer;

.field private k:Lcom/netease/mpay/server/response/OrderInit;

.field private l:Z

.field private m:Lcom/netease/mpay/e/b/o;

.field private n:Lcom/netease/mpay/bc;

.field private o:Lcom/netease/mpay/bc$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    new-instance v0, Lcom/netease/mpay/ik;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ik;-><init>(Lcom/netease/mpay/ij;)V

    iput-object v0, p0, Lcom/netease/mpay/ij;->o:Lcom/netease/mpay/bc$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ij;->f:Z

    new-instance v0, Lcom/netease/mpay/ij$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/ij$a;-><init>(Lcom/netease/mpay/ij;)V

    iput-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

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

    invoke-direct {p0}, Lcom/netease/mpay/ij;->w()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private B()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ij;->x()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private C()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ij;->y()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    invoke-virtual {v0}, Lcom/netease/mpay/ij$a;->d()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v1}, Lcom/netease/mpay/b/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/e/b/o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private E()V
    .locals 7

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->by:I

    invoke-static {v1, v2, v3}, Lcom/netease/mpay/cq;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->l:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/io;

    invoke-direct {v3, p0}, Lcom/netease/mpay/io;-><init>(Lcom/netease/mpay/ij;)V

    iget-object v4, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->cJ:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/netease/mpay/ip;

    invoke-direct {v5, p0}, Lcom/netease/mpay/ip;-><init>(Lcom/netease/mpay/ij;)V

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/netease/mpay/widget/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method private F()V
    .locals 8

    new-instance v0, Lcom/netease/mpay/f/as;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v3}, Lcom/netease/mpay/b/p;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v4, v4, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v5, v5, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iget-object v5, v5, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/iq;

    invoke-direct {v6, p0}, Lcom/netease/mpay/iq;-><init>(Lcom/netease/mpay/ij;)V

    iget-object v7, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/f/as;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;Z)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/as;->h()V

    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/mpay/ij;)Lcom/netease/mpay/server/response/OrderInit;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/ij;Lcom/netease/mpay/server/response/OrderInit;)Lcom/netease/mpay/server/response/OrderInit;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    return-object p1
.end method

.method private a(Lcom/netease/mpay/PaymentResult;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0
.end method

.method private a(Lcom/netease/mpay/b/o;)V
    .locals 7

    new-instance v0, Lcom/netease/mpay/f/e;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v3}, Lcom/netease/mpay/b/p;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v4, v4, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v4, v4, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v5, v5, Lcom/netease/mpay/b/p;->d:Lcom/netease/mpay/b/p$b;

    iget-object v5, v5, Lcom/netease/mpay/b/p$b;->a:Ljava/lang/String;

    new-instance v6, Lcom/netease/mpay/iu;

    invoke-direct {v6, p0, p1}, Lcom/netease/mpay/iu;-><init>(Lcom/netease/mpay/ij;Lcom/netease/mpay/b/o;)V

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/f/e;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/e;->h()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ij;Lcom/netease/mpay/PaymentResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/PaymentResult;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ij;Lcom/netease/mpay/b/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/b/o;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ij;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    return-void
.end method

.method private a(Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lcom/netease/mpay/b/o$a;

    iget-object v1, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v1, v1, Lcom/netease/mpay/server/response/OrderInit;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v2, v2, Lcom/netease/mpay/server/response/OrderInit;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ij;->j:Ljava/lang/Integer;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v2, Lcom/netease/mpay/b$a;->B:Lcom/netease/mpay/b$a;

    new-instance v3, Lcom/netease/mpay/b/t;

    new-instance v5, Lcom/netease/mpay/b/o;

    iget-object v6, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-direct {v5, v6, v0}, Lcom/netease/mpay/b/o;-><init>(Lcom/netease/mpay/b/p;Lcom/netease/mpay/b/o$a;)V

    const-string v0, "pay"

    invoke-direct {v3, v5, v0}, Lcom/netease/mpay/b/t;-><init>(Lcom/netease/mpay/b/o;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/ij;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/ij;->f:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Lcom/netease/mpay/server/response/OrderInit$PayChannel;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v0, v0, Lcom/netease/mpay/server/response/OrderInit;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    iget-object v3, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/ij;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method private b(Lcom/netease/mpay/PaymentResult;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/PaymentResult;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/ij;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    return-void
.end method

.method private b(Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v1, -0x1

    const-string v0, ""

    iget-object v9, p1, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->a:Ljava/lang/String;

    const-string v2, "epay"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "zf_wyb"

    move-object v6, v7

    move-object v4, v0

    move v8, v1

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    invoke-virtual {v0, v4}, Lcom/netease/mpay/ij$a;->a(Ljava/lang/String;)V

    new-instance v10, Lcom/netease/mpay/b/o;

    iget-object v11, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    new-instance v0, Lcom/netease/mpay/b/o$a;

    iget-object v1, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v1, v1, Lcom/netease/mpay/server/response/OrderInit;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v2, v2, Lcom/netease/mpay/server/response/OrderInit;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/ij;->j:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    invoke-virtual {v5}, Lcom/netease/mpay/ij$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/netease/mpay/widget/ay;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/b/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    invoke-direct {v10, v11, v0}, Lcom/netease/mpay/b/o;-><init>(Lcom/netease/mpay/b/p;Lcom/netease/mpay/b/o$a;)V

    const-string v0, "epay"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v10}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/b/o;)V

    :goto_1
    return-void

    :cond_0
    const-string v2, "ecard"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "zf"

    sget-object v0, Lcom/netease/mpay/b$a;->u:Lcom/netease/mpay/b$a;

    const/4 v2, 0x2

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto :goto_0

    :cond_1
    const-string v2, "mcard"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "zf_sjcz"

    sget-object v0, Lcom/netease/mpay/b$a;->t:Lcom/netease/mpay/b$a;

    const/4 v2, 0x3

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto :goto_0

    :cond_2
    const-string v2, "uppay"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "zf_yl"

    sget-object v0, Lcom/netease/mpay/b$a;->w:Lcom/netease/mpay/b$a;

    const/4 v2, 0x4

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto :goto_0

    :cond_3
    const-string v2, "bankcard"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "zf_yhk"

    sget-object v0, Lcom/netease/mpay/b$a;->x:Lcom/netease/mpay/b$a;

    const/16 v2, 0xa

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto :goto_0

    :cond_4
    const-string v2, "alipay"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "zf_zfb"

    sget-object v0, Lcom/netease/mpay/b$a;->y:Lcom/netease/mpay/b$a;

    const/4 v2, 0x5

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto/16 :goto_0

    :cond_5
    const-string v2, "weixinpay"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "zf_wxzf"

    sget-object v0, Lcom/netease/mpay/b$a;->t:Lcom/netease/mpay/b$a;

    const/16 v2, 0x8

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto/16 :goto_0

    :cond_6
    const-string v2, "weixinpayqr"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "zf_wxzfqr"

    move-object v6, v7

    move-object v4, v0

    move v8, v1

    goto/16 :goto_0

    :cond_7
    const-string v2, "alipayqr"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "zf_zfbqr"

    move-object v6, v7

    move-object v4, v0

    move v8, v1

    goto/16 :goto_0

    :cond_8
    const-string v2, "tenpay"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "zf_qqzf"

    sget-object v0, Lcom/netease/mpay/b$a;->t:Lcom/netease/mpay/b$a;

    const/16 v2, 0xb

    move-object v6, v0

    move-object v4, v1

    move v8, v2

    goto/16 :goto_0

    :cond_9
    const-string v0, "weixinpayqr"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "alipayqr"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    new-instance v0, Lcom/netease/mpay/kv;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v2, Lcom/netease/mpay/b/s;

    invoke-direct {v2, v10}, Lcom/netease/mpay/b/s;-><init>(Lcom/netease/mpay/b/o;)V

    new-instance v3, Lcom/netease/mpay/in;

    invoke-direct {v3, p0}, Lcom/netease/mpay/in;-><init>(Lcom/netease/mpay/ij;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/kv;-><init>(Landroid/app/Activity;Lcom/netease/mpay/b/s;Lcom/netease/mpay/kv$b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/kv;->a()V

    goto/16 :goto_1

    :cond_b
    if-eqz v6, :cond_c

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v6, v10, v7, v1}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object v6, v7

    move-object v4, v0

    move v8, v1

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/netease/mpay/ij;)Lcom/netease/mpay/ij$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/ij;)Lcom/netease/mpay/b/p;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->m:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mpay/ij;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/ij;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->z()V

    return-void
.end method

.method static synthetic h(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->A()V

    return-void
.end method

.method static synthetic i(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->B()V

    return-void
.end method

.method static synthetic j(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->C()V

    return-void
.end method

.method static synthetic k(Lcom/netease/mpay/ij;)Lcom/netease/mpay/e/b/af;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->i:Lcom/netease/mpay/e/b/af;

    return-object v0
.end method

.method static synthetic l(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->u()V

    return-void
.end method

.method static synthetic m(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->t()V

    return-void
.end method

.method static synthetic n(Lcom/netease/mpay/ij;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->F()V

    return-void
.end method

.method static synthetic o(Lcom/netease/mpay/ij;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    return-object v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->co:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/PaymentResult;->ORDER_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/PaymentResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ad:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :try_start_0
    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cx:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v1, v1, Lcom/netease/mpay/server/response/OrderInit;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cy:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v1, v1, Lcom/netease/mpay/server/response/OrderInit;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cw:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    sget v3, Lcom/netease/mpay/widget/RIdentifier$h;->cw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v2, v2, Lcom/netease/mpay/server/response/OrderInit;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->I:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v1, v1, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v1, Lcom/netease/mpay/b/p$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->af:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/im;

    invoke-direct {v1, p0}, Lcom/netease/mpay/im;-><init>(Lcom/netease/mpay/ij;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/netease/mpay/bc;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ij;->o:Lcom/netease/mpay/bc$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/bc;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/bc$a;)V

    iput-object v0, p0, Lcom/netease/mpay/ij;->n:Lcom/netease/mpay/bc;

    invoke-direct {p0}, Lcom/netease/mpay/ij;->u()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private u()V
    .locals 2

    const-string v0, "ecard"

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->b(Ljava/lang/String;)Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ij;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/netease/mpay/ij;->n:Lcom/netease/mpay/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ij;->n:Lcom/netease/mpay/bc;

    iget-object v1, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    iget-object v1, v1, Lcom/netease/mpay/server/response/OrderInit;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/bc;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    iget v0, v0, Lcom/netease/mpay/server/response/OrderInit$PayChannel;->l:I

    goto :goto_0
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/netease/mpay/PaymentResult;->SUCCESS:Lcom/netease/mpay/PaymentResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/g;->c()Lcom/netease/mpay/e/b/l;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/l;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/e/b/l;->c:Z

    iget-object v1, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/g;->a(Lcom/netease/mpay/e/b/l;)V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_UNKNOWN:Lcom/netease/mpay/PaymentResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/g;->c()Lcom/netease/mpay/e/b/l;

    move-result-object v0

    iget-boolean v1, v0, Lcom/netease/mpay/e/b/l;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netease/mpay/e/b/l;->c:Z

    iget-object v1, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v1}, Lcom/netease/mpay/e/b;->k()Lcom/netease/mpay/e/c/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/mpay/e/c/g;->a(Lcom/netease/mpay/e/b/l;)V

    goto :goto_0
.end method

.method private x()V
    .locals 3

    invoke-direct {p0}, Lcom/netease/mpay/ij;->D()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Lcom/netease/mpay/PaymentResult;->USER_LOGOUT:Lcom/netease/mpay/PaymentResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/netease/mpay/PaymentResult;->USER_CANCEL:Lcom/netease/mpay/PaymentResult;

    invoke-interface {v0, v1, v2}, Lcom/netease/mpay/PaymentCallback;->onFinish(ILcom/netease/mpay/PaymentResult;)V

    goto :goto_0
.end method

.method private z()V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/ij;->v()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/p;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/p;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 2

    const/4 v1, 0x5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    instance-of v0, p4, Lcom/netease/mpay/b/ao;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ao;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v0, v0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v0, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    move-object v0, p4

    check-cast v0, Lcom/netease/mpay/b/ao;

    iget-object v0, v0, Lcom/netease/mpay/b/ao;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v0, v0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    check-cast p4, Lcom/netease/mpay/b/ao;

    iget-object v1, p4, Lcom/netease/mpay/b/ao;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/b/p$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v1, v1, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v1, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ij;->m:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0}, Lcom/netease/mpay/ij;->F()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/ij;->B()V

    goto :goto_0

    :cond_2
    instance-of v0, p4, Lcom/netease/mpay/b/ar$c;

    if-eqz v0, :cond_4

    check-cast p4, Lcom/netease/mpay/b/ar$c;

    invoke-virtual {p4}, Lcom/netease/mpay/b/ar$c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netease/mpay/ij;->B()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/netease/mpay/ij;->x()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    invoke-virtual {v0}, Lcom/netease/mpay/ij$a;->c()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    invoke-virtual {v0}, Lcom/netease/mpay/server/response/OrderInit;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->F()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->B()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    invoke-direct {p0}, Lcom/netease/mpay/ij;->A()V

    goto :goto_0

    :cond_7
    if-ne p1, v1, :cond_b

    instance-of v0, p4, Lcom/netease/mpay/b/ar$d;

    if-eqz v0, :cond_b

    check-cast p4, Lcom/netease/mpay/b/ar$d;

    iget-object v0, p4, Lcom/netease/mpay/b/ar$d;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/netease/mpay/ij;->A()V

    goto :goto_0

    :cond_8
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/ij;->f:Z

    goto :goto_0

    :cond_9
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "epay"

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->b(Ljava/lang/String;)Lcom/netease/mpay/server/response/OrderInit$PayChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/server/response/OrderInit$PayChannel;)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/netease/mpay/ij;->A()V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p4, Lcom/netease/mpay/b/ar$e;

    if-eqz v0, :cond_e

    check-cast p4, Lcom/netease/mpay/b/ar$e;

    invoke-virtual {p4}, Lcom/netease/mpay/b/ar$e;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/netease/mpay/ij;->z()V

    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/netease/mpay/ij;->v()V

    goto :goto_1

    :cond_e
    instance-of v0, p4, Lcom/netease/mpay/b/ar$b;

    if-eqz v0, :cond_10

    check-cast p4, Lcom/netease/mpay/b/ar$b;

    invoke-virtual {p4}, Lcom/netease/mpay/b/ar$b;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/PaymentResult;)V

    goto :goto_1

    :cond_f
    sget-object v0, Lcom/netease/mpay/PaymentResult;->PAY_CHANNEL_ERROR:Lcom/netease/mpay/PaymentResult;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->a(Lcom/netease/mpay/PaymentResult;)V

    goto :goto_1

    :cond_10
    instance-of v0, p4, Lcom/netease/mpay/b/ar$f;

    if-eqz v0, :cond_12

    check-cast p4, Lcom/netease/mpay/b/ar$f;

    invoke-virtual {p4}, Lcom/netease/mpay/b/ar$f;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/netease/mpay/ij;->A()V

    goto :goto_1

    :cond_11
    invoke-direct {p0}, Lcom/netease/mpay/ij;->w()V

    goto :goto_1

    :cond_12
    instance-of v0, p4, Lcom/netease/mpay/b/ar$c;

    if-eqz v0, :cond_c

    check-cast p4, Lcom/netease/mpay/b/ar$c;

    invoke-virtual {p4}, Lcom/netease/mpay/b/ar$c;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/netease/mpay/ij;->B()V

    goto :goto_1

    :cond_13
    invoke-direct {p0}, Lcom/netease/mpay/ij;->x()V

    goto :goto_1
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/ij;->l:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/ij;->l:Z

    iget-object v0, p0, Lcom/netease/mpay/ij;->k:Lcom/netease/mpay/server/response/OrderInit;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mpay/ij;->t()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/netease/mpay/ij;->s()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->g:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/ij;->l:Z

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/mpay/PaymentResult;->CALLBACK_EMPTY:Lcom/netease/mpay/PaymentResult;

    invoke-direct {p0, v0}, Lcom/netease/mpay/ij;->b(Lcom/netease/mpay/PaymentResult;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->e()Lcom/netease/mpay/e/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/e/c/b;->a()Lcom/netease/mpay/e/b/af;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ij;->i:Lcom/netease/mpay/e/b/af;

    iget-object v0, p0, Lcom/netease/mpay/ij;->h:Lcom/netease/mpay/e/b;

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v1, v1, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget-object v1, v1, Lcom/netease/mpay/b/p$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/ij;->m:Lcom/netease/mpay/e/b/o;

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v0, v0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    iget v0, v0, Lcom/netease/mpay/b/p$a;->e:I

    invoke-static {v0}, Lcom/netease/mpay/e/a/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/mpay/ij$a;->a(I)V

    iget-object v0, p0, Lcom/netease/mpay/ij;->e:Lcom/netease/mpay/ij$a;

    invoke-virtual {v0}, Lcom/netease/mpay/ij$a;->d()V

    :cond_1
    invoke-direct {p0}, Lcom/netease/mpay/ij;->F()V

    new-instance v0, Lcom/netease/mpay/bc;

    iget-object v1, p0, Lcom/netease/mpay/ij;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v2}, Lcom/netease/mpay/b/p;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/ij;->o:Lcom/netease/mpay/bc$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/bc;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/bc$a;)V

    iput-object v0, p0, Lcom/netease/mpay/ij;->n:Lcom/netease/mpay/bc;

    goto :goto_0
.end method

.method public g()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->g()V

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    iget-object v0, v0, Lcom/netease/mpay/b/p;->c:Lcom/netease/mpay/b/p$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->l()Lcom/netease/mpay/PaymentCallback;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/ij;->A()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/ij;->d:Lcom/netease/mpay/b/p;

    invoke-virtual {v0}, Lcom/netease/mpay/b/p;->m()V

    invoke-super {p0}, Lcom/netease/mpay/a;->j()V

    return-void
.end method

.method public l()Z
    .locals 1

    invoke-direct {p0}, Lcom/netease/mpay/ij;->E()V

    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->n()Z

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->m:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/ij;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    invoke-direct {p0}, Lcom/netease/mpay/ij;->E()V

    const/4 v0, 0x1

    return v0
.end method
