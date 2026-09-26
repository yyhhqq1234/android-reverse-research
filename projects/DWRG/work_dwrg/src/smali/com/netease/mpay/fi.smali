.class public Lcom/netease/mpay/fi;
.super Lcom/netease/mpay/a;

# interfaces
.implements Lcom/netease/mpay/f/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/fi$b;,
        Lcom/netease/mpay/fi$a;
    }
.end annotation


# instance fields
.field private d:Lcom/netease/mpay/b/a;

.field private e:Lcom/netease/mpay/e/b/o;

.field private f:Lcom/netease/mpay/server/response/x;

.field private g:Landroid/content/res/Resources;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mpay/fi;->f:Lcom/netease/mpay/server/response/x;

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

.method static synthetic a(Lcom/netease/mpay/fi;)Lcom/netease/mpay/b/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    return-object v0
.end method

.method private a(Lcom/netease/mpay/f/an$a;)V
    .locals 5

    iget-object v0, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Lcom/netease/mpay/b$a;->L:Lcom/netease/mpay/b$a;

    new-instance v2, Lcom/netease/mpay/b/ah;

    iget-object v3, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->d()Lcom/netease/mpay/b/a$a;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/netease/mpay/b/ah;-><init>(Lcom/netease/mpay/b/a$a;Lcom/netease/mpay/f/an$a;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/mpay/b;->a(Landroid/app/Activity;Lcom/netease/mpay/b$a;Lcom/netease/mpay/b/a;Lcom/netease/mpay/b$b;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/fi;Lcom/netease/mpay/f/an$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/f/an$a;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/fi;)Lcom/netease/mpay/e/b/o;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/fi;->e:Lcom/netease/mpay/e/b/o;

    return-object v0
.end method

.method private b(Lcom/netease/mpay/server/response/x;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p1, :cond_0

    new-instance v0, Lcom/netease/mpay/f/ak;

    iget-object v1, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/fi;->e:Lcom/netease/mpay/e/b/o;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/ak;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ak;->h()V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->Z:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setVisibility(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/netease/mpay/fi$a;->a:Lcom/netease/mpay/fi$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/netease/mpay/fi$a;->b:Lcom/netease/mpay/fi$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/netease/mpay/fi$a;->c:Lcom/netease/mpay/fi$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/netease/mpay/fi$a;->d:Lcom/netease/mpay/fi$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/fi$a;

    new-instance v2, Lcom/netease/mpay/fi$b;

    invoke-direct {v2, v0}, Lcom/netease/mpay/fi$b;-><init>(Lcom/netease/mpay/fi$a;)V

    new-instance v0, Lcom/netease/mpay/view/b$c;

    iget-object v3, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2, v3, p1}, Lcom/netease/mpay/fi$b;->a(Landroid/app/Activity;Lcom/netease/mpay/server/response/x;)Lcom/netease/mpay/view/b$b;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lcom/netease/mpay/view/b$c;-><init>(Lcom/netease/mpay/view/b$b;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_2

    iget-object v0, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v0}, Lcom/netease/mpay/b/a;->c()Lcom/netease/mpay/MpayConfig;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/MpayConfig;->mScreenOrientation:I

    invoke-static {v0}, Lcom/netease/mpay/bj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Lcom/netease/mpay/view/b;

    iget-object v1, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/netease/mpay/fj;

    invoke-direct {v5, p0, p1}, Lcom/netease/mpay/fj;-><init>(Lcom/netease/mpay/fi;Lcom/netease/mpay/server/response/x;)V

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/view/b;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;Lcom/netease/mpay/view/b$a;)V

    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2
    move v3, v7

    goto :goto_1
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->F:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->ay:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netease/mpay/fi;->e:Lcom/netease/mpay/e/b/o;

    iget-object v1, v1, Lcom/netease/mpay/e/b/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/netease/mpay/fi;->f:Lcom/netease/mpay/server/response/x;

    invoke-direct {p0, v0}, Lcom/netease/mpay/fi;->b(Lcom/netease/mpay/server/response/x;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/a;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/a;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    iget-object v0, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    return-object v0
.end method

.method public a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/netease/mpay/a;->a(IILandroid/content/Intent;Lcom/netease/mpay/b/al;)V

    instance-of v0, p4, Lcom/netease/mpay/b/ap;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/mpay/b/ap;

    invoke-direct {v0}, Lcom/netease/mpay/b/ap;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ap;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/netease/mpay/f/ak;

    iget-object v1, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v3}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/mpay/fi;->e:Lcom/netease/mpay/e/b/o;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/f/ak;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/e/b/o;Lcom/netease/mpay/f/a/b;)V

    invoke-virtual {v0}, Lcom/netease/mpay/f/ak;->h()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->a(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/netease/mpay/fi;->g:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/netease/mpay/fi;->h:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/netease/mpay/fi;->h:Z

    invoke-direct {p0}, Lcom/netease/mpay/fi;->s()V

    :cond_0
    return-void
.end method

.method public a(Lcom/netease/mpay/f/a/b$a;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/netease/mpay/fk;->b:[I

    invoke-virtual {p1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/netease/mpay/b/ap;

    invoke-direct {v0}, Lcom/netease/mpay/b/ap;-><init>()V

    iget-object v1, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/b/ap;->a(Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/netease/mpay/server/response/x;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/fi;->f:Lcom/netease/mpay/server/response/x;

    invoke-direct {p0, p1}, Lcom/netease/mpay/fi;->b(Lcom/netease/mpay/server/response/x;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/netease/mpay/server/response/x;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/fi;->a(Lcom/netease/mpay/server/response/x;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/netease/mpay/a;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/fi;->g:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/netease/mpay/fi;->g:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/mpay/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/netease/mpay/fi;->g:Landroid/content/res/Resources;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/fi;->h:Z

    new-instance v0, Lcom/netease/mpay/e/b;

    iget-object v1, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v2}, Lcom/netease/mpay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/e/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/e/b;->c()Lcom/netease/mpay/e/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/fi;->d:Lcom/netease/mpay/b/a;

    invoke-virtual {v1}, Lcom/netease/mpay/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/e/c/k;->b(Ljava/lang/String;)Lcom/netease/mpay/e/b/o;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/fi;->e:Lcom/netease/mpay/e/b/o;

    invoke-direct {p0}, Lcom/netease/mpay/fi;->s()V

    return-void
.end method

.method public o()Z
    .locals 1

    invoke-super {p0}, Lcom/netease/mpay/a;->o()Z

    iget-object v0, p0, Lcom/netease/mpay/fi;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
