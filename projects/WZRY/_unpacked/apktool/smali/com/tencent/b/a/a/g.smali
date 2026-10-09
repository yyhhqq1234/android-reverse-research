.class public Lcom/tencent/b/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/b/e/a;


# instance fields
.field protected a:Z

.field protected b:F

.field protected c:Lcom/tencent/b/a/a/f;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/b/a/a/g;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/b/a/a/g;->b:F

    invoke-virtual {p0}, Lcom/tencent/b/a/a/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/a/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/g;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Overlay"

    invoke-static {v0}, Lcom/tencent/a/b/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/a/g;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/b/a/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/a/g;->c:Lcom/tencent/b/a/a/f;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/b/a/a/g;->a(Landroid/graphics/Canvas;Lcom/tencent/b/a/a/f;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lcom/tencent/b/a/a/f;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/a/a/a/d;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/tencent/b/a/a/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/tencent/a/a/a/d;Landroid/view/MotionEvent;Lcom/tencent/b/a/a/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/tencent/a/a/a/d;Lcom/tencent/b/a/a/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/tencent/b/a/a/g;->b:F

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/b/a/a/g;->a:Z

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method
