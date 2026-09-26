package com.netease.ntunisdk;

import android.content.Context;
import com.netease.mpay.MpayApp;
import com.netease.ntunisdk.base.SdkApplication;
import com.netease.ntunisdk.base.UniSdkUtils;

/* loaded from: classes.dex */
public class ApplicationNetease extends SdkApplication {
    private static final String LOG_TAG = "UniSDK netease";

    public ApplicationNetease(Context ctx) {
        super(ctx);
    }

    @Override // com.netease.ntunisdk.base.SdkApplication
    public String getChannel() {
        return "netease";
    }

    @Override // com.netease.ntunisdk.base.SdkApplication
    public void handleOnApplicationAttachBaseContext(Context ctx) {
        UniSdkUtils.d(LOG_TAG, "handleOnApplicationAttachBaseContext...");
        MpayApp.attachBaseContext(ctx);
    }

    @Override // com.netease.ntunisdk.base.SdkApplication
    public void handleOnApplicationOnCreate(Context ctx) {
        UniSdkUtils.d(LOG_TAG, "handleOnApplicationOnCreate...");
        MpayApp.onCreate(ctx);
    }
}
