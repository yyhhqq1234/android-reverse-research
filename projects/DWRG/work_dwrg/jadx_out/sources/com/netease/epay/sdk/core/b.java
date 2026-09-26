package com.netease.epay.sdk.core;

import android.content.Context;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.EpayEvent;
import com.netease.epay.sdk.base.ui.ToastResult;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.messenger.R;
import com.netease.epay.sdk.model.BizType;

/* compiled from: Wallet.java */
/* loaded from: classes.dex */
public class b {
    public static void a(Context context) {
        a.a(context, a.a(context), 2, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.1
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.DEPOSIT_WITHDRAW, controllerResult.activity, ControllerJsonBuilder.getDepositWithdrawJson(1), null);
            }
        }, true);
    }

    public static void b(Context context) {
        a.a(context, a.a(context), 3, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.7
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.DEPOSIT_WITHDRAW, controllerResult.activity, ControllerJsonBuilder.getDepositWithdrawJson(2), null);
            }
        }, true);
    }

    public static void c(Context context) {
        a.a(context, a.a(), 901, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.8
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.MODIFY_PWD, controllerResult.activity, null, null);
            }
        }, true);
    }

    public static void d(Context context) {
        a.a(context, a.a(), 902, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.9
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.RESET_PWD, controllerResult.activity, ControllerJsonBuilder.getResetPwdJson(false, 2), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void e(Context context) {
        a.a(context, a.a(), 903, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.10
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.RESET_PWD, controllerResult.activity, ControllerJsonBuilder.getResetPwdJson(false, 1), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(Context context, final String str) {
        a.a(context, a.a(), BizType.VERIFY_SHORT_PWD, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.11
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.VERIFY_PWD, controllerResult.activity, ControllerJsonBuilder.getVerifyPwdJson(1, 2, str), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(Context context, final String str) {
        a.a(context, a.a(), BizType.VERIFY_LONG_PWD, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.12
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.VERIFY_PWD, controllerResult.activity, ControllerJsonBuilder.getVerifyPwdJson(2, 3, str), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void c(final Context context, final String str) {
        a.a(context, a.a(), BizType.VERIFY_SMS, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.13
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.VERIFY_SMS, context, ControllerJsonBuilder.getSMSJson(str), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void d(final Context context, final String str) {
        a.a(context, a.a(), BizType.VERIFY_FINGER, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.14
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.FINGER, context, ControllerJsonBuilder.getFingerJson(4, true, str), null);
            }
        }, true);
    }

    public static void f(Context context) {
        a.a(context, a.a(), BizType.IDENTIFY, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.2
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.CARD, controllerResult.activity, ControllerJsonBuilder.getCardJson(false, 5, null), null);
            }
        }, true);
    }

    public static void g(Context context) {
        a.a(context, a.a(), BizType.CLOSE_GENERAL, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.3
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.CLOSE_RISK, controllerResult.activity, ControllerJsonBuilder.getCloseRiskJson(2), null);
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(Context context, final String str) {
        a.a(context, a.a(context), BizType.ADD_CARD, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.4
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.CARD, controllerResult.activity, ControllerJsonBuilder.getCardJson(false, 3, str), null);
            }
        }, true);
    }

    public static void h(Context context) {
        a.a(context, a.a(context), -1, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.5
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.WALLET, controllerResult.activity, null, new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.5.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult2) {
                        CoreData.bizType = -1;
                        CoreData.isOnWalletMode = false;
                        EpayEvent epayEvent = new EpayEvent();
                        epayEvent.biztype = -1;
                        epayEvent.isSucc = controllerResult2.isSuccess;
                        epayEvent.desp = controllerResult2.msg;
                        ExitUtil.clearAll(epayEvent);
                    }
                });
            }
        }, true);
    }

    /* compiled from: Wallet.java */
    /* renamed from: com.netease.epay.sdk.core.b$6, reason: invalid class name */
    /* loaded from: classes.dex */
    static class AnonymousClass6 extends ControllerCallback {
        final /* synthetic */ String a;
        final /* synthetic */ Context b;

        AnonymousClass6(String str, Context context) {
            this.a = str;
            this.b = context;
        }

        @Override // com.netease.epay.sdk.controller.ControllerCallback
        public void dealResult(ControllerResult controllerResult) {
            ControllerRouter.route(RegisterCenter.FACE, controllerResult.activity, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_VER, this.a), new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.6.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult c) {
                    if (!c.isSuccess) {
                        ExitUtil.failCallback(c.code, c.msg);
                    } else if (BaseData.hasShortPwd) {
                        ToastResult.makeToast((Context) c.activity, true, R.string.epaysdk_sdk_ver_suc).show();
                        ExitUtil.successCallback();
                    } else {
                        ControllerRouter.route(RegisterCenter.SET_PWD, c.activity, ControllerJsonBuilder.getSetPwdJson(false, true, false, false, c.activity != null ? c.activity.getString(R.string.epaysdk_exit_liveness_warming) : null), new ControllerCallback() { // from class: com.netease.epay.sdk.core.b.6.1.1
                            @Override // com.netease.epay.sdk.controller.ControllerCallback
                            public void dealResult(ControllerResult controllerResult2) {
                                ToastResult.makeToast(AnonymousClass6.this.b, true, R.string.epaysdk_sdk_ver_suc).show();
                                ExitUtil.successCallback();
                            }
                        });
                    }
                }
            });
        }
    }

    public static void f(Context context, String str) {
        a.a(context, a.a(context), BizType.VERIFY_FACE, new AnonymousClass6(str, context), true);
    }
}
