package com.applovin.impl;

import android.net.Uri;
import android.webkit.WebView;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class vm extends yl implements ye.a {
    private final com.applovin.impl.sdk.ad.a h;
    private AppLovinAdLoadListener i;
    private com.applovin.impl.adview.b j;

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Rendering AppLovin ad #" + this.h.getAdIdNumber());
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.vm$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.e();
            }
        });
    }

    public vm(JSONObject jSONObject, JSONObject jSONObject2, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskProcessJavaScriptTagAd", jVar);
        this.h = new com.applovin.impl.sdk.ad.a(jSONObject, jSONObject2, jVar);
        this.i = appLovinAdLoadListener;
        jVar.R().a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        try {
            com.applovin.impl.adview.b bVar = new com.applovin.impl.adview.b(this.a, a());
            this.j = bVar;
            bVar.a(new b(this.a));
            this.j.loadDataWithBaseURL(this.h.h(), this.h.l1(), "text/html", null, "");
        } catch (Throwable th) {
            this.a.R().b(this);
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Failed to initialize WebView", th);
            }
            AppLovinAdLoadListener appLovinAdLoadListener = this.i;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(-1);
                this.i = null;
            }
        }
    }

    private class b extends com.applovin.impl.adview.c {
        private b(com.applovin.impl.sdk.j jVar) {
            super(null, jVar);
        }

        private boolean a(String str, sj sjVar) {
            Iterator it = vm.this.a.c(sjVar).iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.applovin.impl.adview.c
        protected boolean a(WebView webView, String str) {
            com.applovin.impl.sdk.n nVar = vm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                vm vmVar = vm.this;
                vmVar.c.d(vmVar.b, "Processing click on ad URL \"" + str + "\"");
            }
            if (str == null || !(webView instanceof com.applovin.impl.adview.b)) {
                return true;
            }
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if (!a(scheme, sj.N1)) {
                return true;
            }
            if (a(host, sj.O1)) {
                com.applovin.impl.sdk.n nVar2 = vm.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    vm vmVar2 = vm.this;
                    vmVar2.c.a(vmVar2.b, "Ad load succeeded");
                }
                if (vm.this.i == null) {
                    return true;
                }
                vm.this.i.adReceived(vm.this.h);
                vm.this.i = null;
                return true;
            }
            if (a(host, sj.P1)) {
                com.applovin.impl.sdk.n nVar3 = vm.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    vm vmVar3 = vm.this;
                    vmVar3.c.a(vmVar3.b, "Ad load failed");
                }
                if (vm.this.i == null) {
                    return true;
                }
                vm.this.i.failedToReceiveAd(204);
                vm.this.i = null;
                return true;
            }
            com.applovin.impl.sdk.n nVar4 = vm.this.c;
            if (!com.applovin.impl.sdk.n.a()) {
                return true;
            }
            vm vmVar4 = vm.this;
            vmVar4.c.b(vmVar4.b, "Unrecognized webview event");
            return true;
        }
    }

    @Override // com.applovin.impl.ye.a
    public void a(fe feVar) {
        if (feVar.R().equalsIgnoreCase(this.h.I())) {
            this.a.R().b(this);
            AppLovinAdLoadListener appLovinAdLoadListener = this.i;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(this.h);
                this.i = null;
            }
        }
    }
}
