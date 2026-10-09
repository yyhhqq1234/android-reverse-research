.class public Lcom/tencent/a/a/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/a/a/a/f$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/a/a/a/e;

.field private c:Lcom/tencent/a/a/a/e;


# direct methods
.method constructor <init>(ILcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/a/a/a/f$a;

    invoke-direct {v0}, Lcom/tencent/a/a/a/f$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/e;)Lcom/tencent/a/a/a/f$a;

    move-result-object v0

    new-instance v1, Lcom/tencent/a/a/a/e;

    invoke-static {v0}, Lcom/tencent/a/a/a/f$a;->a(Lcom/tencent/a/a/a/f$a;)D

    move-result-wide v2

    invoke-static {v0}, Lcom/tencent/a/a/a/f$a;->b(Lcom/tencent/a/a/a/f$a;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    iput-object v1, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    new-instance v1, Lcom/tencent/a/a/a/e;

    invoke-static {v0}, Lcom/tencent/a/a/a/f$a;->c(Lcom/tencent/a/a/a/f$a;)D

    move-result-wide v2

    invoke-static {v0}, Lcom/tencent/a/a/a/f$a;->d(Lcom/tencent/a/a/a/f$a;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/a/a/a/e;-><init>(DD)V

    iput-object v1, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    iput p1, p0, Lcom/tencent/a/a/a/f;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/a/a/a/f;-><init>(ILcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;)V

    return-void
.end method

.method static synthetic a(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/a/a/a/f;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Lcom/tencent/a/a/a/f$a;
    .locals 1

    new-instance v0, Lcom/tencent/a/a/a/f$a;

    invoke-direct {v0}, Lcom/tencent/a/a/a/f$a;-><init>()V

    return-object v0
.end method

.method private a(D)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v0}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/a/a/a/f;->d(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    iget-object v4, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v4}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static c(DD)D
    .locals 4

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double v0, p0, p2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private c(Lcom/tencent/a/a/a/f;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v2

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v4

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v6

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v8

    add-double/2addr v6, v8

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v8

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v8

    iget-object v1, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v10

    sub-double/2addr v8, v10

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v10

    add-double/2addr v8, v10

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(DD)D
    .locals 4

    const-wide v2, 0x4076800000000000L    # 360.0

    sub-double v0, p2, p0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/tencent/a/a/a/e;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/e;->b()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/a/a/a/f;->a(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/a/a/a/e;->c()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/a/a/a/f;->b(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/tencent/a/a/a/f;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {p0, v1}, Lcom/tencent/a/a/a/f;->a(Lcom/tencent/a/a/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {p0, v1}, Lcom/tencent/a/a/a/f;->a(Lcom/tencent/a/a/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public b(Lcom/tencent/a/a/a/f;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/a/a/a/f;->c(Lcom/tencent/a/a/a/f;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p1, p0}, Lcom/tencent/a/a/a/f;->c(Lcom/tencent/a/a/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/tencent/a/a/a/f;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tencent/a/a/a/f;

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    iget-object v3, p1, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    iget-object v3, p1, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/a/b/f/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "southwest"

    iget-object v3, p0, Lcom/tencent/a/a/a/f;->b:Lcom/tencent/a/a/a/e;

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "northeast"

    iget-object v3, p0, Lcom/tencent/a/a/a/f;->c:Lcom/tencent/a/a/a/e;

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/a/b/f/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
