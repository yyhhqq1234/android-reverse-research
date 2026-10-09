.class public Lcom/subao/common/intf/RequestBuyResultForViVo;
.super Lcom/subao/common/intf/RequestBuyResult;
.source "RequestBuyResultForViVo.java"


# instance fields
.field private final accessKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final transNo:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/subao/common/intf/RequestBuyResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p3, p0, Lcom/subao/common/intf/RequestBuyResultForViVo;->accessKey:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/subao/common/intf/RequestBuyResultForViVo;->transNo:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    instance-of v2, p1, Lcom/subao/common/intf/RequestBuyResultForViVo;

    if-eqz v2, :cond_0

    .line 61
    check-cast p1, Lcom/subao/common/intf/RequestBuyResultForViVo;

    .line 62
    invoke-virtual {p0, p1}, Lcom/subao/common/intf/RequestBuyResultForViVo;->isEquals(Lcom/subao/common/intf/RequestBuyResult;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/RequestBuyResultForViVo;->accessKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/RequestBuyResultForViVo;->accessKey:Ljava/lang/String;

    .line 63
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/subao/common/intf/RequestBuyResultForViVo;->transNo:Ljava/lang/String;

    iget-object v3, p1, Lcom/subao/common/intf/RequestBuyResultForViVo;->transNo:Ljava/lang/String;

    .line 64
    invoke-static {v2, v3}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/subao/common/intf/RequestBuyResultForViVo;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTransNo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/subao/common/intf/RequestBuyResultForViVo;->transNo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "[ResultForViVo: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/subao/common/intf/RequestBuyResult;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
