package com.netease.epay.sdk.rsa.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.netease.epay.sdk.base.core.BaseConstants;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.JumpUtil;
import com.netease.epay.sdk.controller.ControllerCallback;
import com.netease.epay.sdk.controller.ControllerJsonBuilder;
import com.netease.epay.sdk.controller.ControllerResult;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.controller.RegisterCenter;
import com.netease.epay.sdk.rsa.R;

/* loaded from: classes.dex */
public class ChooseVerificationActivity extends SdkActivity {
    View.OnClickListener a = new View.OnClickListener() { // from class: com.netease.epay.sdk.rsa.ui.ChooseVerificationActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (v != ChooseVerificationActivity.this.c) {
                if (v == ChooseVerificationActivity.this.b) {
                    ControllerRouter.route(RegisterCenter.FACE, ChooseVerificationActivity.this, ControllerJsonBuilder.getFaceJson(BaseConstants.FACE_BIZ_VER_INSTALL_RSA, null), new ControllerCallback() { // from class: com.netease.epay.sdk.rsa.ui.ChooseVerificationActivity.1.1
                        @Override // com.netease.epay.sdk.controller.ControllerCallback
                        public void dealResult(ControllerResult controllerResult) {
                            Bundle bundle = new Bundle();
                            if (controllerResult.isSuccess) {
                                bundle.putBoolean("keyStartInstall", true);
                            }
                            if (!controllerResult.code.startsWith("-")) {
                                JumpUtil.go2Activity(ChooseVerificationActivity.this, ManageRSAActivity.class, bundle);
                            }
                        }
                    });
                    return;
                }
                return;
            }
            ChooseVerificationActivity.this.finish();
        }
    };
    private RelativeLayout b;
    private RelativeLayout c;

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_choose_verify);
        a();
    }

    private void a() {
        boolean z;
        Bundle extras;
        this.b = (RelativeLayout) findViewById(R.id.rlFace);
        this.c = (RelativeLayout) findViewById(R.id.rlId);
        boolean z2 = (getIntent() == null || (extras = getIntent().getExtras()) == null) ? false : extras.getBoolean(BaseConstants.RISK_TYEP_FACE);
        try {
            Class.forName(RegisterCenter.getController(RegisterCenter.FACE));
            z = z2;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            z = false;
        } catch (Exception e2) {
            e2.printStackTrace();
            z = z2;
        }
        if (z) {
            this.b.setVisibility(0);
        } else {
            this.b.setVisibility(8);
        }
        this.b.setOnClickListener(this.a);
        this.c.setOnClickListener(this.a);
    }
}
