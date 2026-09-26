.class public abstract Lcom/netease/mpay/d/a/a/aa;
.super Lcom/netease/mpay/d/a/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/d/a/a/aa$a;,
        Lcom/netease/mpay/d/a/a/aa$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/mpay/d/a/a/aa$b;

.field private c:Lcom/netease/mpay/d/a/a/aa$a;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/d/a/a/k;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/d/a/a/aa;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/mpay/d/a/a/aa;->d:Z

    iput-boolean p2, p0, Lcom/netease/mpay/d/a/a/aa;->e:Z

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/aa;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/a/aa;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/mpay/d/a/a/aa;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/d/a/a/aa;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/mpay/d/a/a/aa;)Lcom/netease/mpay/d/a/a/aa$b;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/mpay/d/a/a/aa;)Lcom/netease/mpay/d/a/a/aa$a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->c:Lcom/netease/mpay/d/a/a/aa$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->H:I

    invoke-virtual {p2, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->br:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$h;->aL:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/netease/mpay/d/a/a/aa;->a:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->F:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/BottomLinkButtons;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/netease/mpay/d/a/a/ab;

    invoke-direct {v1, p0}, Lcom/netease/mpay/d/a/a/ab;-><init>(Lcom/netease/mpay/d/a/a/aa;)V

    sget v5, Lcom/netease/mpay/widget/RIdentifier$h;->aa:I

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->i:I

    invoke-virtual {v0, v5, v6, v1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a()V

    :cond_0
    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->ah:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->ai:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/view/TintIconView;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$f;->aj:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v6, Lcom/netease/mpay/widget/RIdentifier$e;->i:I

    sget v7, Lcom/netease/mpay/widget/RIdentifier$e;->g:I

    invoke-virtual {v0, v6, v7}, Lcom/netease/mpay/view/TintIconView;->a(II)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/netease/mpay/widget/RIdentifier$h;->aa:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/ac;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/a/ac;-><init>(Lcom/netease/mpay/d/a/a/aa;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/netease/mpay/d/a/a/aa$b;

    iget-boolean v1, p0, Lcom/netease/mpay/d/a/a/aa;->e:Z

    invoke-direct {v0, p0, p1, v4, v1}, Lcom/netease/mpay/d/a/a/aa$b;-><init>(Lcom/netease/mpay/d/a/a/aa;Landroid/app/Activity;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    new-instance v0, Lcom/netease/mpay/d/a/a/aa$a;

    invoke-direct {v0, p0, p1, v4}, Lcom/netease/mpay/d/a/a/aa$a;-><init>(Lcom/netease/mpay/d/a/a/aa;Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->c:Lcom/netease/mpay/d/a/a/aa$a;

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    iget-boolean v1, p0, Lcom/netease/mpay/d/a/a/aa;->e:Z

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/a/aa$b;->a(Z)V

    iget-object v1, p0, Lcom/netease/mpay/d/a/a/aa;->c:Lcom/netease/mpay/d/a/a/aa$a;

    iget-boolean v0, p0, Lcom/netease/mpay/d/a/a/aa;->e:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/mpay/d/a/a/aa$a;->a(Z)V

    return-object v4

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    iget-boolean v1, p0, Lcom/netease/mpay/d/a/a/aa;->d:Z

    invoke-static {v0, v1}, Lcom/netease/mpay/d/a/a/aa$b;->a(Lcom/netease/mpay/d/a/a/aa$b;Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    invoke-static {v0}, Lcom/netease/mpay/d/a/a/aa$b;->a(Lcom/netease/mpay/d/a/a/aa$b;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->b:Lcom/netease/mpay/d/a/a/aa$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/a/aa$b;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->c:Lcom/netease/mpay/d/a/a/aa$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/aa;->c:Lcom/netease/mpay/d/a/a/aa$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/d/a/a/aa$a;->a(Z)V

    :cond_1
    return-void
.end method
