package com.netease.epay.sdk.pay.model;

import com.netease.epay.sdk.base.model.IPayChooser;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.c;
import java.math.BigDecimal;

/* loaded from: classes.dex */
public class BalanceInfo implements IPayChooser {
    public String amount;
    public String msg;
    public String useable;

    public static String getBalancePayingDesp() {
        String str;
        if (c.a == null || c.a.amount == null) {
            str = "";
        } else {
            str = c.a.amount;
        }
        return "余额支付(余额:￥" + str + ")";
    }

    public static String getBalanceDesp() {
        String str;
        if (c.a == null || c.a.amount == null) {
            str = "";
        } else {
            str = c.a.amount;
        }
        return String.format("余额  (余额￥%1$s)", str);
    }

    public static boolean isBalanceUsable() {
        return c.a != null && "USEABLE".equals(c.a.useable);
    }

    public static boolean compareTo(BigDecimal data) {
        if (c.a == null || c.a.amount == null) {
            return false;
        }
        return data == null || new BigDecimal(c.a.amount).compareTo(data) > 0;
    }

    public static String getBalanceMsg() {
        return c.a == null ? "" : c.a.msg;
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public boolean isUsable() {
        return isBalanceUsable();
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public String getTitle() {
        return getBalanceDesp();
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public String getDesp() {
        return getBalanceMsg();
    }

    @Override // com.netease.epay.sdk.base.model.IPayChooser
    public String getBankId() {
        return PayConstants.PAY_METHOD_BALABCE;
    }
}
