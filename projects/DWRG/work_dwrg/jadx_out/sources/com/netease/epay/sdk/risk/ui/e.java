package com.netease.epay.sdk.risk.ui;

import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.FragmentTitleBar;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.risk.R;
import com.netease.epay.sdk.risk.RiskController;
import java.util.ArrayList;

/* compiled from: RiskSmsFragment.java */
/* loaded from: classes.dex */
public class e extends b implements View.OnClickListener, SendSmsButton.ISendSmsListener {
    private SendSmsButton a;
    private EditText b;
    private a c;
    private boolean d;
    private TextView e;

    /* compiled from: RiskSmsFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str);
    }

    public static e a(String str, String str2) {
        e eVar = new e();
        Bundle bundle = new Bundle();
        bundle.putString("epaysdk_sms_mobile", str2);
        bundle.putString("epaysdk_sms_riskType", str);
        eVar.setArguments(bundle);
        return eVar;
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            String string = getArguments().getString("epaysdk_sms_riskType");
            this.d = BaseConstants.RISK_TYEP_VOICE_MOBLIE.equals(string) || BaseConstants.RISK_TYEP_VOICE_QP.equals(string);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_risk_verify, (ViewGroup) null);
        FragmentTitleBar fragmentTitleBar = (FragmentTitleBar) inflate.findViewById(R.id.ftb);
        fragmentTitleBar.setTitle(this.d ? "请输入语音验证码" : "请输入短信验证码");
        fragmentTitleBar.setCloseListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.risk.ui.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                e.this.dismissAllowingStateLoss();
                RiskController riskController = (RiskController) ControllerRouter.getController("risk");
                if (riskController != null) {
                    riskController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT));
                }
            }
        });
        this.b = (EditText) inflate.findViewById(R.id.et_input_sms);
        this.b.setHint(Html.fromHtml("<small>请先获取验证码<small>"));
        this.a = (SendSmsButton) inflate.findViewById(R.id.btn_send_sms);
        this.a.setListener(this);
        this.e = (TextView) inflate.findViewById(R.id.tv_hint);
        this.e.setVisibility(0);
        Button button = (Button) inflate.findViewById(R.id.btn_done);
        button.setOnClickListener(this);
        new EditBindButtonUtil(button).addEditText(this.b);
        if (this.d) {
            this.c = new com.netease.epay.sdk.risk.a.b(this);
            this.e.setText("网易免费电话将会拨至：" + LogicUtil.formatPhoneNumber(((com.netease.epay.sdk.risk.a.b) this.c).a));
            this.a.setInitText("获取语音验证码");
            inflate.findViewById(R.id.tv_receiving_sms_error).setVisibility(8);
            this.b.setHint(Html.fromHtml("<small>6位语音验证码<small>"));
        } else {
            this.c = new com.netease.epay.sdk.risk.a.a(this);
            this.e.setText("短信验证码将发至：" + LogicUtil.formatPhoneNumber(((com.netease.epay.sdk.risk.a.a) this.c).a));
            this.a.sendSms(true);
        }
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.btn_done) {
            String obj = this.b.getText().toString();
            if (!this.a.isClick) {
                ToastUtil.show(getActivity(), "请先获取验证码，再支付！");
            } else if (this.c != null) {
                this.c.a(obj);
            } else {
                ToastUtil.show(getActivity(), "出错了");
            }
        }
    }

    @Override // com.netease.epay.sdk.base.view.SendSmsButton.ISendSmsListener
    public void sendSms() {
        if (this.c != null) {
            this.c.a();
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    public void a(String str, CharSequence charSequence, boolean z, boolean z2) {
        this.b.setHint(Html.fromHtml("<small>" + str + "<small>"));
        this.e.setText(charSequence);
        if (z) {
            LogicUtil.showSoftInput(this.b);
        }
        if (!z2 && this.a != null) {
            this.a.resetColdTime();
        }
    }

    @Override // com.netease.epay.sdk.risk.ui.b
    public void b(ArrayList<String> arrayList) {
        this.b.setText("");
    }
}
