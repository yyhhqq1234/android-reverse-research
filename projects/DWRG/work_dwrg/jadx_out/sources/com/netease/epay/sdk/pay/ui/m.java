package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.base.simpleimpl.SimpleTextWatcher;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.CleanUpEditText;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.pay.R;
import com.netease.epay.sdk.pay.ui.l;

/* compiled from: PayPwdFragment.java */
/* loaded from: classes.dex */
public class m extends l implements View.OnClickListener {
    TextWatcher c = new SimpleTextWatcher() { // from class: com.netease.epay.sdk.pay.ui.m.2
        @Override // com.netease.epay.sdk.base.simpleimpl.SimpleTextWatcher, android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (m.this.f != null) {
                m.this.f.setVisibility(TextUtils.isEmpty(s) ? 0 : 8);
            }
            if (m.this.d != null) {
                m.this.d.setCompoundDrawablesWithIntrinsicBounds(0, 0, TextUtils.isEmpty(s) ? 0 : R.drawable.epaysdk_icon_cleanup, 0);
            }
        }
    };
    private CleanUpEditText d;
    private a e;
    private TextView f;

    /* compiled from: PayPwdFragment.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(String str);
    }

    public static m c() {
        return new m();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_paypwd, (ViewGroup) null);
        this.a = l.b.b;
        a(inflate);
        this.d = (CleanUpEditText) inflate.findViewById(R.id.et_paypwd_input_pwd);
        this.d.addTextChangedListener(this.c);
        new EditBindButtonUtil(this.b).addEditText(this.d);
        this.f = (TextView) inflate.findViewById(R.id.tvTips);
        this.f.setOnClickListener(this);
        this.e = new com.netease.epay.sdk.pay.c.c(this);
        return inflate;
    }

    @Override // com.netease.epay.sdk.pay.ui.l, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.tvTips) {
            ControllerRouter.route(RegisterCenter.RESET_PWD, getActivity(), ControllerJsonBuilder.getResetPwdJson(false, 1), new ControllerCallback() { // from class: com.netease.epay.sdk.pay.ui.m.1
                @Override // com.netease.epay.sdk.controller.ControllerCallback
                public void dealResult(ControllerResult controllerResult) {
                    if (controllerResult.isSuccess) {
                        PayingActivity.a(m.this.getActivity());
                    }
                }
            });
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l
    protected void b() {
        String obj = this.d.getText().toString();
        getView().findViewById(R.id.btn_done).setEnabled(false);
        String md5 = DigestUtil.getMD5(obj);
        if (this.e != null) {
            this.e.a(md5);
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    @Override // com.netease.epay.sdk.pay.ui.l
    public void a() {
        super.a();
        this.d.setText("");
    }
}
