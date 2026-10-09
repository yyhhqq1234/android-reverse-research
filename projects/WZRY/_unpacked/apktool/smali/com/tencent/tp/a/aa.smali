.class public Lcom/tencent/tp/a/aa;
.super Lcom/tencent/tp/a/k;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/tp/a/k;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private n()Landroid/widget/ImageView;
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v1, 0x38

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/tp/a/aa;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/aa;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tp/a/ad;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private o()Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/a/aa;->a:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    add-int v2, v1, v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/a/aa;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/aa;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v1
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/tencent/tp/a/aa;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/tp/a/aa;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/tp/a/aa;->a(Ljava/lang/String;ZZ)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/a/aa;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/tp/a/aa;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, p0, Lcom/tencent/tp/a/aa;->f:Z

    new-instance v0, Lcom/tencent/tp/a/ai;

    const/4 v1, 0x0

    const/16 v2, 0x9c4

    new-instance v3, Lcom/tencent/tp/a/ab;

    invoke-direct {v3, p0}, Lcom/tencent/tp/a/ab;-><init>(Lcom/tencent/tp/a/aa;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/tencent/tp/a/ai;-><init>(IIZLcom/tencent/tp/a/ai$a;)V

    invoke-virtual {v0}, Lcom/tencent/tp/a/ai;->b()V

    goto :goto_0
.end method

.method protected c()Landroid/view/View;
    .locals 4

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/a/aa;->a:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/a/aa;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0}, Lcom/tencent/tp/a/aa;->n()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/tp/a/aa;->o()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method
