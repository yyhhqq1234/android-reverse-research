.class public Lcom/tencent/tp/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tp/a/a$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:Landroid/view/WindowManager;

.field protected g:Landroid/view/View;

.field protected h:Landroid/view/WindowManager$LayoutParams;

.field protected i:Z

.field protected j:Ljava/util/Timer;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:I

.field protected r:Z

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/widget/Button;

.field protected u:Landroid/widget/Button;

.field protected v:Lcom/tencent/tp/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/tp/a/a;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/tencent/tp/a/a;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/tencent/tp/a/a;->c:I

    const/4 v0, 0x3

    sput v0, Lcom/tencent/tp/a/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/tencent/tp/a/a$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/tp/a/a;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/tp/a/a;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tp/a/a;->m:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tp/a/a;->n:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/tp/a/a;->o:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/tp/a/a;->p:Ljava/lang/String;

    iput p8, p0, Lcom/tencent/tp/a/a;->q:I

    iput-boolean p9, p0, Lcom/tencent/tp/a/a;->r:Z

    iput-object p10, p0, Lcom/tencent/tp/a/a;->v:Lcom/tencent/tp/a/a$a;

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/tp/a/a;->f:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/a/a;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/tencent/tp/a/a;->w()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tp/a/a;->h:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private v()Landroid/widget/LinearLayout;
    .locals 8

    const/4 v1, -0x1

    const/16 v7, 0x28

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v4

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v5, p0, Lcom/tencent/tp/a/a;->o:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/tencent/tp/a/a;->p:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    invoke-virtual {v3, v4, v1, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-object v2
.end method

.method private w()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    const/4 v8, 0x0

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

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

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method


# virtual methods
.method protected a(Z)Landroid/widget/Button;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, -0x2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tencent/tp/a/a;->o:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tp/a/a;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {v3, v1, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/tencent/tp/a/a;->r:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->h(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    iget v0, v2, Lcom/tencent/tp/a/m;->b:I

    if-eqz v0, :cond_3

    iget v0, v2, Lcom/tencent/tp/a/m;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    iget v1, v2, Lcom/tencent/tp/a/m;->b:I

    invoke-static {v0, v1}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    iget v1, v2, Lcom/tencent/tp/a/m;->c:I

    invoke-static {v0, v1}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_3
    new-instance v1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->s()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/h;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->b(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v0, 0x70

    const/16 v2, 0x2c

    const/4 v3, 0x7

    const/16 v4, 0xff

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tp/a/h;->a(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->g(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->f(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/tp/a/a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->f:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->h:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/a;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/tp/a/a;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/tencent/tp/a/a;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tp/a/a;->i:Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/tp/a/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->f:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/tp/a/a;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tp/a/a;->i:Z

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->e()V

    return-void
.end method

.method protected d()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/tp/a/b;

    invoke-direct {v1, p0}, Lcom/tencent/tp/a/b;-><init>(Lcom/tencent/tp/a/a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tp/a/a;->j:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    return-void
.end method

.method protected g()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

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

.method protected h()Landroid/widget/LinearLayout;
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0x80

    invoke-static {v2, v2, v2, v1}, Lcom/tencent/tp/a/h;->a(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/tencent/tp/a/a;->v()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method protected i()Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tp/a/h;->c(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/tencent/tp/a/m;->c:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    iget v3, v1, Lcom/tencent/tp/a/m;->c:I

    invoke-static {v2, v3}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/tencent/tp/a/a;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v0}, Lcom/tencent/tp/a/h;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v0, Lcom/tencent/tp/a/h;->c:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->a(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v2
.end method

.method protected j()Landroid/view/View;
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->d(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/h;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->m()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const v3, 0x3fe66666    # 1.8f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v0, 0x3

    :cond_2
    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    add-int/lit8 v3, v0, 0xc

    invoke-static {v2, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    add-int/lit8 v5, v0, 0xc

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v1
.end method

.method protected k()Landroid/view/View;
    .locals 4

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tencent/tp/a/a;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tp/a/h;->b(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v1
.end method

.method protected l()Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->k()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tp/a/h;->e(Landroid/content/Context;)Lcom/tencent/tp/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/tp/a/m;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/tencent/tp/a/h;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1
.end method

.method protected m()Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/tp/a/h;->b(Landroid/content/Context;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v3, v2

    invoke-static {v1, v3}, Lcom/tencent/tp/a/ae;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->n()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v1, p0, Lcom/tencent/tp/a/a;->s:Landroid/widget/TextView;

    return-object v1
.end method

.method protected n()I
    .locals 1

    sget v0, Lcom/tencent/tp/a/h;->d:I

    return v0
.end method

.method protected o()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tp/a/a;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->p()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/tencent/tp/a/a;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tp/a/a;->q()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/tencent/tp/a/a;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/tp/a/a;->t:Landroid/widget/Button;

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/tencent/tp/a/a;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->v:Lcom/tencent/tp/a/a$a;

    invoke-interface {v0, p0}, Lcom/tencent/tp/a/a$a;->a(Lcom/tencent/tp/a/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tp/a/a;->u:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/tp/a/a;->v:Lcom/tencent/tp/a/a$a;

    invoke-interface {v0, p0}, Lcom/tencent/tp/a/a$a;->b(Lcom/tencent/tp/a/a;)V

    goto :goto_0
.end method

.method protected p()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/tp/a/a;->a(Z)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected q()Landroid/widget/Button;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/tp/a/a;->a(Z)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tp/a/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected u()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    return-object v0
.end method
