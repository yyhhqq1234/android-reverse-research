.class final Lcom/applovin/impl/mk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/ah;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/applovin/impl/ah;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/applovin/impl/ah;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    return-void
.end method

.method private a(Lcom/applovin/impl/k8;)J
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/applovin/impl/k8;->c([BII)V

    .line 94
    iget-object v0, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    not-int v3, v3

    and-int/2addr v0, v3

    .line 105
    iget-object v3, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v3}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v3

    invoke-interface {p1, v3, v2, v4}, Lcom/applovin/impl/k8;->c([BII)V

    :goto_1
    if-ge v1, v4, :cond_2

    shl-int/lit8 p1, v0, 0x8

    .line 108
    iget-object v0, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v0}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    .line 110
    :cond_2
    iget p1, p0, Lcom/applovin/impl/mk;->b:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lcom/applovin/impl/mk;->b:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public b(Lcom/applovin/impl/k8;)Z
    .locals 14

    .line 45
    invoke-interface {p1}, Lcom/applovin/impl/k8;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x400

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :cond_1
    :goto_0
    long-to-int v2, v4

    .line 52
    iget-object v3, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v3}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-interface {p1, v3, v4, v5}, Lcom/applovin/impl/k8;->c([BII)V

    .line 53
    iget-object v3, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v3}, Lcom/applovin/impl/ah;->y()J

    move-result-wide v7

    .line 54
    iput v5, p0, Lcom/applovin/impl/mk;->b:I

    :goto_1
    const-wide/32 v9, 0x1a45dfa3

    const/4 v3, 0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    .line 56
    iget v5, p0, Lcom/applovin/impl/mk;->b:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/applovin/impl/mk;->b:I

    if-ne v5, v2, :cond_2

    return v4

    .line 59
    :cond_2
    iget-object v5, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v5}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v5

    invoke-interface {p1, v5, v4, v3}, Lcom/applovin/impl/k8;->c([BII)V

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    const-wide/16 v9, -0x100

    and-long/2addr v7, v9

    .line 61
    iget-object v3, p0, Lcom/applovin/impl/mk;->a:Lcom/applovin/impl/ah;

    invoke-virtual {v3}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v9, v3

    or-long/2addr v7, v9

    goto :goto_1

    .line 65
    :cond_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/mk;->a(Lcom/applovin/impl/k8;)J

    move-result-wide v7

    .line 66
    iget v2, p0, Lcom/applovin/impl/mk;->b:I

    int-to-long v9, v2

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v2, v7, v11

    if-eqz v2, :cond_9

    if-eqz v6, :cond_4

    add-long v5, v9, v7

    cmp-long v2, v5, v0

    if-ltz v2, :cond_4

    goto :goto_4

    .line 73
    :cond_4
    :goto_2
    iget v0, p0, Lcom/applovin/impl/mk;->b:I

    int-to-long v0, v0

    add-long v5, v9, v7

    cmp-long v2, v0, v5

    if-gez v2, :cond_8

    .line 74
    invoke-direct {p0, p1}, Lcom/applovin/impl/mk;->a(Lcom/applovin/impl/k8;)J

    move-result-wide v0

    cmp-long v2, v0, v11

    if-nez v2, :cond_5

    return v4

    .line 78
    :cond_5
    invoke-direct {p0, p1}, Lcom/applovin/impl/mk;->a(Lcom/applovin/impl/k8;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_7

    const-wide/32 v5, 0x7fffffff

    cmp-long v13, v0, v5

    if-lez v13, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v1, v0

    .line 84
    invoke-interface {p1, v1}, Lcom/applovin/impl/k8;->c(I)V

    .line 85
    iget v0, p0, Lcom/applovin/impl/mk;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/impl/mk;->b:I

    goto :goto_2

    :cond_7
    :goto_3
    return v4

    :cond_8
    if-nez v2, :cond_9

    const/4 v4, 0x1

    :cond_9
    :goto_4
    return v4
.end method
