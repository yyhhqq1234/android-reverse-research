.class public Lcom/netease/epay/sdk/pay/PayConstants;
.super Ljava/lang/Object;
.source "PayConstants.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final DESC:Ljava/lang/String; = "desc"

.field public static final FINGERPRINT_ERROR_GO_SHORT:Ljava/lang/String; = "060022"

.field public static final HAS_MARKET:Ljava/lang/String; = "has_market"

.field public static final PAY_BANK_FAIL:Ljava/lang/String; = "024072"

.field public static final PAY_LIMIT_LIVENESS_MOST_TIMES:Ljava/lang/String; = "017110"

.field public static final PAY_LIMIT_LIVENESS_PENDING:Ljava/lang/String; = "017111"

.field public static final PAY_LIMIT_LIVENESS_UPDATE:Ljava/lang/String; = "017109"

.field public static final PAY_METHOD_BALABCE:Ljava/lang/String; = "balance"

.field public static final PAY_METHOD_QUHUA:Ljava/lang/String; = "quhua"

.field public static final PAY_METHOD_QUICKPAY:Ljava/lang/String; = "quickpay"

.field public static final RANDOM:Ljava/lang/String; = "RANDOM"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final addCardInfoUrl:Ljava/lang/String; = "send_sign_pay_authcode.htm"

.field public static final addCardPayUrl:Ljava/lang/String; = "sign_pay.htm"

.field public static final getMarketPosition:Ljava/lang/String; = "get_market_position.htm"

.field public static final getPayAmountUrl:Ljava/lang/String; = "get_pay_amount.htm"

.field public static final homePageUrl:Ljava/lang/String; = "get_pay_method.htm"

.field public static final isShow_succ_active_info:Ljava/lang/String; = "isShow_succ_active_info.htm"

.field public static final isSupportBindPayUrl:Ljava/lang/String; = "is_support_quick_and_pay.htm"

.field public static final payUrl:Ljava/lang/String; = "pay.htm"

.field public static final query_order_info:Ljava/lang/String; = "query_order_info.htm"

.field public static final sendPayAuthCodeUrl:Ljava/lang/String; = "send_pay_authcode.htm"

.field public static final validateFingerprintPay:Ljava/lang/String; = "validate_fingerprint_pay.htm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewDiscountAmount()Ljava/math/BigDecimal;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 43
    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->originalAmount:Ljava/math/BigDecimal;

    .line 44
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hasDeduction:Z

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    .line 80
    :cond_1
    :goto_0
    return-object v0

    .line 47
    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    const-string v0, "0.00"

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 49
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v4, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v4, v4, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaoTotalAmount:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :cond_3
    :try_start_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    move v4, v3

    .line 53
    :goto_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 54
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    if-eqz v0, :cond_5

    .line 55
    new-instance v5, Ljava/math/BigDecimal;

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Voucher;->voucherAmount:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 60
    :cond_4
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 61
    :goto_2
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 62
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    .line 63
    iget-boolean v4, v0, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    if-eqz v4, :cond_7

    .line 64
    const-string v3, "RANDOM"

    iget-object v4, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v1

    .line 76
    :goto_3
    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_1

    .line 78
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 53
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 67
    :cond_6
    :try_start_2
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionAmount:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_3

    .line 61
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 74
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 73
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public static getSelectedPromotionId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hasDeduction:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 120
    :goto_0
    return-object v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 116
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Promotion;->isMark:Z

    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->promotionInfo:Lcom/netease/epay/sdk/base/model/PromotionInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/PromotionInfo;->promotions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Promotion;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Promotion;->promotionId:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 120
    goto :goto_0
.end method

.method public static getSelectedRedPaperId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hasDeduction:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->isMark:Z

    if-nez v0, :cond_1

    .line 87
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    move v1, v2

    .line 89
    :goto_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 90
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/RedPaper;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/RedPaper;->isMark:Z

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hongbaoInfo:Lcom/netease/epay/sdk/base/model/RedPaperInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaperInfo;->hongbaos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/RedPaper;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/RedPaper;->hongbaoId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSelectedVoucherId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->hasDeduction:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 107
    :goto_0
    return-object v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 103
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-boolean v0, v0, Lcom/netease/epay/sdk/base/model/Voucher;->isMark:Z

    if-eqz v0, :cond_2

    .line 104
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->b:Lcom/netease/epay/sdk/pay/model/Deduction;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/Deduction;->voucherInfo:Lcom/netease/epay/sdk/base/model/VoucherInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/VoucherInfo;->vouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/Voucher;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/Voucher;->voucherId:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 107
    goto :goto_0
.end method
