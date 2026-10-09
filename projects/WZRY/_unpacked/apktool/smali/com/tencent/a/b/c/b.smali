.class public final Lcom/tencent/a/b/c/b;
.super Lcom/tencent/a/b/c/a;


# instance fields
.field private d:Lcom/tencent/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/a/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/a/b/c/b;->d:Lcom/tencent/a/a/a/c;

    return-void
.end method

.method public final a(Lcom/tencent/a/b/d/e;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/a/b/d/e;->c()Lcom/tencent/a/b/d/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/a/b/c/b;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/a/b/c/b;->d:Lcom/tencent/a/a/a/c;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/b/b/c;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/a/b/c/b;->b:J

    iget-object v4, p0, Lcom/tencent/a/b/c/b;->c:Lcom/tencent/b/a/a/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/a/b/d/b;->a(Lcom/tencent/a/b/b/c;JLcom/tencent/b/a/a/c;)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/a/b/c/b;->d:Lcom/tencent/a/a/a/c;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/c;->c()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/b/c/b;->d:Lcom/tencent/a/a/a/c;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/c;->c()F

    move-result v1

    float-to-double v2, v1

    iget-boolean v1, p0, Lcom/tencent/a/b/c/b;->a:Z

    iget-object v4, p0, Lcom/tencent/a/b/c/b;->c:Lcom/tencent/b/a/a/c;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/tencent/a/b/d/b;->a(DZLcom/tencent/b/a/a/c;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/a/b/c/b;->d:Lcom/tencent/a/a/a/c;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/c;->b()Lcom/tencent/a/a/a/e;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/a/b/d$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/b/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/d/b;->b(Lcom/tencent/a/b/b/c;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
