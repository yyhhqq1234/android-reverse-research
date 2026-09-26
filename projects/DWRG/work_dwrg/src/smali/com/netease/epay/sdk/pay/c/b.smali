.class public Lcom/netease/epay/sdk/pay/c/b;
.super Ljava/lang/Object;
.source "EpayPayFragPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/pay/ui/l$a;


# instance fields
.field a:Lcom/netease/epay/sdk/pay/ui/l;

.field private b:Lcom/netease/epay/sdk/base/ui/SdkActivity;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/l;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/l;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 82
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-direct {v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/PayController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 86
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 54
    .line 56
    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getNewDiscountAmount()Ljava/math/BigDecimal;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/math/BigDecimal;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 58
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ltz v1, :cond_0

    .line 60
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    move-object v1, v0

    move v8, v7

    .line 65
    :goto_0
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hasDeduction:Z

    if-eqz v0, :cond_1

    move v5, v7

    .line 67
    :goto_1
    if-eqz v5, :cond_3

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    move v3, v2

    .line 68
    :goto_2
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 69
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    .line 70
    iget-boolean v4, v0, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionType:Ljava/lang/String;

    const-string v4, "RANDOM"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v7

    .line 76
    :goto_3
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uffe5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\uffe5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/c/b;->d()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    .line 76
    invoke-virtual/range {v0 .. v8}, Lcom/netease/epay/sdk/pay/ui/l;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 78
    return-void

    :cond_0
    move-object v1, v0

    move v8, v2

    .line 62
    goto :goto_0

    :cond_1
    move v5, v2

    .line 65
    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    move-object v1, v0

    move v8, v7

    goto/16 :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    const-string v0, "challengeType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 96
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    invoke-static {v1, v0, v4}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 101
    :cond_1
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-gez v0, :cond_2

    .line 102
    const-string v0, "payMethod"

    const-string v3, "balance"

    invoke-static {v1, v0, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string v0, "balance"

    invoke-static {v2, v0}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getRsaJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    const-string v2, "rsa"

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/b;->a:Lcom/netease/epay/sdk/pay/ui/l;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/pay/ui/l;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/pay/c/b$1;

    invoke-direct {v4, p0, v1}, Lcom/netease/epay/sdk/pay/c/b$1;-><init>(Lcom/netease/epay/sdk/pay/c/b;Lorg/json/JSONObject;)V

    invoke-static {v2, v3, v0, v4}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 115
    :goto_2
    const-string v0, "hongbaoIds"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedRedPaperId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v0, "voucherId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    const-string v0, "promotionId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v0, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v0, "pay.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    new-instance v4, Lcom/netease/epay/sdk/pay/c/b$2;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/pay/c/b$2;-><init>(Lcom/netease/epay/sdk/pay/c/b;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    goto :goto_0

    .line 113
    :cond_2
    const-string v0, "payMethod"

    const-string v2, "quickpay"

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 149
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/netease/epay/sdk/pay/ui/c;->a()Lcom/netease/epay/sdk/pay/ui/c;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/b;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 154
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ltz v0, :cond_0

    .line 159
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankCardDesp(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 162
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 163
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->getBalancePayingDesp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    .line 167
    const-string v0, "NOT_ACTIVE"

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->compareTo(Ljava/math/BigDecimal;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->getBalancePayingDesp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->hasCards()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankCardDesp(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method
