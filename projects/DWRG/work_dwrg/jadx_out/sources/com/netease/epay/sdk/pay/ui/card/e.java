package com.netease.epay.sdk.pay.ui.card;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.model.AddCardNumber;
import com.netease.epay.sdk.base.model.IdentityData;
import com.netease.epay.sdk.base.model.QueryBankInfo;
import com.netease.epay.sdk.base.model.SupportCardTypeObj;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import java.util.ArrayList;
import org.json.JSONObject;

/* compiled from: AddCardFirstPresenter.java */
/* loaded from: classes.dex */
public class e {
    a a;
    SdkActivity b;
    String c;
    String d;

    public e(a aVar) {
        this.a = aVar;
        this.b = (SdkActivity) this.a.getActivity();
    }

    public void a(boolean z) {
        if (z && TextUtils.isEmpty(BaseData.userName)) {
            HttpClient.startRequest(BaseConstants.get_identity_info, new JsonBuilder().build(), false, (FragmentActivity) this.b, (INetCallback) new NetCallback<IdentityData>() { // from class: com.netease.epay.sdk.pay.ui.card.e.1
                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public void onResponseArrived() {
                    if (e.this.a != null && e.this.a.isVisible() && e.this.b != null && !e.this.b.isFinishing()) {
                        e.this.a.a();
                        e.this.a();
                    }
                }

                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, IdentityData identityData) {
                    e.this.a.c(identityData.identityInfo.trueName);
                }
            });
        } else {
            this.a.a();
            a();
        }
    }

    protected void a() {
        HttpClient.startRequest(BaseConstants.queryBankListUrl, new JsonBuilder().addBizType().build(), false, (FragmentActivity) this.b, (INetCallback) new NetCallback<QueryBankInfo>() { // from class: com.netease.epay.sdk.pay.ui.card.e.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, QueryBankInfo queryBankInfo) {
                ArrayList<SupportCardTypeObj> supportBanks = LogicUtil.getSupportBanks(queryBankInfo.supportBanks, null);
                e.this.a(supportBanks);
                if (supportBanks.size() > 0) {
                    e.this.c = queryBankInfo.toString();
                }
                if (queryBankInfo.ifShow) {
                    e.this.a.a(supportBanks, queryBankInfo.toString());
                }
                if (!TextUtils.isEmpty(queryBankInfo.toastMsg)) {
                    e.this.a.a(queryBankInfo.toastMsg);
                }
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                super.onResponseArrived();
                if (e.this.a != null) {
                    e.this.a.b();
                }
            }
        });
    }

    public void a(String str) {
        this.d = str;
        this.d = str;
        JSONObject build = new JsonBuilder().addBizType().build();
        LogicUtil.jsonPut(build, "cardNo", str);
        HttpClient.startRequest(BaseConstants.addCardNumUrl, build, false, (FragmentActivity) this.b, (INetCallback) new NetCallback<AddCardNumber>() { // from class: com.netease.epay.sdk.pay.ui.card.e.3
            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                e.this.a.a(true);
            }

            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, AddCardNumber addCardNumber) {
                if ("NOTSUPPORT".equals(addCardNumber.status) || ("UNKNOW".equals(addCardNumber.status) && TextUtils.isEmpty(e.this.c))) {
                    ToastUtil.show(e.this.b, "暂不支持该银行卡,请更换重试");
                    return;
                }
                String str2 = null;
                boolean z = false;
                if (!TextUtils.isEmpty(addCardNumber.bankId)) {
                    if (BaseConstants.CARD_TYPE_CREDIT.equals(addCardNumber.cardType)) {
                        str2 = addCardNumber.bankName + " 信用卡";
                        z = true;
                    } else if (BaseConstants.CARD_TYPE_DEBIT.equals(addCardNumber.cardType)) {
                        str2 = addCardNumber.bankName + " 储蓄卡";
                    }
                }
                e.this.a(z, addCardNumber.bankId, str2, addCardNumber.accountName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<SupportCardTypeObj> arrayList) {
        if (arrayList != null && arrayList.size() == 1) {
            if (BaseConstants.CARD_TYPE_CREDIT.equals(arrayList.get(0).cardType)) {
                this.a.b("输入信用卡卡号");
            } else {
                this.a.b("输入储蓄卡卡号");
            }
        }
    }

    protected void a(boolean z, String str, String str2, String str3) {
        if (this.a != null) {
            this.a.addNextFragment2Activity(b.a(z, str, this.d, str2, str3, this.c));
        }
    }
}
