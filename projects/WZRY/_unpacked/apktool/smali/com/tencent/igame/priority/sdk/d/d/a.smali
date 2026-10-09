.class public Lcom/tencent/igame/priority/sdk/d/d/a;
.super Lcom/tencent/igame/priority/sdk/d/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/d/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/igame/priority/sdk/d/d/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x1900

    return v0
.end method

.method public a()Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/tencent/igame/priority/sdk/d/a/b;->a(ILjava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/igame/priority/sdk/d/d/a;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/b;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckPriority Response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/d/c/a;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/d/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/d/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "igame_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/igame/priority/sdk/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
