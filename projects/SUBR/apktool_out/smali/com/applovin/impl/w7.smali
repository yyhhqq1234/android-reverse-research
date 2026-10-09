.class public final Lcom/applovin/impl/w7;
.super Lcom/applovin/impl/dk;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/applovin/impl/dk;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/df;Ljava/nio/ByteBuffer;)Lcom/applovin/impl/af;
    .locals 2

    .line 44
    new-instance p1, Lcom/applovin/impl/af;

    new-instance v0, Lcom/applovin/impl/ah;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/applovin/impl/ah;-><init>([BI)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/w7;->a(Lcom/applovin/impl/ah;)Lcom/applovin/impl/v7;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/impl/af$b;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lcom/applovin/impl/af;-><init>([Lcom/applovin/impl/af$b;)V

    return-object p1
.end method

.method public a(Lcom/applovin/impl/ah;)Lcom/applovin/impl/v7;
    .locals 9

    .line 37
    invoke-virtual {p1}, Lcom/applovin/impl/ah;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/b1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/applovin/impl/ah;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/b1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/applovin/impl/ah;->s()J

    move-result-wide v4

    .line 40
    invoke-virtual {p1}, Lcom/applovin/impl/ah;->s()J

    move-result-wide v6

    .line 42
    invoke-virtual {p1}, Lcom/applovin/impl/ah;->c()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/ah;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/impl/ah;->e()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 43
    new-instance p1, Lcom/applovin/impl/v7;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/applovin/impl/v7;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p1
.end method
