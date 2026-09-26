package com.netease.epay.sdk.card.c;

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
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.ui.a;
import com.netease.epay.sdk.model.JsonBuilder;
import java.util.ArrayList;
import org.json.JSONObject;

/* compiled from: AddCardFirstPresenter.java */
/* loaded from: classes.dex */
public class b implements a.InterfaceC0014a {
    com.netease.epay.sdk.card.ui.a a;
    SdkActivity b;
    String c;
    String d;

    public b(com.netease.epay.sdk.card.ui.a aVar) {
        this.a = aVar;
        this.b = (SdkActivity) this.a.getActivity();
    }

    @Override // com.netease.epay.sdk.card.ui.a.InterfaceC0014a
    public void a(boolean z) {
        if (z && TextUtils.isEmpty(BaseData.userName)) {
            HttpClient.startRequest(BaseConstants.get_identity_info, new JsonBuilder().build(), false, (FragmentActivity) this.b, (INetCallback) new NetCallback<IdentityData>() { // from class: com.netease.epay.sdk.card.c.b.1
                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public void onResponseArrived() {
                    if (b.this.a != null && b.this.a.isVisible() && b.this.b != null && !b.this.b.isFinishing()) {
                        b.this.a.b();
                        b.this.a();
                    }
                }

                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, IdentityData identityData) {
                    b.this.a.b(identityData.identityInfo.trueName);
                }
            });
        } else {
            this.a.b();
            a();
        }
    }

    protected void a() {
        HttpClient.startRequest(BaseConstants.queryBankListUrl, AddOrVerifyCardController.a().build(), false, (FragmentActivity) this.b, (INetCallback) new NetCallback<QueryBankInfo>() { // from class: com.netease.epay.sdk.card.c.b.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, QueryBankInfo queryBankInfo) {
                ArrayList<SupportCardTypeObj> supportBanks = LogicUtil.getSupportBanks(queryBankInfo.supportBanks, null);
                b.this.a(supportBanks);
                if (supportBanks.size() > 0) {
                    b.this.c = queryBankInfo.toString();
                }
                if (queryBankInfo.ifShow) {
                    b.this.a.a(supportBanks, queryBankInfo.toString());
                }
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                super.onResponseArrived();
                b.this.a.a();
            }
        });
    }

    @Override // com.netease.epay.sdk.card.ui.a.InterfaceC0014a
    public void a(String str) {
        this.d = str;
        JSONObject build = AddOrVerifyCardController.a().build();
        LogicUtil.jsonPut(build, "cardNo", str);
        HttpClient.startRequest(BaseConstants.addCardNumUrl, build, false, (FragmentActivity) this.b, (INetCallback) new NetCallback<AddCardNumber>() { // from class: com.netease.epay.sdk.card.c.b.3
            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                b.this.a.a(true);
            }

            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, AddCardNumber addCardNumber) {
                if ("NOTSUPPORT".equals(addCardNumber.status) || ("UNKNOW".equals(addCardNumber.status) && TextUtils.isEmpty(b.this.c))) {
                    ToastUtil.show(b.this.b, "暂不支持该银行卡,请更换重试");
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
                b.this.a(z, addCardNumber.bankId, str2, addCardNumber.accountName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<SupportCardTypeObj> arrayList) {
        if (arrayList != null && arrayList.size() == 1) {
            if (BaseConstants.CARD_TYPE_CREDIT.equals(arrayList.get(0).cardType)) {
                this.a.a("输入信用卡卡号");
            } else {
                this.a.a("输入储蓄卡卡号");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z, String str, String str2, String str3) {
        if (this.a != null) {
            this.a.addNextFragment2Activity(com.netease.epay.sdk.card.ui.b.a(z, str, this.d, str2, str3, this.c));
        }
    }
}
