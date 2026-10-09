.class public Lcom/tencent/midas/api/request/APMidasMonthRequest;
.super Lcom/tencent/midas/api/request/APMidasBaseRequest;
.source "APMidasMonthRequest.java"


# static fields
.field public static final SERVICETYPE_NORMAL:I = 0x1

.field public static final SERVICETYPE_RENEW:I = 0x2

.field public static final SERVICETYPE_UPGRADE:I = 0x3

.field private static final serialVersionUID:J = -0x7bbe2638f13b37eL


# instance fields
.field public autoPay:Z

.field public gameLogo:I

.field public serviceCode:Ljava/lang/String;

.field public serviceName:Ljava/lang/String;

.field public serviceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/tencent/midas/api/request/APMidasBaseRequest;-><init>()V

    .line 43
    iput v1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->gameLogo:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->autoPay:Z

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceType:I

    .line 54
    return-void
.end method


# virtual methods
.method public getAutoPay()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->autoPay:Z

    return v0
.end method

.method public getGameLogo()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->gameLogo:I

    return v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceType:I

    return v0
.end method

.method public setAutoPay(Z)V
    .locals 0
    .param p1, "autoPay"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->autoPay:Z

    .line 82
    return-void
.end method

.method public setGameLogo(I)V
    .locals 0
    .param p1, "gameLogo"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->gameLogo:I

    .line 98
    return-void
.end method

.method public setServiceCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceCode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .param p1, "serviceType"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasMonthRequest;->serviceType:I

    .line 90
    return-void
.end method
