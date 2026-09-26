package com.netease.epay.sdk.pay.ui.card;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.ui.FullSdkFragment;
import com.netease.epay.sdk.base.util.EditBindButtonUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import com.netease.epay.sdk.base.view.SmsErrorTextView;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.pay.R;

/* compiled from: AddCard3Fragment.java */
/* loaded from: classes.dex */
public class c extends FullSdkFragment implements View.OnClickListener {
    d a = null;
    private Button b;
    private EditText c;

    public static c a(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putInt("AddCard3SmsActivity_biz_mode", i);
        bundle.putString(BaseConstants.INTENT_ADDCARD_BANK_ID, str);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CARD_NUMBER, str2);
        bundle.putString(BaseConstants.INTENT_ADDCARD_PHONE, str3);
        bundle.putString(BaseConstants.INTENT_ADDCARD_FORGET_CERT, str4);
        bundle.putString(BaseConstants.INTENT_ADDCARD_ACCOUNTNAME, str5);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CREID_EXPIRE, str6);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CVV2, str7);
        bundle.putString(BaseConstants.INTENT_ADDCARD_QUICKPAYID, str8);
        bundle.putString(BaseConstants.INTENT_ADDCARD_SMS_ATTACH, str9);
        bundle.putString(BaseConstants.INTENT_ADDCARD_CHARGE_ID, str10);
        bundle.putBoolean(BaseConstants.INTENT_ADDCARD_IS_MUST_SETPWD, z);
        c cVar = new c();
        cVar.setArguments(bundle);
        return cVar;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        switch (getArguments().getInt("AddCard3SmsActivity_biz_mode", 0)) {
            case 1:
                this.a = new g(this);
                break;
            case 2:
                this.a = new h(this);
                break;
            default:
                ToastUtil.show(getActivity(), "出错了");
                getActivity().finish();
                return;
        }
        this.a.a(getArguments());
    }

    @Override // android.support.v4.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.epaysdk_actv_addcard_sms, (ViewGroup) null);
    }

    @Override // com.netease.epay.sdk.base.ui.FullSdkFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (this.a != null) {
            ((ActivityTitleBar) this.rootView.findViewById(R.id.atb)).setTitle("填写验证码");
            this.c = (EditText) findV(R.id.et_input_sms);
            this.b = (Button) findV(R.id.btn_done);
            this.b.setOnClickListener(this);
            new EditBindButtonUtil(this.b).addEditText(this.c);
            ((SmsErrorTextView) findV(R.id.tv_receiving_sms_error)).setIsBankSend(true);
            this.c.requestFocus();
            this.a.a();
            LogicUtil.showSoftInput(this.c);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.b) {
            if (this.a != null) {
                this.a.a(this.c.getText().toString());
            } else {
                ToastUtil.show(getActivity(), "出错了");
            }
        }
    }

    public void a(ControllerResult controllerResult) {
        if (this.a != null) {
            this.a.a(controllerResult);
        } else {
            ToastUtil.show(getActivity(), "出错了");
        }
    }

    public void a() {
        this.c.setText("");
    }
}
