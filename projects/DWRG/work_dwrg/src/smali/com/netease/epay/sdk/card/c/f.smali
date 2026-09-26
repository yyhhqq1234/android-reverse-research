.class public Lcom/netease/epay/sdk/card/c/f;
.super Ljava/lang/Object;
.source "OnlyAddCardSecondPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/card/ui/b$a;


# instance fields
.field a:Lcom/netease/epay/sdk/card/ui/b;

.field b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

.field c:Ljava/lang/String;

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/card/ui/b;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/netease/epay/sdk/card/c/f$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/card/c/f$1;-><init>(Lcom/netease/epay/sdk/card/c/f;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->i:Lcom/netease/epay/sdk/NetCallback;

    .line 42
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    .line 43
    invoke-virtual {p1}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 45
    invoke-virtual {p1}, Lcom/netease/epay/sdk/card/ui/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    const-string v2, "addcard_card_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->g:Ljava/lang/String;

    .line 48
    const-string v2, "addcard_is_credit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/epay/sdk/card/c/f;->d:Z

    .line 50
    const-string v2, "addcard_card_number"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->f:Ljava/lang/String;

    .line 51
    const-string v2, "addcard_bank_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    .line 52
    const-string v2, "addcard_account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->j:Ljava/lang/String;

    .line 53
    const-string v2, "addcard_support_banks"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->k:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/c/f;->h:Z

    .line 56
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "send_sign_authcode.htm"

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->i:Lcom/netease/epay/sdk/NetCallback;

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/card/c/f;->a(Ljava/lang/String;Lcom/netease/epay/sdk/NetCallback;)V

    .line 62
    return-void
.end method

.method public a(Lcom/netease/epay/sdk/base/model/SupportBanks;)V
    .locals 2

    .prologue
    .line 77
    const-string v0, "credit"

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SupportBanks;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/card/c/f;->d:Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/f;->d:Z

    if-eqz v0, :cond_0

    const-string v0, " \u4fe1\u7528\u5361"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankId:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->g:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/card/ui/b;->a(Ljava/lang/String;)V

    .line 82
    return-void

    .line 78
    :cond_0
    const-string v0, " \u50a8\u84c4\u5361"

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/f;->e:Ljava/lang/String;

    .line 144
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

    .line 88
    const-string v0, "send_sign_authcode.htm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    :goto_0
    const-string v1, "bankId"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v1, "cardNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v1, "mobilePhone"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    iget-object v2, v2, Lcom/netease/epay/sdk/card/ui/b;->b:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v1, "cardAccountName"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/card/ui/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v1, "certNo"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/card/ui/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-boolean v1, p0, Lcom/netease/epay/sdk/card/c/f;->d:Z

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "validDate"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v1, "cvv2"

    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/card/ui/b;->a()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContent(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_0
    const-string v1, "setedShortPwd"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {p1, v0, v4, v1, p2}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 105
    return-void

    .line 91
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/card/AddOrVerifyCardController;->a()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    const-string v1, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/f;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "credit,"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->getInstance_SeclectMode(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "chooseCardBank"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 72
    return-void

    .line 68
    :cond_1
    const-string v0, "debit,"

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/f;->a:Lcom/netease/epay/sdk/card/ui/b;

    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/epay/sdk/card/c/f;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/netease/epay/sdk/card/c/f;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/card/c/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/epay/sdk/card/ui/b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
