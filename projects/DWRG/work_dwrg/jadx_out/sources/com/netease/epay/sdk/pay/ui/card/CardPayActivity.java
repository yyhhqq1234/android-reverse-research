package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.FragmentLayoutActivity;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.model.MarketData;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CardPayActivity extends FragmentLayoutActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity, com.netease.epay.sdk.base.ui.SdkActivity
    public void onCreateSdkActivity(final Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_full_fragment);
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "position", "0");
        HttpClient.startRequest(PayConstants.getMarketPosition, build, false, (FragmentActivity) this, (INetCallback) new NetCallback<MarketData>() { // from class: com.netease.epay.sdk.pay.ui.card.CardPayActivity.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, MarketData marketData) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(PayConstants.HAS_MARKET, !TextUtils.isEmpty(marketData.title));
                bundle.putString("title", marketData.title);
                bundle.putString("desc", marketData.desc);
                if (savedInstanceState == null) {
                    Fragment firstFragment = CardPayActivity.this.getFirstFragment();
                    firstFragment.setArguments(bundle);
                    CardPayActivity.this.setContentFragment(firstFragment);
                }
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                success(CardPayActivity.this, new MarketData());
                return true;
            }
        });
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public Fragment getFirstFragment() {
        return new a();
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public void exitNotify(ErrorCode.CUSTOM_CODE code) {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            payController.deal(new BaseEvent(code, this));
        }
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    protected String getExitDialogMsg() {
        return "是否放弃绑定银行卡";
    }
}
