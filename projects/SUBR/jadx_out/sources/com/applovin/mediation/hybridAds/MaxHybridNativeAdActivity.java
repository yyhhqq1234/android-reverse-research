package com.applovin.mediation.hybridAds;

import android.os.Bundle;
import com.applovin.impl.ad;
import com.applovin.impl.bd;
import com.applovin.impl.jn;
import com.applovin.impl.sdk.j;
import com.applovin.impl.tm;
import com.applovin.impl.yl;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class MaxHybridNativeAdActivity extends ad {
    private MaxNativeAdView f;

    class a implements Runnable {
        final /* synthetic */ MaxNativeAd a;

        a(MaxNativeAd maxNativeAd) {
            this.a = maxNativeAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a.prepareForInteraction(MaxHybridNativeAdActivity.this.f.getClickableViews(), MaxHybridNativeAdActivity.this.f)) {
                return;
            }
            this.a.prepareViewForInteraction(MaxHybridNativeAdActivity.this.f);
        }
    }

    @Override // com.applovin.impl.ad, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(this.f, "MaxHybridNativeAdActivity");
    }

    public void a(bd bdVar, MaxNativeAd maxNativeAd, j jVar, MaxAdapterListener maxAdapterListener) {
        super.a(bdVar, jVar, maxAdapterListener);
        MaxNativeAdView maxNativeAdView = new MaxNativeAdView(maxNativeAd, new MaxNativeAdViewBinder.Builder(R.layout.max_hybrid_native_ad_view).setTitleTextViewId(R.id.applovin_native_title_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setIconImageViewId(R.id.applovin_native_icon_image_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setCallToActionButtonId(R.id.applovin_native_cta_button).build(), this);
        this.f = maxNativeAdView;
        maxNativeAdView.renderCustomNativeAdView(maxNativeAd);
        a aVar = new a(maxNativeAd);
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            runOnUiThread(aVar);
        } else {
            jVar.i0().a((yl) new jn(jVar, "MaxHybridNativeAdPrepareForInteraction", aVar), tm.b.MEDIATION);
        }
    }
}
