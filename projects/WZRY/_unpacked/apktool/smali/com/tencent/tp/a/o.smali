.class public Lcom/tencent/tp/a/o;
.super Lcom/tencent/tp/a/k;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/a/o$a;
    }
.end annotation


# instance fields
.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Landroid/widget/Button;

.field protected n:Landroid/widget/Button;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/tencent/tp/a/o$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tp/a/k;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/tp/a/o;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tp/a/o;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tp/a/o;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tp/a/o;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/tp/a/o;->s:Lcom/tencent/tp/a/o$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tp/a/o$a;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/o;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/o;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tp/a/o;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/a/o;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/o;->m:Landroid/widget/Button;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/a/o;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->i()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/tp/a/o;->m:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/tp/a/o;->n:Landroid/widget/Button;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/tencent/tp/a/o;->n:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iput-object p5, p0, Lcom/tencent/tp/a/o;->s:Lcom/tencent/tp/a/o$a;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/tp/a/o;->n:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected c()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/o;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->j()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iput-object v1, p0, Lcom/tencent/tp/a/o;->r:Landroid/widget/TextView;

    return-object v1
.end method

.method protected d()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/tp/a/o;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/o;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/tencent/tp/a/o;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    iput-object v0, p0, Lcom/tencent/tp/a/o;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/tp/a/o;->q:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected e()Landroid/view/View;
    .locals 4

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->k()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->l()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/o;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/tencent/tp/a/o;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->i()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    :goto_0
    iget-object v2, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tp/a/ad;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/tencent/tp/a/o;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/tp/a/o;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_0
.end method

.method protected f()Landroid/view/View;
    .locals 4

    const/4 v2, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/tp/a/o;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->k()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->l()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->m()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/o;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    invoke-static {}, Lcom/tencent/tp/a/ad;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/tencent/tp/a/o;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->i()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    :goto_1
    iget-object v2, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tp/a/ad;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/tencent/tp/a/o;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/tp/a/o;->n:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->h()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_1
.end method

.method public n()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tp/a/o;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tp/a/o;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tp/a/o;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tp/a/o;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/tp/a/o;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tp/a/o;->f:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tp/a/o;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/tp/a/o;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/tp/a/o;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/o;->s:Lcom/tencent/tp/a/o$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/a/o;->s:Lcom/tencent/tp/a/o$a;

    invoke-interface {v0}, Lcom/tencent/tp/a/o$a;->a()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/tp/a/o;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/tencent/tp/a/o;->g:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->a()V

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/tp/a/o;->h:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/tp/a/o;->a()V

    :cond_5
    iget-object v0, p0, Lcom/tencent/tp/a/o;->s:Lcom/tencent/tp/a/o$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/a/o;->s:Lcom/tencent/tp/a/o$a;

    invoke-interface {v0}, Lcom/tencent/tp/a/o$a;->b()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/tp/a/o;->q:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/tp/a/o;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/tencent/tp/a/o;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
