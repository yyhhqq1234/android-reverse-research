package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.ui.TwoButtonMessageFragment;
import com.netease.epay.sdk.base.util.ErrorCode;
import java.util.Stack;

/* loaded from: classes.dex */
public abstract class FragmentLayoutActivity extends SdkActivity {
    public static final int FRAGMENT_LAYOUT_ID = R.id.fragment_content;
    private Stack<Fragment> fragments = new Stack<>();

    public abstract Fragment getFirstFragment();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_full_fragment);
        if (savedInstanceState == null) {
            setContentFragment(getFirstFragment());
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void back(View view) {
        Fragment peek;
        if (this.fragments.size() <= 0 || (peek = this.fragments.peek()) == null || !(peek instanceof FullSdkFragment) || !((FullSdkFragment) peek).backKeyAction()) {
            if (this.fragments.size() > 1) {
                Fragment pop = this.fragments.pop();
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                beginTransaction.setCustomAnimations(R.anim.epaysdk_fade_in, R.anim.epaysdk_fade_out);
                beginTransaction.remove(pop);
                beginTransaction.commit();
                setContentFragment(this.fragments.peek());
                return;
            }
            if (this.fragments.size() == 1 || this.fragments.size() == 0) {
                interceptExit();
            }
        }
    }

    public void setContentFragment(Fragment fragment) {
        if (!isDestroyed() && !isFinishing() && fragment != null) {
            if (!this.fragments.contains(fragment)) {
                this.fragments.push(fragment);
                FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
                beginTransaction.setCustomAnimations(R.anim.epaysdk_fade_in, R.anim.epaysdk_fade_out);
                beginTransaction.add(R.id.fragment_content, fragment);
                Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.fragment_content);
                if (findFragmentById != null) {
                    beginTransaction.hide(findFragmentById);
                }
                beginTransaction.commitAllowingStateLoss();
                return;
            }
            FragmentTransaction beginTransaction2 = getSupportFragmentManager().beginTransaction();
            beginTransaction2.show(fragment);
            beginTransaction2.commitAllowingStateLoss();
        }
    }

    public void exitNotify(ErrorCode.CUSTOM_CODE code) {
    }

    public void interceptExit() {
        TwoButtonMessageFragment.getInstance(new TwoButtonMessageFragment.ITwoBtnFragCallback() { // from class: com.netease.epay.sdk.base.ui.FragmentLayoutActivity.1
            @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
            public void rightClick() {
                if (FragmentLayoutActivity.this.fragments != null && FragmentLayoutActivity.this.fragments.size() > 0) {
                    FragmentLayoutActivity.this.fragments.pop();
                }
                FragmentLayoutActivity.this.finish();
                FragmentLayoutActivity.this.exitNotify(ErrorCode.CUSTOM_CODE.USER_ABORT);
            }

            @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
            public void leftClick() {
            }

            @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
            public String getMsg() {
                return FragmentLayoutActivity.this.getExitDialogMsg();
            }

            @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
            public String getLeft() {
                return "否";
            }

            @Override // com.netease.epay.sdk.base.ui.TwoButtonMessageFragment.ITwoBtnFragCallback
            public String getRight() {
                return "是";
            }
        }).show(getSupportFragmentManager(), "exitConfirm");
    }

    protected String getExitDialogMsg() {
        return "是否退出";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.SdkActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.fragments != null) {
            this.fragments.clear();
        }
    }
}
