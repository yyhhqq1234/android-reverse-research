package com.netease.epay.sdk.register;

import android.os.Bundle;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.network.NewBaseResponse;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.ErrorCode;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.messenger.R;
import com.netease.epay.sdk.register.a;

/* loaded from: classes.dex */
public class RegisterActivity extends SdkActivity {
    private a.InterfaceC0022a a = new a.InterfaceC0022a() { // from class: com.netease.epay.sdk.register.RegisterActivity.1
        @Override // com.netease.epay.sdk.register.a.InterfaceC0022a
        public void a() {
            DeviceRegisterController deviceRegisterController = (DeviceRegisterController) ControllerRouter.getController("register");
            if (deviceRegisterController != null) {
                deviceRegisterController.deal(new BaseEvent("000000", null, RegisterActivity.this));
            }
        }

        @Override // com.netease.epay.sdk.register.a.InterfaceC0022a
        public void a(NewBaseResponse newBaseResponse) {
            DeviceRegisterController deviceRegisterController = (DeviceRegisterController) ControllerRouter.getController("register");
            if (deviceRegisterController != null) {
                deviceRegisterController.deal(new BaseEvent(newBaseResponse, RegisterActivity.this));
            }
        }
    };

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_transparent);
        requestSDKPermission(11, "android.permission.READ_PHONE_STATE");
    }

    private void a() {
        DeviceRegisterController deviceRegisterController = (DeviceRegisterController) ControllerRouter.getController("register");
        if (deviceRegisterController != null) {
            deviceRegisterController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.NO_PERMISSION, this));
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        DeviceRegisterController deviceRegisterController = (DeviceRegisterController) ControllerRouter.getController("register");
        if (deviceRegisterController != null) {
            deviceRegisterController.deal(new BaseEvent(ErrorCode.CUSTOM_CODE.USER_ABORT, this));
        }
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void initStateBar() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void onSDKPermissionDenied(int requestCode, String permission) {
        super.onSDKPermissionDenied(requestCode, permission);
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void onSDKPermissionGranted(int requestCode) {
        super.onSDKPermissionGranted(requestCode);
        new a(this, this.a, true).a();
    }
}
