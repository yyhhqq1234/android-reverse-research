package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.netease.epay.sdk.base.R;

/* loaded from: classes.dex */
public class SdkFragment extends DialogFragment {
    private LoadingFragment loadingFragment;

    @Override // android.support.v4.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (!(getActivity() instanceof SdkActivity)) {
                super.dismissAllowingStateLoss();
            } else if (!((SdkActivity) getActivity()).isDestroyed()) {
                super.dismissAllowingStateLoss();
            }
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (this instanceof IFullScreenDialogFragment) {
            setStyle(1, R.style.epaysdk_full_screen_dialog);
        } else {
            setStyle(1, R.style.epaysdk_dialog);
        }
        setCancelable(false);
    }

    @Override // android.support.v4.app.Fragment
    public void onPause() {
        if (getView() != null && (getView() instanceof ViewGroup)) {
            hideSoftInput(((ViewGroup) getView()).getFocusedChild());
        }
        super.onPause();
    }

    void hideSoftInput(View view) {
        if (getActivity() != null && view != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
            boolean z = false;
            int i = 0;
            while (!z && i <= 5) {
                i++;
                z = inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        }
    }

    public void showLoadingFragment(String text) {
        this.loadingFragment = LoadingFragment.getInstance(text);
        this.loadingFragment.show(getActivity());
    }

    public void dismissLoadingFragment() {
        if (this.loadingFragment != null) {
            this.loadingFragment.dismissAllowingStateLoss();
            this.loadingFragment = null;
        }
    }
}
