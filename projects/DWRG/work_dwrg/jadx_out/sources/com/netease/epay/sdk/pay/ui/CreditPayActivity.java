package com.netease.epay.sdk.pay.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.util.LogicUtil;
import com.netease.epay.sdk.pay.R;

/* loaded from: classes.dex */
public class CreditPayActivity extends SdkActivity {
    public static void a(Context context) {
        Intent intent = new Intent(context, (Class<?>) CreditPayActivity.class);
        intent.setFlags(67108864);
        context.startActivity(intent);
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_transparent);
        b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        b();
    }

    private void b() {
        a();
    }

    public void a() {
        LogicUtil.showFragmentInActivity(new b(), this);
    }

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    public void initStateBar() {
    }
}
