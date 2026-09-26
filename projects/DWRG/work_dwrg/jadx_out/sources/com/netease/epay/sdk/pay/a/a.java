package com.netease.epay.sdk.pay.a;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.ui.PayingActivity;
import com.netease.epay.sdk.pay.ui.i;

/* compiled from: EpayQuotaDealer.java */
/* loaded from: classes.dex */
public class a {
    private String a;

    public a() {
    }

    public a(String str) {
        this.a = str;
    }

    public boolean a(final NewBaseResponse newBaseResponse, final FragmentActivity fragmentActivity) {
        if (newBaseResponse == null || fragmentActivity == null) {
            return false;
        }
        TwoButtonMessageFragment.ITwoBtnFragCallback iTwoBtnFragCallback = null;
        if (PayConstants.PAY_LIMIT_LIVENESS_UPDATE.equals(newBaseResponse.retcode)) {
            iTwoBtnFragCallback = new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.pay.a.a.1
                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void rightClick() {
                    ControllerRouter.route(RegisterCenter.FACE, fragmentActivity, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_PROMOTE_LIMIT, null), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.a.a.1.1
                        @Override // com.netease.epay.sdk.controller.ControllerCallback
                        public void dealResult(ControllerResult controllerResult) {
                            PayController payController = (PayController) ControllerRouter.getController("pay");
                            if (payController != null && !TextUtils.isEmpty(a.this.a)) {
                                payController.a = a.this.a;
                            }
                            a.this.a();
                            fragmentActivity.finish();
                            PayingActivity.a(fragmentActivity);
                        }
                    });
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void leftClick() {
                    if (!(fragmentActivity instanceof PayingActivity)) {
                        a.this.a();
                        fragmentActivity.finish();
                        PayingActivity.a(fragmentActivity);
                        return;
                    }
                    i.a(fragmentActivity);
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getMsg() {
                    return newBaseResponse.retdesc;
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getLeft() {
                    return fragmentActivity.getResources().getString(R.string.epaysdk_change_paymethod);
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public String getRight() {
                    return fragmentActivity.getResources().getString(R.string.epaysdk_up_limit);
                }
            };
        } else if (PayConstants.PAY_LIMIT_LIVENESS_MOST_TIMES.equals(newBaseResponse.retcode) || PayConstants.PAY_LIMIT_LIVENESS_PENDING.equals(newBaseResponse.retcode)) {
            iTwoBtnFragCallback = new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.pay.a.a.2
                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void rightClick() {
                    if (!(fragmentActivity instanceof PayingActivity)) {
                        a.this.a();
                        fragmentActivity.finish();
                        PayingActivity.a(fragmentActivity);
                        return;
                    }
                    i.a(fragmentActivity);
                }

                @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                public void leftClick() {
                    fragmentActivity.finish();
                    PayController payController = (PayController) ControllerRouter.getController("pay");
                    if (payController != null) {
                        payController.deal(new BaseEvent(newBaseResponse.retcode, newBaseResponse.retdesc, fragmentActivity));
                    } else {
                        ExitUtil.failCallback(newBaseResponse.retcode, newBaseResponse.retdesc);
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
                    return fragmentActivity.getResources().getString(R.string.epaysdk_change_paymethod);
                }
            };
        }
        if (iTwoBtnFragCallback == null) {
            return false;
        }
        LogicUtil.showFragmentInActivity(TwoButtonMessageFragment.getInstance(iTwoBtnFragCallback), fragmentActivity);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (CoreData.bizType == 802) {
            CoreData.bizType = 1;
        }
    }
}
