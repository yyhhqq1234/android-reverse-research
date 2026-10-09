.class public final Lcom/tencent/a/b/e/a/f;
.super Ljava/lang/Object;


# static fields
.field private static g:I


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:F

.field private d:Z

.field private e:Lcom/tencent/a/a/a/k;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/a/b/e/a/f;->g:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/tencent/a/b/e/a/f;->c:F

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/f;->b:Z

    return v0
.end method

.method public final c()Lcom/tencent/a/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/f;->e:Lcom/tencent/a/a/a/k;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/e/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/a/b/e/a/f;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/a/b/e/a/f;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/a/b/e/a/f;

    iget-object v1, p0, Lcom/tencent/a/b/e/a/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/a/b/e/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
