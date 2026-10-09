.class public Lcom/tencent/a/b/h/b/b;
.super Lcom/tencent/a/b/h/b/a;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/a/b/h/b/a;-><init>(I)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://s0.map.gtimg.com/oversea"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://s1.map.gtimg.com/oversea"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://s2.map.gtimg.com/oversea"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://s3.map.gtimg.com/oversea"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/a/b/h/b/b;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a(III[Ljava/lang/Object;)Ljava/net/URL;
    .locals 7

    invoke-static {}, Lcom/tencent/a/b/d/e;->u()I

    move-result v0

    invoke-static {}, Lcom/tencent/a/b/d/e;->t()I

    move-result v1

    invoke-static {}, Lcom/tencent/a/b/d/e;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/a/b/d/e;->v()I

    move-result v3

    add-int v4, p1, p2

    iget-object v5, p0, Lcom/tencent/a/b/h/b/b;->b:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v4, v5}, Lcom/tencent/a/b/h/b/b;->a(II)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/a/b/h/b/b;->b:[Ljava/lang/String;

    aget-object v4, v5, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?z="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&x="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&y="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "&styleid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&scene="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&version="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to new URL with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto :goto_0
.end method
