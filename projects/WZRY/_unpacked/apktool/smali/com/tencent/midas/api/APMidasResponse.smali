.class public Lcom/tencent/midas/api/APMidasResponse;
.super Ljava/lang/Object;
.source "APMidasResponse.java"


# static fields
.field public static final PAYCHANEL_ACCT_QBQD:I = 0xb

.field public static final PAYCHANEL_ACCT_QDQB:I = 0x0

.field public static final PAYCHANEL_GOLDCOUPONS:I = 0xa

.field public static final PAYCHANEL_HF:I = 0x9

.field public static final PAYCHANEL_MCARD:I = 0x5

.field public static final PAYCHANEL_QQCARD:I = 0x4

.field public static final PAYCHANEL_TENPAY_BANK:I = 0x2

.field public static final PAYCHANEL_TENPAY_CFT:I = 0x1

.field public static final PAYCHANEL_TENPAY_KJ:I = 0x3

.field public static final PAYCHANEL_UNKOWN:I = -0x1

.field public static final PAYCHANEL_WECHAT:I = 0x8

.field public static final PAYCHANEL_YB:I = 0x7

.field public static final PAYPROVIDESTATE_SUCC:I = 0x0

.field public static final PAYPROVIDESTATE_UNKOWN:I = -0x1

.field public static final PAYRESULT_ALREADY_OWNED:I = 0x487

.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_ERROR:I = -0x1

.field public static final PAYRESULT_PARAMERROR:I = 0x3

.field public static final PAYRESULT_PENDING:I = 0x65

.field public static final PAYRESULT_SUCC:I = 0x0

.field public static final PAYRESULT_UNKOWN:I = 0x64

.field public static final PAYSTATE_PAYCANCEL:I = 0x1

.field public static final PAYSTATE_PAYERROR:I = 0x2

.field public static final PAYSTATE_PAYSUCC:I = 0x0

.field public static final PAYSTATE_PAYUNKOWN:I = -0x1


# instance fields
.field public extendInfo:Ljava/lang/String;

.field public mAPPurchase:Lcom/tencent/midas/api/request/APPurchase;

.field public payChannel:I

.field public payReserve1:Ljava/lang/String;

.field public payReserve2:Ljava/lang/String;

.field public payReserve3:Ljava/lang/String;

.field public payState:I

.field public provideState:I

.field public realSaveNum:I

.field public resultCode:I

.field public resultInerCode:I

.field public resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    .line 135
    iput v2, p0, Lcom/tencent/midas/api/APMidasResponse;->realSaveNum:I

    .line 137
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 139
    iput v2, p0, Lcom/tencent/midas/api/APMidasResponse;->resultInerCode:I

    .line 141
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payChannel:I

    .line 143
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payState:I

    .line 145
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->provideState:I

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/tencent/midas/api/APMidasResponse;->mAPPurchase:Lcom/tencent/midas/api/request/APPurchase;

    .line 158
    return-void
.end method


# virtual methods
.method public getExtendInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPayChannel()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payChannel:I

    return v0
.end method

.method public getPayReserve1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    return-object v0
.end method

.method public getPayReserve2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    return-object v0
.end method

.method public getPayReserve3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    return-object v0
.end method

.method public getPayState()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payState:I

    return v0
.end method

.method public getProvideState()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->provideState:I

    return v0
.end method

.method public getRealSaveNum()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->realSaveNum:I

    return v0
.end method

.method public getReceipt()Lcom/tencent/midas/api/request/APPurchase;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->mAPPurchase:Lcom/tencent/midas/api/request/APPurchase;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    return v0
.end method

.method public getResultInerCode()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultInerCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 164
    iput v1, p0, Lcom/tencent/midas/api/APMidasResponse;->realSaveNum:I

    .line 166
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 168
    iput v1, p0, Lcom/tencent/midas/api/APMidasResponse;->resultInerCode:I

    .line 170
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payChannel:I

    .line 172
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payState:I

    .line 174
    iput v0, p0, Lcom/tencent/midas/api/APMidasResponse;->provideState:I

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/api/APMidasResponse;->mAPPurchase:Lcom/tencent/midas/api/request/APPurchase;

    .line 188
    return-void
.end method

.method public setExtendInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendInfo"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setPayChannel(I)V
    .locals 0
    .param p1, "payChannel"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/tencent/midas/api/APMidasResponse;->payChannel:I

    .line 220
    return-void
.end method

.method public setPayReserve1(Ljava/lang/String;)V
    .locals 0
    .param p1, "payReserve1"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setPayReserve2(Ljava/lang/String;)V
    .locals 0
    .param p1, "payReserve2"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setPayReserve3(Ljava/lang/String;)V
    .locals 0
    .param p1, "payReserve3"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setPayState(I)V
    .locals 0
    .param p1, "payState"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/tencent/midas/api/APMidasResponse;->payState:I

    .line 228
    return-void
.end method

.method public setProvideState(I)V
    .locals 0
    .param p1, "provideState"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/tencent/midas/api/APMidasResponse;->provideState:I

    .line 236
    return-void
.end method

.method public setRealSaveNum(I)V
    .locals 0
    .param p1, "realSaveNum"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/tencent/midas/api/APMidasResponse;->realSaveNum:I

    .line 212
    return-void
.end method

.method public setReceipt(Lcom/tencent/midas/api/request/APPurchase;)V
    .locals 0
    .param p1, "receipt"    # Lcom/tencent/midas/api/request/APPurchase;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasResponse;->mAPPurchase:Lcom/tencent/midas/api/request/APPurchase;

    .line 284
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 196
    return-void
.end method

.method public setResultInerCode(I)V
    .locals 0
    .param p1, "resultInerCode"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/tencent/midas/api/APMidasResponse;->resultInerCode:I

    .line 204
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 244
    return-void
.end method
