package com.netease.epay.sdk.pay.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.netease.epay.sdk.base.hybrid.Hybrid;
import com.netease.epay.sdk.base.hybrid.common.JsConstant;
import com.netease.epay.sdk.base.ui.FragmentLayoutActivity;

/* loaded from: classes.dex */
public class WebActivity extends FragmentLayoutActivity {
    private String a;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity, com.netease.epay.sdk.base.ui.SdkActivity
    public void onCreateSdkActivity(Bundle savedInstanceState) {
        if (getIntent() != null) {
            this.a = getIntent().getStringExtra("WebActivity_h5PostUrl");
        }
        if (TextUtils.isEmpty(this.a)) {
            this.a = "http://epay.163.com";
        }
        Hybrid.addHandlerType(JsConstant.HYBRID_CMD_PAYRESULT, com.netease.epay.sdk.pay.b.b.class);
        super.onCreateSdkActivity(savedInstanceState);
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public Fragment getFirstFragment() {
        return q.a(true, this.a);
    }

    @Override // com.netease.epay.sdk.base.ui.FragmentLayoutActivity
    public void interceptExit() {
        finish();
    }
}
