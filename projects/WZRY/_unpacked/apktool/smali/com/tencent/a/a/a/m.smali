.class public final Lcom/tencent/a/a/a/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/a/a/a/f;

.field private final b:I

.field private final c:Lcom/tencent/a/a/a/e;

.field private final d:Lcom/tencent/a/a/a/e;

.field private final e:Lcom/tencent/a/a/a/e;

.field private final f:Lcom/tencent/a/a/a/e;


# direct methods
.method protected constructor <init>(ILcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/a/a/a/m;->b:I

    iput-object p2, p0, Lcom/tencent/a/a/a/m;->d:Lcom/tencent/a/a/a/e;

    iput-object p3, p0, Lcom/tencent/a/a/a/m;->c:Lcom/tencent/a/a/a/e;

    iput-object p4, p0, Lcom/tencent/a/a/a/m;->f:Lcom/tencent/a/a/a/e;

    iput-object p5, p0, Lcom/tencent/a/a/a/m;->e:Lcom/tencent/a/a/a/e;

    iput-object p6, p0, Lcom/tencent/a/a/a/m;->a:Lcom/tencent/a/a/a/f;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/f;)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/a/a/a/m;-><init>(ILcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/e;Lcom/tencent/a/a/a/f;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/m;->d:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final b()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/m;->c:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final c()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/m;->f:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final d()Lcom/tencent/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/m;->e:Lcom/tencent/a/a/a/e;

    return-object v0
.end method

.method public final e()Lcom/tencent/a/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/m;->a:Lcom/tencent/a/a/a/f;

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
    instance-of v2, p1, Lcom/tencent/a/a/a/m;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tencent/a/a/a/m;

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->a()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/m;->a()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->b()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/m;->b()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->c()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/m;->c()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->d()Lcom/tencent/a/a/a/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/m;->d()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/a/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->a()Lcom/tencent/a/a/a/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->b()Lcom/tencent/a/a/a/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->c()Lcom/tencent/a/a/a/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->d()Lcom/tencent/a/a/a/e;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/a/b/f/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nearLeft"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->a()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nearRight"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->b()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "farLeft"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->c()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "farRight"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->d()Lcom/tencent/a/a/a/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latLngBounds"

    invoke-virtual {p0}, Lcom/tencent/a/a/a/m;->e()Lcom/tencent/a/a/a/f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/a/b/f/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/a/b/f/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
