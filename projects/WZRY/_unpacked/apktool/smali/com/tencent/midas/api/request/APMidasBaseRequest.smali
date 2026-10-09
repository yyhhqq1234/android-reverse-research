.class public abstract Lcom/tencent/midas/api/request/APMidasBaseRequest;
.super Ljava/lang/Object;
.source "APMidasBaseRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;,
        Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;
    }
.end annotation


# static fields
.field public static final MALL_TYPE_DEFAULT:I = 0x0

.field public static final MALL_TYPE_GROUPBUY:I = 0x1

.field public static final MALL_TYPE_VMALL:I = 0x2

.field private static final serialVersionUID:J = -0x7e9d9f7ec125f6b0L


# instance fields
.field public acctType:Ljava/lang/String;

.field public extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

.field public h5Url:Ljava/lang/String;

.field public isCanChange:Z

.field public mallType:I

.field public mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

.field public offerId:Ljava/lang/String;

.field public openId:Ljava/lang/String;

.field public openKey:Ljava/lang/String;

.field public pf:Ljava/lang/String;

.field public pfKey:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public resData:[B

.field public resId:I

.field public reserv:Ljava/lang/String;

.field public saveValue:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public sessionType:Ljava/lang/String;

.field public zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mallType:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->h5Url:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->resId:I

    .line 130
    const-string v0, "common"

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->acctType:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->saveValue:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->isCanChange:Z

    .line 133
    iput v1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mallType:I

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->h5Url:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->remark:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    invoke-direct {v0, p0}, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;-><init>(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    .line 137
    new-instance v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    invoke-direct {v0, p0}, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;-><init>(Lcom/tencent/midas/api/request/APMidasBaseRequest;)V

    iput-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    .line 138
    return-void
.end method


# virtual methods
.method public getAcctType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->acctType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->h5Url:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCanChange()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->isCanChange:Z

    return v0
.end method

.method public getMallType()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mallType:I

    return v0
.end method

.method public getOfferId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getPf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    return-object v0
.end method

.method public getPfKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getResData()[B
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->resData:[B

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->resId:I

    return v0
.end method

.method public getReserv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->reserv:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->saveValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowListOtherNum()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iget-boolean v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    return v0
.end method

.method public getShowNum()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iget-boolean v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iget-object v0, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public setAcctType(Ljava/lang/String;)V
    .locals 0
    .param p1, "acctType"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->acctType:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setDiscountType(Ljava/lang/String;)V
    .locals 1
    .param p1, "discountType"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountType:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setDiscountUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "discountUrl"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discountUrl:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setDiscoutId(Ljava/lang/String;)V
    .locals 1
    .param p1, "discoutId"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->discoutId:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setDrmInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "drmInfo"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->drmInfo:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setExtras(Ljava/lang/String;)V
    .locals 1
    .param p1, "extras"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->extras:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setH5Url(Ljava/lang/String;)V
    .locals 0
    .param p1, "h5Url"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->h5Url:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setIsCanChange(Z)V
    .locals 0
    .param p1, "isCanChange"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->isCanChange:Z

    .line 221
    return-void
.end method

.method public setMallType(I)V
    .locals 0
    .param p1, "mallType"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mallType:I

    .line 272
    return-void
.end method

.method public setOfferId(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerId"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->offerId:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setOpenKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "openKey"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->openKey:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPayChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "payChannel"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->mpInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasMPInfo;->payChannel:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setPf(Ljava/lang/String;)V
    .locals 0
    .param p1, "pf"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pf:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setPfKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "pfKey"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->pfKey:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->remark:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setResData([B)V
    .locals 0
    .param p1, "resData"    # [B

    .prologue
    .line 236
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->resData:[B

    .line 237
    return-void
.end method

.method public setResId(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->resId:I

    .line 229
    return-void
.end method

.method public setReserv(Ljava/lang/String;)V
    .locals 0
    .param p1, "reserv"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->reserv:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setSaveValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "saveValue"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->saveValue:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setSessionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->sessionType:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setShowListOtherNum(Z)V
    .locals 1
    .param p1, "isShowListOtherNum"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iput-boolean p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowListOtherNum:Z

    .line 352
    return-void
.end method

.method public setShowNum(Z)V
    .locals 1
    .param p1, "isShowNum"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iput-boolean p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->isShowNum:Z

    .line 344
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->extendInfo:Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;

    iput-object p1, v0, Lcom/tencent/midas/api/request/APMidasBaseRequest$APMidasExtendInfo;->unit:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setZoneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/tencent/midas/api/request/APMidasBaseRequest;->zoneId:Ljava/lang/String;

    .line 189
    return-void
.end method
