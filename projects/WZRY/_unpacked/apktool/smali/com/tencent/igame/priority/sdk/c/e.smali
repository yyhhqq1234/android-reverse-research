.class public Lcom/tencent/igame/priority/sdk/c/e;
.super Lcom/tencent/igame/priority/sdk/c/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/igame/priority/sdk/c/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 5

    new-instance v0, Lcom/tencent/igame/priority/sdk/d/d/b;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/igame/priority/sdk/c/e;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/d/d/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/d/b;->a()Lcom/tencent/igame/priority/sdk/d/b/c;

    move-result-object v0

    invoke-static {}, Lcom/tencent/igame/priority/sdk/b/a;->a()Lcom/tencent/igame/priority/sdk/b/a;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find Device Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/igame/priority/sdk/b/a;->a(ILjava/lang/String;)V

    return-object v0
.end method

.method protected a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/c/a;->a()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:I

    const-string v0, "igame_priority_sdk_pref_wzry_key_device_id"

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/e/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/a/a/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method protected a(Lcom/tencent/igame/priority/sdk/d/b/a;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/tencent/igame/priority/sdk/d/b/c;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/tencent/igame/priority/sdk/d/b/c;

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/c;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/igame/priority/sdk/d/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "igame_priority_sdk_pref_wzry_key_security_device_may_ips"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/igame/priority/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/e;->b()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/tencent/igame/priority/sdk/c/e;->b()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/igame/priority/sdk/d/b/a;->a()I

    move-result v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/igame/priority/sdk/c;->a(ILjava/lang/String;I)V

    goto :goto_1
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/c;->a(Landroid/content/Context;)Lcom/tencent/igame/priority/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/igame/priority/sdk/c;->a(I)V

    return-void
.end method
