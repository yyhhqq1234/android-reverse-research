package com.netease.epay.sdk.rsa.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netease.epay.sdk.NetCallback;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.network.HttpClient;
import com.netease.epay.sdk.base.network.INetCallback;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.AutoSmsAuthCodeEditText;
import com.netease.epay.sdk.base.view.LongCommonButton;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.base.view.SmsErrorTextView;
import com.netease.epay.sdk.model.JsonBuilder;
import com.netease.epay.sdk.rsa.R;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SMSVerificationActivity extends SdkActivity {
    private TextView a;
    private AutoSmsAuthCodeEditText b;
    private String c;
    private String d;
    private boolean e;

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_addcard_sms);
        a();
    }

    private void a() {
        Bundle extras;
        if (getIntent() != null && (extras = getIntent().getExtras()) != null) {
            this.c = extras.getString("IdentityVerificationActivity_bindMobile");
            this.d = extras.getString("IdentityVerificationActivity_businessType");
            this.e = extras.getBoolean(BaseConstants.RISK_TYEP_FACE);
        }
        ((ActivityTitleBar) findViewById(R.id.atb)).setTitle(getString(R.string.epaysdk_id_verify));
        findViewById(R.id.step_show_view).setVisibility(8);
        this.a = (TextView) findViewById(R.id.tv_addcardsms_top_info);
        a(true);
        this.b = (AutoSmsAuthCodeEditText) findViewById(R.id.et_input_sms);
        LogicUtil.showSoftInput(this.b);
        SendSmsButton sendSmsButton = (SendSmsButton) findViewById(R.id.btn_send_sms);
        sendSmsButton.sendSms(false);
        sendSmsButton.setListener(new SendSmsButton.ISendSmsListener() { // from class: com.netease.epay.sdk.rsa.ui.SMSVerificationActivity.1
            @Override // com.netease.epay.sdk.base.view.SendSmsButton.ISendSmsListener
            public void sendSms() {
                SMSVerificationActivity.this.a(false);
                JSONObject build = new JsonBuilder().build();
                LogicUtil.jsonPut(build, "businessType", SMSVerificationActivity.this.d);
                HttpClient.startRequest(BaseConstants.SEND_AUTH_CODE, build, false, (FragmentActivity) SMSVerificationActivity.this, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.rsa.ui.SMSVerificationActivity.1.1
                    @Override // com.netease.epay.sdk.base.network.INetCallback
                    public void success(FragmentActivity activity, Object o) {
                        SMSVerificationActivity.this.a(true);
                    }
                });
            }
        });
        ((SmsErrorTextView) findViewById(R.id.tv_receiving_sms_error)).setIsBankSend(false);
        LongCommonButton longCommonButton = (LongCommonButton) findViewById(R.id.btn_done);
        longCommonButton.setText(getString(R.string.epaysdk_ok));
        longCommonButton.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.rsa.ui.SMSVerificationActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TextUtils.isEmpty(SMSVerificationActivity.this.b.getText().toString()) || SMSVerificationActivity.this.b.getText().toString().length() < 6) {
                    ToastUtil.show(SMSVerificationActivity.this, SMSVerificationActivity.this.getString(R.string.epaysdk_input_sms_code));
                    return;
                }
                JSONObject build = new JsonBuilder().build();
                LogicUtil.jsonPut(build, "businessType", SMSVerificationActivity.this.d);
                LogicUtil.jsonPut(build, BaseConstants.NET_KEY_validContent, SMSVerificationActivity.this.b.getText().toString());
                HttpClient.startRequest("validate_auth_code.htm", build, false, (FragmentActivity) SMSVerificationActivity.this, (INetCallback) new NetCallback<Object>() { // from class: com.netease.epay.sdk.rsa.ui.SMSVerificationActivity.2.1
                    @Override // com.netease.epay.sdk.base.network.INetCallback
                    public void success(FragmentActivity activity, Object o) {
                        SMSVerificationActivity.this.setResult(-1);
                        SMSVerificationActivity.this.finish();
                    }
                });
            }
        });
        new EditBindButtonUtil(longCommonButton).addEditText(this.b);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(getString(R.string.epaysdk_id_verify_tips));
        if (z) {
            sb.append("\n").append(getString(R.string.epaysdk_code_sent_already));
            if (!TextUtils.isEmpty(this.c)) {
                sb.append("：").append(this.c);
            }
        }
        this.a.setText(sb);
    }

    private void b() {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.rl_sms);
        TextView textView = new TextView(this);
        textView.setPadding(UiUtil.dp2px(this, 10), UiUtil.dp2px(this, 5), UiUtil.dp2px(this, 10), UiUtil.dp2px(this, 10));
        textView.setText(getString(R.string.epaysdk_verification_choose_other));
        textView.setTextSize(14.0f);
        textView.setTextColor(-9458967);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.rsa.ui.SMSVerificationActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(BaseConstants.RISK_TYEP_FACE, SMSVerificationActivity.this.e);
                JumpUtil.go2Activity(SMSVerificationActivity.this, ChooseVerificationActivity.class, bundle);
            }
        });
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, ((LongCommonButton) findViewById(R.id.btn_done)).getId());
        layoutParams.setMargins(0, UiUtil.dp2px(this, 5), 0, 0);
        relativeLayout.addView(textView, layoutParams);
    }
}
