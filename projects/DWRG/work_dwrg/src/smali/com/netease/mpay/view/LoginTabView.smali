.class public Lcom/netease/mpay/view/LoginTabView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/netease/mpay/view/LoginTabView;->a(Landroid/content/Context;)V

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/netease/mpay/view/LoginTabView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/netease/mpay/view/LoginTabView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v1, p0, Lcom/netease/mpay/view/LoginTabView;->b:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/netease/mpay/view/LoginTabView;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/mpay/view/LoginTabView;->f:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/netease/mpay/view/LoginTabView;->a:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netease/mpay/view/LoginTabView;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/mpay/view/LoginTabView;->d:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/netease/mpay/view/LoginTabView;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/netease/mpay/view/LoginTabView;->c:I

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/netease/mpay/view/LoginTabView;->setOrientation(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/LoginTabView;->setGravity(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$g;->R:I

    invoke-static {p1, v0, p0}, Lcom/netease/mpay/view/LoginTabView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->dd:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/LoginTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mpay/view/LoginTabView;->a:Landroid/view/View;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->de:I

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/LoginTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/mpay/view/LoginTabView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/LoginTabView;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/LoginTabView;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/LoginTabView;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$c;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/LoginTabView;->f:I

    iput-boolean v2, p0, Lcom/netease/mpay/view/LoginTabView;->g:Z

    invoke-direct {p0}, Lcom/netease/mpay/view/LoginTabView;->a()V

    return-void
.end method


# virtual methods
.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/view/LoginTabView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mpay/view/LoginTabView;->g:Z

    invoke-direct {p0}, Lcom/netease/mpay/view/LoginTabView;->a()V

    return-void
.end method
