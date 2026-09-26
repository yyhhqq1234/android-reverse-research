package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class LoadingFragment extends SdkFragment {
    public static LoadingFragment getInstance(String text) {
        LoadingFragment loadingFragment = new LoadingFragment();
        Bundle bundle = new Bundle();
        bundle.putString("sdk_loading_text", text);
        loadingFragment.setArguments(bundle);
        return loadingFragment;
    }

    public void show(FragmentActivity actv) {
        FragmentTransaction beginTransaction;
        if (actv != null && actv.getSupportFragmentManager() != null && (beginTransaction = actv.getSupportFragmentManager().beginTransaction()) != null) {
            if (this != null) {
                beginTransaction.add(this, getClass().getSimpleName());
            }
            beginTransaction.commitAllowingStateLoss();
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.epaysdk_BlackDialog);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View inflate = inflater.inflate(R.layout.epaysdk_actv_progress, (ViewGroup) null);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("sdk_loading_text");
            TextView textView = (TextView) inflate.findViewById(R.id.tv_progress_me);
            if (!TextUtils.isEmpty(string)) {
                textView.setText(string);
            }
        }
        return inflate;
    }
}
