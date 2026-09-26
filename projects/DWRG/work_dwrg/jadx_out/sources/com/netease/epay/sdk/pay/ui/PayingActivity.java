package com.netease.epay.sdk.pay.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.ToastUtil;
import com.netease.epay.sdk.pay.R;
import java.util.List;

/* loaded from: classes.dex */
public class PayingActivity extends SdkActivity {
    private a a;

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    public static void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) PayingActivity.class);
        intent.setFlags(67108864);
        context.startActivity(intent);
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_transparent);
        this.a = new com.netease.epay.sdk.pay.c.a(this);
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        b();
    }

    private void b() {
        new com.netease.epay.sdk.pay.a(this).a();
    }

    public void a() {
        if (com.netease.epay.sdk.pay.c.c) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (checkSelfPermission("android.permission.USE_FINGERPRINT") != 0) {
                    ToastUtil.show(this, getResources().getString(R.string.epaysdk_unavailable_finger));
                    if (com.netease.epay.sdk.pay.c.e) {
                        com.netease.epay.sdk.pay.c.f = true;
                    }
                    com.netease.epay.sdk.pay.c.c = false;
                }
                this.a.a();
                return;
            }
            return;
        }
        this.a.a();
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void initStateBar() {
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        List<Fragment> fragments = getSupportFragmentManager().getFragments();
        for (int i = 0; fragments != null && fragments.size() > i; i++) {
            Fragment fragment = fragments.get(i);
            if (fragment != null) {
                if (fragment instanceof n) {
                    Bundle arguments = fragment.getArguments();
                    boolean z = arguments != null ? arguments.getBoolean("isClose") : false;
                    ((n) fragment).dismissAllowingStateLoss();
                    LogicUtil.showFragmentInActivity(n.a(z), this);
                } else if (fragment instanceof j) {
                    Bundle arguments2 = fragment.getArguments();
                    ((j) fragment).dismissAllowingStateLoss();
                    LogicUtil.showFragmentInActivity(j.a(arguments2), this);
                }
            }
        }
    }
}
