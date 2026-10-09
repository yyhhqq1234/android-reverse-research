.class public final Lcom/tencent/a/b/a/c;
.super Lcom/tencent/a/b/a/a;


# instance fields
.field private d:Landroid/graphics/PointF;

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>(Lcom/tencent/a/b/d/e;DLandroid/graphics/PointF;JLcom/tencent/b/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p5, p6, p7}, Lcom/tencent/a/b/a/a;-><init>(Lcom/tencent/a/b/d/e;JLcom/tencent/b/a/a/c;)V

    iput-wide p2, p0, Lcom/tencent/a/b/a/c;->e:D

    iput-object p4, p0, Lcom/tencent/a/b/a/c;->d:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method protected final a(F)V
    .locals 7

    iget-object v1, p0, Lcom/tencent/a/b/a/c;->b:Lcom/tencent/a/b/d/b;

    iget-wide v2, p0, Lcom/tencent/a/b/a/c;->f:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iget-object v4, p0, Lcom/tencent/a/b/a/c;->d:Landroid/graphics/PointF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/a/b/d/b;->a(DLandroid/graphics/PointF;ZLcom/tencent/b/a/a/c;)V

    return-void
.end method

.method protected final c()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/a/b/a/c;->b:Lcom/tencent/a/b/d/b;

    invoke-virtual {v0}, Lcom/tencent/a/b/d/b;->c()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/a/b/a/c;->e:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/tencent/a/b/a/c;->f:D

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newZoom:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/a/b/a/c;->e:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",oldZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final d()V
    .locals 9

    iget-object v1, p0, Lcom/tencent/a/b/a/c;->b:Lcom/tencent/a/b/d/b;

    iget-wide v2, p0, Lcom/tencent/a/b/a/c;->e:D

    iget-object v4, p0, Lcom/tencent/a/b/a/c;->d:Landroid/graphics/PointF;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/a/b/d/b;->a(DLandroid/graphics/PointF;ZJLcom/tencent/b/a/a/c;)V

    return-void
.end method
