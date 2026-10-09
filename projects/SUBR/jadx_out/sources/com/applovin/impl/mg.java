package com.applovin.impl;

import android.webkit.WebView;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;

/* JADX INFO: loaded from: classes.dex */
public class mg extends lg {
    public mg(com.applovin.impl.sdk.ad.a aVar) {
        super(aVar);
    }

    @Override // com.applovin.impl.lg
    protected AdSessionConfiguration a() {
        try {
            return AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.LOADED, Owner.NATIVE, Owner.NONE, false);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.d, "Failed to create ad session configuration", th);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.lg
    protected AdSessionContext a(WebView webView) {
        AdSessionContext adSessionContextCreateHtmlAdSessionContext;
        try {
            if (this.a.getOpenMeasurementVerificationScriptResources().size() > 0) {
                adSessionContextCreateHtmlAdSessionContext = AdSessionContext.createNativeAdSessionContext(this.b.V().b(), this.b.V().a(), this.a.getOpenMeasurementVerificationScriptResources(), this.a.getOpenMeasurementContentUrl(), this.a.getOpenMeasurementCustomReferenceData());
            } else {
                adSessionContextCreateHtmlAdSessionContext = AdSessionContext.createHtmlAdSessionContext(this.b.V().b(), webView, this.a.getOpenMeasurementContentUrl(), this.a.getOpenMeasurementCustomReferenceData());
            }
            return adSessionContextCreateHtmlAdSessionContext;
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.d, "Failed to create ad session context", th);
            }
            return null;
        }
    }
}
