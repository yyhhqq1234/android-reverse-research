package com.netease.epay.sdk.core;

import android.content.Context;
import com.netease.epay.sdk.ExitUtil;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.EpayEvent;
import com.netease.epay.sdk.base.ui.ToastResult;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.messenger.R;
import com.netease.epay.sdk.model.BizType;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OnlyForApp {
    public static void addPayAddtionalInfo(JSONObject payAdditionalInfo) {
        BaseData.payAdditionalInfo = payAdditionalInfo;
    }

    public static void queryFingerprintStatus(final Context context) {
        a.a(context, a.a(context), BizType.QUERY_FINGERPRINT, new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.1
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                if (controllerResult.isSuccess) {
                    ControllerRouter.route(RegisterCenter.FINGER, context, ControllerJsonBuilder.getFingerJson(3, false, null), null);
                    return;
                }
                EpayEvent epayEvent = new EpayEvent();
                epayEvent.biztype = BizType.QUERY_FINGERPRINT;
                epayEvent.isSucc = controllerResult.isSuccess;
                epayEvent.code = controllerResult.code;
                epayEvent.desp = controllerResult.msg;
                epayEvent.isCanShow = false;
                epayEvent.isOpened = false;
                epayEvent.isCanSet = false;
                ExitUtil.clearAll(epayEvent);
            }
        }, false);
    }

    public static void closeFingerprint(Context context) {
        a.a(context, a.a(context), BizType.CLOSE_FINGERPRINT, new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.2
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.FINGER, controllerResult.activity, ControllerJsonBuilder.getFingerJson(2, false, null), null);
            }
        }, true);
    }

    public static void openFingerprint(Context context, final boolean isCanSet) {
        a.a(context, a.a(context), BizType.OPEN_FINGERPRINT, new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.3
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.FINGER, controllerResult.activity, ControllerJsonBuilder.getFingerJson(1, isCanSet, null), null);
            }
        }, true);
    }

    public static void upgradeIdentity(Context context) {
        a.a(context, a.a(context), BizType.UPGRADE_IDENTITY, new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.4
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.CARD, controllerResult.activity, ControllerJsonBuilder.getCardJson(false, 4, null), null);
            }
        }, true);
    }

    public static void manageRSA(Context context) {
        a.a(context, a.a(), BizType.RSA_CERTIFICATE, new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.5
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.RSA, controllerResult.activity, null, null);
            }
        }, true);
    }

    public static void addCard(Context context, String uuid) {
        b.e(context, uuid);
    }

    public static void verifyLongPwd(Context context, String uuid) {
        b.b(context, uuid);
    }

    public static void verifySms(Context context, String uuid) {
        b.c(context, uuid);
    }

    /* renamed from: com.netease.epay.sdk.core.OnlyForApp$6, reason: invalid class name */
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
            ControllerRouter.route(RegisterCenter.FACE, controllerResult.activity, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_VER_NOAUDIT, this.a), new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.6.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult c) {
                    if (!c.isSuccess) {
                        ExitUtil.failCallback(c.code, c.msg);
                    } else if (BaseData.hasShortPwd) {
                        ToastResult.makeToast((Context) c.activity, true, R.string.epaysdk_sdk_ver_suc).show();
                        ExitUtil.successCallback();
                    } else {
                        ControllerRouter.route(RegisterCenter.SET_PWD, c.activity, ControllerJsonBuilder.getSetPwdJson(false, true, false, false, c.activity != null ? c.activity.getString(R.string.epaysdk_exit_liveness_warming) : null), new ControllerCallback() { // from class: com.netease.epay.sdk.core.OnlyForApp.6.1.1
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

    public static void verifyFaceForModifySecretSecurityPhoneNumber(Context context, String uuid) {
        a.a(context, a.a(context), BizType.VERIFY_FACE, new AnonymousClass6(uuid, context), true);
    }

    public static void verifyFinger(Context context, String uuid) {
        b.d(context, uuid);
    }
}
