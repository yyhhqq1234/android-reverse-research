package com.netease.mpay.widget.webview.js;

import android.app.Activity;
import android.text.TextUtils;
import android.webkit.JsResult;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c extends AdvancedWebChromeClient {
    private Activity c;
    private InjectedBridgeApi d;
    private d e = new d(this);

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Activity activity, Config config, e eVar) {
        this.c = activity;
        this.d = new InjectedBridgeApi(activity, config, eVar);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(Activity activity) {
        boolean z = false;
        try {
            InputStream open = activity.getAssets().open("netease_mpay_webview_js/netease_mpay__bridge.js");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                if (readLine.contains("version_code")) {
                    String optString = new JSONObject(readLine.trim()).optString("version_code");
                    if (!TextUtils.isEmpty(optString) && TextUtils.equals(optString, "1.3.0")) {
                        z = true;
                    }
                }
            }
            open.close();
        } catch (Exception e) {
            g.a(e);
        }
        return z;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (this.d.dispatch(str2)) {
            jsResult.confirm();
            return true;
        }
        jsResult.cancel();
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        if (webView == null) {
            return;
        }
        if (this.e.a(webView, i)) {
            StringBuilder sb = new StringBuilder();
            try {
                InputStream open = this.c.getAssets().open("netease_mpay_webview_js/netease_mpay__bridge.js");
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else if (readLine.contains("sdk_config_template")) {
                        sb.append(readLine.replace("sdk_config_template", this.d.a()));
                    } else {
                        sb.append(readLine);
                    }
                }
                open.close();
            } catch (Exception e) {
                g.a(e);
            }
            webView.loadUrl("javascript:" + ((Object) sb));
        }
        super.onProgressChanged(webView, i);
    }
}
