package com.netease.epay.sdk.card.c;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.card.model.UpgradeIdentityData;
import com.netease.epay.sdk.model.JsonBuilder;
import org.json.JSONObject;

/* compiled from: UpgradeIdentityAddCardFirstPresenter.java */
/* loaded from: classes.dex */
public class g extends b {
    private boolean e;

    public g(com.netease.epay.sdk.card.ui.a aVar) {
        super(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.card.c.b
    public void a(final boolean z, final String str, final String str2, final String str3) {
        if (TextUtils.isEmpty(str)) {
            super.a(z, str, str2, str3);
            return;
        }
        this.a.a(false);
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "bankId", str);
        HttpClient.startRequest("judge_bank_allow_Upgrade.htm", build, false, (FragmentActivity) this.b, (INetCallback) new NetCallback<UpgradeIdentityData>() { // from class: com.netease.epay.sdk.card.c.g.1
            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onResponseArrived() {
                g.this.a.a(true);
            }

            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, UpgradeIdentityData upgradeIdentityData) {
                if (upgradeIdentityData.isAllowUpgrade) {
                    g.super.a(z, str, str2, str3);
                    return;
                }
                g.this.e = upgradeIdentityData.isAllowSign;
                OnlyMessageFragment.getInstance("code", upgradeIdentityData.unSupportDesc, new OnlyMessageFragment.IOnlyMessageCallback() { // from class: com.netease.epay.sdk.card.c.g.1.1
                    @Override // com.netease.epay.sdk.base.ui.OnlyMessageFragment.IOnlyMessageCallback
                    public void callback(String code, String msg) {
                        if (g.this.e) {
                            g.super.a(z, str, str2, str3);
                        }
                    }
                }).show(g.this.b.getSupportFragmentManager(), "WarningFragment");
            }
        });
    }
}
