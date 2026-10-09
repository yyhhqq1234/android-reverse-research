.class public final Lc/t/m/g/k;
.super Lc/t/m/g/j;


# direct methods
.method public constructor <init>(Lc/t/m/g/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/t/m/g/j;-><init>(Lc/t/m/g/i;)V

    return-void
.end method


# virtual methods
.method public final a()Lc/t/m/g/ai;
    .locals 2

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/t/m/g/bv;->a(I)V

    invoke-super {p0}, Lc/t/m/g/j;->a()Lc/t/m/g/ai;

    move-result-object v0

    return-object v0
.end method

.method protected final a(I)Lc/t/m/g/ai;
    .locals 9

    new-instance v0, Lc/t/m/g/af;

    iget-object v1, p0, Lc/t/m/g/k;->c:Ljava/lang/String;

    iget-object v2, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    iget-object v2, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    iget-object v2, v2, Lc/t/m/g/i;->c:Ljava/util/Map;

    iget-object v3, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    iget-object v3, v3, Lc/t/m/g/i;->b:[B

    iget-object v4, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    iget-object v5, v4, Lc/t/m/g/i;->f:Ljava/lang/String;

    iget-object v4, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    iget-boolean v6, v4, Lc/t/m/g/i;->h:Z

    invoke-static {}, Lc/t/m/g/bv;->c()Lc/t/m/g/bv;

    move-result-object v4

    invoke-virtual {v4}, Lc/t/m/g/bv;->e()Lc/t/m/g/r;

    move-result-object v7

    iget-object v4, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    const/4 v8, 0x0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lc/t/m/g/af;-><init>(Ljava/lang/String;Ljava/util/Map;[BILjava/lang/String;ZLc/t/m/g/r;Ljava/lang/String;)V

    iget-object v1, p0, Lc/t/m/g/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lc/t/m/g/af;->a:Ljava/lang/String;

    iget-object v1, p0, Lc/t/m/g/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v1, v0, Lc/t/m/g/af;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Lc/t/m/g/af;->a(Ljava/lang/String;)V

    iput-object v0, p0, Lc/t/m/g/k;->e:Lc/t/m/g/ad;

    iget-object v0, p0, Lc/t/m/g/k;->e:Lc/t/m/g/ad;

    iget-object v1, p0, Lc/t/m/g/k;->a:Lc/t/m/g/i;

    iget-wide v2, v1, Lc/t/m/g/i;->k:J

    iput-wide v2, v0, Lc/t/m/g/ad;->l:J

    iget-object v0, p0, Lc/t/m/g/k;->e:Lc/t/m/g/ad;

    invoke-virtual {v0}, Lc/t/m/g/ad;->a()Lc/t/m/g/ai;

    move-result-object v0

    return-object v0
.end method
