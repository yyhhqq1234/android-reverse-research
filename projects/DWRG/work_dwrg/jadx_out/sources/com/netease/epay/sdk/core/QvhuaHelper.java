package com.netease.epay.sdk.core;

import android.content.Context;
import android.support.annotation.Keep;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.netease.download.Const;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.EpayEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.ToastResult;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.messenger.R;
import com.netease.epay.sdk.model.BizType;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.model.QvhuaNeedFace;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class QvhuaHelper {
    private static QvhuaHelper instance = new QvhuaHelper();
    private QvhuaCallBack callBack;

    @Keep
    /* loaded from: classes.dex */
    public interface QvhuaCallBack {
        void onResult(EpayEvent epayEvent, String str);
    }

    private QvhuaHelper() {
    }

    public static QvhuaHelper getInstance(QvhuaCallBack callBack) {
        if (callBack != null) {
            instance.callBack = callBack;
        }
        return instance;
    }

    public void creditPay(FragmentActivity context, String orderId, final String attach) {
        a.a(context, a.a(context, orderId), 1, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.1
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route("pay", controllerResult.activity, ControllerJsonBuilder.getPayJson(null, false, false, true, attach), new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.1.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult2) {
                        QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult2));
                    }
                });
            }
        }, true);
    }

    /* renamed from: com.netease.epay.sdk.core.QvhuaHelper$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends ControllerCallback {
        final /* synthetic */ FragmentActivity a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        AnonymousClass2(FragmentActivity fragmentActivity, String str, String str2) {
            this.a = fragmentActivity;
            this.b = str;
            this.c = str2;
        }

        @Override // com.netease.epay.sdk.controller.ControllerCallback
        public void dealResult(ControllerResult controllerResult) {
            ControllerRouter.route(RegisterCenter.FACE, this.a, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_VER, this.b), new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.2.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult c) {
                    if (!c.isSuccess) {
                        QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(c));
                        return;
                    }
                    if (BaseData.hasShortPwd) {
                        ToastResult.makeToast((Context) c.activity, true, R.string.epaysdk_sdk_ver_suc).show();
                        QvhuaHelper.this.queryNeedFaceDetect(AnonymousClass2.this.a, AnonymousClass2.this.b, AnonymousClass2.this.c);
                    } else {
                        JSONObject setPwdJson = ControllerJsonBuilder.getSetPwdJson(false, true, false, false, c.activity != null ? c.activity.getString(R.string.epaysdk_exit_liveness_warming) : null);
                        LogicUtil.jsonPut(setPwdJson, BaseConstants.KEY_QVHUA_BTN_STRING, AnonymousClass2.this.c);
                        ControllerRouter.route(RegisterCenter.SET_PWD, c.activity, setPwdJson, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.2.1.1
                            @Override // com.netease.epay.sdk.controller.ControllerCallback
                            public void dealResult(ControllerResult controllerResult2) {
                                if (!controllerResult2.isSuccess) {
                                    QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult2));
                                } else {
                                    ToastResult.makeToast((Context) AnonymousClass2.this.a, true, R.string.epaysdk_sdk_ver_suc).show();
                                    QvhuaHelper.this.queryNeedFaceDetect(AnonymousClass2.this.a, AnonymousClass2.this.b, AnonymousClass2.this.c);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public void verifyFace(FragmentActivity context, String uuid, String btnString) {
        a.a(context, a.a(context), BizType.CREDITPAY_ACTIVATE, new AnonymousClass2(context, uuid, btnString), true);
    }

    public void verifyShortPwd(final FragmentActivity context, final String uuid, final String btnString) {
        a.a(context, a.a(), BizType.CREDITPAY_ACTIVATE, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.3
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route(RegisterCenter.VERIFY_PWD, controllerResult.activity, ControllerJsonBuilder.getVerifyPwdJson(1, 2, uuid), new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.3.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult2) {
                        if (controllerResult2.isSuccess) {
                            QvhuaHelper.this.queryNeedFaceDetect(context, uuid, btnString);
                        } else {
                            QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult2));
                        }
                    }
                });
            }
        }, true);
    }

    public void addCard(final FragmentActivity ctx, final String uuid, final String btnString) {
        int i = BizType.CREDITPAY_ACTIVATE;
        if (TextUtils.isEmpty(uuid)) {
            i = BizType.ADD_CARD;
        }
        a.a(ctx, a.a(ctx), i, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.4
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                JSONObject cardJson = ControllerJsonBuilder.getCardJson(false, 3, uuid);
                LogicUtil.jsonPut(cardJson, BaseConstants.KEY_QVHUA_BTN_STRING, btnString);
                ControllerRouter.route(RegisterCenter.CARD, controllerResult.activity, cardJson, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.4.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult2) {
                        if (!controllerResult2.isSuccess) {
                            QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult2));
                        } else if (TextUtils.isEmpty(uuid)) {
                            QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult2));
                        } else {
                            QvhuaHelper.this.queryNeedFaceDetect(ctx, uuid, btnString);
                        }
                    }
                });
            }
        }, true);
    }

    public void repay(FragmentActivity ctx, String clientOrderId) {
        a.a(ctx, a.a(ctx, clientOrderId), 1, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.5
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                ControllerRouter.route("pay", controllerResult.activity, ControllerJsonBuilder.getPayJson(null, false, false, false, null), new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.5.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult2) {
                        QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult2));
                    }
                });
            }
        }, true);
    }

    public void removeQvhuaCallBack() {
        this.callBack = null;
    }

    public boolean haveCallBack() {
        return this.callBack != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EpayEvent getEventFromController(ControllerResult controllerResult) {
        EpayEvent epayEvent = new EpayEvent();
        if (controllerResult == null) {
            epayEvent.isSucc = false;
            epayEvent.code = ErrorCode.CUSTOM_CODE.SDK_ERROR.getCode();
            epayEvent.desp = ErrorCode.CUSTOM_CODE.SDK_ERROR.getMsg();
        } else {
            epayEvent.isSucc = controllerResult.isSuccess;
            epayEvent.code = controllerResult.code;
            epayEvent.desp = controllerResult.msg;
        }
        return epayEvent;
    }

    public void returnCallBackExit(EpayEvent e) {
        CoreData.bizType = -2;
        String str = e.isSucc ? BaseData.sessionId : null;
        EventBusUtil.post(Const.LOG_TYPE_STATE_FINISH);
        LogicUtil.finishPay();
        if (this.callBack != null) {
            this.callBack.onResult(e, str);
            this.callBack = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queryNeedFaceDetect(final FragmentActivity activity, final String uuid, final String btnString) {
        JSONObject build = new JsonBuilder().build();
        LogicUtil.jsonPut(build, BaseConstants.NET_KEY_uuid, uuid);
        HttpClient.startRequest(BaseConstants.ifFaceDetect, build, false, activity, (INetCallback) new NetCallback<QvhuaNeedFace>() { // from class: com.netease.epay.sdk.core.QvhuaHelper.6
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, QvhuaNeedFace qvhuaNeedFace) {
                if (qvhuaNeedFace.needFaceDetect) {
                    QvhuaHelper.this.startFace(fragmentActivity, uuid, btnString);
                    return;
                }
                EpayEvent epayEvent = new EpayEvent();
                epayEvent.isSucc = true;
                QvhuaHelper.this.returnCallBackExit(epayEvent);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                QvhuaHelper.this.startFace(activity, uuid, btnString);
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFace(final FragmentActivity activity, String uuid, final String btnString) {
        ControllerRouter.route(RegisterCenter.FACE, activity, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_VER, uuid), new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.7
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult c) {
                if (!c.isSuccess) {
                    QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(c));
                    return;
                }
                if (BaseData.hasShortPwd) {
                    ToastResult.makeToast((Context) c.activity, true, R.string.epaysdk_sdk_ver_suc).show();
                    QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(c));
                } else {
                    JSONObject setPwdJson = ControllerJsonBuilder.getSetPwdJson(false, true, false, false, c.activity != null ? c.activity.getString(R.string.epaysdk_exit_liveness_warming) : null);
                    LogicUtil.jsonPut(setPwdJson, BaseConstants.KEY_QVHUA_BTN_STRING, btnString);
                    ControllerRouter.route(RegisterCenter.SET_PWD, c.activity, setPwdJson, new ControllerCallback() { // from class: com.netease.epay.sdk.core.QvhuaHelper.7.1
                        @Override // com.netease.epay.sdk.controller.ControllerCallback
                        public void dealResult(ControllerResult controllerResult) {
                            if (controllerResult.isSuccess) {
                                ToastResult.makeToast((Context) activity, true, R.string.epaysdk_sdk_ver_suc).show();
                            }
                            QvhuaHelper.this.returnCallBackExit(QvhuaHelper.this.getEventFromController(controllerResult));
                        }
                    });
                }
            }
        });
    }
}
