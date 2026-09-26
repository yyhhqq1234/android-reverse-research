package com.netease.epay.sdk.risk.ui;

import android.os.Bundle;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.risk.R;
import com.netease.epay.sdk.risk.RiskController;

/* loaded from: classes.dex */
public class RiskActivity extends SdkActivity {
    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_transparent);
        RiskController riskController = (RiskController) ControllerRouter.getController("risk");
        if (riskController != null) {
            riskController.a(this);
        } else {
            finish();
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected boolean checkBasicDataLost() {
        return false;
    }
}
