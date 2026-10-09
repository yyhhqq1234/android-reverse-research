.class public final Lcom/tencent/a/a/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->b:D

    iput-wide v2, p0, Lcom/tencent/a/a/a/f$a;->c:D

    iput-wide v2, p0, Lcom/tencent/a/a/a/f$a;->d:D

    return-void
.end method

.method static synthetic a(Lcom/tencent/a/a/a/f$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/a/a/a/f$a;->a:D

    return-wide v0
.end method

.method private a(D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->c:D

    iget-wide v4, p0, Lcom/tencent/a/a/a/f$a;->d:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->c:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->c:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->d:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/a/a/a/f$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/a/a/a/f$a;->c:D

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/a/a/a/f$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/a/a/a/f$a;->b:D

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/a/a/a/f$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/a/a/a/f$a;->d:D

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;
    .locals 6

    iget-wide v0, p0, Lcom/tencent/a/a/a/f$a;->a:D

    invoke-virtual {p1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->a:D

    iget-wide v0, p0, Lcom/tencent/a/a/a/f$a;->b:D

    invoke-virtual {p1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->b:D

    invoke-virtual {p1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->c:D

    :cond_0
    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->d:D

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/tencent/a/a/a/f$a;->a(D)Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/a/a/a/f;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/a/a/a/f$a;->d:D

    invoke-static {v4, v5, v0, v1}, Lcom/tencent/a/a/a/f;->b(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iput-wide v0, p0, Lcom/tencent/a/a/a/f$a;->c:D

    goto :goto_0
.end method

.method public final a()Lcom/tencent/a/a/a/f;
    .locals 8

    new-instance v0, Lcom/tencent/a/a/a/f;

    new-instance v1, Lcom/tencent/a/a/a/e;

    iget-wide v2, p0, Lcom/tencent/a/a/a/f$a;->a:D

    iget-wide v4, p0, Lcom/tencent/a/a/a/f$a;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    new-instance v2, Lcom/tencent/a/a/a/e;

    iget-wide v4, p0, Lcom/tencent/a/a/a/f$a;->b:D

    iget-wide v6, p0, Lcom/tencent/a/a/a/f$a;->d:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/a/a/a/f;-><init>(Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;)V

    return-object v0
.end method
