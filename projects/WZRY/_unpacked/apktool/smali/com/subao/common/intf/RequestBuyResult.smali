.class public Lcom/subao/common/intf/RequestBuyResult;
.super Ljava/lang/Object;
.source "RequestBuyResult.java"


# instance fields
.field private final orderId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final productId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/subao/common/intf/RequestBuyResult;->productId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/subao/common/intf/RequestBuyResult;->orderId:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    if-ne p1, p0, :cond_2

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    instance-of v1, p1, Lcom/subao/common/intf/RequestBuyResult;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/subao/common/intf/RequestBuyResult;

    invoke-virtual {p0, p1}, Lcom/subao/common/intf/RequestBuyResult;->isEquals(Lcom/subao/common/intf/RequestBuyResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/subao/common/intf/RequestBuyResult;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/subao/common/intf/RequestBuyResult;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public isEquals(Lcom/subao/common/intf/RequestBuyResult;)Z
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/subao/common/intf/RequestBuyResult;->productId:Ljava/lang/String;

    iget-object v1, p1, Lcom/subao/common/intf/RequestBuyResult;->productId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subao/common/intf/RequestBuyResult;->orderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/subao/common/intf/RequestBuyResult;->orderId:Ljava/lang/String;

    .line 62
    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string v0, "[p=%s, o=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/subao/common/intf/RequestBuyResult;->productId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/subao/common/intf/RequestBuyResult;->orderId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
