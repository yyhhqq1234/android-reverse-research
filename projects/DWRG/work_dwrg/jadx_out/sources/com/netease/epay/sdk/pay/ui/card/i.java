package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.model.AddCardInfo;
import com.netease.epay.sdk.base.model.SupportBanks;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.ChooseCardBankFragment;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.model.IsSupportBindPay;
import org.json.JSONObject;

/* compiled from: PayAddCardSecondPresenter.java */
/* loaded from: classes.dex */
public class i {
    b a;
    SdkActivity b;
    String c;
    boolean d;
    String e;
    String f;
    String g;
    boolean h;
    private String i;
    private String j;
    private boolean k = false;
    private NetCallback<IsSupportBindPay> l = new NetCallback<IsSupportBindPay>() { // from class: com.netease.epay.sdk.pay.ui.card.i.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, IsSupportBindPay isSupportBindPay) {
            i.this.k = isSupportBindPay.isSupport;
            i.this.a(i.this.k ? PayConstants.addCardInfoUrl : BaseConstants.signCardSmsUrl, i.this.m);
        }
    };
    private NetCallback<AddCardInfo> m = new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.pay.ui.card.i.2
        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onResponseArrived() {
            i.this.a.a(true);
        }

        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
            a(addCardInfo.quickPayId, addCardInfo.attach, addCardInfo.chargeId, false);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse response) {
            if (ErrorCode.ADD_CARD_MUST_SET_PWD.equals(response.retcode)) {
                a(null, null, null, true);
                return true;
            }
            if ((PayConstants.PAY_LIMIT_LIVENESS_MOST_TIMES.equals(response.retcode) || PayConstants.PAY_LIMIT_LIVENESS_UPDATE.equals(response.retcode) || PayConstants.PAY_LIMIT_LIVENESS_PENDING.equals(response.retcode)) && i.this.k) {
                i.this.k = false;
                i.this.a(BaseConstants.signCardSmsUrl, i.this.m);
                return true;
            }
            return super.parseFailureBySelf(response);
        }

        private void a(String str, String str2, String str3, boolean z) {
            String content = i.this.a.a().getContent(2);
            String content2 = i.this.a.a().getContent(4);
            String content3 = i.this.a.b.getContent();
            String content4 = i.this.a.a().getContent(5);
            if (i.this.a != null) {
                i.this.a.addNextFragment2Activity(c.a(i.this.k ? 1 : 2, i.this.c, i.this.f, content3, content, content2, i.this.e, content4, str, str2, str3, z));
            }
        }
    };

    public i(b bVar) {
        this.a = bVar;
        this.b = (SdkActivity) bVar.getActivity();
        Bundle arguments = bVar.getArguments();
        if (arguments != null) {
            this.g = arguments.getString(BaseConstants.INTENT_ADDCARD_CARD_TYPE);
            this.d = arguments.getBoolean(BaseConstants.INTENT_ADDCARD_IS_CREDIT, false);
            this.f = arguments.getString(BaseConstants.INTENT_ADDCARD_CARD_NUMBER);
            this.c = arguments.getString(BaseConstants.INTENT_ADDCARD_BANK_ID);
            this.i = arguments.getString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME);
            this.j = arguments.getString(BaseConstants.INTENT_ADDCARD_SUPPORT_BANKS);
            this.h = !TextUtils.isEmpty(this.j);
        }
    }

    public void a() {
        this.a.a(!TextUtils.isEmpty(this.g) && this.d, this.i, this.g);
    }

    public void b() {
        String str = null;
        if (!TextUtils.isEmpty(this.c)) {
            str = (this.d ? "credit," : "debit,") + this.c;
        }
        ChooseCardBankFragment.getInstance_SeclectMode(this.j, str).show(this.b.getSupportFragmentManager(), "chooseCardBank");
    }

    public void a(String str) {
        this.e = str;
    }

    public void a(SupportBanks supportBanks) {
        this.d = BaseConstants.CARD_TYPE_CREDIT.equals(supportBanks.cardType);
        String str = supportBanks.bankName + (this.d ? " 信用卡" : " 储蓄卡");
        this.c = supportBanks.bankId;
        this.g = str;
        this.a.a(this.c);
    }

    public void c() {
        if (!TextUtils.isEmpty(this.c)) {
            JSONObject build = new JsonBuilder().addBizType().build();
            LogicUtil.jsonPut(build, "bankId", this.c);
            HttpClient.startRequest(PayConstants.isSupportBindPayUrl, build, false, (FragmentActivity) this.b, (INetCallback) this.l);
        }
    }

    protected void a(String str, NetCallback<AddCardInfo> netCallback) {
        JSONObject build;
        if (BaseConstants.signCardSmsUrl.equals(str)) {
            build = new JsonBuilder().build();
            LogicUtil.jsonPut(build, "bizType", "order");
        } else {
            build = new JsonBuilder().build();
            LogicUtil.jsonPut(build, "bizType", "order");
            LogicUtil.jsonPut(build, "payAdditionalInfo", BaseData.payAdditionalInfo);
        }
        LogicUtil.jsonPut(build, "bankId", this.c);
        LogicUtil.jsonPut(build, "cardNo", this.f);
        LogicUtil.jsonPut(build, "mobilePhone", this.a.b.getContent());
        LogicUtil.jsonPut(build, "cardAccountName", this.a.a().getContent(4));
        LogicUtil.jsonPut(build, "certNo", this.a.a().getContent(2));
        if (this.d) {
            LogicUtil.jsonPut(build, "validDate", this.e);
            LogicUtil.jsonPut(build, "cvv2", this.a.a().getContent(5));
        }
        LogicUtil.jsonPut(build, "hongbaoIds", PayConstants.getSelectedRedPaperId());
        LogicUtil.jsonPut(build, "voucherId", PayConstants.getSelectedVoucherId());
        LogicUtil.jsonPut(build, "promotionId", PayConstants.getSelectedPromotionId());
        LogicUtil.jsonPut(build, "setedShortPwd", false);
        HttpClient.startRequest(str, build, false, (FragmentActivity) this.b, (INetCallback) netCallback);
    }
}
