package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.IFullScreenDialogFragment;
import com.netease.epay.sdk.base.ui.MockDialogFragmentLayout;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import org.json.JSONObject;

/* compiled from: CreditPayFragment.java */
/* loaded from: classes.dex */
public class b extends SdkFragment implements View.OnClickListener, IFullScreenDialogFragment {
    GridPasswordView a;
    EpaySdkPasswordChangedListener b = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.pay.ui.b.3
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(String psw) {
            JSONObject build = new JsonBuilder().addBizType().build();
            LogicUtil.jsonPut(build, "payMethod", PayConstants.PAY_METHOD_QUHUA);
            LogicUtil.jsonPut(build, "payAdditionalInfo", BaseData.payAdditionalInfo);
            PayController payController = (PayController) ControllerRouter.getController("pay");
            if (payController != null) {
                LogicUtil.jsonPut(build, "attach", payController.b);
            }
            LogicUtil.jsonPut(build, "challengeType", "paypwd");
            LogicUtil.jsonPut(build, "payPwd", DigestUtil.encode(psw));
            LogicUtil.jsonPut(build, "shortPwdEncodeFactor", LogicUtil.getFactor());
            LogicUtil.jsonPut(build, "hasShortPwd", true);
            LogicUtil.jsonPut(build, "bizType", "order");
            HttpClient.startRequest(PayConstants.payUrl, build, false, b.this.getActivity(), (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.ui.b.3.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                public void success(FragmentActivity activity, Object o) {
                    PayController payController2 = (PayController) ControllerRouter.getController("pay");
                    if (payController2 != null) {
                        payController2.deal(new BaseEvent("000000", null, b.this.getActivity()));
                    }
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public void onUIChanged(FragmentActivity activity, NewBaseResponse response) {
                    if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                        LogicUtil.showFragmentInActivity(new b(), activity);
                    }
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public void onLaterDeal(FragmentActivity activity, NewBaseResponse response) {
                    if (ErrorCode.PSW_ERROR_NOT_LOCK.equals(response.retcode)) {
                        LogicUtil.showFragmentInActivity(new b(), activity);
                    }
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    if (b.this.a != null && b.this.isVisible()) {
                        b.this.a.clearPassword();
                        return false;
                    }
                    return false;
                }
            });
        }
    };

    @Override // android.support.v4.app.Fragment
    @Nullable
    public MockDialogFragmentLayout onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_creditpay, (ViewGroup) null);
        this.a = (GridPasswordView) inflate.findViewById(R.id.et_payshorty_pwd);
        this.a.setOnPasswordChangedListener(this.b);
        if (!UiUtil.isLandScape(getResources())) {
            this.a.showKeyBoard();
        }
        ((FragmentTitleBar) inflate.findViewById(R.id.ftb)).setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                PayController payController = (PayController) ControllerRouter.getController("pay");
                if (payController != null) {
                    payController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT, b.this.getActivity()));
                }
                b.this.dismissAllowingStateLoss();
            }
        });
        inflate.findViewById(R.id.tvForgetPwd).setOnClickListener(this);
        return new MockDialogFragmentLayout(getActivity(), inflate);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.tvForgetPwd) {
            ControllerRouter.route(RegisterCenter.RESET_PWD, getActivity(), ControllerJsonBuilder.getResetPwdJson(false, 1), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.ui.b.2
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult controllerResult) {
                }
            });
        }
    }
}
