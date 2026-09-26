package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.SdkConfig;

/* loaded from: classes.dex */
public class TitleMessageFragment extends SdkFragment implements View.OnClickListener {
    private static ITitleMsgCallback mCallback;
    private Button btnConfirm;
    private boolean isLinkfyAll;
    private boolean isNeedMovementMethod;

    /* loaded from: classes.dex */
    public interface ITitleMsgCallback {
        void doneClick();
    }

    public static TitleMessageFragment getInstance(String title, String msg) {
        return getInstance(title, msg, false);
    }

    public static TitleMessageFragment getInstance(String title, String msg, boolean linkifyAll) {
        return getInstance(title, msg, false, linkifyAll, null);
    }

    public static TitleMessageFragment getInstance(String title, SpannableString msg) {
        return getInstance(title, msg, true, false, null);
    }

    public static TitleMessageFragment getInstance(String title, CharSequence msg, boolean isNeedMovementMethod, boolean linkfyAll, ITitleMsgCallback callback) {
        TitleMessageFragment titleMessageFragment = new TitleMessageFragment();
        Bundle bundle = new Bundle();
        bundle.putString("title", title);
        bundle.putBoolean("linkify", linkfyAll);
        bundle.putCharSequence("msg", msg);
        bundle.putBoolean("isNeedMovement", isNeedMovementMethod);
        titleMessageFragment.setArguments(bundle);
        mCallback = callback;
        return titleMessageFragment;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_title_msg, (ViewGroup) null);
        Bundle arguments = getArguments();
        String string = arguments.getString("title");
        CharSequence charSequence = arguments.getCharSequence("msg");
        this.isNeedMovementMethod = arguments.getBoolean("isNeedMovement");
        this.isLinkfyAll = arguments.getBoolean("linkify");
        TextView textView = (TextView) inflate.findViewById(R.id.tv_titlemsg_title);
        TextView textView2 = (TextView) inflate.findViewById(R.id.tv_titlemsg_msg);
        textView2.setLinkTextColor(SdkConfig.getMainColor());
        this.btnConfirm = (Button) inflate.findViewById(R.id.btn_titlemsg_confirm_c);
        this.btnConfirm.setOnClickListener(this);
        if (TextUtils.isEmpty(string)) {
            textView.setVisibility(8);
        } else {
            textView.setText(string);
        }
        if (this.isLinkfyAll) {
            textView2.setAutoLinkMask(15);
        }
        textView2.setText(charSequence);
        if (this.isNeedMovementMethod) {
            textView2.setMovementMethod(LinkMovementMethod.getInstance());
        }
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.btnConfirm) {
            exit();
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.isNeedMovementMethod) {
            exit();
        }
    }

    private void exit() {
        dismissAllowingStateLoss();
        if (mCallback != null) {
            mCallback.doneClick();
            mCallback = null;
        }
    }
}
