.class public Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;
.super Landroid/app/Activity;
.source "APPayGameServiceCallBack.java"

# interfaces
.implements Lcom/pay/api/IAPPayGameServiceCallBack;


# instance fields
.field private m_observer:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, "[IAPPayGameServiceCallBack]"

    iput-object v0, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->tag:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private native cbPayGameNeedLogin(I)V
.end method

.method private native cbPayGameServiceCallBack(ILcom/pay/api/APPayResponseInfo;)V
.end method


# virtual methods
.method public PayGameNeedLogin()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->tag:Ljava/lang/String;

    const-string v1, "PayGameNeedLogin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget v0, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->m_observer:I

    invoke-direct {p0, v0}, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->cbPayGameNeedLogin(I)V

    .line 36
    return-void
.end method

.method public PayGameServiceCallBack(Lcom/pay/api/APPayResponseInfo;)V
    .locals 3
    .param p1, "payResponseInfo"    # Lcom/pay/api/APPayResponseInfo;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PayGameServiceCallBack:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/pay/api/APPayResponseInfo;->resultMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/pay/api/APPayResponseInfo;->payState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "providstat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/pay/api/APPayResponseInfo;->provideState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/pay/api/APPayResponseInfo;->resultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realSaveNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/pay/api/APPayResponseInfo;->realSaveNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->m_observer:I

    invoke-direct {p0, v0, p1}, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->cbPayGameServiceCallBack(ILcom/pay/api/APPayResponseInfo;)V

    .line 44
    return-void
.end method

.method public SetPtr(I)V
    .locals 3
    .param p1, "ptr"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->m_observer:I

    .line 27
    iget-object v0, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get ptr:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tsf4g/apollo/pay/APPayGameServiceCallBack;->m_observer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
