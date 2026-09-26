package com.netease.epay.sdk.base.hybrid;

import com.netease.epay.sdk.base.hybrid.common.FinanceRep;

/* loaded from: classes.dex */
public interface JsCallback {
    void confirm(FinanceRep financeRep);

    boolean isExpired();

    boolean isPermanent();

    JsCallback newInstance(String str);

    void setPermanent(boolean z);
}
