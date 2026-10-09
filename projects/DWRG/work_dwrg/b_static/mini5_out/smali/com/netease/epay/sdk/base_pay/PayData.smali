.class public Lcom/netease/epay/sdk/base_pay/PayData;
.super Ljava/lang/Object;
.source "PayData.java"


# static fields
.field public static accountShowName:Ljava/lang/String;

.field public static balanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

.field public static baseVerifyItemList:[Ljava/lang/String;

.field public static biometricsDisplayInfo:Lcom/netease/epay/sdk/base/model/BiometricsDisplayInfo;

.field public static checkBindMobileInfo:Lcom/netease/epay/sdk/base_pay/model/CheckBindMobileInfo;

.field public static combineBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

.field public static combineCardInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_pay/model/PayCard;",
            ">;"
        }
    .end annotation
.end field

.field public static combineGetPayAmount:Lcom/netease/epay/sdk/base_pay/model/GetPayAmount$Amount;

.field public static combineQuickPayId:Ljava/lang/String;

.field public static deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

.field public static ebankInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$EbankInfo;

.field public static firstBindCardInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/epay/sdk/base_pay/model/FirstBindCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static h5PaymentUrl:Ljava/lang/String;

.field public static installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

.field public static isCanSetFingerprintPay:Z

.field public static isCanUseFingerprintPay:Z

.field public static isOpenFingerprintPay:Z

.field public static isUseFingerprintOnce:Z

.field public static largeAmountPayInfo:Lcom/netease/epay/sdk/base_pay/model/LargeAmountPayInfo;

.field public static lastCheckPhonePayMethodTag:Ljava/lang/String;

.field public static mainAccountId:Ljava/lang/String;

.field public static mainOrderId:Ljava/lang/String;

.field public static needQueryVerifyItem:Z

.field public static newBindCardInfo:Lcom/netease/epay/sdk/base_pay/model/NewBindCardInfo;

.field public static nowBaseVerifyItem:Ljava/lang/String;

.field public static nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

.field public static nowVerifyPolicyIndex:I

.field public static openAutoRenewalSilent:Z

.field public static openPasswordFreeInfo:Lcom/netease/epay/sdk/base_pay/model/OpenPasswordFreeInfo;

.field public static passwdFreePayInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$PasswdFreePayInfo;

.field public static payMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static payingResp:Lcom/netease/epay/sdk/base_pay/model/PayingResponse;

.field public static prepayInfo:Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;

.field public static promoteLimitDto:Lcom/netease/epay/sdk/base_pay/model/HomeData$PromoteLimitDto;

.field public static pwdDelTimeStamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static pwdInputTimeStamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static riskVerifyDataCollectInfo:Lcom/netease/epay/sdk/base_pay/model/VerifyPolicys$RiskVerifyDataCollectInfo;

.field public static specificCardInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/epay/sdk/base_pay/model/SpecificCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static switchAccountPermit:Lcom/netease/epay/sdk/base_pay/model/SwitchAccountPermit;

.field public static toBindAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_pay/model/BindAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static todoFingerRequest:Lcom/netease/epay/sdk/base/network/IParamsCallback;

.field public static useBankJifenAsDefault:Z

.field public static walletBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->pwdInputTimeStamps:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->pwdDelTimeStamps:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->firstBindCardInfos:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->specificCardInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBiometricsInfo(Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->biometricsDisplayInfo:Lcom/netease/epay/sdk/base/model/BiometricsDisplayInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->biometricsDisplayInfo:Lcom/netease/epay/sdk/base/model/BiometricsDisplayInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/BiometricsDisplayInfo;->defaultStatus:Ljava/lang/String;

    const-string v2, "biometricsSwitch"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "biometricsType"

    const-string v2, "FINGER_PRINT"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "operateBiometrics"

    .line 9
    invoke-static {p0, v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getCombineCardInfo()Lcom/netease/epay/sdk/base_pay/model/PayCard;
    .locals 4

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineCardInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->combineCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->combineCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    invoke-virtual {v2}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->combineCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    return-object v0

    :cond_3
    :goto_1
    const-string v0, "EP1976"

    const-string v1, "\u7ec4\u5408\u652f\u4ed8 cardInfos is null"

    .line 11
    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNowCombinePayChooser()Lcom/netease/epay/sdk/base/model/IPayChooser;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayData;->getCombineCardInfo()Lcom/netease/epay/sdk/base_pay/model/PayCard;

    move-result-object v0

    return-object v0
.end method

.method public static getNowPayChooser()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayData;->selectBalanceCombinePay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "balanceCombinePay"

    return-object v0

    :cond_0
    const-string v0, "balance"

    return-object v0

    .line 7
    :cond_1
    instance-of v1, v0, Lcom/netease/epay/sdk/base/model/Card;

    if-eqz v1, :cond_2

    const-string v0, "quickpay"

    return-object v0

    .line 9
    :cond_2
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$EbankInfo$Ebank;

    if-eqz v1, :cond_3

    const-string v0, "ebank"

    return-object v0

    .line 11
    :cond_3
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/SplitInfo;

    if-eqz v1, :cond_4

    const-string v0, "splitPay"

    return-object v0

    .line 13
    :cond_4
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/SplitLargeAmountInfo;

    if-eqz v1, :cond_5

    const-string v0, "splitLargeAmountPay"

    return-object v0

    .line 15
    :cond_5
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    if-eqz v1, :cond_7

    .line 16
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayData;->selectWalletBalanceCombinePay()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "walletBalanceCombinePay"

    return-object v0

    :cond_6
    const-string v0, "walletBalance"

    return-object v0

    .line 21
    :cond_7
    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$PasswdFreePayInfo;

    if-eqz v1, :cond_8

    const-string v0, "passwdFreePay"

    return-object v0

    .line 23
    :cond_8
    instance-of v0, v0, Lcom/netease/epay/sdk/base_pay/biz/PayChooserImpl;

    if-eqz v0, :cond_9

    const-string v0, "none"

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNowVerifyPolicy()Lcom/netease/epay/sdk/base/model/BaseVerifyPolicy;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getBaseVerifyPolicy()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sget v1, Lcom/netease/epay/sdk/base_pay/PayData;->nowVerifyPolicyIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/BaseVerifyPolicy;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isSMSVerifyPolicy(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SMS"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MOBILE_SMS"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QUICK_PAY_SMS"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MOBILE_VVC"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QUICK_PAY_VVC"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static jsonPutWalletBalanceCombinePayMethod(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "payMethod"

    const-string v1, "walletBalanceCombinePay"

    .line 1
    invoke-static {p0, v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "balance"

    goto :goto_0

    :cond_0
    const-string v0, "quickpay"

    :goto_0
    const-string v1, "combinePayMethod"

    .line 5
    invoke-static {p0, v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->walletBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;->amount:Ljava/lang/String;

    const-string v1, "walletBalanceAmount"

    invoke-static {p0, v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    :cond_1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;->amount:Ljava/lang/String;

    const-string v1, "balanceAmount"

    invoke-static {p0, v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_2
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    const-string v1, "quickPayId"

    invoke-static {p0, v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static resetData()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->ebankInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$EbankInfo;

    .line 2
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->balanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    .line 3
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->isUseFingerprintOnce:Z

    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->isOpenFingerprintPay:Z

    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->isCanUseFingerprintPay:Z

    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->isCanSetFingerprintPay:Z

    .line 5
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->todoFingerRequest:Lcom/netease/epay/sdk/base/network/IParamsCallback;

    .line 6
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->promoteLimitDto:Lcom/netease/epay/sdk/base_pay/model/HomeData$PromoteLimitDto;

    .line 7
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    .line 8
    sput v1, Lcom/netease/epay/sdk/base_pay/PayData;->nowVerifyPolicyIndex:I

    .line 9
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->baseVerifyItemList:[Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowBaseVerifyItem:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->mainOrderId:Ljava/lang/String;

    .line 12
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->mainAccountId:Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->pwdInputTimeStamps:Ljava/util/List;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->pwdDelTimeStamps:Ljava/util/List;

    .line 15
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->prepayInfo:Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;

    const/4 v2, 0x1

    .line 16
    sput-boolean v2, Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;->selected:Z

    .line 17
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->lastCheckPhonePayMethodTag:Ljava/lang/String;

    .line 18
    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->useBankJifenAsDefault:Z

    .line 19
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->newBindCardInfo:Lcom/netease/epay/sdk/base_pay/model/NewBindCardInfo;

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->firstBindCardInfos:Ljava/util/List;

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->specificCardInfos:Ljava/util/List;

    .line 22
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->switchAccountPermit:Lcom/netease/epay/sdk/base_pay/model/SwitchAccountPermit;

    .line 23
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->h5PaymentUrl:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    .line 25
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->payMethods:Ljava/util/List;

    .line 26
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->openPasswordFreeInfo:Lcom/netease/epay/sdk/base_pay/model/OpenPasswordFreeInfo;

    .line 27
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->accountShowName:Ljava/lang/String;

    .line 28
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->toBindAccounts:Ljava/util/ArrayList;

    .line 29
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->checkBindMobileInfo:Lcom/netease/epay/sdk/base_pay/model/CheckBindMobileInfo;

    .line 30
    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->openAutoRenewalSilent:Z

    .line 32
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineCardInfos:Ljava/util/ArrayList;

    .line 33
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineGetPayAmount:Lcom/netease/epay/sdk/base_pay/model/GetPayAmount$Amount;

    .line 35
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    .line 36
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->passwdFreePayInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$PasswdFreePayInfo;

    .line 37
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->walletBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    .line 38
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->biometricsDisplayInfo:Lcom/netease/epay/sdk/base/model/BiometricsDisplayInfo;

    .line 39
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->largeAmountPayInfo:Lcom/netease/epay/sdk/base_pay/model/LargeAmountPayInfo;

    .line 40
    sput-boolean v1, Lcom/netease/epay/sdk/base_pay/PayData;->needQueryVerifyItem:Z

    .line 41
    sput-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->riskVerifyDataCollectInfo:Lcom/netease/epay/sdk/base_pay/model/VerifyPolicys$RiskVerifyDataCollectInfo;

    return-void
.end method

.method public static selectBalanceCombinePay()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;->balanceCombinePay:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static selectWalletBalanceCombinePay()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base_pay/model/HomeData$WalletBalanceInfo;->balanceCombinePay:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineQuickPayId:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->combineBalanceInfo:Lcom/netease/epay/sdk/base_pay/model/BalanceInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
