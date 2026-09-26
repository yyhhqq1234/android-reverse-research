package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class OnlyMessageFragment extends SdkFragment implements View.OnClickListener {
    public static final String BTN_TEXT = "BTN_TEXT";
    public static final String CODE = "code";
    public static final String MSG = "MSG";
    private static IOnlyMessageCallback callback;
    private String btnText;
    private String code;
    private String msg;

    /* loaded from: classes.dex */
    public interface IOnlyMessageCallback {
        void callback(String str, String str2);
    }

    public static OnlyMessageFragment getInstance(String msg) {
        return getInstance("", msg, null);
    }

    public static OnlyMessageFragment getInstance(String errorCode, String errorMsg, IOnlyMessageCallback callback2) {
        return newInstance(errorCode, errorMsg, null, callback2);
    }

    public static OnlyMessageFragment newInstance(String errorCode, String errorMsg, String btnText, IOnlyMessageCallback callback2) {
        callback = callback2;
        OnlyMessageFragment onlyMessageFragment = new OnlyMessageFragment();
        Bundle bundle = new Bundle();
        bundle.putString("code", errorCode);
        bundle.putString(MSG, errorMsg);
        bundle.putString(BTN_TEXT, btnText);
        onlyMessageFragment.setArguments(bundle);
        return onlyMessageFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_onlymsg, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(R.id.btn_onlymsg_confirm_c);
        button.setOnClickListener(this);
        Bundle arguments = getArguments();
        this.code = arguments.getString("code");
        this.msg = arguments.getString(MSG);
        String string = arguments.getString(BTN_TEXT);
        if (TextUtils.isEmpty(string)) {
            string = getString(R.string.epaysdk_known);
        }
        this.btnText = string;
        button.setText(this.btnText);
        ((TextView) inflate.findViewById(R.id.tv_onlymsg_msg)).setText(this.msg);
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        dismissAllowingStateLoss();
        if (callback != null) {
            callback.callback(this.code, this.msg);
            callback = null;
        }
    }
}
