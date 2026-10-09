.class public Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper;
.super Ljava/lang/Object;
.source "PayTableShowConfigHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v0, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$EbankInfo$Ebank;

    .line 2
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    .line 3
    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    iput-object v2, p0, Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;->realPay:Ljava/math/BigDecimal;

    .line 7
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    .line 8
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v2, v2, Lcom/netease/epay/sdk/base/model/Card;

    if-eqz v2, :cond_0

    .line 11
    new-instance v2, Ljava/math/BigDecimal;

    const-string v5, "0.01"

    invoke-direct {v2, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;->realPay:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 18
    :goto_1
    new-instance v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;

    invoke-direct {v5}, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;-><init>()V

    .line 19
    sget-object v6, Lcom/netease/epay/sdk/base/core/BaseData;->orderCouponDesc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    iput-boolean v6, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showDiscount:Z

    .line 20
    sget-object v6, Lcom/netease/epay/sdk/base/core/BaseData;->orderCouponDesc:Ljava/lang/String;

    iput-object v6, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->discountDesc:Ljava/lang/String;

    .line 21
    sget-object v6, Lcom/netease/epay/sdk/base/core/BaseData;->payReturnCouponDesc:Ljava/lang/String;

    iput-object v6, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->payReturnCouponDesc:Ljava/lang/String;

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 22
    :goto_3
    iput-boolean v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showPaySelectorVisible:Z

    .line 24
    iget-object v0, p0, Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;->realPay:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showOrderAmount:Z

    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;->realPay:Ljava/math/BigDecimal;

    iput-object v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->realPayAmount:Ljava/math/BigDecimal;

    .line 26
    iput-object v1, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->orderAmount:Ljava/math/BigDecimal;

    .line 27
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper;->getCurrentSelectedPayment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->bankCardDesc:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    if-eqz v1, :cond_5

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;->tips:Ljava/lang/String;

    iput-object v1, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showPayTips:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    .line 31
    iput-object v1, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showPayTips:Ljava/lang/String;

    :goto_5
    if-eqz v0, :cond_6

    .line 34
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->ebankCardLabel:Ljava/lang/String;

    .line 38
    :cond_6
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->showInstallmentInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    iput-boolean v3, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showPaySelectorVisible:Z

    .line 40
    iput-boolean v4, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->showInstallmentInfo:Z

    .line 41
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->getInstallmentDec()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->installmentInfo:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->getInstallmentDetail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->installmentDetail:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->aggrementInfo:Ljava/lang/String;

    iput-object v0, v5, Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;->agreementUrl:Ljava/lang/String;

    .line 46
    :cond_7
    iput-object v5, p0, Lcom/netease/epay/sdk/base_pay/PayTableShowConfigHelper$Params;->config:Lcom/netease/epay/sdk/base_pay/model/PayTableShowConfig;

    return-void
.end method

.method private static getCurrentSelectedPayment()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v1, v0, Lcom/netease/epay/sdk/base/model/Card;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/netease/epay/sdk/base/model/Card;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankCardDesp(Lcom/netease/epay/sdk/base/model/Card;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;->getBalancePayingDesp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_1
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_2
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$PasswdFreePayInfo;

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_3
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/biz/PayChooserImpl;

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    goto :goto_0

    .line 26
    :cond_4
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$EbankInfo$Ebank;

    if-eqz v1, :cond_7

    .line 27
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_5
    :goto_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    const-string v1, "NOT_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->orderAmount:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;->compareTo(Ljava/math/BigDecimal;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;->getBalancePayingDesp()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_6
    invoke-static {}, Lcom/netease/epay/sdk/base/model/Card;->hasCards()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCard(I)Lcom/netease/epay/sdk/base/model/Card;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->getBankCardDesp(Lcom/netease/epay/sdk/base/model/Card;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "EP1301_P"

    const-string v1, "\u6536\u94f6\u53f0\u9009\u4e2d\u652f\u4ed8\u65b9\u5f0f\u5c55\u793a\u4fe1\u606f\u4e3a\u7a7a"

    .line 38
    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method
