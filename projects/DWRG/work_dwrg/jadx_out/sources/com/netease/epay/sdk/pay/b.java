package com.netease.epay.sdk.pay;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.ToastResult;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.pay.model.PayingResponse;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import com.netease.epay.sdk.pay.ui.i;
import com.netease.epay.sdk.pay.ui.j;
import com.netease.epay.sdk.pay.ui.n;
import com.netease.epay.sdk.pay.ui.o;

/* compiled from: PayCallback.java */
/* loaded from: classes.dex */
public abstract class b<T> extends NetCallback<PayingResponse> {
    public static PayingResponse a;

    @Override // com.netease.epay.sdk.base.network.INetCallback
    /* renamed from: a */
    public void success(final FragmentActivity fragmentActivity, PayingResponse payingResponse) {
        a = payingResponse;
        if (c.g != null) {
            b(fragmentActivity, payingResponse);
        } else if (BaseData.hasShortPwd) {
            a(fragmentActivity);
        } else {
            ControllerRouter.route(RegisterCenter.SET_PWD, fragmentActivity, ControllerJsonBuilder.getSetPwdJson(false, false, true, false), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.b.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult controllerResult) {
                    b.this.a(fragmentActivity);
                }
            });
        }
    }

    private void b(final FragmentActivity fragmentActivity, final PayingResponse payingResponse) {
        HttpClient.startRequest(BaseConstants.openFingerprintPay, c.g, false, fragmentActivity, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.b.2
            @Override // com.netease.epay.sdk.base.network.INetCallback
            public void success(FragmentActivity activity, Object o) {
                parseFailureBySelf(null);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse resp) {
                c.g = null;
                b.this.success(fragmentActivity, payingResponse);
                return true;
            }
        });
    }

    public void a(FragmentActivity fragmentActivity) {
        if (a != null && a.isShowPaySuccessInfo) {
            LogicUtil.showFragmentInActivity(n.a(true), fragmentActivity);
            return;
        }
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            payController.deal(new BaseEvent("000000", null, fragmentActivity));
        }
    }

    @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
    public void onUnhandledFail(final FragmentActivity fragmentActivity, final NewBaseResponse newBaseResponse) {
        if (ErrorCode.balanceErrorList.contains(newBaseResponse.retcode) || ErrorCode.changeBankList.contains(newBaseResponse.retcode)) {
            LogicUtil.showFragmentInActivity(TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.pay.b.3
                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void rightClick() {
                    i.a(fragmentActivity);
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void leftClick() {
                    PayController payController = (PayController) ControllerRouter.getController("pay");
                    if (payController != null) {
                        payController.deal(new BaseEvent(newBaseResponse, fragmentActivity));
                    }
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getMsg() {
                    return newBaseResponse.retdesc;
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getLeft() {
                    return "取消";
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getRight() {
                    return "更换支付方式";
                }
            }), fragmentActivity);
            return;
        }
        if (ErrorCode.ORDER_MONEY_EXCEED_BALANCE_RSA_NONE.equals(newBaseResponse.retcode) || ErrorCode.ORDER_MONEY_EXCEED_BALANCE_RSA_TIMEOUT.equals(newBaseResponse.retcode)) {
            LogicUtil.showFragmentInActivity(TwoButtonMessageFragment.getInstance(new AnonymousClass4(fragmentActivity, newBaseResponse)), fragmentActivity);
            return;
        }
        if (PayConstants.FINGERPRINT_ERROR_GO_SHORT.equals(newBaseResponse.retcode)) {
            LogicUtil.showFragmentInActivity(o.c(), fragmentActivity);
            return;
        }
        if (PayConstants.PAY_BANK_FAIL.equals(newBaseResponse.retcode)) {
            if (newBaseResponse.result instanceof PayingResponse) {
                PayingResponse payingResponse = (PayingResponse) newBaseResponse.result;
                Bundle bundle = new Bundle();
                bundle.putString("amount", payingResponse.orderAmount);
                bundle.putString("bank", payingResponse.refundPageInfo.bankName);
                bundle.putString("cardNo", payingResponse.refundPageInfo.cardNo);
                bundle.putString(Const.KEY_TIME, payingResponse.refundPageInfo.refundSec);
                bundle.putString("msg", newBaseResponse.retdesc);
                LogicUtil.showFragmentInActivity(j.a(bundle), fragmentActivity);
                return;
            }
            return;
        }
        if (!new com.netease.epay.sdk.pay.a.a().a(newBaseResponse, fragmentActivity)) {
            a(newBaseResponse, fragmentActivity);
        }
    }

    /* compiled from: PayCallback.java */
    /* renamed from: com.netease.epay.sdk.pay.b$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements TwoButtonMessageFragment.ITwoBtnFragCallback {
        final /* synthetic */ FragmentActivity a;
        final /* synthetic */ NewBaseResponse b;

        AnonymousClass4(FragmentActivity fragmentActivity, NewBaseResponse newBaseResponse) {
            this.a = fragmentActivity;
            this.b = newBaseResponse;
        }

        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
        public void rightClick() {
            ControllerRouter.route(RegisterCenter.RSA, this.a, null, new ControllerCallback() { // from class: com.netease.epay.sdk.pay.b.4.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult controllerResult) {
                    if (controllerResult != null && controllerResult.isSuccess) {
                        PayingActivity.a(AnonymousClass4.this.a);
                    } else {
                        AnonymousClass4.this.leftClick();
                    }
                }
            });
        }

        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
        public void leftClick() {
            if (this.a != null && (this.a instanceof PayingActivity)) {
                ((PayingActivity) this.a).a();
                return;
            }
            PayController payController = (PayController) ControllerRouter.getController("pay");
            if (payController != null) {
                payController.deal(new BaseEvent(this.b, this.a));
            }
        }

        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
        public String getMsg() {
            return this.b.retdesc;
        }

        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
        public String getLeft() {
            return "取消";
        }

        @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
        public String getRight() {
            return "认证";
        }
    }

    @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
    public void onUIChanged(FragmentActivity activity, NewBaseResponse response) {
        if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
            ((PayingActivity) activity).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(NewBaseResponse newBaseResponse, FragmentActivity fragmentActivity) {
        if (!"HUAWEI".equals(Build.BRAND)) {
            ToastResult.makeToast((Context) fragmentActivity, false, "支付失败").show();
        }
        ToastUtil.show(fragmentActivity, newBaseResponse.retdesc);
    }

    @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
    public void onLaterDeal(FragmentActivity activity, NewBaseResponse response) {
        if (TextUtils.equals(ErrorCode.PSW_ERROR_NOT_LOCK, response.retcode)) {
            PayingActivity.a(activity);
        }
    }
}
