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
public class TitleMsg2BtnFragment extends SdkFragment implements View.OnClickListener {
    private static ITitleTwoBtnFragCallback callback;

    /* loaded from: classes.dex */
    public interface ITitleTwoBtnFragCallback {
        String getLeft();

        String getMsg();

        String getRight();

        String getTitle();

        void leftClick();

        void rightClick();
    }

    public static TitleMsg2BtnFragment getInstance(ITitleTwoBtnFragCallback callback2) {
        callback = callback2;
        return new TitleMsg2BtnFragment();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_titlemsg2btn, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_titlemsg_msg);
        TextView textView2 = (TextView) inflate.findViewById(R.id.tv_titlemsg_title);
        if (callback == null) {
            dismissAllowingStateLoss();
            return inflate;
        }
        textView.setText(callback.getMsg());
        if (TextUtils.isEmpty(callback.getTitle())) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(callback.getTitle());
        }
        Button button = (Button) inflate.findViewById(R.id.btn_twobtnmsg_dialog_left);
        Button button2 = (Button) inflate.findViewById(R.id.btn_twobtnmsg_dialog_right);
        button.setOnClickListener(this);
        button2.setOnClickListener(this);
        button.setText(callback.getLeft());
        button2.setText(callback.getRight());
        return inflate;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        dismissAllowingStateLoss();
        if (callback != null) {
            if (v.getId() == R.id.btn_twobtnmsg_dialog_left) {
                callback.leftClick();
            } else {
                callback.rightClick();
            }
            callback = null;
        }
    }
}
