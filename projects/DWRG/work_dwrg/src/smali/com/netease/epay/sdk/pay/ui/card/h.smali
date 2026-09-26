.class public Lcom/netease/epay/sdk/pay/ui/card/h;
.super Lcom/netease/epay/sdk/pay/ui/card/d;
.source "OnlyAddCard3SmsPresenter.java"


# instance fields
.field m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

.field n:Landroid/widget/TextView;

.field private o:Lcom/netease/epay/sdk/pay/ui/card/f;

.field private p:Lcom/netease/epay/sdk/base/model/SignCardData;

.field private q:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignCardData;",
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

.field private s:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/c;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;-><init>(Lcom/netease/epay/sdk/pay/ui/card/c;)V

    .line 75
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/h$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/h$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/h;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->q:Lcom/netease/epay/sdk/NetCallback;

    .line 93
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/h$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/h$2;-><init>(Lcom/netease/epay/sdk/pay/ui/card/h;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->r:Lcom/netease/epay/sdk/NetCallback;

    .line 147
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/h$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/h$3;-><init>(Lcom/netease/epay/sdk/pay/ui/card/h;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->s:Lcom/netease/epay/sdk/NetCallback;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/NetCallback;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->r:Lcom/netease/epay/sdk/NetCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/h;Lcom/netease/epay/sdk/base/model/SignCardData;)Lcom/netease/epay/sdk/base/model/SignCardData;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->p:Lcom/netease/epay/sdk/base/model/SignCardData;

    return-object p1
.end method

.method private a(Lcom/netease/epay/sdk/base/model/SignCardData;)V
    .locals 3

    .prologue
    .line 108
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 109
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SignCardData;->cardInfo:Lcom/netease/epay/sdk/base/model/Card;

    if-eqz v1, :cond_0

    const-string v1, "USEABLE"

    iget-object v2, p1, Lcom/netease/epay/sdk/base/model/SignCardData;->cardInfo:Lcom/netease/epay/sdk/base/model/Card;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/Card;->useable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SignCardData;->cardInfo:Lcom/netease/epay/sdk/base/model/Card;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/pay/ui/card/f;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/card/h;Lcom/netease/epay/sdk/base/model/SignCardData;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/h;->a(Lcom/netease/epay/sdk/base/model/SignCardData;)V

    return-void
.end method

.method static synthetic c(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/base/model/SignCardData;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->p:Lcom/netease/epay/sdk/base/model/SignCardData;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->btn_send_sms:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/SendSmsButton;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    .line 55
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tv_addcardsms_top_info:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->n:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0, v1, v2, p0}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/pay/ui/card/c;Lcom/netease/epay/sdk/base/view/SendSmsButton;Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;)Z

    .line 57
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/ui/card/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4\n\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/f;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/pay/ui/card/f;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    .line 50
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/card/d;->a(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 169
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, ""

    .line 172
    :try_start_0
    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    const-string v2, "psw"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v1, v2, v0}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Lcom/netease/epay/sdk/base/view/SendSmsButton;Ljava/lang/String;)Z

    .line 178
    :cond_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v1, "authCode"

    invoke-static {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v1, "attach"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v1, "hongbaoIds"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedRedPaperId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v1, "voucherId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v1, "promotionId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v1, "sign.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->q:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 73
    return-void
.end method

.method public sendSms()V
    .locals 5

    .prologue
    .line 126
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 127
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const-string v1, "cardNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_0
    const-string v1, "quickPayId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :cond_2
    const-string v1, "setedShortPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->o:Lcom/netease/epay/sdk/pay/ui/card/f;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/pay/ui/card/f;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v1, "send_sign_authcode.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/card/h;->s:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 145
    return-void
.end method
