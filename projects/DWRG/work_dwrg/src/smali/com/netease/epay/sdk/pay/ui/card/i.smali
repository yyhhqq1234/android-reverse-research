.class public Lcom/netease/epay/sdk/pay/ui/card/i;
.super Ljava/lang/Object;
.source "PayAddCardSecondPresenter.java"


# instance fields
.field a:Lcom/netease/epay/sdk/pay/ui/card/b;

.field b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/pay/model/IsSupportBindPay;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/netease/epay/sdk/NetCallback;
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
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->k:Z

    .line 92
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/i$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/i$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/i;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->l:Lcom/netease/epay/sdk/NetCallback;

    .line 128
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/card/i$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/card/i$2;-><init>(Lcom/netease/epay/sdk/pay/ui/card/i;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->m:Lcom/netease/epay/sdk/NetCallback;

    .line 41
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    .line 42
    invoke-virtual {p1}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 44
    invoke-virtual {p1}, Lcom/netease/epay/sdk/pay/ui/card/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    const-string v2, "addcard_card_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->g:Ljava/lang/String;

    .line 47
    const-string v2, "addcard_is_credit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->d:Z

    .line 49
    const-string v2, "addcard_card_number"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->f:Ljava/lang/String;

    .line 50
    const-string v2, "addcard_bank_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    .line 51
    const-string v2, "addcard_account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->i:Ljava/lang/String;

    .line 52
    const-string v2, "addcard_support_banks"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->j:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->h:Z

    .line 55
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/i;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/card/i;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/card/i;)Lcom/netease/epay/sdk/NetCallback;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->m:Lcom/netease/epay/sdk/NetCallback;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/epay/sdk/pay/ui/card/b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/netease/epay/sdk/base/model/SupportBanks;)V
    .locals 2

    .prologue
    .line 75
    const-string v0, "credit"

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->d:Z

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->d:Z

    if-eqz v0, :cond_0

    const-string v0, " \u4fe1\u7528\u5361"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankId:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->g:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/b;->a(Ljava/lang/String;)V

    .line 80
    return-void

    .line 76
    :cond_0
    const-string v0, " \u50a8\u84c4\u5361"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/netease/epay/sdk/NetCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string v0, "send_sign_authcode.htm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 106
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :goto_0
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string v1, "cardNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/ui/card/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/pay/ui/card/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/pay/ui/card/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    iget-boolean v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->d:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/pay/ui/card/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_0
    const-string v1, "hongbaoIds"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedRedPaperId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v1, "voucherId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v1, "promotionId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v1, "setedShortPwd"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {p1, v0, v4, v1, p2}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 126
    return-void

    .line 108
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "credit,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getInstance_SeclectMode(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "chooseCardBank"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void

    .line 64
    :cond_1
    const-string v0, "debit,"

    goto :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v1, "is_support_quick_and_pay.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/ui/card/i;->l:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0
.end method
