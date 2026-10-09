.class public Lcom/tencent/igame/priority/sdk/d/b/b;
.super Lcom/tencent/igame/priority/sdk/d/b/a;


# instance fields
.field private a:Lcom/tencent/igame/priority/sdk/a/a;

.field private a:Lcom/tencent/igame/priority/sdk/a/c;

.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/igame/priority/sdk/a/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/a;

    return-object v0
.end method

.method public a()Lcom/tencent/igame/priority/sdk/a/c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    return-object v0
.end method

.method public a(Lcom/tencent/igame/priority/sdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/a;

    return-void
.end method

.method public a(Lcom/tencent/igame/priority/sdk/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " [DIp]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    invoke-virtual {v2}, Lcom/tencent/igame/priority/sdk/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/c;->a()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " [DPort]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    invoke-virtual {v2}, Lcom/tencent/igame/priority/sdk/a/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " [DSig]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/c;

    invoke-virtual {v2}, Lcom/tencent/igame/priority/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/a;

    invoke-virtual {v1}, Lcom/tencent/igame/priority/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " [CorpId]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/d/b/b;->a:Lcom/tencent/igame/priority/sdk/a/a;

    invoke-virtual {v2}, Lcom/tencent/igame/priority/sdk/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
