package com.netease.epay.sdk;

import android.content.Intent;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.support.v4.app.FragmentActivity;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.IParseCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ResponseParser implements IParseCallback {
    @Override // com.netease.epay.sdk.base.network.IParseCallback
    public <T> void parse(FragmentActivity activity, boolean isHome, NewBaseResponse<T> response, @NonNull String url, @NonNull JSONObject obj, @NonNull INetCallback<T> callback) {
        try {
            if (response == null) {
                parseFailure(activity, isHome, new NewBaseResponse(ErrorCode.CUSTOM_CODE.SERVER_ERROR), url, obj, callback);
            } else if (response.isSuccess() && response.result != null) {
                callback.success(activity, response.result);
            } else {
                parseFailure(activity, isHome, response, url, obj, callback);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.netease.epay.sdk.base.network.IParseCallback
    public void parseFailure(final FragmentActivity activity, boolean isHome, final NewBaseResponse response, @NonNull final String url, @NonNull final JSONObject obj, @NonNull final INetCallback callback) {
        if (ErrorCode.LOGIN_FAIL.equals(response.retcode)) {
            ExitUtil.failCallback(response.retcode, response.retdesc);
            return;
        }
        if (!callback.parseFailureBySelf(response)) {
            if (activity == null) {
                callback.onUnhandledFail(null, response);
                return;
            }
            if (isHome) {
                LogicUtil.showFragmentInActivity(OnlyMessageFragment.getInstance(response.retcode, response.retdesc, Constants.EXIT_CALLBACK), activity);
                return;
            }
            if ("050002".equals(response.retcode) || ErrorCode.RISK_VERIFY.equals(response.retcode)) {
                ControllerRouter.route("risk", activity, ControllerJsonBuilder.getRiskJson(obj, response), new ControllerCallback() { // from class: com.netease.epay.sdk.ResponseParser.1
                    @Override // com.netease.epay.sdk.controller.ControllerCallback
                    public void dealResult(ControllerResult controllerResult) {
                        if (controllerResult.isSuccess) {
                            HttpClient.startRequest(url, obj, false, activity, callback);
                        } else {
                            callback.onRiskBlock(activity, new NewBaseResponse(controllerResult.code, controllerResult.msg));
                        }
                    }
                });
                return;
            }
            if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode) || ErrorCode.PSW_ERROR_LOCK.equals(response.retcode)) {
                LogicUtil.showFragmentInActivity(TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.ResponseParser.2
                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public void rightClick() {
                        if (ErrorCode.PSW_ERROR_LOCK.equals(response.retcode)) {
                            ControllerRouter.route(RegisterCenter.RESET_PWD, activity, ControllerJsonBuilder.getResetPwdJson(false, 1), null);
                        } else {
                            ControllerRouter.route(RegisterCenter.RESET_PWD, activity, ControllerJsonBuilder.getResetPwdJson(true, 1), new ControllerCallback() { // from class: com.netease.epay.sdk.ResponseParser.2.1
                                @Override // com.netease.epay.sdk.controller.ControllerCallback
                                public void dealResult(ControllerResult result) {
                                    if (result.isSuccess) {
                                        callback.onLaterDeal(activity, response);
                                    } else {
                                        ExitUtil.failCallback(result.code, result.msg);
                                    }
                                }
                            });
                        }
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public void leftClick() {
                        if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                            callback.onUIChanged(activity, response);
                        } else if (ErrorCode.PSW_ERROR_LOCK.equals(response.retcode)) {
                            ExitUtil.failCallback(response.retcode, response.retdesc);
                        }
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public String getMsg() {
                        return response.retdesc;
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public String getLeft() {
                        return ErrorCode.PSW_ERROR_LOCK.equals(response.retcode) ? "确定" : "重新输入";
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public String getRight() {
                        return "找回支付密码";
                    }
                }), activity);
                return;
            }
            if (ErrorCode.serviceErrorCode.contains(response.retcode)) {
                LogicUtil.showFragmentInActivity(TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.ResponseParser.3
                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public void rightClick() {
                        try {
                            activity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + BaseData.getSerivcePhone())));
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        leftClick();
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public void leftClick() {
                        ExitUtil.failCallback(response.retcode, response.retdesc);
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public String getMsg() {
                        return response.retdesc;
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public String getLeft() {
                        return "取消";
                    }

                    @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
                    public String getRight() {
                        return "拨打客服电话";
                    }
                }), activity);
            } else if (ErrorCode.alertErrorList.contains(response.retcode)) {
                LogicUtil.showFragmentInActivity(OnlyMessageFragment.getInstance(response.retcode, response.retdesc, Constants.EXIT_CALLBACK), activity);
            } else {
                callback.onUnhandledFail(activity, response);
            }
        }
    }
}
