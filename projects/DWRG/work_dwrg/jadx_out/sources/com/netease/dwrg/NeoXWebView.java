package com.netease.dwrg;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class NeoXWebView implements DialogInterface.OnKeyListener, DialogInterface.OnShowListener {
    private Activity m_activity;
    private AlertDialog m_dialog;
    private LinearLayout m_layout;
    private WebView m_webView = null;
    private TextView m_title = null;
    private boolean m_clearHistory = false;

    public NeoXWebView(Activity activity) {
        this.m_dialog = null;
        this.m_activity = null;
        this.m_layout = null;
        this.m_activity = activity;
        this.m_layout = createLayout(activity);
        this.m_dialog = new AlertDialog.Builder(activity).setOnKeyListener(this).create();
        this.m_dialog.setView(this.m_layout, 0, 0, 0, 0);
        this.m_dialog.setCanceledOnTouchOutside(true);
    }

    public void show() {
        this.m_dialog.show();
        Window window = this.m_dialog.getWindow();
        WindowManager.LayoutParams params = window.getAttributes();
        params.width = -1;
        params.height = -1;
        params.flags |= 1792;
        window.setAttributes(params);
        window.clearFlags(131072);
        this.m_clearHistory = true;
    }

    public void hide() {
        this.m_dialog.cancel();
        this.m_webView.loadUrl("about:blank");
        this.m_webView.clearHistory();
    }

    public void loadUrl(String url) {
        this.m_webView.loadUrl(url);
    }

    public void setTitle(String title) {
        this.m_title.setText(title);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
        if (event.getKeyCode() == 4) {
            if (event.getAction() != 1) {
                return true;
            }
            if (this.m_webView.canGoBack()) {
                this.m_webView.goBack();
                return true;
            }
            hide();
            return true;
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
        this.m_webView.requestFocus();
    }

    private LinearLayout createLayout(Activity activity) {
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        LinearLayout header = new LinearLayout(activity);
        header.setOrientation(0);
        Button backButton = new Button(activity);
        backButton.setText(com.identityv.shrek156.R.string.neox_back);
        backButton.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        backButton.setOnClickListener(new View.OnClickListener() { // from class: com.netease.dwrg.NeoXWebView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                NeoXWebView.this.hide();
            }
        });
        this.m_title = new TextView(activity);
        this.m_title.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        this.m_title.setGravity(17);
        header.addView(backButton);
        header.addView(this.m_title);
        this.m_webView = createWebView(activity);
        this.m_webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(header);
        linearLayout.addView(this.m_webView);
        return linearLayout;
    }

    private WebView createWebView(Activity activity) {
        WebView webView = new WebView(activity);
        webView.setFocusable(true);
        webView.setFocusableInTouchMode(true);
        webView.getSettings().setSupportZoom(false);
        webView.getSettings().setJavaScriptEnabled(true);
        try {
            Method method = webView.getClass().getMethod("removeJavascriptInterface", String.class);
            method.invoke(webView, "searchBoxJavaBridge_");
        } catch (Exception e) {
            Log.d("NeoXWebView", "This API level do not support `removeJavascriptInterface`");
        }
        webView.setWebViewClient(new NeoXWebViewClient());
        webView.setWebChromeClient(new WebChromeClient());
        webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.netease.dwrg.NeoXWebView.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case 0:
                    case 1:
                        if (!v.hasFocus()) {
                            v.requestFocus();
                            return false;
                        }
                        return false;
                    default:
                        return false;
                }
            }
        });
        return webView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class NeoXWebViewClient extends WebViewClient {
        NeoXWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            NeoXWebView.this.setTitle(view.getTitle());
            if (NeoXWebView.this.m_clearHistory) {
                NeoXWebView.this.m_webView.clearHistory();
                NeoXWebView.this.m_clearHistory = false;
            }
        }
    }
}
