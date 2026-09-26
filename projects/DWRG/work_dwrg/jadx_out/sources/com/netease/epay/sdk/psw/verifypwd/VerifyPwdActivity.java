package com.netease.epay.sdk.psw.verifypwd;

import android.os.Bundle;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.psw.R;

/* loaded from: classes.dex */
public class VerifyPwdActivity extends SdkActivity {
    public int a;
    public int b;

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_transparent);
        Bundle extras = getIntent().getExtras();
        this.b = extras.getInt("pwdtype");
        this.a = extras.getInt("validate_type");
        a();
    }

    public void a() {
        SdkFragment dVar;
        if (this.b == 1) {
            dVar = new g();
        } else {
            dVar = new d();
        }
        LogicUtil.showFragmentInActivity(dVar, this);
    }

    public ControllerCallback b() {
        return new ControllerCallback() { // from class: com.netease.epay.sdk.psw.verifypwd.VerifyPwdActivity.1
            @Override // com.netease.epay.sdk.controller.ControllerCallback
            public void dealResult(ControllerResult controllerResult) {
                if (controllerResult.isSuccess) {
                    VerifyPwdActivity.this.c();
                }
            }
        };
    }

    public void c() {
        this.b = 1;
        a();
    }
}
