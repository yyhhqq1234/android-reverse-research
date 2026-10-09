.class public abstract Lcom/tencent/android/tpush/stat/b/h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field protected a:Lcom/tencent/android/tpush/stat/a/f;

.field protected b:Landroid/content/Context;

.field protected c:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/tencent/android/tpush/stat/a/e;->b()Lcom/tencent/android/tpush/stat/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/h;->a:Lcom/tencent/android/tpush/stat/a/f;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/android/tpush/stat/b/h;->b:Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    .line 66
    iput-object p1, p0, Lcom/tencent/android/tpush/stat/b/h;->b:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    .line 68
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/tencent/android/tpush/stat/b/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/stat/b/h;->a(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/stat/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Lcom/tencent/android/tpush/stat/b/d;)V
    .locals 2

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/android/tpush/stat/b/h;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/tencent/android/tpush/stat/b/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/b/e;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/stat/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/stat/b/e;->a(Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/android/tpush/stat/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/android/tpush/stat/b/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/a/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    if-nez v0, :cond_0

    const-string v0, "6X8Y4XdM2Vhvn0I="

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6X8Y4XdM2Vhvn0I="

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    if-nez v0, :cond_0

    const-string v0, "6X8Y4XdM2Vhvn0KfzcEatGnWaNU="

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6X8Y4XdM2Vhvn0KfzcEatGnWaNU="

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    if-nez v0, :cond_0

    const-string v0, "4kU71lN96TJUomD1vOU9lgj9Tw=="

    invoke-static {v0}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4kU71lN96TJUomD1vOU9lgj9Tw=="

    invoke-static {v1}, Lcom/tencent/android/tpush/stat/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/android/tpush/stat/b/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lcom/tencent/android/tpush/stat/b/d;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/tencent/android/tpush/stat/b/h;->h()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Lcom/tencent/android/tpush/stat/b/d;->a(Ljava/lang/String;)Lcom/tencent/android/tpush/stat/b/d;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
