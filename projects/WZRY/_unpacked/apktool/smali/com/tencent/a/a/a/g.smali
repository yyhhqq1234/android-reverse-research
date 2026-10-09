.class public final Lcom/tencent/a/a/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/a/b/e/a/c;


# direct methods
.method public constructor <init>(Lcom/tencent/a/b/e/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->a()V

    return-void
.end method

.method public final a(Lcom/tencent/a/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/e/a/c;->a(Lcom/tencent/a/a/a/e;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0, p1}, Lcom/tencent/a/b/e/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/a/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    check-cast p1, Lcom/tencent/a/a/a/g;

    iget-object v1, p1, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0, v1}, Lcom/tencent/a/b/e/a/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/a/a/g;->a:Lcom/tencent/a/b/e/a/c;

    invoke-virtual {v0}, Lcom/tencent/a/b/e/a/c;->hashCode()I

    move-result v0

    return v0
.end method
