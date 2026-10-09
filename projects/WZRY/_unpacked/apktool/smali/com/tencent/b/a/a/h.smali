.class public Lcom/tencent/b/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/a/b/d/e;

.field private b:Lcom/tencent/a/b/d/c;


# direct methods
.method public constructor <init>(Lcom/tencent/a/b/d/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/b/a/a/h;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->b()Lcom/tencent/a/b/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/a/h;->b:Lcom/tencent/a/b/d/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Point;)Lcom/tencent/a/a/a/e;
    .locals 3

    iget-object v0, p0, Lcom/tencent/b/a/a/h;->b:Lcom/tencent/a/b/d/c;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/a/b/d/c;->a(II)Lcom/tencent/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/tencent/a/a/a/m;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/b/a/a/h;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/b/d/b;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/b/a/a/h;->a:Lcom/tencent/a/b/d/e;

    invoke-virtual {v1}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/a/b/d/b;->getHeight()I

    move-result v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/tencent/b/a/a/h;->a(Landroid/graphics/Point;)Lcom/tencent/a/a/a/e;

    move-result-object v3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/tencent/b/a/a/h;->a(Landroid/graphics/Point;)Lcom/tencent/a/a/a/e;

    move-result-object v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/tencent/b/a/a/h;->a(Landroid/graphics/Point;)Lcom/tencent/a/a/a/e;

    move-result-object v1

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v5}, Lcom/tencent/b/a/a/h;->a(Landroid/graphics/Point;)Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-static {}, Lcom/tencent/a/a/a/f;->a()Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/f$a;->a()Lcom/tencent/a/a/a/f;

    move-result-object v5

    new-instance v0, Lcom/tencent/a/a/a/m;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/a/a/a/m;-><init>(Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/f;)V

    return-object v0
.end method

.method public b()I
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/tencent/b/a/a/h;->a()Lcom/tencent/a/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/f;->b()Lcom/tencent/a/a/a/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/a/a/a/f;->c()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-int v0, v0

    return v0
.end method

.method public c()I
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/tencent/b/a/a/h;->a()Lcom/tencent/a/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/f;->b()Lcom/tencent/a/a/a/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/a/a/a/f;->c()Lcom/tencent/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-int v0, v0

    return v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/h;->b:Lcom/tencent/a/b/d/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/c;->g()F

    move-result v0

    return v0
.end method
