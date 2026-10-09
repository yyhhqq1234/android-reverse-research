.class public Lcom/tencent/igame/priority/sdk/d/b/e;
.super Lcom/tencent/igame/priority/sdk/d/b/a;


# instance fields
.field private a:Lcom/tencent/igame/priority/sdk/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/igame/priority/sdk/d/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/igame/priority/sdk/a/d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/igame/priority/sdk/d/b/e;->a:Lcom/tencent/igame/priority/sdk/a/d;

    return-object v0
.end method

.method public a(Lcom/tencent/igame/priority/sdk/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/igame/priority/sdk/d/b/e;->a:Lcom/tencent/igame/priority/sdk/a/d;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/tencent/igame/priority/sdk/d/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
