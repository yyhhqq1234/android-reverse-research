.class public Lcom/tencent/midas/api/request/APMidasSubscribeRequest;
.super Lcom/tencent/midas/api/request/APMidasMonthRequest;
.source "APMidasSubscribeRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x54d031de1a7995d6L


# instance fields
.field public gameLogo:I

.field public productId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/midas/api/request/APMidasMonthRequest;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->gameLogo:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getGameLogo()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->gameLogo:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public setGameLogo(I)V
    .locals 0
    .param p1, "gameLogo"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->gameLogo:I

    .line 43
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasSubscribeRequest;->productId:Ljava/lang/String;

    .line 33
    return-void
.end method
