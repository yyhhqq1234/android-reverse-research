.class public Lcom/netease/epay/sdk/card/c/e;
.super Lcom/netease/epay/sdk/card/c/a;
.source "OnlyAddCard3SmsPresenter.java"


# instance fields
.field m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

.field n:Landroid/widget/TextView;

.field private o:Lcom/netease/epay/sdk/card/c/c;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/c;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/card/c/a;-><init>(Lcom/netease/epay/sdk/card/ui/c;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/card/c/e;)Lcom/netease/epay/sdk/card/c/c;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->o:Lcom/netease/epay/sdk/card/c/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->btn_send_sms:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 56
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/card/R$id;->tv_addcardsms_top_info:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->n:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->o:Lcom/netease/epay/sdk/card/c/c;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e;->l:Lcom/netease/epay/sdk/card/ui/c;

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0, v1, v2, p0}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/card/ui/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->o:Lcom/netease/epay/sdk/card/c/c;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/card/c/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4\n\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/card/c/a;->a(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/netease/epay/sdk/card/c/c;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/card/c/c;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/e;->o:Lcom/netease/epay/sdk/card/c/c;

    .line 51
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/card/c/a;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 143
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, ""

    .line 146
    :try_start_0
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    const-string v2, "psw"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e;->o:Lcom/netease/epay/sdk/card/c/c;

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v1, v2, v0}, Lcom/netease/epay/sdk/card/c/c;->a(Lcom/netease/epay/sdk/base/view/SendSmsButton;Ljava/lang/String;)Z

    .line 152
    :cond_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 66
    const-string v0, "authCode"

    invoke-static {v1, v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v0, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v0, "card"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;

    .line 69
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v2, "uuid"

    iget-object v0, v0, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_0
    const-string v0, "attach"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "sign.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/e;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/e$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/e$1;-><init>(Lcom/netease/epay/sdk/card/c/e;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 95
    return-void
.end method

.method public sendSms()V
    .locals 5

    .prologue
    .line 104
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "cardNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_0
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_2
    const-string v1, "setedShortPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/e;->o:Lcom/netease/epay/sdk/card/c/c;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/card/c/c;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v1, "send_sign_authcode.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/e;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/card/c/e$2;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/card/c/e$2;-><init>(Lcom/netease/epay/sdk/card/c/e;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 138
    return-void
.end method
