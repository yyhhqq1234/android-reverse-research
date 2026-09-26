.class public Lcom/netease/mpay/view/BottomLinkButtons;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;)V

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

    invoke-direct {p0, p1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;
    .locals 2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, p1, v1, p2}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-direct {p0, p1, v1, p3}, Lcom/netease/mpay/view/BottomLinkButtons;->b(Landroid/content/Context;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, p4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->d:I

    sget v0, Lcom/netease/mpay/widget/RIdentifier$e;->g:I

    iput v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->u:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->j:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->setOrientation(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/netease/mpay/view/BottomLinkButtons;->d:I

    iget v2, p0, Lcom/netease/mpay/view/BottomLinkButtons;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/netease/mpay/view/TintIconView;

    invoke-direct {v1, p1}, Lcom/netease/mpay/view/TintIconView;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/netease/mpay/view/BottomLinkButtons;->e:I

    invoke-virtual {v1, p3, v2}, Lcom/netease/mpay/view/TintIconView;->a(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/view/TintIconView;->setDuplicateParentStateEnabled(Z)V

    invoke-virtual {p2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->setGravity(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/view/BottomLinkButtons;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/netease/mpay/view/BottomLinkButtons;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/netease/mpay/view/BottomLinkButtons;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-boolean v2, p0, Lcom/netease/mpay/view/BottomLinkButtons;->i:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/netease/mpay/view/BottomLinkButtons;->g:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c()V
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->setGravity(I)V

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v3, v4, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/netease/mpay/view/BottomLinkButtons;->h:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/netease/mpay/view/BottomLinkButtons;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v3}, Lcom/netease/mpay/view/BottomLinkButtons;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_0

    iget v4, p0, Lcom/netease/mpay/view/BottomLinkButtons;->h:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/netease/mpay/view/BottomLinkButtons;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, -0x2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->setGravity(I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->a(Landroid/content/Context;IILandroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v3, v0}, Lcom/netease/mpay/view/BottomLinkButtons;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->removeAllViews()V

    iget-boolean v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->i:Z

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->c()V

    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->b()V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->d()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/netease/mpay/view/BottomLinkButtons;->c()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(IILandroid/view/View$OnClickListener;)V
    .locals 2

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->b:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/netease/mpay/view/BottomLinkButtons;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
