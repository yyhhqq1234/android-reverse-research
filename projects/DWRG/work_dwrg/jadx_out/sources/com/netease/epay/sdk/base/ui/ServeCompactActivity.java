package com.netease.epay.sdk.base.ui;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebViewClient;
import android.widget.TextView;
import com.netease.epay.sdk.base.R;
import com.netease.epay.sdk.base.view.BaseWebView;

/* loaded from: classes.dex */
public class ServeCompactActivity extends SdkActivity {
    private BaseWebView webView;
    public static String TITLE = "agreementTitle";
    public static String URL = "agreementAddress";
    public static String NEED_SENCOND_TITLE = "needSecondTitle";

    @Override // com.netease.epay.sdk.base.ui.SdkActivity
    protected void onCreateSdkActivity(Bundle savedInstanceState) {
        setContentView(R.layout.epaysdk_actv_serve_pact);
        this.webView = (BaseWebView) findViewById(R.id.webView);
        this.webView.setHyBridConfigs();
        TextView textView = (TextView) findViewById(R.id.tv_servpact_title);
        if (getIntent() != null) {
            textView.setText(getIntent().getStringExtra(TITLE));
            if (!getIntent().getBooleanExtra(NEED_SENCOND_TITLE, true)) {
                textView.setVisibility(8);
            }
            String stringExtra = getIntent().getStringExtra(URL);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.webView.loadUrl(stringExtra);
            }
        }
        this.webView.setWebViewClient(new WebViewClient());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.epay.sdk.base.ui.SdkActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.webView != null) {
            ((ViewGroup) this.webView.getParent()).removeView(this.webView);
            this.webView.removeAllViews();
            this.webView.destroy();
        }
    }
}
