package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.model.GetPublicKey;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.IParamsCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.DelayedTask;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.RSA;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.R;
import org.json.JSONObject;

/* compiled from: FingerprintAuthenticationFragment.java */
/* loaded from: classes.dex */
public class e extends SdkFragment implements FingerPrintHelper.SimpleAuthenticationCallback {
    private FingerPrintHelper a;
    private String b;
    private NetCallback<Object> c = new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.ui.e.5
        @Override // com.netease.epay.sdk.base.network.INetCallback
        public void success(FragmentActivity activity, Object o) {
            ToastUtil.show(e.this.getActivity(), "指纹支付已开启");
            e.this.a(false);
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse response) {
            ToastUtil.show(e.this.getActivity(), response.retdesc);
            e.this.a(true);
            return true;
        }
    };

    public static void a(final SdkActivity sdkActivity) {
        HttpClient.startRequest(BaseConstants.getPublicKeyUrl, new JsonBuilder().build(), false, (FragmentActivity) sdkActivity, (INetCallback) new NetCallback<GetPublicKey>() { // from class: com.netease.epay.sdk.pay.ui.e.1
            @Override // com.netease.epay.sdk.base.network.INetCallback
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public void success(FragmentActivity fragmentActivity, GetPublicKey getPublicKey) {
                e eVar = new e();
                Bundle bundle = new Bundle();
                bundle.putString("key", getPublicKey.publicKey);
                eVar.setArguments(bundle);
                LogicUtil.showFragmentInActivity(eVar, SdkActivity.this);
            }

            @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
            public boolean parseFailureBySelf(NewBaseResponse response) {
                ToastUtil.show(SdkActivity.this, response.retdesc);
                return true;
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_view_fingerprint, (ViewGroup) null);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.b = arguments.getString("key");
        }
        inflate.findViewById(R.id.btnCancel).setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.pay.ui.e.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                e.this.a(true);
            }
        });
        this.a = new FingerPrintHelper(getActivity().getApplicationContext());
        this.a.generateToken();
        this.a.setCallback(this);
        this.a.authenticate();
        return inflate;
    }

    @Override // com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper.SimpleAuthenticationCallback
    public void onAuthenticationSucceeded(final String value) {
        HttpClient.startRequest(BaseConstants.openFingerprintPay, new IParamsCallback() { // from class: com.netease.epay.sdk.pay.ui.e.3
            @Override // com.netease.epay.sdk.base.network.IParamsCallback
            public JSONObject getJsonObject() {
                JSONObject build = new JsonBuilder().build();
                LogicUtil.jsonPut(build, "fingerprintPayToken", RSA.encode(e.this.b, value));
                return build;
            }
        }, false, getActivity(), (INetCallback) this.c);
    }

    @Override // com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper.SimpleAuthenticationCallback
    public void onAuthenticationFail(boolean isLocked) {
        if (isLocked) {
            getView().findViewById(R.id.btnCancel).setEnabled(false);
            ToastUtil.show(getActivity(), "指纹验证次数过多，请稍后再试");
            new DelayedTask(500, new DelayedTask.IDelayedListener() { // from class: com.netease.epay.sdk.pay.ui.e.4
                @Override // com.netease.epay.sdk.base.util.DelayedTask.IDelayedListener
                public void onDelayed() {
                    e.this.a(true);
                }
            }).execute(new Void[0]);
            return;
        }
        ((TextView) getView().findViewById(R.id.tvFinger)).setText("再试一次");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.a != null) {
            this.a.stopAuthenticate();
        }
        LogicUtil.showFragmentInActivity(n.a(z), getActivity());
        this.a = null;
    }
}
