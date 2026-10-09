.class public Lcom/tencent/igame/priority/sdk/d/d/e;
.super Lcom/tencent/igame/priority/sdk/d/a/b;


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/a/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/d/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/igame/priority/sdk/d/d/e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/igame/priority/sdk/d/d/e;->a:I

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x17d8

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/igame/priority/sdk/d/d/e;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Lcom/tencent/igame/priority/sdk/d/a/b;->a(ILjava/net/SocketAddress;)Lcom/tencent/igame/priority/sdk/d/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/f;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request token response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/igame/priority/sdk/g/b;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/igame/priority/sdk/d/c/e;->a(Ljava/lang/String;)Lcom/tencent/igame/priority/sdk/d/b/f;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/d/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/igame/priority/sdk/d/d/e;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/igame/priority/sdk/d/d/e;->a:I

    invoke-static {v0, v1, v2}, Lcom/tencent/igame/priority/sdk/d/c/e;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
