.class public Lcom/tencent/tp/a/z;
.super Lcom/tencent/tp/a/k;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private i:Lcom/tencent/tp/a/l;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/lang/String;

.field private m:Lcom/tencent/tp/a/o$a;

.field private n:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tp/a/k;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/z;->i:Lcom/tencent/tp/a/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/z;->i:Lcom/tencent/tp/a/l;

    invoke-virtual {v0, p1}, Lcom/tencent/tp/a/l;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tp/a/z;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/tencent/tp/a/z;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tp/a/z;->m:Lcom/tencent/tp/a/o$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tp/a/z;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/a/z;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/tp/a/z;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tp/a/z;->f:Z

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/z;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/z;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected c()Landroid/view/View;
    .locals 7

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/tp/a/z;->l:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Lcom/tencent/tp/a/l;

    iget-object v3, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/tp/a/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/tencent/tp/a/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ad;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/tp/a/ad;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/tencent/tp/a/l;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/tencent/tp/a/z;->i:Lcom/tencent/tp/a/l;

    invoke-virtual {p0}, Lcom/tencent/tp/a/z;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/z;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/z;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected e()Landroid/view/View;
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/tencent/tp/a/z;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/z;->k()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/z;->l()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/z;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/z;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v2, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tp/a/ad;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/tencent/tp/a/z;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/tp/a/z;->n:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()Landroid/view/View;
    .locals 5

    const/high16 v4, 0x41900000    # 18.0f

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/tencent/tp/a/z;->j:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/tp/a/z;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "/0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/tencent/tp/a/z;->k:Landroid/widget/TextView;

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/z;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tp/a/z;->a()V

    iget-object v0, p0, Lcom/tencent/tp/a/z;->m:Lcom/tencent/tp/a/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/z;->m:Lcom/tencent/tp/a/o$a;

    invoke-interface {v0}, Lcom/tencent/tp/a/o$a;->a()V

    :cond_0
    return-void
.end method
