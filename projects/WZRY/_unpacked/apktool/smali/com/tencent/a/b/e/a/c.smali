.class public final Lcom/tencent/a/b/e/a/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Lcom/tencent/a/a/a/a;


# instance fields
.field private A:Landroid/view/animation/Animation;

.field private B:I

.field private C:Ljava/lang/Object;

.field private D:Landroid/graphics/PointF;

.field private E:Landroid/graphics/PointF;

.field private c:Lcom/tencent/a/b/d/e;

.field private d:Landroid/content/Context;

.field private e:Lcom/tencent/a/b/d/f;

.field private f:Lcom/tencent/b/a/a/f;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/GestureDetector;

.field private l:Lcom/tencent/a/a/a/a;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:F

.field private r:F

.field private s:Z

.field private t:F

.field private u:F

.field private v:Ljava/lang/String;

.field private w:Lcom/tencent/a/a/a/e;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/a/b/e/a/c;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/a/b/d/e;Lcom/tencent/a/a/a/h;)V
    .locals 6

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/a/b/e/a/c;->i:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/tencent/a/b/e/a/c;->j:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/tencent/a/b/e/a/c;->l:Lcom/tencent/a/a/a/a;

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->m:Z

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->n:Z

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->o:Z

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->p:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->q:F

    iput v3, p0, Lcom/tencent/a/b/e/a/c;->r:F

    iput-boolean v4, p0, Lcom/tencent/a/b/e/a/c;->s:Z

    iput v1, p0, Lcom/tencent/a/b/e/a/c;->t:F

    iput v3, p0, Lcom/tencent/a/b/e/a/c;->u:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->B:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->D:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->E:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c;->c:Lcom/tencent/a/b/d/e;

    invoke-static {}, Lcom/tencent/a/b/d/e;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->d()Lcom/tencent/b/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->h()Lcom/tencent/a/b/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->e:Lcom/tencent/a/b/d/f;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->n:Z

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->a()Lcom/tencent/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->n:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->a()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->a()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/a/b/e/a/e;->a(DD)[D

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/e;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/a/a/a/e;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->a()Lcom/tencent/a/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->w:Lcom/tencent/a/a/a/e;

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->d()Lcom/tencent/a/a/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/a/a/a;)V

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->l()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->e()F

    move-result v0

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->q:F

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->f()F

    move-result v0

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->r:F

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->h()F

    move-result v0

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->u:F

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->g()F

    move-result v0

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->t:F

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->s:Z

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->v:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->x:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->m:Z

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->y:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->p()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->j:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->m()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->i:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->n()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->z:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->o()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->A:Landroid/view/animation/Animation;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->q()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->C:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->r()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->r()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->D:Landroid/graphics/PointF;

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->s()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->s()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->E:Landroid/graphics/PointF;

    :cond_3
    iget v0, p0, Lcom/tencent/a/b/e/a/c;->B:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/a/b/e/a/c;->B:I

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->d:Landroid/content/Context;

    new-instance v2, Lcom/tencent/a/b/e/a/c$1;

    invoke-direct {v2, p0}, Lcom/tencent/a/b/e/a/c$1;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->k:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->i()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Lcom/tencent/a/a/a/h;->a()Lcom/tencent/a/a/a/e;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/a/b/e/a/c;Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->e:Lcom/tencent/a/b/d/f;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/a/b/e/a/c;FF)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->c:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/b/d/c;->a(II)Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/a/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/a/b/e/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/a/b/e/a/c;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/a/b/e/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/a/b/e/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/a/b/e/a/c;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/a/b/e/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/b/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/a/b/e/a/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->p:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/a/b/e/a/c;)I
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/e/a/c;->B:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/a/b/e/a/c;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->z:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/a/b/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->j()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/a/b/e/a/c;)Lcom/tencent/a/b/d/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->c:Lcom/tencent/a/b/d/e;

    return-object v0
.end method

.method private i()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->l:Lcom/tencent/a/a/a/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/a/b/e/a/c;->b:Lcom/tencent/a/a/a/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/a/a/a/b;->a()Lcom/tencent/a/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/tencent/a/b/e/a/c;->b:Lcom/tencent/a/a/a/a;

    :cond_0
    sget-object v0, Lcom/tencent/a/b/e/a/c;->b:Lcom/tencent/a/a/a/a;

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->l:Lcom/tencent/a/a/a/a;

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->l:Lcom/tencent/a/a/a/a;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lcom/tencent/a/b/e/a/c;->u:F

    invoke-virtual {p0, v0}, Lcom/tencent/a/b/e/a/c;->b(F)V

    iget v0, p0, Lcom/tencent/a/b/e/a/c;->t:F

    invoke-virtual {p0, v0}, Lcom/tencent/a/b/e/a/c;->a(F)V

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->k()Lcom/tencent/b/a/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/c;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->z:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->z:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tencent/a/b/e/a/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/e/a/c$2;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->z:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->j()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/tencent/a/b/e/a/c;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->k:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    new-instance v1, Lcom/tencent/a/b/e/a/c$3;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/e/a/c$3;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic k(Lcom/tencent/a/b/e/a/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    return-object v0
.end method

.method private k()Lcom/tencent/b/a/a/f$a;
    .locals 7

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->D:Landroid/graphics/PointF;

    new-instance v0, Lcom/tencent/b/a/a/f$a;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->w:Lcom/tencent/a/a/a/e;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v5, v2

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/b/a/a/f$a;-><init>(IILcom/tencent/a/a/a/e;III)V

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/a/b/e/a/c;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->A:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private l()V
    .locals 7

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/tencent/b/a/a/f;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->E:Landroid/graphics/PointF;

    new-instance v0, Lcom/tencent/b/a/a/f$a;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->w:Lcom/tencent/a/a/a/e;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v5, v2

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/b/a/a/f$a;-><init>(IILcom/tencent/a/a/a/e;III)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/tencent/b/a/a/f;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/tencent/a/b/e/a/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->c:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->e()Lcom/tencent/a/b/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/a;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final a(F)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    add-float v0, p1, v1

    rem-float v2, v0, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lcom/tencent/a/b/e/a/c;->t:F

    iget v4, p0, Lcom/tencent/a/b/e/a/c;->q:F

    iget v6, p0, Lcom/tencent/a/b/e/a/c;->r:F

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iput v2, p0, Lcom/tencent/a/b/e/a/c;->t:F

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->l()V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/tencent/a/b/e/a/c;->q:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/tencent/a/b/e/a/c;->r:F

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c;->l:Lcom/tencent/a/a/a/a;

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->l:Lcom/tencent/a/a/a/a;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->k()Lcom/tencent/b/a/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/a/a/a/e;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c;->w:Lcom/tencent/a/a/a/e;

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/b/a/a/f$a;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/b/a/a/f$a;

    invoke-virtual {v0, p1}, Lcom/tencent/b/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/e/a/c;->C:Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->c()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v0

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x1

    aget v2, v2, v4

    iget-object v4, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->A:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->A:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tencent/a/b/e/a/c$4;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/e/a/c$4;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->A:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b(F)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/tencent/a/b/e/a/c;->u:F

    invoke-direct {v0, v1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iput p1, p0, Lcom/tencent/a/b/e/a/c;->u:F

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 11

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->e:Lcom/tencent/a/b/d/f;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/f;->g()Lcom/tencent/b/a/a/i$a;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/tencent/a/a/a/g;

    invoke-direct {v0, p0}, Lcom/tencent/a/a/a/g;-><init>(Lcom/tencent/a/b/e/a/c;)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->e:Lcom/tencent/a/b/d/f;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/f;->g()Lcom/tencent/b/a/a/i$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/b/a/a/i$a;->a(Lcom/tencent/a/a/a/g;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/a/b/e/a/b;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/a/b/e/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/tencent/a/b/e/a/c;->E:Landroid/graphics/PointF;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/tencent/b/a/a/f$a;

    const/4 v1, -0x2

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->w:Lcom/tencent/a/a/a/e;

    iget v4, v5, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/b/a/a/f$a;-><init>(IILcom/tencent/a/a/a/e;III)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/tencent/b/a/a/f;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1, v0}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->i:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->i:Landroid/view/animation/Animation;

    :goto_2
    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    new-instance v1, Lcom/tencent/a/b/e/a/c$5;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/e/a/c$5;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->c:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0, p0}, Lcom/tencent/a/b/d/e;->a(Lcom/tencent/a/b/e/a/c;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/a/b/e/a/b;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/a/b/e/a/c;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/a/b/e/a/c;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/a/b/e/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    goto :goto_1

    :cond_6
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x0

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v0, v10

    goto/16 :goto_2
.end method

.method public final e()V
    .locals 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->j:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->j:Landroid/view/animation/Animation;

    :goto_1
    new-instance v1, Lcom/tencent/a/b/e/a/c$6;

    invoke-direct {v1, p0}, Lcom/tencent/a/b/e/a/c$6;-><init>(Lcom/tencent/a/b/e/a/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f000000    # 0.5f

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x64

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    move-object v0, v9

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/tencent/a/b/e/a/c;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    check-cast p1, Lcom/tencent/a/b/e/a/c;

    invoke-virtual {p1}, Lcom/tencent/a/b/e/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Marker"

    sget v1, Lcom/tencent/a/b/e/a/c;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/tencent/a/b/e/a/c;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/a/b/e/a/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/a/b/e/a/c;->y:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->f:Lcom/tencent/b/a/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/a/f;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/a/b/e/a/c;->l()V

    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/c;->C:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/a/b/e/a/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
