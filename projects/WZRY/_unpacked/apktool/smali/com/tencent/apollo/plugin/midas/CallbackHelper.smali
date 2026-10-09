.class public Lcom/tencent/apollo/plugin/midas/CallbackHelper;
.super Landroid/app/Activity;
.source "CallbackHelper.java"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasPayCallBack;
.implements Lcom/tencent/midas/api/IAPMidasNetCallBack;
.implements Lcom/pay/api/IAPPayOpenServiceCallBack;


# instance fields
.field private final APO_PAY_MP_STATUS_ERR:I

.field private final APO_PAY_MP_STATUS_STOP:I

.field private final APO_PAY_MP_STATUS_SUCC:I

.field private _serviceptr:I

.field private _tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const-string v0, "[CallbackHelper]"

    iput-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->APO_PAY_MP_STATUS_SUCC:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->APO_PAY_MP_STATUS_ERR:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->APO_PAY_MP_STATUS_STOP:I

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "ptr"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const-string v0, "[CallbackHelper]"

    iput-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->APO_PAY_MP_STATUS_SUCC:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->APO_PAY_MP_STATUS_ERR:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->APO_PAY_MP_STATUS_STOP:I

    .line 27
    iput p1, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    .line 28
    return-void
.end method

.method private native cbMidasNetCallback(IILjava/lang/String;ILjava/lang/String;)V
.end method

.method private native cbMidasPayCallback(IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native cbMidasPayNeedLogin(I)V
.end method


# virtual methods
.method public MidasNetError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramInt"    # I
    .param p3, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MidasNetError]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v1, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->cbMidasNetCallback(IILjava/lang/String;ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public MidasNetFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[MidasNetFinish]:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v1, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->cbMidasNetCallback(IILjava/lang/String;ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public MidasNetStop(Ljava/lang/String;)V
    .locals 6
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[MidasNetStop]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v1, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->cbMidasNetCallback(IILjava/lang/String;ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 13
    .param p1, "paramAPMidasResponse"    # Lcom/tencent/midas/api/APMidasResponse;

    .prologue
    .line 46
    iget v1, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    .line 47
    iget v2, p1, Lcom/tencent/midas/api/APMidasResponse;->resultCode:I

    .line 48
    iget v3, p1, Lcom/tencent/midas/api/APMidasResponse;->resultInerCode:I

    .line 49
    iget v4, p1, Lcom/tencent/midas/api/APMidasResponse;->realSaveNum:I

    .line 50
    iget v5, p1, Lcom/tencent/midas/api/APMidasResponse;->payChannel:I

    .line 51
    iget v6, p1, Lcom/tencent/midas/api/APMidasResponse;->payState:I

    .line 52
    iget v7, p1, Lcom/tencent/midas/api/APMidasResponse;->provideState:I

    .line 53
    iget-object v8, p1, Lcom/tencent/midas/api/APMidasResponse;->resultMsg:Ljava/lang/String;

    .line 54
    iget-object v9, p1, Lcom/tencent/midas/api/APMidasResponse;->extendInfo:Ljava/lang/String;

    .line 55
    iget-object v10, p1, Lcom/tencent/midas/api/APMidasResponse;->payReserve1:Ljava/lang/String;

    .line 56
    iget-object v11, p1, Lcom/tencent/midas/api/APMidasResponse;->payReserve2:Ljava/lang/String;

    .line 57
    iget-object v12, p1, Lcom/tencent/midas/api/APMidasResponse;->payReserve3:Ljava/lang/String;

    move-object v0, p0

    .line 46
    invoke-direct/range {v0 .. v12}, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->cbMidasPayCallback(IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public MidasPayNeedLogin()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    invoke-direct {p0, v0}, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->cbMidasPayNeedLogin(I)V

    .line 41
    return-void
.end method

.method public PayOpenServiceCallBack(Lcom/pay/api/APPayResponseInfo;)V
    .locals 2
    .param p1, "paramAPPayResponseInfo"    # Lcom/pay/api/APPayResponseInfo;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    const-string v1, "[PayOpenServiceCallBack]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public PayOpenServiceNeedLogin()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_tag:Ljava/lang/String;

    const-string v1, "[PayOpenServiceNeedLogin]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v0, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    invoke-direct {p0, v0}, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->cbMidasPayNeedLogin(I)V

    .line 84
    return-void
.end method

.method public SetPtr(I)V
    .locals 0
    .param p1, "ptr"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/tencent/apollo/plugin/midas/CallbackHelper;->_serviceptr:I

    .line 21
    return-void
.end method
