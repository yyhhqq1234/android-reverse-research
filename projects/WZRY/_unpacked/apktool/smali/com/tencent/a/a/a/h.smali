.class public final Lcom/tencent/a/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/a/a/a/a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;

.field private k:Lcom/tencent/a/a/a/e;

.field private l:Ljava/lang/String;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Ljava/lang/Object;

.field private r:Landroid/graphics/PointF;

.field private s:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/tencent/a/a/a/h;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/a/a/a/h;->c:Z

    iput-boolean v3, p0, Lcom/tencent/a/a/a/h;->d:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/tencent/a/a/a/h;->e:F

    iput v2, p0, Lcom/tencent/a/a/a/h;->f:F

    iput v2, p0, Lcom/tencent/a/a/a/h;->g:F

    iput v1, p0, Lcom/tencent/a/a/a/h;->h:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/a/a/a/h;->r:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/a/a/a/h;->s:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->k:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final a(Landroid/graphics/PointF;)Lcom/tencent/a/a/a/h;
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/a/h;->r:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/tencent/a/a/a/h;
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/a/h;->i:Landroid/view/View;

    return-object p0
.end method

.method public final a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/h;
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/a/h;->k:Lcom/tencent/a/a/a/e;

    return-object p0
.end method

.method public final b(Landroid/graphics/PointF;)Lcom/tencent/a/a/a/h;
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/a/a/h;->s:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/tencent/a/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->a:Lcom/tencent/a/a/a/a;

    return-object v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/a/h;->e:F

    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/a/h;->f:F

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/a/h;->h:F

    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/a/a/h;->g:F

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/a/a/h;->b:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/a/a/h;->c:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/a/a/h;->d:Z

    return v0
.end method

.method public final l()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->i:Landroid/view/View;

    return-object v0
.end method

.method public final m()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final n()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->o:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final o()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->p:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final p()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->n:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final r()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->r:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final s()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/h;->s:Landroid/graphics/PointF;

    return-object v0
.end method
