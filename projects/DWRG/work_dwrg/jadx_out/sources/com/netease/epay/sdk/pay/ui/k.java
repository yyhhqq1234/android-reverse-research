package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.model.Card;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.network.IParamsCallback;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.util.BackgroundDispatcher;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.RSA;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.pay.PayConstants;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.ui.l;
import org.json.JSONObject;

/* compiled from: PayFingerFragment.java */
/* loaded from: classes.dex */
public class k extends l implements FingerPrintHelper.SimpleAuthenticationCallback {
    private TextView c;
    private FingerPrintHelper d;
    private String e;
    private boolean f;
    private NetCallback<Object> g = new NetCallback<Object>() { // from class: com.netease.epay.sdk.pay.ui.k.4
        @Override // com.netease.epay.sdk.base.network.INetCallback
        public void success(FragmentActivity activity, Object o) {
            LogicUtil.showFragmentInActivity(p.c(), k.this.getActivity());
        }

        @Override // com.netease.epay.sdk.NetCallback, com.netease.epay.sdk.base.network.INetCallback
        public boolean parseFailureBySelf(NewBaseResponse resp) {
            ToastUtil.show(k.this.getActivity(), resp.retdesc);
            k.this.c();
            return true;
        }
    };

    public static k a(String str, boolean z) {
        k kVar = new k();
        Bundle bundle = new Bundle();
        bundle.putString("key", str);
        bundle.putBoolean("isSetFinger", z);
        kVar.setArguments(bundle);
        return kVar;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_pay_finger, (ViewGroup) null);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.e = arguments.getString("key");
            this.f = arguments.getBoolean("isSetFinger");
        }
        this.a = l.b.d;
        a(inflate);
        View findViewById = inflate.findViewById(R.id.tvUsePwd);
        findViewById.setVisibility(0);
        findViewById.setOnClickListener(this);
        this.c = (TextView) inflate.findViewById(R.id.tvFinger);
        this.d = new FingerPrintHelper(getActivity().getApplicationContext());
        this.d.setCallback(this);
        if (this.f) {
            this.d.generateToken();
        } else {
            this.d.setPurpose(2);
        }
        if (this.d.authenticate()) {
            return inflate;
        }
        c();
        return null;
    }

    @Override // com.netease.epay.sdk.pay.ui.l, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.tvUsePwd) {
            c();
        }
        super.onClick(view);
    }

    @Override // com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper.SimpleAuthenticationCallback
    public void onAuthenticationSucceeded(final String value) {
        if (!com.netease.epay.sdk.pay.c.d) {
            com.netease.epay.sdk.pay.c.g = new IParamsCallback() { // from class: com.netease.epay.sdk.pay.ui.k.1
                @Override // com.netease.epay.sdk.base.network.IParamsCallback
                public JSONObject getJsonObject() {
                    JSONObject build = new JsonBuilder().build();
                    LogicUtil.jsonPut(build, "fingerprintPayToken", RSA.encode(k.this.e, value));
                    return build;
                }
            };
            ToastUtil.show(getActivity(), getResources().getString(R.string.epaysdk_recording_finger));
            c();
        } else if (Card.isSelectedCardBankSend(CoreData.lastCheckIndex)) {
            HttpClient.startRequest(PayConstants.validateFingerprintPay, new IParamsCallback() { // from class: com.netease.epay.sdk.pay.ui.k.2
                @Override // com.netease.epay.sdk.base.network.IParamsCallback
                public JSONObject getJsonObject() {
                    JSONObject build = new JsonBuilder().build();
                    LogicUtil.jsonPut(build, "fingerprintPayToken", RSA.encode(k.this.e, value + BaseData.sessionId));
                    return build;
                }
            }, false, getActivity(), (INetCallback) this.g);
        } else {
            BackgroundDispatcher.getInstance().execute(new Runnable() { // from class: com.netease.epay.sdk.pay.ui.k.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("challengeType", "fingerprintPay");
                        jSONObject.put("fingerprintPayToken", RSA.encode(k.this.e, value + BaseData.sessionId));
                        if (CoreData.lastCheckIndex >= 0) {
                            jSONObject.put("quickPayId", Card.getSelectedCardBankQuickPayId(CoreData.lastCheckIndex));
                        }
                        k.this.a(jSONObject);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    @Override // com.netease.epay.sdk.base.util.fingerprint.FingerPrintHelper.SimpleAuthenticationCallback
    public void onAuthenticationFail(boolean isLocked) {
        if (isLocked) {
            c();
        } else {
            this.c.setText("再试一次");
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        this.d.stopAuthenticate();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        com.netease.epay.sdk.pay.c.f = true;
        if (getActivity() instanceof PayingActivity) {
            ((PayingActivity) getActivity()).a();
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
        this.d.stopAuthenticate();
    }
}
