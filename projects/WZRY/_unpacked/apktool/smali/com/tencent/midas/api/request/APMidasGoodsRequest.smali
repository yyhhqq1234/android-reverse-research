.class public Lcom/tencent/midas/api/request/APMidasGoodsRequest;
.super Lcom/tencent/midas/api/request/APMidasBaseRequest;
.source "APMidasGoodsRequest.java"


# static fields
.field public static final GETTOKENTYPE_CLIENT:I = 0x3

.field public static final GETTOKENTYPE_SDK:I = 0x2

.field public static final GETTOKENTYPE_SERVER:I = 0x1

.field private static final serialVersionUID:J = -0x3c0bbece3654db26L


# instance fields
.field public developerPayload:Ljava/lang/String;

.field public gameLogo:I

.field public goodsTokenUrl:Ljava/lang/String;

.field public mIsReceiptMode:Z

.field public prodcutId:Ljava/lang/String;

.field public tokenType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/tencent/midas/api/request/APMidasBaseRequest;-><init>()V

    .line 36
    iput v1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->gameLogo:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->developerPayload:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mIsReceiptMode:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLogo()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->gameLogo:I

    return v0
.end method

.method public getGoodsTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsReceiptMode()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mIsReceiptMode:Z

    return v0
.end method

.method public getProdcutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->prodcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    return v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->developerPayload:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setGameLogo(I)V
    .locals 0
    .param p1, "gameLogo"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->gameLogo:I

    .line 87
    return-void
.end method

.method public setGoodsTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodsTokenUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->goodsTokenUrl:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIsReceiptMode(Z)V
    .locals 0
    .param p1, "receiptMode"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->mIsReceiptMode:Z

    .line 104
    return-void
.end method

.method public setProdcutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "prodcutId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->prodcutId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTokenType(I)V
    .locals 0
    .param p1, "tokenType"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasGoodsRequest;->tokenType:I

    .line 61
    return-void
.end method
