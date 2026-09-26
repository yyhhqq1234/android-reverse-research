.class public Lcom/netease/epay/sdk/pay/ui/card/g;
.super Lcom/netease/epay/sdk/pay/ui/card/d;
.source "AddCardPay3SmsPresenter.java"


# instance fields
.field m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

.field n:Landroid/widget/TextView;

.field private o:Lcom/netease/epay/sdk/pay/ui/card/f;

.field private p:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/netease/epay/sdk/pay/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/pay/b",
            "<",
            "Lcom/netease/epay/sdk/pay/model/PayingResponse;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/c;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;-><init>(Lcom/netease/epay/sdk/pay/ui/card/c;)V

    .line 117
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/g$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/g$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/g;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->p:Lcom/netease/epay/sdk/NetCallback;

    .line 142
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/g$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/g$2;-><init>(Lcom/netease/epay/sdk/pay/ui/card/g;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->q:Lcom/netease/epay/sdk/pay/b;

    .line 192
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/g$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/g$3;-><init>(Lcom/netease/epay/sdk/pay/ui/card/g;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->r:Lcom/netease/epay/sdk/NetCallback;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/NetCallback;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->r:Lcom/netease/epay/sdk/NetCallback;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/pay/ui/card/f;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/pay/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->q:Lcom/netease/epay/sdk/pay/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btn_send_sms:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tv_addcardsms_top_info:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->n:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0, v1, v2, p0}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4\n\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/f;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/pay/ui/card/f;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    .line 58
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 209
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, ""

    .line 212
    :try_start_0
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    const-string v2, "psw"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v1, v2, v0}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/base/view/SendSmsButton;Ljava/lang/String;)Z

    .line 218
    :cond_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 72
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v1, "authCode"

    invoke-static {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v1, "chargeId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    const-string v1, "attach"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const-string v1, "hongbaoIds"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedRedPaperId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v1, "voucherId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v1, "promotionId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v1, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v1, "sign_pay.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->q:Lcom/netease/epay/sdk/pay/b;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 83
    return-void
.end method

.method public sendSms()V
    .locals 5

    .prologue
    .line 92
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v1, "cardNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_3
    const-string v1, "hongbaoIds"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedRedPaperId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "voucherId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v1, "promotionId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v1, "setedShortPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/pay/ui/card/f;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v1, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v1, "send_sign_pay_authcode.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/card/g;->p:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 115
    return-void
.end method
