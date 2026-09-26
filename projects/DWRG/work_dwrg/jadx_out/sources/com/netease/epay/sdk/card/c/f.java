package com.netease.epay.sdk.card.c;

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
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.card.AddOrVerifyCardController;
import com.netease.epay.sdk.card.ui.b;
import org.json.JSONObject;

/* compiled from: OnlyAddCardSecondPresenter.java */
/* loaded from: classes.dex */
public class f implements b.a {
    com.netease.epay.sdk.card.ui.b a;
    SdkActivity b;
    String c;
    boolean d;
    String e;
    String f;
    String g;
    boolean h;
    NetCallback<AddCardInfo> i = new NetCallback<AddCardInfo>() { // from class: com.netease.epay.sdk.card.c.f.1
        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onResponseArrived() {
            f.this.a.a(true);
        }

        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, AddCardInfo addCardInfo) {
            a(addCardInfo.quickPayId, addCardInfo.attach, false);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
            if (ErrorCode.ADD_CARD_MUST_SET_PWD.equals(response.retcode)) {
                a(null, null, true);
            } else {
                ToastUtil.show(f.this.b, response.retdesc);
            }
        }

        private void a(String str, String str2, boolean z) {
            String content = f.this.a.a().getContent(2);
            String content2 = f.this.a.a().getContent(4);
            String content3 = f.this.a.b.getContent();
            String content4 = f.this.a.a().getContent(5);
            if (f.this.a != null) {
                f.this.a.addNextFragment2Activity(com.netease.epay.sdk.card.ui.c.a(2, f.this.c, f.this.f, content3, content, content2, f.this.e, content4, str, str2, null, z));
            }
        }
    };
    private String j;
    private String k;

    public f(com.netease.epay.sdk.card.ui.b bVar) {
        this.a = bVar;
        this.b = (SdkActivity) bVar.getActivity();
        Bundle arguments = bVar.getArguments();
        if (arguments != null) {
            this.g = arguments.getString(BaseConstants.INTENT_ADDCARD_CARD_TYPE);
            this.d = arguments.getBoolean(BaseConstants.INTENT_ADDCARD_IS_CREDIT, false);
            this.f = arguments.getString(BaseConstants.INTENT_ADDCARD_CARD_NUMBER);
            this.c = arguments.getString(BaseConstants.INTENT_ADDCARD_BANK_ID);
            this.j = arguments.getString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME);
            this.k = arguments.getString(BaseConstants.INTENT_ADDCARD_SUPPORT_BANKS);
            this.h = !TextUtils.isEmpty(this.k);
        }
    }

    @Override // com.netease.epay.sdk.card.ui.b.a
    public void a() {
        a(BaseConstants.signCardSmsUrl, this.i);
    }

    @Override // com.netease.epay.sdk.card.ui.b.a
    public void b() {
        String str = null;
        if (!TextUtils.isEmpty(this.c)) {
            str = (this.d ? "credit," : "debit,") + this.c;
        }
        ChooseCardBankFragment.getInstance_SeclectMode(this.k, str).show(this.b.getSupportFragmentManager(), "chooseCardBank");
    }

    @Override // com.netease.epay.sdk.card.ui.b.a
    public void a(SupportBanks supportBanks) {
        this.d = BaseConstants.CARD_TYPE_CREDIT.equals(supportBanks.cardType);
        String str = supportBanks.bankName + (this.d ? " 信用卡" : " 储蓄卡");
        this.c = supportBanks.bankId;
        this.g = str;
        this.a.a(this.c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, NetCallback<AddCardInfo> netCallback) {
        JSONObject build;
        if (BaseConstants.signCardSmsUrl.equals(str)) {
            build = AddOrVerifyCardController.a().build();
        } else {
            build = AddOrVerifyCardController.a().build();
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
        LogicUtil.jsonPut(build, "setedShortPwd", false);
        HttpClient.startRequest(str, build, false, (FragmentActivity) this.b, (INetCallback) netCallback);
    }

    @Override // com.netease.epay.sdk.card.ui.b.a
    public void a(String str) {
        this.e = str;
    }

    @Override // com.netease.epay.sdk.card.ui.b.a
    public void c() {
        this.a.a(!TextUtils.isEmpty(this.g) && this.d, this.j, this.g);
    }
}
