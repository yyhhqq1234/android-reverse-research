package com.netease.epay.sdk.psw.verifypwd;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.netease.epay.sdk.base.simpleimpl.SimpleTextWatcher;
import com.netease.epay.sdk.base.util.DigestUtil;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.psw.R;

/* compiled from: VerifyLongPwdFragment.java */
/* loaded from: classes.dex */
public class d extends e implements View.OnClickListener {
    TextWatcher a = new SimpleTextWatcher() { // from class: com.netease.epay.sdk.psw.verifypwd.d.1
        @Override // com.netease.epay.sdk.base.simpleimpl.SimpleTextWatcher, android.text.TextWatcher
        public void onTextChanged(CharSequence s, int start, int before, int count) {
            if (s == null || s.length() == 0) {
                d.this.b.setCompoundDrawables(null, null, null, null);
            } else {
                d.this.b.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, d.this.getResources().getDrawable(R.drawable.epaysdk_icon_cleanup), (Drawable) null);
            }
        }
    };
    private EditText b;
    private TextView c;

    @Override // com.netease.epay.sdk.psw.verifypwd.e, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View onCreateView = super.onCreateView(inflater, container, savedInstanceState);
        Button button = (Button) onCreateView.findViewById(R.id.btn_done);
        button.setText("确 定");
        button.setOnClickListener(this);
        this.b = (EditText) onCreateView.findViewById(R.id.et_paypwd_input_pwd);
        this.b.addTextChangedListener(this.a);
        new EditBindButtonUtil(button).addEditText(this.b);
        this.c = (TextView) onCreateView.findViewById(R.id.tvTips);
        this.c.setOnClickListener(this);
        return onCreateView;
    }

    @Override // com.netease.epay.sdk.psw.verifypwd.e
    int a() {
        return R.layout.epaysdk_frag_wlaat_check_longpwd;
    }

    @Override // com.netease.epay.sdk.psw.verifypwd.e
    public void b() {
        this.b.setText("");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.btn_done) {
            a(DigestUtil.getMD5(this.b.getText().toString()));
        } else if (v.getId() == R.id.tvTips) {
            ControllerRouter.route(RegisterCenter.RESET_PWD, getActivity(), ControllerJsonBuilder.getResetPwdJson(false, 1), ((VerifyPwdActivity) getActivity()).b());
        }
    }
}
