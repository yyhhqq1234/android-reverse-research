.class public Lcom/tencent/tp/a/k;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/WindowManager;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/view/WindowManager$LayoutParams;

.field protected f:Z

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tp/a/k;->a(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/tencent/tp/a/k;->a(Z)V

    return-void
.end method

.method private d(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;)I

    move-result v7

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x270f

    const/16 v4, 0x8

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_0

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x38

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v1, v2, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/k;->e()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tp/a/k;->f()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/tencent/tp/a/k;->a(Ljava/lang/String;ZZ)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;ZZ)Landroid/widget/LinearLayout;
    .locals 10

    const/16 v9, 0x11

    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    invoke-static {v7, v7, v7, v7}, Lcom/tencent/tp/a/ad;->a(IIII)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_7

    move v0, v1

    :goto_0
    invoke-direct {v5, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0}, Lcom/tencent/tp/a/k;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    mul-int/lit8 v0, v3, 0x3

    :goto_1
    invoke-virtual {v5, v0, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_3

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    const/16 v6, 0xd

    invoke-static {v1, v6}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v7, v1, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/k;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/tencent/tp/a/k;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tp/a/k;->c()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    invoke-direct {p0}, Lcom/tencent/tp/a/k;->o()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/tp/a/k;->d()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    iput-object v4, p0, Lcom/tencent/tp/a/k;->b:Landroid/view/View;

    return-object v4

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto/16 :goto_1
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tp/a/k;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/k;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/k;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/tp/a/k;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tp/a/k;->f:Z

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;I)I

    move-result v1

    iget-object v4, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;I)I

    move-result v2

    const-string/jumbo v4, "tpsafe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " screen:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/k;->c:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/tp/a/k;->c:Landroid/view/WindowManager;

    invoke-direct {p0, p1}, Lcom/tencent/tp/a/k;->d(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/a/k;->e:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tp/a/k;->g:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tp/a/k;->f:Z

    return v0
.end method

.method protected c()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tp/a/k;->h:Z

    return-void
.end method

.method protected d()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected f()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method protected i()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method protected j()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected k()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    const/16 v0, 0x93

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x15e

    if-le v0, v1, :cond_1

    const/16 v0, 0x82

    goto :goto_0

    :cond_1
    const/16 v1, 0x12c

    if-le v0, v1, :cond_2

    const/16 v0, 0x6e

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method protected l()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method protected m()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/a/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/ae;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    goto :goto_0
.end method
