.class public Lcom/netease/mpay/d/a/a/n;
.super Lcom/netease/mpay/d/a/a/q;


# instance fields
.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/netease/mpay/d/a/a/q$a;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/netease/mpay/d/a/a/q;-><init>(Ljava/lang/String;Lcom/netease/mpay/d/a/a/q$a;)V

    iput-object p2, p0, Lcom/netease/mpay/d/a/a/n;->c:Ljava/util/ArrayList;

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

.method static synthetic a(Lcom/netease/mpay/d/a/a/n;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/d/a/a/n;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bR:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    sget v0, Lcom/netease/mpay/widget/RIdentifier$h;->bf:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bT:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$f;->bU:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    new-instance v0, Lcom/netease/mpay/widget/af$b;

    iget-object v3, p0, Lcom/netease/mpay/d/a/a/n;->c:Ljava/util/ArrayList;

    sget v4, Lcom/netease/mpay/widget/RIdentifier$g;->af:I

    new-instance v5, Lcom/netease/mpay/d/a/a/o;

    invoke-direct {v5, p0, p1, p2}, Lcom/netease/mpay/d/a/a/o;-><init>(Lcom/netease/mpay/d/a/a/n;Landroid/app/Activity;Ljava/lang/String;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/af$b;-><init>(Landroid/content/Context;Landroid/widget/AdapterView;Ljava/util/List;ILcom/netease/mpay/widget/af$a$a;)V

    new-instance v0, Lcom/netease/mpay/d/a/a/p;

    invoke-direct {v0, p0}, Lcom/netease/mpay/d/a/a/p;-><init>(Lcom/netease/mpay/d/a/a/n;)V

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->q:I

    :goto_0
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/netease/mpay/widget/RIdentifier$d;->n:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->a:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v3, Lcom/netease/mpay/widget/RIdentifier$d;->a:I

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/netease/mpay/widget/RIdentifier$b;->a:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    sget v1, Lcom/netease/mpay/widget/RIdentifier$d;->r:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/netease/mpay/d/a/a/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    goto :goto_1
.end method
