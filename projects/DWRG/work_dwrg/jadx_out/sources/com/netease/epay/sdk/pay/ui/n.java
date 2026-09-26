package com.netease.epay.sdk.pay.ui;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.webkit.JsPromptResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import com.netease.epay.sdk.BuildConfig;
import com.netease.epay.sdk.base.core.BaseData;
import com.netease.epay.sdk.base.event.BaseEvent;
import com.netease.epay.sdk.base.hybrid.Hybrid;
import com.netease.epay.sdk.base.ui.SdkActivity;
import com.netease.epay.sdk.base.ui.SdkFragment;
import com.netease.epay.sdk.base.view.BaseWebView;
import com.netease.epay.sdk.base.view.StrokeColorButton;
import com.netease.epay.sdk.controller.ControllerRouter;
import com.netease.epay.sdk.pay.PayController;
import com.netease.epay.sdk.pay.R;
import java.math.BigDecimal;

/* compiled from: PayResultFragment.java */
/* loaded from: classes.dex */
public class n extends SdkFragment implements View.OnClickListener {
    private static String d;
    private com.netease.epay.sdk.pay.c.f a;
    private ViewStub b;
    private BaseWebView c;
    private Hybrid e;

    public static n a(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("isClose", z);
        n nVar = new n();
        nVar.setArguments(bundle);
        return nVar;
    }

    @Override // com.netease.epay.sdk.base.ui.SdkFragment, android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.epaysdk_DialogTranslucent);
        setCancelable(true);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        boolean z;
        BigDecimal bigDecimal;
        BigDecimal bigDecimal2;
        Bundle arguments = getArguments();
        if (arguments == null) {
            z = false;
        } else {
            z = arguments.getBoolean("isClose");
        }
        View inflate = inflater.inflate(R.layout.epaysdk_frag_pay_result, (ViewGroup) null);
        inflate.findViewById(R.id.tv_finish).setOnClickListener(this);
        inflate.findViewById(R.id.iv_frag_close_c).setOnClickListener(this);
        this.b = (ViewStub) inflate.findViewById(R.id.stub_webview);
        if (com.netease.epay.sdk.pay.b.a == null) {
            a();
            return inflate;
        }
        BigDecimal bigDecimal3 = new BigDecimal(com.netease.epay.sdk.pay.b.a.orderAmount);
        BigDecimal bigDecimal4 = new BigDecimal(com.netease.epay.sdk.pay.b.a.orderAmount);
        if (TextUtils.isEmpty(com.netease.epay.sdk.pay.b.a.hongbaoAmount)) {
            bigDecimal = null;
        } else {
            bigDecimal = new BigDecimal(com.netease.epay.sdk.pay.b.a.hongbaoAmount);
        }
        if (TextUtils.isEmpty(com.netease.epay.sdk.pay.b.a.promotionAmount)) {
            bigDecimal2 = null;
        } else {
            bigDecimal2 = new BigDecimal(com.netease.epay.sdk.pay.b.a.promotionAmount);
        }
        BigDecimal subtract = bigDecimal != null ? bigDecimal3.subtract(bigDecimal) : bigDecimal3;
        BigDecimal subtract2 = bigDecimal2 != null ? subtract.subtract(bigDecimal2) : subtract;
        ((TextView) inflate.findViewById(R.id.tv_pay_discount)).setText("￥" + subtract2);
        if (bigDecimal4 != null && bigDecimal4.compareTo(subtract2) == 0) {
            inflate.findViewById(R.id.tv_amount_old).setVisibility(8);
        } else {
            ((TextView) inflate.findViewById(R.id.tv_amount_old)).setText("￥" + com.netease.epay.sdk.pay.b.a.orderAmount);
            ((TextView) inflate.findViewById(R.id.tv_amount_old)).getPaint().setFlags(16);
        }
        if (com.netease.epay.sdk.pay.b.a.isUsedHongbao) {
            TextView textView = (TextView) inflate.findViewById(R.id.tv_pay_youhui);
            if (bigDecimal2.compareTo(BigDecimal.ZERO) == 1) {
                textView.setText("-￥" + com.netease.epay.sdk.pay.b.a.promotionAmount);
            } else {
                inflate.findViewById(R.id.rl_zhifu_youhui).setVisibility(8);
                if (inflate.findViewById(R.id.v_divier) != null) {
                    inflate.findViewById(R.id.v_divier).setVisibility(8);
                }
            }
            TextView textView2 = (TextView) inflate.findViewById(R.id.tv_pay_redpaper);
            if (bigDecimal.compareTo(BigDecimal.ZERO) == 1) {
                textView2.setText("-￥" + com.netease.epay.sdk.pay.b.a.hongbaoAmount);
            } else {
                inflate.findViewById(R.id.rl_zhifu_hongbao).setVisibility(8);
                if (inflate.findViewById(R.id.v_divier) != null) {
                    inflate.findViewById(R.id.v_divier).setVisibility(8);
                }
            }
        } else {
            inflate.findViewById(R.id.llDiscount).setVisibility(8);
        }
        if (!com.netease.epay.sdk.pay.c.e && com.netease.epay.sdk.pay.c.c) {
            inflate.findViewById(R.id.finger).setVisibility(0);
            StrokeColorButton strokeColorButton = (StrokeColorButton) inflate.findViewById(R.id.btnFinger);
            strokeColorButton.setEnabled(z);
            if (z) {
                strokeColorButton.setOnClickListener(this);
                strokeColorButton.setCompoundDrawables(null, null, null, null);
            } else {
                strokeColorButton.setBackgroundDrawable(strokeColorButton.getCustomDrawableAllRadius(-3355444));
                strokeColorButton.setTextColor(-6710887);
                strokeColorButton.setText("已开启");
                strokeColorButton.setPadding(25, 0, 0, 0);
            }
        } else {
            inflate.findViewById(R.id.finger).setVisibility(8);
        }
        if (TextUtils.isEmpty(d)) {
            this.a = new com.netease.epay.sdk.pay.c.f(this);
            this.a.a();
        } else {
            a(d);
        }
        return inflate;
    }

    @Override // android.support.v4.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v.getId() == R.id.btnFinger) {
            e.a((SdkActivity) getActivity());
        } else {
            a();
        }
    }

    public void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            d = str;
            if (this.c == null && this.b != null) {
                this.c = (BaseWebView) this.b.inflate();
            }
            if (this.c != null) {
                this.e = new Hybrid();
                this.c.setHyBridConfigs();
                this.c.setWebChromeClient(new WebChromeClient() { // from class: com.netease.epay.sdk.pay.ui.n.1
                    @Override // android.webkit.WebChromeClient
                    public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
                        if (n.this.e == null || !n.this.e.handlePrompt(view, message, defaultValue, result)) {
                            return super.onJsPrompt(view, url, message, defaultValue, result);
                        }
                        return true;
                    }

                    @Override // android.webkit.WebChromeClient
                    public void onProgressChanged(WebView view, int newProgress) {
                        super.onProgressChanged(view, newProgress);
                        if (n.this.e != null) {
                            n.this.e.initJSBridge(view, newProgress);
                        }
                    }
                });
                this.c.setWebViewClient(new WebViewClient() { // from class: com.netease.epay.sdk.pay.ui.n.2
                    @Override // android.webkit.WebViewClient
                    public boolean shouldOverrideUrlLoading(WebView view, String url) {
                        if (url.startsWith("epay163")) {
                            return true;
                        }
                        if (url.startsWith("tel:")) {
                            n.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                            return true;
                        }
                        return super.shouldOverrideUrlLoading(view, url);
                    }

                    @Override // android.webkit.WebViewClient
                    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
                        if (n.this.getContext().getPackageName() != null && n.this.getContext().getPackageName().startsWith(BuildConfig.APPLICATION_ID)) {
                            handler.proceed();
                        } else {
                            super.onReceivedSslError(view, handler, error);
                        }
                    }
                });
                this.c.loadUrlWithCookie(str, BaseData.cookie);
            }
        }
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        if (this.a != null) {
            this.a.b();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            ((ViewGroup) this.c.getParent()).removeView(this.c);
            this.c.removeAllViews();
            this.c.destroy();
        }
    }

    private void a() {
        d = null;
        com.netease.epay.sdk.pay.b.a = null;
        PayController payController = (PayController) ControllerRouter.getController("pay");
        if (payController != null) {
            payController.deal(new BaseEvent("000000", null, getActivity()));
        }
    }
}
