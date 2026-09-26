package com.netease.epay.sdk.pay.c;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.model.Promotion;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.DelayedTask;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.model.BalanceInfo;
import com.netease.epay.sdk.pay.model.PayingResponse;
import com.netease.epay.sdk.pay.ui.i;
import com.netease.epay.sdk.pay.ui.l;
import java.math.BigDecimal;
import java.util.Iterator;
import org.json.JSONObject;

/* compiled from: EpayPayFragPresenter.java */
/* loaded from: classes.dex */
public class b implements l.a {
    l a;
    private SdkActivity b;

    public b(l lVar) {
        this.a = lVar;
        this.b = (SdkActivity) this.a.getActivity();
    }

    @Override // com.netease.epay.sdk.pay.ui.l.a
    public void a(View view) {
        BigDecimal bigDecimal;
        boolean z;
        boolean z2;
        BigDecimal newDiscountAmount = PayConstants.getNewDiscountAmount();
        if (newDiscountAmount.compareTo(new BigDecimal("0")) > 0) {
            bigDecimal = newDiscountAmount;
            z = true;
        } else if (CoreData.lastCheckIndex >= 0) {
            bigDecimal = BaseData.orderAmount;
            z = true;
        } else {
            bigDecimal = newDiscountAmount;
            z = false;
        }
        boolean z3 = com.netease.epay.sdk.pay.c.b != null && com.netease.epay.sdk.pay.c.b.hasDeduction;
        if (z3 && com.netease.epay.sdk.pay.c.b.promotionInfo != null && com.netease.epay.sdk.pay.c.b.promotionInfo.promotions != null) {
            for (int i = 0; i < com.netease.epay.sdk.pay.c.b.promotionInfo.promotions.size(); i++) {
                Promotion promotion = com.netease.epay.sdk.pay.c.b.promotionInfo.promotions.get(i);
                if (promotion.isMark && TextUtils.equals(promotion.promotionType, PayConstants.RANDOM)) {
                    z2 = true;
                    break;
                }
            }
        }
        z2 = false;
        this.a.a(view, "￥" + bigDecimal, "￥" + BaseData.originalAmount, z2, z3, d(), true, z);
    }

    @Override // com.netease.epay.sdk.pay.ui.l.a
    public void a() {
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            payController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT, this.b));
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l.a
    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            final JSONObject build = new JsonBuilder().addBizType().build();
            String optString = jSONObject.optString("challengeType");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                LogicUtil.jsonPut(build, next, jSONObject.opt(next));
            }
            if (CoreData.lastCheckIndex < 0) {
                LogicUtil.jsonPut(build, "payMethod", PayConstants.PAY_METHOD_BALABCE);
                ControllerRouter.route(RegisterCenter.RSA, this.a.getContext(), ControllerJsonBuilder.getRsaJson(optString, PayConstants.PAY_METHOD_BALABCE), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.c.b.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult) {
                        if (controllerResult != null && controllerResult.otherParams != null) {
                            LogicUtil.jsonPut(build, "paySign", controllerResult.otherParams.optString(BaseConstants.JSON_KEY_PAY_RCA_SIGN_DATA));
                        }
                    }
                });
            } else {
                LogicUtil.jsonPut(build, "payMethod", PayConstants.PAY_METHOD_QUICKPAY);
            }
            LogicUtil.jsonPut(build, "hongbaoIds", PayConstants.getSelectedRedPaperId());
            LogicUtil.jsonPut(build, "voucherId", PayConstants.getSelectedVoucherId());
            LogicUtil.jsonPut(build, "promotionId", PayConstants.getSelectedPromotionId());
            LogicUtil.jsonPut(build, "payAdditionalInfo", BaseData.payAdditionalInfo);
            HttpClient.startRequest(PayConstants.payUrl, build, false, (FragmentActivity) this.b, (INetCallback) new com.netease.epay.sdk.pay.b<PayingResponse>() { // from class: com.netease.epay.sdk.pay.c.b.2
                @Override // com.netease.epay.sdk.pay.b
                protected void a(final NewBaseResponse newBaseResponse, final FragmentActivity fragmentActivity) {
                    super.a(newBaseResponse, fragmentActivity);
                    new DelayedTask(1000, new DelayedTask.IDelayedListener() { // from class: com.netease.epay.sdk.pay.c.b.2.1
                        @Override // com.netease.epay.sdk.base.util.DelayedTask.IDelayedListener
                        public void onDelayed() {
                            if (b.this.a != null && b.this.a.isAdded()) {
                                b.this.a.a();
                                return;
                            }
                            PayController payController = (PayController) ControllerRouter.getController("pay");
                            if (payController != null) {
                                payController.deal(new BaseEvent(newBaseResponse, fragmentActivity));
                            }
                        }
                    }).execute(new Void[0]);
                }
            });
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l.a
    public void b() {
        i.a(this.b);
    }

    @Override // com.netease.epay.sdk.pay.ui.l.a
    public void c() {
        LogicUtil.showFragmentInActivity(com.netease.epay.sdk.pay.ui.c.a(), this.b);
    }

    String d() {
        if (CoreData.lastCheckIndex >= 0) {
            return Card.getBankCardDesp(CoreData.lastCheckIndex);
        }
        if (CoreData.lastCheckIndex == -1) {
            return BalanceInfo.getBalancePayingDesp();
        }
        if (CoreData.lastCheckIndex == -100) {
            if ("NOT_ACTIVE".equals(BaseData.accountState) && BalanceInfo.compareTo(BaseData.orderAmount)) {
                return BalanceInfo.getBalancePayingDesp();
            }
            if (Card.hasCards()) {
                return Card.getBankCardDesp(0);
            }
        }
        return "";
    }
}
