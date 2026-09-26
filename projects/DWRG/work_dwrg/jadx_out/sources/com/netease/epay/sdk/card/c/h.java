package com.netease.epay.sdk.card.c;

import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.card.model.UpgradeIdentityData;
import com.netease.epay.sdk.model.JsonBuilder;
import org.json.JSONObject;

/* compiled from: UpgradeIdentityAddCardSecondPresenter.java */
/* loaded from: classes.dex */
public class h extends f {
    private boolean j;

    public h(com.netease.epay.sdk.card.ui.b bVar) {
        super(bVar);
    }

    @Override // com.netease.epay.sdk.card.c.f, com.netease.epay.sdk.card.ui.b.a
    public void a() {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "bankId", this.c);
        HttpClient.startRequest("judge_bank_allow_Upgrade.htm", build, false, (FragmentActivity) this.b, (INetCallback) new NetCallback<UpgradeIdentityData>() { // from class: com.netease.epay.sdk.card.c.h.1
            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                h.this.a.a(true);
            }

            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, UpgradeIdentityData upgradeIdentityData) {
                if (upgradeIdentityData.isAllowUpgrade) {
                    h.this.a(BaseConstants.signCardSmsUrl, h.this.i);
                    return;
                }
                h.this.j = upgradeIdentityData.isAllowSign;
                OnlyMessageFragment.getInstance("code", upgradeIdentityData.unSupportDesc, new OnlyMessageFragment.IOnlyMessageCallback() { // from class: com.netease.epay.sdk.card.c.h.1.1
                    @Override // com.netease.epay.sdk.base.ui.OnlyMessageFragment.IOnlyMessageCallback
                    public void callback(String code, String msg) {
                        if (h.this.j) {
                            h.this.a(BaseConstants.signCardSmsUrl, h.this.i);
                        }
                    }
                }).show(h.this.b.getSupportFragmentManager(), "WarningFragment");
            }
        });
    }
}
