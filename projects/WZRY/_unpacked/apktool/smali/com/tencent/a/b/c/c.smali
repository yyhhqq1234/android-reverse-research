.class public final Lcom/tencent/a/b/c/c;
.super Lcom/tencent/a/b/c/a;


# instance fields
.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/a/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/tencent/a/b/c/c;->d:F

    return-void
.end method

.method public final a(Lcom/tencent/a/b/d/e;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/tencent/a/b/c/c;->d:F

    float-to-double v2, v1

    iget-boolean v1, p0, Lcom/tencent/a/b/c/c;->a:Z

    iget-object v4, p0, Lcom/tencent/a/b/c/c;->c:Lcom/tencent/b/a/a/c;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/tencent/a/b/d/b;->a(DZLcom/tencent/b/a/a/c;)V

    return-void
.end method
