package com.netease.epay.sdk.pay.c;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.model.GetPublicKey;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import com.netease.epay.sdk.pay.ui.i;
import com.netease.epay.sdk.pay.ui.k;
import com.netease.epay.sdk.pay.ui.m;
import com.netease.epay.sdk.pay.ui.o;
import com.netease.epay.sdk.pay.ui.p;

/* compiled from: EpayPayActvPresenter.java */
/* loaded from: classes.dex */
public class a implements PayingActivity.a {
    private PayingActivity a;

    public a(PayingActivity payingActivity) {
        this.a = payingActivity;
    }

    @Override // com.netease.epay.sdk.pay.ui.PayingActivity.a
    public void a() {
        if (CoreData.lastCheckIndex <= -2) {
            i.a(this.a);
            return;
        }
        if (!com.netease.epay.sdk.pay.c.f && com.netease.epay.sdk.pay.c.e && com.netease.epay.sdk.pay.c.c) {
            HttpClient.startRequest(BaseConstants.getPublicKeyUrl, new JsonBuilder().build(), false, (FragmentActivity) this.a, (INetCallback) new NetCallback<GetPublicKey>() { // from class: com.netease.epay.sdk.pay.c.a.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, GetPublicKey getPublicKey) {
                    LogicUtil.showFragmentInActivity(k.a(getPublicKey.publicKey, !com.netease.epay.sdk.pay.c.d), a.this.a);
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    LogicUtil.showFragmentInActivity(o.c(), a.this.a);
                    return true;
                }
            });
            return;
        }
        if (CoreData.lastCheckIndex == -1) {
            if (BaseData.hasShortPwd) {
                LogicUtil.showFragmentInActivity(o.c(), this.a);
                return;
            } else if ("NATURAL".equals(BaseData.accountState)) {
                LogicUtil.showFragmentInActivity(m.c(), this.a);
                return;
            } else {
                LogicUtil.showFragmentInActivity(p.c(), this.a);
                return;
            }
        }
        if (BaseData.hasShortPwd) {
            LogicUtil.showFragmentInActivity(o.c(), this.a);
        } else {
            LogicUtil.showFragmentInActivity(p.c(), this.a);
        }
    }
}
