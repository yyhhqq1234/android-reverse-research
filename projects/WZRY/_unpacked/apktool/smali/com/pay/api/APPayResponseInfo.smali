.class public Lcom/pay/api/APPayResponseInfo;
.super Ljava/lang/Object;
.source "APPayResponseInfo.java"


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

.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_ERROR:I = -0x1

.field public static final PAYRESULT_PARAMERROR:I = 0x3

.field public static final PAYRESULT_SUCC:I = 0x0

.field public static final PAYSTATE_PAYCANCEL:I = 0x1

.field public static final PAYSTATE_PAYERROR:I = 0x2

.field public static final PAYSTATE_PAYSUCC:I = 0x0

.field public static final PAYSTATE_PAYUNKOWN:I = -0x1


# instance fields
.field public extendInfo:Ljava/lang/String;

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

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->resultMsg:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->extendInfo:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve1:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve2:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve3:Ljava/lang/String;

    .line 73
    iput v2, p0, Lcom/pay/api/APPayResponseInfo;->realSaveNum:I

    .line 75
    iput v1, p0, Lcom/pay/api/APPayResponseInfo;->resultCode:I

    .line 77
    iput v2, p0, Lcom/pay/api/APPayResponseInfo;->resultInerCode:I

    .line 79
    iput v1, p0, Lcom/pay/api/APPayResponseInfo;->payChannel:I

    .line 81
    iput v1, p0, Lcom/pay/api/APPayResponseInfo;->payState:I

    .line 83
    iput v1, p0, Lcom/pay/api/APPayResponseInfo;->provideState:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->resultMsg:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->extendInfo:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve1:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve2:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve3:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 97
    iput v1, p0, Lcom/pay/api/APPayResponseInfo;->realSaveNum:I

    .line 99
    iput v0, p0, Lcom/pay/api/APPayResponseInfo;->resultCode:I

    .line 101
    iput v1, p0, Lcom/pay/api/APPayResponseInfo;->resultInerCode:I

    .line 103
    iput v0, p0, Lcom/pay/api/APPayResponseInfo;->payChannel:I

    .line 105
    iput v0, p0, Lcom/pay/api/APPayResponseInfo;->payState:I

    .line 107
    iput v0, p0, Lcom/pay/api/APPayResponseInfo;->provideState:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->resultMsg:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->extendInfo:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve1:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve2:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/pay/api/APPayResponseInfo;->payReserve3:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setExtendInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extendInfo"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/pay/api/APPayResponseInfo;->extendInfo:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setPayChannel(I)V
    .locals 0
    .param p1, "payChannel"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/pay/api/APPayResponseInfo;->payChannel:I

    .line 135
    return-void
.end method

.method public setPayReserve1(Ljava/lang/String;)V
    .locals 0
    .param p1, "payReserve1"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pay/api/APPayResponseInfo;->payReserve1:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setPayReserve2(Ljava/lang/String;)V
    .locals 0
    .param p1, "payReserve2"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/pay/api/APPayResponseInfo;->payReserve2:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setPayReserve3(Ljava/lang/String;)V
    .locals 0
    .param p1, "payReserve3"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/pay/api/APPayResponseInfo;->payReserve3:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPayState(I)V
    .locals 0
    .param p1, "payState"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/pay/api/APPayResponseInfo;->payState:I

    .line 139
    return-void
.end method

.method public setProvideState(I)V
    .locals 0
    .param p1, "provideState"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/pay/api/APPayResponseInfo;->provideState:I

    .line 143
    return-void
.end method

.method public setRealSaveNum(I)V
    .locals 0
    .param p1, "realSaveNum"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/pay/api/APPayResponseInfo;->realSaveNum:I

    .line 131
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/pay/api/APPayResponseInfo;->resultCode:I

    .line 123
    return-void
.end method

.method public setResultInerCode(I)V
    .locals 0
    .param p1, "resultInerCode"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/pay/api/APPayResponseInfo;->resultInerCode:I

    .line 127
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/pay/api/APPayResponseInfo;->resultMsg:Ljava/lang/String;

    .line 147
    return-void
.end method
