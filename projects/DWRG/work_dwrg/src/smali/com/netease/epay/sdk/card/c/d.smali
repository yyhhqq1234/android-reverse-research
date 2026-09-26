.class public Lcom/netease/epay/sdk/card/c/d;
.super Lcom/netease/epay/sdk/card/c/a;
.source "ForgetPwdHasCards3SmsPresenter.java"


# instance fields
.field m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/c;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/a;-><init>(Lcom/netease/epay/sdk/card/ui/c;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->tv_addcardsms_top_info:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->m:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4\n\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/d;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->btn_send_sms:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->sendSms(Z)V

    .line 50
    invoke-virtual {v0, p0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->setListener(Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    const-string v1, "authCode"

    invoke-static {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v1, "attach"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v1, "validate_quickPay_authcode.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/d;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/d$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/d$1;-><init>(Lcom/netease/epay/sdk/card/c/d;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 76
    return-void
.end method

.method public sendSms()V
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/d;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "cardNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_0
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/d;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/d;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_1
    const-string v1, "send_validate_quickPay_authcode.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/d;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/d$2;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/d$2;-><init>(Lcom/netease/epay/sdk/card/c/d;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 114
    return-void
.end method
