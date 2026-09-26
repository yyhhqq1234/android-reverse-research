.class public Lcom/netease/mpay/oc;
.super Lcom/netease/mpay/widget/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oc$a;,
        Lcom/netease/mpay/oc$b;
    }
.end annotation


# instance fields
.field private e:Lcom/netease/mpay/b/ag;

.field private f:Landroid/content/res/Resources;

.field private g:Lcom/netease/mpay/widget/s;

.field private h:Landroid/view/View;

.field private i:Lcom/netease/mpay/e/b/u;

.field private j:Z

.field private k:Z

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/b/c;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const-string v0, "ticket"

    iput-object v0, p0, Lcom/netease/mpay/oc;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/oc;->j:Z

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

.method static synthetic a(Lcom/netease/mpay/oc;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oc;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/mpay/oc;Lcom/netease/mpay/e/b/u;)Lcom/netease/mpay/e/b/u;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/oc;->i:Lcom/netease/mpay/e/b/u;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/mpay/oc;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/netease/mpay/oc;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/f/an;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inner=1"

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ticket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "&"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/do;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/netease/mpay/f/an;

    iget-object v2, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v3}, Lcom/netease/mpay/b/ag;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v4}, Lcom/netease/mpay/b/ag;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netease/mpay/f/an$a;->b:Lcom/netease/mpay/f/an$a;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/netease/mpay/f/an;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/an$a;)V

    invoke-virtual {v1, v0}, Lcom/netease/mpay/f/an;->d(Ljava/lang/String;)Lcom/netease/mpay/f/an;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, "?"

    goto :goto_1
.end method

.method private a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V
    .locals 3

    iget v0, p5, Lcom/netease/mpay/e/b/u;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p5, Lcom/netease/mpay/e/b/u;->e:I

    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v0

    iget-object v1, p3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/w;)V

    new-instance v0, Lcom/netease/mpay/e/b/v;

    invoke-direct {v0}, Lcom/netease/mpay/e/b/v;-><init>()V

    iget-object v1, p5, Lcom/netease/mpay/e/b/u;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/mpay/e/b/v;->a:Ljava/lang/String;

    iget v1, p5, Lcom/netease/mpay/e/b/u;->e:I

    iput v1, v0, Lcom/netease/mpay/e/b/v;->b:I

    invoke-virtual {p1}, Lcom/netease/mpay/e/b;->a()Lcom/netease/mpay/e/c/l;

    move-result-object v1

    iget-object v2, p3, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/e/c/l;->a(Ljava/lang/String;Lcom/netease/mpay/e/b/v;)V

    :cond_0
    if-eqz p6, :cond_1

    invoke-interface {p6, p5, p4}, Lcom/netease/mpay/oc$a;->a(Lcom/netease/mpay/e/b/u;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/netease/mpay/oc$a;)V
    .locals 14

    new-instance v2, Lcom/netease/mpay/e/b;

    iget-object v0, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netease/mpay/e/b;->b()Lcom/netease/mpay/e/c/m;

    move-result-object v0

    iget-object v1, v4, Lcom/netease/mpay/e/b/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/m;->a(Ljava/lang/String;)Lcom/netease/mpay/e/b/w;

    move-result-object v3

    iget-object v0, v3, Lcom/netease/mpay/e/b/w;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/mpay/e/b/u;

    iget-object v0, v5, Lcom/netease/mpay/e/b/u;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    iget-object v1, v1, Lcom/netease/mpay/b/ag;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v5, Lcom/netease/mpay/e/b/u;->g:Z

    if-eqz v0, :cond_1

    new-instance v7, Lcom/netease/mpay/f/ad;

    iget-object v8, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v0}, Lcom/netease/mpay/b/ag;->a()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v0}, Lcom/netease/mpay/b/ag;->b()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/netease/mpay/og;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/mpay/og;-><init>(Lcom/netease/mpay/oc;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/netease/mpay/f/ad;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v7}, Lcom/netease/mpay/f/ad;->e()Lcom/netease/mpay/f/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/f/ad;->h()V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move-object v11, v5

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oc;Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/e/b;Lcom/netease/mpay/e/b/w;Lcom/netease/mpay/e/b/o;Ljava/lang/String;Lcom/netease/mpay/e/b/u;Lcom/netease/mpay/oc$a;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/oc;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/oc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/oc;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/netease/mpay/oc;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oc;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mpay/oc;)Lcom/netease/mpay/widget/s;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oc;->g:Lcom/netease/mpay/widget/s;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/mpay/oc;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/oc;->v()V

    return-void
.end method

.method static synthetic f(Lcom/netease/mpay/oc;)Lcom/netease/mpay/e/b/u;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oc;->i:Lcom/netease/mpay/e/b/u;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mpay/oc;)Lcom/netease/mpay/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    return-object v0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/netease/mpay/b/ap;

    invoke-direct {v0}, Lcom/netease/mpay/b/ap;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ap;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/ag;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ag;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    iget-object v0, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/widget/b/c;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/oc;->f:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/oc;->f:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/widget/b/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/netease/mpay/widget/s;

    iget-object v1, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mpay/oc;->g:Lcom/netease/mpay/widget/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/oc;->k:Z

    return-void
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->f()V

    iget-boolean v0, p0, Lcom/netease/mpay/oc;->k:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/oc;->k:Z

    new-instance v0, Lcom/netease/mpay/od;

    invoke-direct {v0, p0}, Lcom/netease/mpay/od;-><init>(Lcom/netease/mpay/oc;)V

    invoke-direct {p0, v0}, Lcom/netease/mpay/oc;->a(Lcom/netease/mpay/oc$a;)V

    goto :goto_0
.end method

.method public n()Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/netease/mpay/widget/b/c;->n()Z

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->c:I

    invoke-virtual {p0, v1}, Lcom/netease/mpay/oc;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/netease/mpay/oc;->a:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/netease/mpay/widget/RIdentifier$f;->p:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/mpay/oc;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/mpay/oc;->h:Landroid/view/View;

    iget-boolean v2, p0, Lcom/netease/mpay/oc;->j:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/netease/mpay/oc;->h:Landroid/view/View;

    new-instance v1, Lcom/netease/mpay/of;

    invoke-direct {v1, p0}, Lcom/netease/mpay/of;-><init>(Lcom/netease/mpay/oc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected s()Lcom/netease/mpay/widget/b/c$e;
    .locals 2

    new-instance v0, Lcom/netease/mpay/widget/b/c$e;

    iget-object v1, p0, Lcom/netease/mpay/oc;->e:Lcom/netease/mpay/b/ag;

    invoke-virtual {v1}, Lcom/netease/mpay/b/ag;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/mpay/widget/b/c$e;-><init>(Lcom/netease/mpay/b/a$a;)V

    return-object v0
.end method
