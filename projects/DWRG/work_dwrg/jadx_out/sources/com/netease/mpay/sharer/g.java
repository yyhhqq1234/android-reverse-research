package com.netease.mpay.sharer;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ac;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class g extends com.netease.mpay.a {
    private ac d;

    public g(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new ac(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    @SuppressLint({"SetJavaScriptEnabled"})
    public void b(Bundle bundle) {
        super.b(bundle);
        WebView webView = new WebView(this.a);
        this.a.setContentView(webView, new ViewGroup.LayoutParams(-1, -1));
        a(this.a.getString(RIdentifier.h.dE));
        webView.setWebViewClient(new h(this, webView));
        webView.getSettings().setJavaScriptEnabled(true);
        webView.loadUrl(this.d.a);
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        this.a.finish();
        return true;
    }
}
