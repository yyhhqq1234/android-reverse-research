package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.SendSmsButton;
import com.netease.epay.sdk.base.view.SmsErrorTextView;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.ui.l;

/* compiled from: PaySmsFragment.java */
/* loaded from: classes.dex */
public class p extends l implements SendSmsButton.ISendSmsListener {
    private SendSmsButton c;
    private SmsErrorTextView d;
    private EditText e;
    private RelativeLayout f;
    private RelativeLayout g;
    private a h;

    /* compiled from: PaySmsFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str);

        void b();
    }

    public static p c() {
        return new p();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_paysms, (ViewGroup) null);
        this.a = l.b.c;
        a(inflate);
        this.e = (EditText) inflate.findViewById(R.id.et_input_sms);
        this.e.setHint(Html.fromHtml("<small>请先获取验证码<small>"));
        this.c = (SendSmsButton) inflate.findViewById(R.id.btn_send_sms);
        this.c.setListener(this);
        new EditBindButtonUtil(this.b).addEditText(this.e);
        this.d = (SmsErrorTextView) inflate.findViewById(R.id.tv_receiving_sms_error);
        this.f = (RelativeLayout) inflate.findViewById(R.id.rl_epaysdk_view_pay_detail);
        this.g = (RelativeLayout) inflate.findViewById(R.id.ll_paymethod);
        this.h = new com.netease.epay.sdk.pay.c.e(this);
        this.h.a();
        return inflate;
    }

    public void a(boolean z, CharSequence charSequence) {
        this.e.setHint(Html.fromHtml("<small>" + ((Object) charSequence) + "<small>"));
        if (z) {
            LogicUtil.showSoftInput(this.e);
        } else {
            this.c.resetColdTime();
        }
    }

    public void a(boolean z) {
        this.d.setIsBankSend(z);
    }

    public void d() {
        this.c.sendSms(true);
    }

    public void e() {
        this.f.setVisibility(8);
        this.g.setVisibility(8);
    }

    @Override // com.netease.epay.sdk.base.view.SendSmsButton.ISendSmsListener
    public void sendSms() {
        if (this.h != null) {
            this.h.b();
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l
    protected void b() {
        String obj = this.e.getText().toString();
        if (!this.c.isClick) {
            ToastUtil.show(getActivity(), "请先获取验证码，再支付！");
            return;
        }
        getView().findViewById(R.id.btn_done).setEnabled(false);
        if (this.h != null) {
            this.h.a(obj);
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l
    public void a() {
        super.a();
        this.e.setText("");
    }
}
