.class public Lcom/netease/epay/sdk/base_pay/PayConstants;
.super Ljava/lang/Object;
.source "PayConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_pay/PayConstants$BiometricsConstants;
    }
.end annotation


# static fields
.field public static final BANKID_EBANK_ZHAOSHANG:Ljava/lang/String; = "0404"

.field public static final BANK_NAME_ZHAOSHANG_1:Ljava/lang/String; = "\u62db\u5546"

.field public static final CHECK_TO_BIND_MOBILE_INFO:Ljava/lang/String; = "check_to_bind_mobile_info.htm"

.field public static final DATA_COLLECT:Ljava/lang/String; = "data_collect.htm"

.field public static final DA_EVENT_CLICK_TRANSFER:Ljava/lang/String; = "clickTransferAccount"

.field public static final DA_EVENT_TRANSFER_GRAY_LIST:Ljava/lang/String; = "transferGrayListVerify"

.field public static final DA_GET_ACCOUNT_CACHE:Ljava/lang/String; = "getAccountCache"

.field public static final DA_LABEL_TRANSFER_BEFORE:Ljava/lang/String; = "transferVerifyBefore"

.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final FINGERPRINT_ERROR_GO_SHORT:Ljava/lang/String; = "060022"

.field public static final GET_ORDER_RETENTION_COUPON:Ljava/lang/String; = "get_order_retention_coupon.htm"

.field public static final GET_PAY_METHOD_VERIFY_ITEMS:Ljava/lang/String; = "get_pay_method_verify_items.htm"

.field public static final GET_RISK_INFO:Ljava/lang/String; = "get_risk_info.htm"

.field public static final GET_SIMPLIFIED_PAY_METHOD:Ljava/lang/String; = "get_simplified_pay_method.htm"

.field public static final GET_TO_BIND_ACCOUNT_LIST:Ljava/lang/String; = "get_to_bind_account_list.htm"

.field public static final HAS_MARKET:Ljava/lang/String; = "has_market"

.field public static final INSTAL_PAY_LIMIT_LIVENESS_UPDATE:Ljava/lang/String; = "017130"

.field public static final INTENT_KEY_UX_QUERY_ORDER_STATEURL:Ljava/lang/String; = "WebActivity_unionxQueryOrderStateUrl"

.field public static final INTENT_KEY_UX_TOKEN:Ljava/lang/String; = "WebActivity_uxToken"

.field public static final INTENT_KEY_WEBAC_MAIN_ORDER:Ljava/lang/String; = "WebActivity_main_orderId"

.field public static final INTENT_KEY_WEBAC_URL:Ljava/lang/String; = "WebActivity_h5PostUrl"

.field public static final IS_FROM_PAY_CHOOSER:Ljava/lang/String; = "IS_FROM_PAY_CHOOSER"

.field public static final LOGIN_EXPIRED:Ljava/lang/String; = "061038"

.field public static final ONEKEY_PAY_LIMIT_LIVENESS_UPDATE:Ljava/lang/String; = "017131"

.field public static final ONLY_ADDCARD_FAIL:Ljava/lang/String; = "018046"

.field public static final ORDER_LOCKED:Ljava/lang/String; = "024082"

.field public static final ORDER_UNSUPPORT_CHANGE_ACCOUNT:Ljava/lang/String; = "024081"

.field public static final PAY_ADDCARD_FAIL:Ljava/lang/String; = "018045"

.field public static final PAY_BANK_FAIL:Ljava/lang/String; = "024072"

.field public static final PAY_LIMIT_LIVENESS_MOST_TIMES:Ljava/lang/String; = "017110"

.field public static final PAY_LIMIT_LIVENESS_PENDING:Ljava/lang/String; = "017111"

.field public static final PAY_LIMIT_LIVENESS_UPDATE:Ljava/lang/String; = "017109"

.field public static final PAY_METHOD_BALABCE:Ljava/lang/String; = "balance"

.field public static final PAY_METHOD_PREPAY:Ljava/lang/String; = "precard"

.field public static final PAY_METHOD_QUICKPAY:Ljava/lang/String; = "quickpay"

.field public static final PAY_SETPWD_FAIL:Ljava/lang/String; = "060049"

.field public static final RANDOM:Ljava/lang/String; = "RANDOM"

.field public static final REJECT_FREE_PAY:Ljava/lang/String; = "reject_free_pay.htm"

.field public static final REQUEST_CODE_PAYING_ACTIVITY_FRESH:I = 0x3e9

.field public static final SCHEMA_STATUS_INIT:I = 0x0

.field public static final SCHEMA_STATUS_NEED_NOT_START:I = 0x1

.field public static final SCHEMA_STATUS_NOT_NEED:I = 0x2

.field public static final SCHEMA_STATUS_PULLED:I = 0x4

.field public static final SCHEMA_STATUS_PULLING:I = 0x3

.field public static final SET_COOKIE_ACCOUNT:Ljava/lang/String; = "set_cookie_account.htm"

.field public static final SWITCH_ACCOUNT_AND_PAY:Ljava/lang/String; = "switch_account_and_pay.htm"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL_CREATE_PROXY_ORDER:Ljava/lang/String; = "create_proxy_order.htm"

.field public static final addCardInfoUrl:Ljava/lang/String; = "send_sign_pay_authcode.htm"

.field public static final addCardPayUrl:Ljava/lang/String; = "sign_pay.htm"

.field public static final canChangeAccount:Ljava/lang/String; = "can_change_account.htm"

.field public static final getDeductionByBank:Ljava/lang/String; = "get_deduction_by_bank.htm"

.field public static final getMarketPosition:Ljava/lang/String; = "get_market_position.htm"

.field public static final getOtherPayInfoUrl:Ljava/lang/String; = "get_back_pay_token.htm"

.field public static final getPayAmountUrl:Ljava/lang/String; = "get_pay_amount.htm"

.field public static final getQuickpayPayMethodUrl:Ljava/lang/String; = "get_quickpay_pay_method.htm"

.field public static final getWalletCombinePayMethodUrl:Ljava/lang/String; = "get_wallet_combine_pay_method.htm"

.field public static final homePageUrl:Ljava/lang/String; = "get_pay_method.htm"

.field public static final isShow_succ_active_info:Ljava/lang/String; = "isShow_succ_active_info.htm"

.field public static final isSupportBindPayUrl:Ljava/lang/String; = "is_support_quick_and_pay.htm"

.field public static final merchantWalletOrder:Ljava/lang/String; = "add_merchantWallet_sub_order.htm"

.field public static final queryH5ebankurl:Ljava/lang/String; = "query_H5_ebank_url.htm"

.field public static final query_order_info:Ljava/lang/String; = "query_order_info.htm"

.field public static final sendPayAuthCodeUrl:Ljava/lang/String; = "send_pay_authcode.htm"

.field public static final splitPayMarkUrl:Ljava/lang/String; = "split_pay_mark.htm"

.field public static final validateFingerprintPay:Ljava/lang/String; = "validate_fingerprint_pay.htm"

.field public static final validatePayAccountLoginInfo:Ljava/lang/String; = "validate_pay_account_login_info.htm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCouponPayInfo()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayConstants;->getInstallmentCouponInfo()Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo$CouponInfo;

    move-result-object v1

    const-string v2, "discountUse"

    if-eqz v1, :cond_0

    const-string v3, "1"

    .line 4
    invoke-static {v0, v2, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v2, v1, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo$CouponInfo;->discountId:Ljava/lang/String;

    const-string v3, "discountId"

    invoke-static {v0, v3, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo$CouponInfo;->discountAmt:Ljava/lang/String;

    const-string v2, "discountAmt"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 8
    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static getDiscountAmount(Z)Ljava/math/BigDecimal;
    .locals 5

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v2, v1, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    .line 6
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;->isMark:Z

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;->getDeductionAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 10
    :cond_0
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    if-nez v1, :cond_1

    return-object v0

    .line 13
    :cond_1
    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    if-eqz v1, :cond_2

    .line 14
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v2, v2, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaoTotalAmount:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 16
    :cond_2
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 17
    :goto_0
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 18
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-boolean v3, v3, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    if-eqz v3, :cond_3

    .line 19
    new-instance v3, Ljava/math/BigDecimal;

    sget-object v4, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v4, v4, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/Voucher;->voucherAmount:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_4
    :goto_1
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 25
    :goto_2
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 26
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/Promotion;

    .line 27
    iget-boolean v3, v1, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    if-eqz v3, :cond_6

    if-nez p0, :cond_5

    const-string p0, "RANDOM"

    .line 28
    iget-object v2, v1, Lcom/netease/epay/sdk/base/model/Promotion;->promotionType:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    .line 31
    :cond_5
    new-instance p0, Ljava/math/BigDecimal;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/Promotion;->promotionAmount:Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static getInstallmentCouponInfo()Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo$CouponInfo;
    .locals 3

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->couponInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->couponInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->installmentInfo:Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo;->couponInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo$CouponInfo;

    .line 4
    iget-boolean v2, v1, Lcom/netease/epay/sdk/base_pay/model/InstallmentInfo$CouponInfo;->isMark:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNewDiscountAmount(Z)Ljava/math/BigDecimal;
    .locals 3

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    const-string v1, "0.00"

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/netease/epay/sdk/base_pay/PayConstants;->getDiscountAmount(Z)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/math/BigDecimal;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_1

    .line 7
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static getPayMethodInfos()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayConstants;->getCouponPayInfo()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "installmentCouponPayInfo"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSelectedPreCard()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "deductionAmount"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->prepayInfo:Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;

    if-eqz v2, :cond_1

    .line 4
    :try_start_0
    iget-object v2, v2, Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;->deductionAmount:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isUseable"

    .line 5
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->prepayInfo:Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;

    iget-boolean v3, v3, Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;->isUseable:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 7
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->prepayInfo:Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_pay/model/PrepayInfo;->precardList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/epay/sdk/base/model/PrePayCard;

    .line 9
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "precardNo"

    .line 10
    iget-object v7, v4, Lcom/netease/epay/sdk/base/model/PrePayCard;->precardNo:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v6, v4, Lcom/netease/epay/sdk/base/model/PrePayCard;->deductionAmount:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "denomination"

    .line 12
    iget-object v7, v4, Lcom/netease/epay/sdk/base/model/PrePayCard;->denomination:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "balance"

    .line 13
    iget-object v7, v4, Lcom/netease/epay/sdk/base/model/PrePayCard;->balance:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "status"

    .line 14
    iget-object v7, v4, Lcom/netease/epay/sdk/base/model/PrePayCard;->status:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "isSelected"

    .line 15
    iget-boolean v4, v4, Lcom/netease/epay/sdk/base/model/PrePayCard;->isSelected:Z

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "precardList"

    .line 19
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "EP1302"

    .line 21
    invoke-static {v0, v2}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->handleException(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getSelectedPromotion()Lcom/netease/epay/sdk/base/model/Promotion;
    .locals 3

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hasDeduction:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v2, v2, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v2, v2, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base/model/Promotion;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    if-eqz v2, :cond_1

    .line 7
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static getSelectedPromotionId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/base_pay/PayConstants;->getSelectedPromotion()Lcom/netease/epay/sdk/base/model/Promotion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionId:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSelectedRedPaperId()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hasDeduction:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    if-eqz v2, :cond_4

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 8
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/epay/sdk/base/model/RedPaper;

    iget-boolean v3, v3, Lcom/netease/epay/sdk/base/model/RedPaper;->isMark:Z

    if-eqz v3, :cond_1

    .line 9
    sget-object v3, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v3, v3, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/epay/sdk/base/model/RedPaper;

    iget-object v3, v3, Lcom/netease/epay/sdk/base/model/RedPaper;->hongbaoId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 13
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedVoucherId()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hasDeduction:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v2, v2, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6
    sget-object v2, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v2, v2, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-boolean v2, v2, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    if-eqz v2, :cond_1

    .line 7
    sget-object v1, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v1, v1, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Voucher;->voucherId:Ljava/lang/String;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static resetMarkFlag()V
    .locals 4

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->nowPayChooser:Lcom/netease/epay/sdk/base/model/IPayChooser;

    instance-of v1, v0, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Lcom/netease/epay/sdk/base_pay/model/PayCard;

    .line 5
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;->isUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v1

    sget-boolean v3, Lcom/netease/epay/sdk/base_pay/PayData;->useBankJifenAsDefault:Z

    iput-boolean v3, v1, Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;->isMark:Z

    .line 7
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_pay/model/PayCard;->getJifen()Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base_pay/model/BankJifenDto;->isMark:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    if-eqz v1, :cond_1

    .line 12
    iput-boolean v2, v1, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    .line 14
    :cond_1
    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/Voucher;

    .line 18
    iput-boolean v2, v1, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    goto :goto_1

    .line 22
    :cond_2
    sget-object v0, Lcom/netease/epay/sdk/base_pay/PayData;->deduction:Lcom/netease/epay/sdk/base_pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/Promotion;

    .line 26
    iput-boolean v2, v1, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    goto :goto_2

    :cond_3
    return-void
.end method
