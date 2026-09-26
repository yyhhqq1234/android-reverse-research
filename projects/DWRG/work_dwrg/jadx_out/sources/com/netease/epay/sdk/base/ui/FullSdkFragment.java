package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.view.ActivityTitleBar;

/* loaded from: classes.dex */
public class FullSdkFragment extends Fragment {
    public View rootView;

    @Override // android.support.v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.rootView = view;
        this.rootView.setBackgroundDrawable(getResources().getDrawable(R.drawable.epaysdk_actv_background));
        if (this.rootView.findViewById(R.id.atb) != null) {
            ((ActivityTitleBar) this.rootView.findViewById(R.id.atb)).setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.base.ui.FullSdkFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    FullSdkFragment.this.back(v);
                }
            });
        }
        view.setClickable(true);
    }

    public <T extends View> T findV(int i) {
        return (T) this.rootView.findViewById(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void back(View view) {
        if (getActivity() instanceof FragmentLayoutActivity) {
            ((FragmentLayoutActivity) getActivity()).back(view);
        }
    }

    public void addNextFragment2Activity(FullSdkFragment fullSdkFragment) {
        if (getActivity() != null && (getActivity() instanceof FragmentLayoutActivity)) {
            ((FragmentLayoutActivity) getActivity()).setContentFragment(fullSdkFragment);
        }
    }

    public boolean backKeyAction() {
        return false;
    }
}
