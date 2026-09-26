package com.netease.epay.sdk.rsa.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.view.ContentWithSpaceEditText;
import com.netease.epay.sdk.base.view.LongCommonButton;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.rsa.R;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IdentityVerificationActivity extends SdkActivity {
    EditBindButtonUtil a;
    private ContentWithSpaceEditText b;
    private String c;
    private String d;
    private boolean e;

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_act_id_verify);
        a();
    }

    private void a() {
        String str;
        Bundle extras;
        if (getIntent() == null || (extras = getIntent().getExtras()) == null) {
            str = null;
        } else {
            this.c = extras.getString("IdentityVerificationActivity_bindMobile");
            String string = extras.getString("IdentityVerificationActivity_accountName");
            this.d = extras.getString("IdentityVerificationActivity_businessType");
            this.e = extras.getBoolean(BaseConstants.RISK_TYEP_FACE);
            str = string;
        }
        TextView textView = (TextView) findViewById(R.id.tvName);
        if (!TextUtils.isEmpty(str)) {
            textView.setText(str);
        }
        this.b = (ContentWithSpaceEditText) findViewById(R.id.etIdentity);
        LogicUtil.showSoftInput(this.b);
        LongCommonButton longCommonButton = (LongCommonButton) findViewById(R.id.btnNext);
        this.a = new EditBindButtonUtil(longCommonButton);
        this.a.addEditText(this.b);
        longCommonButton.setOnClickListener(new AnonymousClass1());
        findViewById(R.id.tvChooseOther).setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.rsa.ui.IdentityVerificationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(BaseConstants.RISK_TYEP_FACE, IdentityVerificationActivity.this.e);
                JumpUtil.go2Activity(IdentityVerificationActivity.this, ChooseVerificationActivity.class, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.netease.epay.sdk.rsa.ui.IdentityVerificationActivity$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            JSONObject build = new JsonBuilder().build();
            JSONObject jSONObject = new JSONObject();
            LogicUtil.jsonPut(jSONObject, BaseConstants.NET_KEY_validContent, IdentityVerificationActivity.this.b.getTextWithoutSpace());
            LogicUtil.jsonPut(build, "identityCardItem", jSONObject);
            LogicUtil.jsonPut(build, "businessType", IdentityVerificationActivity.this.d);
            HttpClient.startRequest(BaseConstants.SECURITY_VALIDATE, build, false, (FragmentActivity) IdentityVerificationActivity.this, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.rsa.ui.IdentityVerificationActivity.1.1
                @Override // com.netease.epay.sdk.base.network.INetCallback
                public void success(FragmentActivity activity, Object o) {
                    JSONObject build2 = new JsonBuilder().build();
                    LogicUtil.jsonPut(build2, "businessType", IdentityVerificationActivity.this.d);
                    HttpClient.startRequest(BaseConstants.SEND_AUTH_CODE, build2, false, activity, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.rsa.ui.IdentityVerificationActivity.1.1.1
                        @Override // com.netease.epay.sdk.base.network.INetCallback
                        public void success(FragmentActivity activity2, Object o2) {
                            Bundle bundle = new Bundle();
                            bundle.putString("IdentityVerificationActivity_bindMobile", IdentityVerificationActivity.this.c);
                            bundle.putString("IdentityVerificationActivity_businessType", IdentityVerificationActivity.this.d);
                            bundle.putBoolean(BaseConstants.RISK_TYEP_FACE, IdentityVerificationActivity.this.e);
                            JumpUtil.go2Activity(IdentityVerificationActivity.this, SMSVerificationActivity.class, bundle, 1);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 1:
                if (resultCode == -1) {
                    setResult(-1);
                    finish();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
