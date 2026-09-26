package com.netease.epay.sdk.pay.model;

import android.text.TextUtils;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.pay.c;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class GetPayAmount {
    public Amount amount;

    /* loaded from: classes.dex */
    public static class Amount {
        public Deduction deductionDetail;
        public String orderAmount;
        public String payOrderAmount;
    }

    public void initAmountData() {
        BaseData.orderAmount = new BigDecimal("0.00");
        BaseData.originalAmount = new BigDecimal("0.00");
        if (this.amount != null) {
            if (!TextUtils.isEmpty(this.amount.payOrderAmount)) {
                BaseData.orderAmount = BaseData.orderAmount.add(new BigDecimal(this.amount.payOrderAmount));
            }
            if (!TextUtils.isEmpty(this.amount.orderAmount)) {
                BaseData.originalAmount = BaseData.originalAmount.add(new BigDecimal(this.amount.orderAmount));
            }
            c.b = this.amount.deductionDetail;
        }
    }
}
