package com.netease.epay.sdk.pay;

import android.support.annotation.Keep;
import android.text.TextUtils;

@Keep
/* loaded from: classes.dex */
public class PayConstants {
    public static final String DESC = "desc";
    public static final String FINGERPRINT_ERROR_GO_SHORT = "060022";
    public static final String HAS_MARKET = "has_market";
    public static final String PAY_BANK_FAIL = "024072";
    public static final String PAY_LIMIT_LIVENESS_MOST_TIMES = "017110";
    public static final String PAY_LIMIT_LIVENESS_PENDING = "017111";
    public static final String PAY_LIMIT_LIVENESS_UPDATE = "017109";
    public static final String PAY_METHOD_BALABCE = "balance";
    public static final String PAY_METHOD_QUHUA = "quhua";
    public static final String PAY_METHOD_QUICKPAY = "quickpay";
    public static final String RANDOM = "RANDOM";
    public static final String TITLE = "title";
    public static final String addCardInfoUrl = "send_sign_pay_authcode.htm";
    public static final String addCardPayUrl = "sign_pay.htm";
    public static final String getMarketPosition = "get_market_position.htm";
    public static final String getPayAmountUrl = "get_pay_amount.htm";
    public static final String homePageUrl = "get_pay_method.htm";
    public static final String isShow_succ_active_info = "isShow_succ_active_info.htm";
    public static final String isSupportBindPayUrl = "is_support_quick_and_pay.htm";
    public static final String payUrl = "pay.htm";
    public static final String query_order_info = "query_order_info.htm";
    public static final String sendPayAuthCodeUrl = "send_pay_authcode.htm";
    public static final String validateFingerprintPay = "validate_fingerprint_pay.htm";

    /* JADX WARN: Removed duplicated region for block: B:42:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.math.BigDecimal getNewDiscountAmount() {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.epay.sdk.pay.PayConstants.getNewDiscountAmount():java.math.BigDecimal");
    }

    public static String getSelectedRedPaperId() {
        StringBuilder sb = new StringBuilder();
        if (c.b == null || !c.b.hasDeduction || c.b.hongbaoInfo == null || !c.b.hongbaoInfo.isMark) {
            return sb.toString();
        }
        for (int i = 0; i < c.b.hongbaoInfo.hongbaos.size(); i++) {
            if (c.b.hongbaoInfo.hongbaos.get(i).isMark) {
                sb.append(c.b.hongbaoInfo.hongbaos.get(i).hongbaoId).append(",");
            }
        }
        if (TextUtils.isEmpty(sb.toString())) {
            return null;
        }
        return sb.toString().substring(0, sb.toString().length() - 1);
    }

    public static String getSelectedVoucherId() {
        if (c.b == null || !c.b.hasDeduction || c.b.voucherInfo == null || c.b.voucherInfo.vouchers == null) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= c.b.voucherInfo.vouchers.size()) {
                return null;
            }
            if (!c.b.voucherInfo.vouchers.get(i2).isMark) {
                i = i2 + 1;
            } else {
                return c.b.voucherInfo.vouchers.get(i2).voucherId;
            }
        }
    }

    public static String getSelectedPromotionId() {
        if (c.b == null || !c.b.hasDeduction || c.b.promotionInfo == null || c.b.promotionInfo.promotions == null) {
            return null;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= c.b.promotionInfo.promotions.size()) {
                return null;
            }
            if (!c.b.promotionInfo.promotions.get(i2).isMark) {
                i = i2 + 1;
            } else {
                return c.b.promotionInfo.promotions.get(i2).promotionId;
            }
        }
    }
}
