package com.netease.epay.sdk.pay;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.netease.epay.sdk.Constants;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.AppUtils;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.model.GetPayAmount;
import com.netease.epay.sdk.pay.model.HomeData;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import com.netease.epay.sdk.pay.ui.WebActivity;
import com.netease.epay.sdk.pay.ui.card.CardPayActivity;
import org.json.JSONObject;

/* compiled from: HomePageRequest.java */
/* loaded from: classes.dex */
public class a {
    private PayingActivity a;
    private NetCallback<HomeData> c = new NetCallback<HomeData>() { // from class: com.netease.epay.sdk.pay.a.1
        @Override // com.netease.epay.sdk.base.network.INetCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void success(FragmentActivity fragmentActivity, HomeData homeData) {
            try {
                homeData.initHomeData(fragmentActivity);
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
            if (!a.this.b() && !a.this.a(homeData)) {
                if ("new_account_add_new_card".equals(homeData.defaultPayMethod) || (CoreData.bizType == 802 && TextUtils.isEmpty(a.this.b.a))) {
                    a.this.a((String) null);
                    return;
                }
                if (!TextUtils.isEmpty(a.this.b.a)) {
                    int i = 0;
                    while (true) {
                        if (i >= Card.cardsLength()) {
                            break;
                        }
                        Card selectedCard = Card.getSelectedCard(i);
                        if (!TextUtils.equals(selectedCard.getBankQuickPayId(), a.this.b.a)) {
                            i++;
                        } else if (selectedCard.isUsable()) {
                            CoreData.lastCheckIndex = i;
                            a.this.a(a.this.b.a);
                            return;
                        }
                    }
                    a.this.a.a();
                    return;
                }
                PayController payController = (PayController) ControllerRouter.getController("pay");
                if (payController != null ? payController.d : false) {
                    c.a = null;
                    if (Card.cardsLength() <= 0) {
                        a.this.a((String) null);
                        return;
                    } else if (!Card.isSelectedCardUsable(0)) {
                        CoreData.lastCheckIndex = -2;
                    } else {
                        CoreData.lastCheckIndex = 0;
                        a.this.a(Card.getSelectedCardBankQuickPayId(0));
                        return;
                    }
                }
                a.this.a.a();
            }
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public void onResponseArrived() {
            super.onResponseArrived();
            LocalBroadcastManager.getInstance(a.this.a).sendBroadcast(new Intent(BaseConstants.ACTION_BCE_PAY_START));
        }
    };
    private PayController b = (PayController) ControllerRouter.getController("pay");

    public a(PayingActivity payingActivity) {
        this.a = payingActivity;
    }

    public void a() {
        JSONObject build = new JsonBuilder().build();
        if (!TextUtils.isEmpty(this.b.a)) {
            JSONObject jSONObject = new JSONObject();
            LogicUtil.jsonPut(jSONObject, "quickPayId", this.b.a);
            LogicUtil.jsonPut(build, "quickPayInfo", jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        LogicUtil.jsonPut(jSONObject2, "cookieType", BaseData.cookieType);
        LogicUtil.jsonPut(jSONObject2, "cookieVal", BaseData.cookie);
        LogicUtil.jsonPut(jSONObject2, "type", "COOKIE");
        LogicUtil.jsonPut(build, "loginParamDto", jSONObject2);
        HttpClient.startRequest(PayConstants.homePageUrl, build, true, this.a, this.c, !AppUtils.isEpayApp(this.a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        String str;
        String str2 = null;
        if ("FROZEN".equals(BaseData.accountState)) {
            str = ErrorCode.ACCOUNT_STATE_FROZEN;
            str2 = this.a.getResources().getString(R.string.epaysdk_frozen);
        } else if ("REPORT_LOSS".equals(BaseData.accountState)) {
            str = ErrorCode.ACCOUNT_STATE_REPORT_LOSS;
            str2 = this.a.getResources().getString(R.string.epaysdk_report_loss);
        } else if ("REPORT_LOSS_TIMEOUT".equals(BaseData.accountState)) {
            str = ErrorCode.ACCOUNT_STATE_REPORT_LOSS_TIMEOUT;
            str2 = this.a.getResources().getString(R.string.epaysdk_report_loss_timeout);
        } else {
            str = null;
        }
        if (str != null) {
            LogicUtil.showFragmentInActivity(OnlyMessageFragment.getInstance(str, str2, Constants.EXIT_CALLBACK), this.a);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(HomeData homeData) {
        if (homeData == null || homeData.h5Info == null || TextUtils.isEmpty(homeData.h5Info.directUrl)) {
            return false;
        }
        Intent intent = new Intent(this.a, (Class<?>) WebActivity.class);
        intent.putExtra("WebActivity_h5PostUrl", homeData.h5Info.directUrl);
        this.a.startActivity(intent);
        this.a.finish();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str) {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, "paymethod", PayConstants.PAY_METHOD_QUICKPAY);
        if (!TextUtils.isEmpty(str)) {
            LogicUtil.jsonPut(build, "cardId", str);
        }
        HttpClient.startRequest(PayConstants.getPayAmountUrl, build, false, (FragmentActivity) this.a, (INetCallback) new NetCallback<GetPayAmount>() { // from class: com.netease.epay.sdk.pay.a.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, GetPayAmount getPayAmount) {
                getPayAmount.initAmountData();
                if (TextUtils.isEmpty(str)) {
                    JumpUtil.go2Activity(a.this.a, CardPayActivity.class, null);
                    a.this.a.finish();
                } else {
                    a.this.a.a();
                }
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public void onUnhandledFail(FragmentActivity activity, NewBaseResponse response) {
                super.onUnhandledFail(activity, response);
                if (a.this.b != null) {
                    a.this.b.deal(new BaseEvent(response.retcode, response.retdesc));
                } else {
                    ExitUtil.failCallback(response.retcode, response.retdesc);
                }
            }
        });
    }
}
