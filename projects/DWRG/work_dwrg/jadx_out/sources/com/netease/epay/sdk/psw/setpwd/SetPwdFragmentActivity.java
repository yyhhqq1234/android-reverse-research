package com.netease.epay.sdk.psw.setpwd;

import android.os.Bundle;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.psw.R;

/* loaded from: classes.dex */
public class SetPwdFragmentActivity extends SdkActivity {
    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_transparent);
        c cVar = new c();
        cVar.setArguments(getIntent().getExtras());
        LogicUtil.showFragmentInActivity(cVar, this);
    }
}
