package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import com.netease.download.Const;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.core.CoreData;
import com.netease.epay.sdk.base.ui.OnlyMessageFragment;
import com.netease.epay.sdk.base.util.AppUtils;
import com.netease.epay.sdk.base.util.EventBusUtil;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.base.util.PermissionUtils;
import com.netease.epay.sdk.base.util.UiUtil;
import com.netease.epay.sdk.base.view.ActivityTitleBar;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public abstract class SdkActivity extends FragmentActivity {
    public boolean isBackground = false;
    public boolean mDestroyed = false;

    protected abstract void onCreateSdkActivity(Bundle bundle);

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        if (checkBasicDataLost()) {
            super.onCreate(null);
            finish();
            return;
        }
        super.onCreate(savedInstanceState);
        onCreateSdkActivity(savedInstanceState);
        if (findViewById(R.id.atb) != null) {
            ((ActivityTitleBar) findViewById(R.id.atb)).setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.base.ui.SdkActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    SdkActivity.this.back(v);
                }
            });
        }
        initStateBar();
        EventBusUtil.getSingleton().register(this);
        this.mDestroyed = false;
    }

    @Override // android.app.Activity
    public void setContentView(int layoutResID) {
        super.setContentView(layoutResID);
        if (findViewById(R.id.atb) != null) {
            ((ActivityTitleBar) findViewById(R.id.atb)).setBackListener(new View.OnClickListener() { // from class: com.netease.epay.sdk.base.ui.SdkActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    SdkActivity.this.back(v);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusUtil.getSingleton().unregister(this);
        super.onDestroy();
        this.mDestroyed = true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(String event) {
        if (Const.LOG_TYPE_STATE_FINISH.equals(event) && !isFinishing()) {
            finish();
        }
    }

    protected boolean checkBasicDataLost() {
        return TextUtils.isEmpty(BaseData.orderPlatformId) && CoreData.bizType == -2;
    }

    public void initStateBar() {
        UiUtil.initImmersiveStatusBar(this);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        this.isBackground = true;
    }

    public void back(View view) {
        finish();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        back(null);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (checkBasicDataLost()) {
            CoreData.bizType = -2;
            LogicUtil.finishPay();
            EventBusUtil.post(Const.LOG_TYPE_STATE_FINISH);
            EventBusUtil.clearData();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        LogicUtil.hideSoftInput(this);
        super.finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        if (this.isBackground) {
            this.isBackground = false;
        }
    }

    @Override // android.app.Activity
    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Keep
    public void requestSDKPermission(int requsetCode, String... permission) {
        if (PermissionUtils.hasSelfPermissions(this, permission)) {
            onSDKPermissionGranted(requsetCode);
        } else {
            PermissionUtils.requestPermissions(this, permission, requsetCode);
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity, android.support.v4.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(final int requestCode, String[] permissions, int[] grantResults) {
        boolean z = false;
        if (grantResults != null && permissions != null && permissions.length > 0 && grantResults.length > 0) {
            int length = grantResults.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                final String str = permissions[i];
                if (grantResults[i] != -1) {
                    i++;
                } else if (ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
                    onSDKPermissionDenied(requestCode, str);
                } else {
                    LogicUtil.showFragmentWithHide(OnlyMessageFragment.newInstance("", getPermissionWarmingInfo(), "去设置", new OnlyMessageFragment.IOnlyMessageCallback() { // from class: com.netease.epay.sdk.base.ui.SdkActivity.3
                        @Override // com.netease.epay.sdk.base.ui.OnlyMessageFragment.IOnlyMessageCallback
                        public void callback(String code, String msg) {
                            AppUtils.startAppDetailSettingPage(SdkActivity.this);
                            SdkActivity.this.onSDKPermissionDenied(requestCode, str);
                        }
                    }), this, false);
                }
            }
            if (z) {
                onSDKPermissionGranted(requestCode);
            }
            super.onRequestPermissionsResult(requestCode, permissions, grantResults);
            return;
        }
        onSDKPermissionDenied(requestCode, "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSDKPermissionGranted(int requestCode) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSDKPermissionDenied(int requestCode, String permission) {
    }

    protected String getPermissionWarmingInfo() {
        return getString(R.string.epaysdk_permission_open_warming);
    }
}
