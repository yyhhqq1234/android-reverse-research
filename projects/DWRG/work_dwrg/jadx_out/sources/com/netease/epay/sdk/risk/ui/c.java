package com.netease.epay.sdk.risk.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.IFullScreenDialogFragment;
import com.netease.epay.sdk.base.ui.MockDialogFragmentLayout;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.AppUtils;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.base.view.gridpwd.EpaySdkPasswordChangedListener;
import com.netease.epay.sdk.base.view.gridpwd.GridPasswordView;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.risk.R;
import com.netease.epay.sdk.risk.RiskController;
import com.netease.epay.sdk.risk.model.GeneralTokenSign;
import com.netease.epay.sdk.risk.util.mkey.OnlyForMkey;
import com.netease.mkey.loginsdk.LoginCallback;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: RiskGeneralFragment.java */
/* loaded from: classes.dex */
public class c extends b implements IFullScreenDialogFragment {
    private CheckBox d;
    private GridPasswordView e;
    private boolean f = true;
    private String g = null;
    private boolean h = false;
    EpaySdkPasswordChangedListener a = new EpaySdkPasswordChangedListener() { // from class: com.netease.epay.sdk.risk.ui.c.2
        @Override // com.netease.epay.sdk.base.view.gridpwd.OnPasswordChangedListener
        public void onMaxLength(String psw) {
            c.this.a(psw, c.this.d.isChecked());
        }
    };
    View.OnClickListener b = new View.OnClickListener() { // from class: com.netease.epay.sdk.risk.ui.c.3
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            HttpClient.startRequest("get_authorized_generalToken_sign.htm", new JsonBuilder().build(), false, c.this.getActivity(), (INetCallback) new NetCallback<GeneralTokenSign>() { // from class: com.netease.epay.sdk.risk.ui.c.3.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void success(FragmentActivity fragmentActivity, GeneralTokenSign generalTokenSign) {
                    com.netease.mkey.loginsdk.a.a(c.this.getActivity(), BaseData.accountId, generalTokenSign.pid, BaseData.sessionId, generalTokenSign.sign, c.this.c);
                }

                @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
                public boolean parseFailureBySelf(NewBaseResponse response) {
                    c.this.c.onError(0, response.retdesc);
                    return true;
                }
            });
        }
    };
    LoginCallback c = new LoginCallback() { // from class: com.netease.epay.sdk.risk.ui.c.4
        @Override // com.netease.mkey.loginsdk.LoginCallback
        public void onSuccess() {
            if (c.this.getActivity() != null && !c.this.getActivity().isFinishing() && !((SdkActivity) c.this.getActivity()).isDestroyed()) {
                JSONObject build = new JsonBuilder().build();
                LogicUtil.jsonPut(build, "isEnterAssistPwd", Boolean.valueOf(c.this.d != null && c.this.d.isChecked()));
                HttpClient.startRequest("authorized_validate_generalToken.htm", build, false, c.this.getActivity(), (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.risk.ui.c.4.1
                    @Override // com.netease.epay.sdk.base.network.INetCallback
                    public void success(FragmentActivity activity, Object o) {
                        c.this.dismissAllowingStateLoss();
                        RiskController riskController = (RiskController) ControllerRouter.getController("risk");
                        if (riskController != null) {
                            riskController.deal(new BaseEvent("000000", (String) null));
                        }
                    }
                });
            }
        }

        @Override // com.netease.mkey.loginsdk.LoginCallback
        public void onError(int i, String s) {
            if (c.this.getActivity() != null && !c.this.getActivity().isFinishing() && !((SdkActivity) c.this.getActivity()).isDestroyed()) {
                ToastUtil.show(c.this.getActivity(), s);
            }
        }

        @Override // com.netease.mkey.loginsdk.LoginCallback
        public void onCancel() {
            if (c.this.getActivity() != null && !c.this.getActivity().isFinishing() && !((SdkActivity) c.this.getActivity()).isDestroyed()) {
                ToastUtil.show(c.this.getActivity(), "取消自动校验");
            }
        }
    };

    public static c a(boolean z) {
        return a(true, z);
    }

    public static c a(boolean z, boolean z2) {
        c cVar = new c();
        Bundle bundle = new Bundle();
        bundle.putBoolean("getMKeyFromGeneralApp", z);
        bundle.putBoolean("risk_isAuthVerify", z2);
        cVar.setArguments(bundle);
        return cVar;
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f = arguments.getBoolean("getMKeyFromGeneralApp", true);
            this.h = arguments.getBoolean("risk_isAuthVerify", false);
        }
        if (this.f && OnlyForMkey.getInstance().getMkeyCalledlistener() != null) {
            this.g = OnlyForMkey.getInstance().getMkeyCalledlistener().called();
        }
        if (!TextUtils.isEmpty(this.g)) {
            setStyle(1, R.style.epaysdk_BlackDialog);
        }
    }

    @Override // android.support.v4.app.Fragment
    public MockDialogFragmentLayout onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view;
        if (TextUtils.isEmpty(this.g)) {
            View inflate = inflater.inflate(R.layout.epaysdk_frag_risk_general, (ViewGroup) null);
            this.d = (CheckBox) inflate.findViewById(R.id.cb_set_general);
            if (CoreData.bizType == 905) {
                this.d.setChecked(true);
                this.d.setVisibility(8);
            }
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.ll_check_general_key);
            this.e = (GridPasswordView) inflate.findViewById(R.id.et_general_pwd);
            this.e.setOnPasswordChangedListener(this.a);
            if (AppUtils.isPackageInstalled(BaseConstants.GENERAL_MKEY_PKG_NAME, getActivity()) && !BaseConstants.GENERAL_MKEY_PKG_NAME.equals(getActivity().getPackageName()) && this.h) {
                linearLayout.setVisibility(0);
                inflate.findViewById(R.id.tv_check_general_key).setOnClickListener(this.b);
            } else {
                linearLayout.setVisibility(8);
                if (!UiUtil.isLandScape(getResources())) {
                    this.e.showKeyBoard();
                }
            }
            view = inflate;
        } else {
            View inflate2 = inflater.inflate(R.layout.epaysdk_actv_progress, (ViewGroup) null);
            a(this.g, CoreData.bizType == 905);
            view = inflate2;
        }
        ((FragmentTitleBar) view.findViewById(R.id.ftb)).setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.risk.ui.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                c.this.dismissAllowingStateLoss();
                RiskController riskController = (RiskController) ControllerRouter.getController("risk");
                if (riskController != null) {
                    riskController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT));
                }
            }
        });
        return new MockDialogFragmentLayout(getActivity(), view);
    }

    public void a(String str, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(BaseConstants.RISK_TYEP_GENERAL, str);
            jSONObject.put("challengeInfo", jSONObject2);
            jSONObject.put("isEnterAssistPwd", z);
            a(jSONObject);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.netease.epay.sdk.risk.ui.b
    public void b(ArrayList<String> arrayList) {
        if (TextUtils.isEmpty(this.g) && this.e != null) {
            this.e.clearPassword();
        } else {
            dismissAllowingStateLoss();
            a(false, false).show(getFragmentManager(), "epaysdk_risk");
        }
    }
}
