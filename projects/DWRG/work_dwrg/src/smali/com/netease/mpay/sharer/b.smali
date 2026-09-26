.class public Lcom/netease/mpay/sharer/b;
.super Lcom/netease/mpay/a;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/sharer/b$a;,
        Lcom/netease/mpay/sharer/b$b;
    }
.end annotation


# instance fields
.field d:Lcom/netease/mpay/b/ab;

.field e:Ljava/util/ArrayList;

.field f:Landroid/widget/GridView;

.field g:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/netease/mpay/a;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/sharer/b;->g:Z

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

.method private s()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/sharer/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v1, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v2, 0x67

    iput v2, v1, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$e;->Z:I

    iput v2, v1, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dN:I

    iput v2, v1, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v2, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    instance-of v0, v0, Lcom/netease/mpay/sharer/UrlShareContent;

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v0, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v1, 0x68

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->aa:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dO:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/sharer/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v0, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v1, 0x65

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->X:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dL:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v0, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v1, 0x66

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->Y:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dM:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/sharer/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    instance-of v0, v0, Lcom/netease/mpay/sharer/UrlShareContent;

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v0, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v1, 0x64

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->W:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dJ:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/mpay/sharer/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v1, v1, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    iget v1, v1, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    if-eqz v1, :cond_6

    new-instance v1, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v1, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v2, 0x69

    iput v2, v1, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$e;->U:I

    iput v2, v1, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v2, Lcom/netease/mpay/widget/RIdentifier$h;->dH:I

    iput v2, v1, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v2, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    instance-of v0, v0, Lcom/netease/mpay/sharer/UrlShareContent;

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    iget v0, v0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    new-instance v0, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v0, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v1, 0x6a

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->V:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dI:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance v0, Lcom/netease/mpay/sharer/b$b;

    invoke-direct {v0, p0, v3}, Lcom/netease/mpay/sharer/b$b;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    const/16 v1, 0xc8

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$e;->T:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->b:I

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->dG:I

    iput v1, v0, Lcom/netease/mpay/sharer/b$b;->c:I

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private t()V
    .locals 2

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-boolean v0, v0, Lcom/netease/mpay/b/ab;->a:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$i;->f:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    return-void

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$i;->e:I

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Lcom/netease/mpay/b/a;
    .locals 1

    new-instance v0, Lcom/netease/mpay/b/ab;

    invoke-direct {v0, p1}, Lcom/netease/mpay/b/ab;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/sharer/b;->t()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Lcom/netease/mpay/sharer/b;->t()V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/sharer/b;->k()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/netease/mpay/sharer/b;->s()V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$g;->ai:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cX:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/netease/mpay/sharer/b;->f:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->f:Landroid/widget/GridView;

    new-instance v1, Lcom/netease/mpay/sharer/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netease/mpay/sharer/b$a;-><init>(Lcom/netease/mpay/sharer/b;Lcom/netease/mpay/sharer/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->f:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->cW:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/sharer/c;

    invoke-direct {v1, p0}, Lcom/netease/mpay/sharer/c;-><init>(Lcom/netease/mpay/sharer/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/netease/mpay/sharer/b;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/netease/mpay/a;->f()V

    return-void
.end method

.method public k()V
    .locals 3

    invoke-super {p0}, Lcom/netease/mpay/a;->k()V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    sget v2, Lcom/netease/mpay/widget/RIdentifier$a;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/sharer/b$b;

    iget v0, v0, Lcom/netease/mpay/sharer/b$b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v0, v0, Lcom/netease/mpay/b/ab;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/netease/mpay/widget/aa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    iget-object v0, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/netease/mpay/sharer/d;

    iget-object v2, p0, Lcom/netease/mpay/sharer/b;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/netease/mpay/sharer/d;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/netease/mpay/sharer/b;->d:Lcom/netease/mpay/b/ab;

    iget-object v2, v2, Lcom/netease/mpay/b/ab;->b:Lcom/netease/mpay/sharer/ShareContent;

    invoke-virtual {v1, v2, v0}, Lcom/netease/mpay/sharer/d;->a(Lcom/netease/mpay/sharer/ShareContent;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/sharer/b;->g:Z

    goto :goto_1
.end method
