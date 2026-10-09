package org.json.sdk.controller;

import android.os.Bundle;
import org.json.sdk.utils.Logger;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class InterstitialActivity extends ControllerActivity {
    private static final String r = "InterstitialActivity";

    @Override // org.json.sdk.controller.ControllerActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i(r, "onCreate");
    }

    @Override // org.json.sdk.controller.ControllerActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Logger.i(r, y8.h.t0);
    }

    @Override // org.json.sdk.controller.ControllerActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.i(r, y8.h.u0);
    }
}
