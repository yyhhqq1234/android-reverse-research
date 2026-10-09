package com.applovin.impl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.hybridAds.MaxHybridMRecAdActivity;
import com.applovin.mediation.hybridAds.MaxHybridNativeAdActivity;

/* JADX INFO: loaded from: classes.dex */
public class cd {
    private final com.applovin.impl.sdk.j a;

    public cd(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
    }

    public void a(he heVar, Activity activity, MaxAdapterListener maxAdapterListener) {
        yp.b();
        if (activity == null) {
            activity = this.a.e().b();
        }
        if (heVar.getNativeAd() != null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("MaxHybridAdService", "Showing fullscreen native ad...");
            }
            this.a.e().a(new b(heVar, this.a, maxAdapterListener));
            activity.startActivity(new Intent(activity, (Class<?>) MaxHybridNativeAdActivity.class));
            return;
        }
        if (heVar.y() != null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("MaxHybridAdService", "Showing fullscreen MREC ad...");
            }
            this.a.e().a(new a(heVar, this.a, maxAdapterListener));
            activity.startActivity(new Intent(activity, (Class<?>) MaxHybridMRecAdActivity.class));
            return;
        }
        if (maxAdapterListener instanceof MaxInterstitialAdapterListener) {
            ((MaxInterstitialAdapterListener) maxAdapterListener).onInterstitialAdDisplayFailed(MaxAdapterError.AD_DISPLAY_FAILED);
        } else {
            if (maxAdapterListener instanceof MaxAppOpenAdapterListener) {
                ((MaxAppOpenAdapterListener) maxAdapterListener).onAppOpenAdDisplayFailed(MaxAdapterError.AD_DISPLAY_FAILED);
                return;
            }
            throw new IllegalStateException("Failed to display hybrid ad: neither native nor adview ad");
        }
    }

    private static class b extends p {
        private final he a;
        private final com.applovin.impl.sdk.j b;
        private final MaxAdapterListener c;

        public b(he heVar, com.applovin.impl.sdk.j jVar, MaxAdapterListener maxAdapterListener) {
            this.a = heVar;
            this.b = jVar;
            this.c = maxAdapterListener;
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxHybridNativeAdActivity) {
                ((MaxHybridNativeAdActivity) activity).a(this.a.H(), this.a.getNativeAd(), this.b, this.c);
            }
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if ((activity instanceof MaxHybridNativeAdActivity) && !activity.isChangingConfigurations() && this.a.w().get()) {
                this.b.e().b(this);
            }
        }
    }

    private static class a extends p {
        private final he a;
        private final com.applovin.impl.sdk.j b;
        private final MaxAdapterListener c;

        public a(he heVar, com.applovin.impl.sdk.j jVar, MaxAdapterListener maxAdapterListener) {
            this.a = heVar;
            this.b = jVar;
            this.c = maxAdapterListener;
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof MaxHybridMRecAdActivity) {
                ((MaxHybridMRecAdActivity) activity).a(this.a.H(), this.a.y(), this.b, this.c);
            }
        }

        @Override // com.applovin.impl.p, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if ((activity instanceof MaxHybridMRecAdActivity) && !activity.isChangingConfigurations() && this.a.w().get()) {
                this.b.e().b(this);
            }
        }
    }
}
