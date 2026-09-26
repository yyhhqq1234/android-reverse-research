package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class TwoButtonMessageFragment extends SdkFragment implements View.OnClickListener {
    public static ITwoBtnFragCallback callback;

    /* loaded from: classes.dex */
    public interface ITwoBtnFragCallback {
        String getLeft();

        String getMsg();

        String getRight();

        void leftClick();

        void rightClick();
    }

    public static TwoButtonMessageFragment getInstance(ITwoBtnFragCallback callback2) {
        callback = callback2;
        return new TwoButtonMessageFragment();
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_frag_twobtnmsg, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_twobtnmsg_msg);
        Button button = (Button) inflate.findViewById(R.id.btn_twobtnmsg_dialog_left);
        Button button2 = (Button) inflate.findViewById(R.id.btn_twobtnmsg_dialog_right);
        button.setOnClickListener(this);
        button2.setOnClickListener(this);
        if (callback != null) {
            textView.setText(callback.getMsg());
            button.setText(callback.getLeft());
            button2.setText(callback.getRight());
        }
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
