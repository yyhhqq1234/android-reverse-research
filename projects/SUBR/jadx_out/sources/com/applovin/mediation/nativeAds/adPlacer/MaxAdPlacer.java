package com.applovin.mediation.nativeAds.adPlacer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.dd;
import com.applovin.impl.ie;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.yc;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MaxAdPlacer implements dd.a {
    private AppLovinSdkUtils.Size a;
    private MaxNativeAdViewBinder b;
    private final yc c;
    private final dd d;
    private Listener e;
    protected final n logger;
    protected final j sdk;

    public interface Listener {
        void onAdClicked(MaxAd maxAd);

        void onAdLoaded(int i);

        void onAdRemoved(int i);

        void onAdRevenuePaid(MaxAd maxAd);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, Context context) {
        this(maxAdPlacerSettings, AppLovinSdk.getInstance(context), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, Collection collection) {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Clearing trailing ads after position " + i);
        }
        this.c.a(collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Clearing all cached ads");
        }
        this.c.a();
        this.d.a();
    }

    public void clearAds() {
        a(this.c.b(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b();
            }
        });
    }

    public Collection<Integer> clearTrailingAds(final int i) {
        final Collection<Integer> collectionE = this.c.e(i);
        if (!collectionE.isEmpty()) {
            a(collectionE, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(i, collectionE);
                }
            });
        }
        return collectionE;
    }

    public void destroy() {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Destroying ad placer");
        }
        clearAds();
        this.d.c();
    }

    public long getAdItemId(int i) {
        if (isFilledPosition(i)) {
            return -System.identityHashCode(this.c.a(i));
        }
        return 0L;
    }

    public AppLovinSdkUtils.Size getAdSize(int i, int i2) {
        if (isFilledPosition(i)) {
            AppLovinSdkUtils.Size size = this.a;
            boolean z = size != AppLovinSdkUtils.Size.ZERO;
            int iMin = Math.min(z ? size.getWidth() : 360, i2);
            ie ieVar = (ie) this.c.a(i);
            if ("small_template_1".equalsIgnoreCase(ieVar.r0())) {
                return new AppLovinSdkUtils.Size(iMin, z ? this.a.getHeight() : 120);
            }
            if (MaxNativeAdView.MEDIUM_TEMPLATE_1.equalsIgnoreCase(ieVar.r0())) {
                return new AppLovinSdkUtils.Size(iMin, (int) (((double) iMin) / (z ? ((double) this.a.getWidth()) / ((double) this.a.getHeight()) : 1.2d)));
            }
            if (z) {
                return this.a;
            }
            if (ieVar.o0() != null) {
                View mainView = ieVar.o0().getMainView();
                return new AppLovinSdkUtils.Size(mainView.getMeasuredWidth(), mainView.getMeasuredHeight());
            }
        }
        return AppLovinSdkUtils.Size.ZERO;
    }

    public int getAdjustedCount(int i) {
        return this.c.b(i);
    }

    public int getAdjustedPosition(int i) {
        return this.c.c(i);
    }

    public int getOriginalPosition(int i) {
        return this.c.d(i);
    }

    public void insertItem(int i) {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Inserting item at position: " + i);
        }
        this.c.f(i);
    }

    public boolean isAdPosition(int i) {
        return this.c.g(i);
    }

    public boolean isFilledPosition(int i) {
        return this.c.h(i);
    }

    public void loadAds() {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Loading ads");
        }
        this.d.e();
    }

    public void moveItem(int i, int i2) {
        this.c.b(i, i2);
    }

    @Override // com.applovin.impl.dd.a
    public void onAdRevenuePaid(MaxAd maxAd) {
        Listener listener = this.e;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.impl.dd.a
    public void onNativeAdClicked(MaxAd maxAd) {
        Listener listener = this.e;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.impl.dd.a
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        if (n.a()) {
            this.logger.b("MaxAdPlacer", "Native ad failed to load: " + maxError);
        }
    }

    @Override // com.applovin.impl.dd.a
    public void onNativeAdLoaded() {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Native ad enqueued");
        }
        a();
    }

    public void removeItem(final int i) {
        a(isFilledPosition(i) ? Collections.singletonList(Integer.valueOf(i)) : Collections.emptyList(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(i);
            }
        });
    }

    public void renderAd(int i, ViewGroup viewGroup) {
        MaxAd maxAdA = this.c.a(i);
        if (maxAdA == null) {
            if (n.a()) {
                this.logger.a("MaxAdPlacer", "An ad is not available for position: " + i);
                return;
            }
            return;
        }
        MaxNativeAdView maxNativeAdViewO0 = ((ie) maxAdA).o0();
        if (maxNativeAdViewO0 == null) {
            if (this.b == null) {
                if (n.a()) {
                    this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i + ". If you're using a custom ad template, check that nativeAdViewBinder is set.");
                    return;
                }
                return;
            }
            maxNativeAdViewO0 = new MaxNativeAdView(this.b, viewGroup.getContext());
            if (this.d.a(maxNativeAdViewO0, maxAdA)) {
                if (n.a()) {
                    this.logger.a("MaxAdPlacer", "Rendered ad at position: " + i);
                }
            } else if (n.a()) {
                this.logger.b("MaxAdPlacer", "Unable to render ad at position: " + i);
            }
        } else if (n.a()) {
            this.logger.a("MaxAdPlacer", "Using pre-rendered ad at position: " + i);
        }
        for (int childCount = viewGroup.getChildCount(); childCount >= 0; childCount--) {
            if (viewGroup.getChildAt(childCount) instanceof MaxNativeAdView) {
                viewGroup.removeViewAt(childCount);
            }
        }
        if (maxNativeAdViewO0.getParent() != null) {
            ((ViewGroup) maxNativeAdViewO0.getParent()).removeView(maxNativeAdViewO0);
        }
        viewGroup.addView(maxNativeAdViewO0, -1, -1);
    }

    public void setAdSize(int i, int i2) {
        this.a = new AppLovinSdkUtils.Size(i, i2);
    }

    public void setListener(Listener listener) {
        this.e = listener;
    }

    public void setNativeAdViewBinder(MaxNativeAdViewBinder maxNativeAdViewBinder) {
        this.b = maxNativeAdViewBinder;
    }

    public void updateFillablePositions(int i, int i2) {
        this.c.c(i, i2);
        if (i == -1 || i2 == -1) {
            return;
        }
        a();
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, AppLovinSdk appLovinSdk, Context context) {
        this.a = AppLovinSdkUtils.Size.ZERO;
        j jVarA = appLovinSdk.a();
        this.sdk = jVarA;
        n nVarI = jVarA.I();
        this.logger = nVarI;
        this.c = new yc(maxAdPlacerSettings);
        this.d = new dd(maxAdPlacerSettings, context, this);
        if (n.a()) {
            nVarI.a("MaxAdPlacer", "Initializing ad placer with settings: " + maxAdPlacerSettings);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i) {
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Removing item at position: " + i);
        }
        this.c.i(i);
    }

    private void a() {
        int iC;
        while (this.d.d() && (iC = this.c.c()) != -1) {
            if (n.a()) {
                this.logger.a("MaxAdPlacer", "Placing ad at position: " + iC);
            }
            this.c.a(this.d.b(), iC);
            Listener listener = this.e;
            if (listener != null) {
                listener.onAdLoaded(iC);
            }
        }
    }

    private void a(Collection collection, Runnable runnable) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            this.d.a(this.c.a(((Integer) it.next()).intValue()));
        }
        runnable.run();
        if (collection.isEmpty()) {
            return;
        }
        if (n.a()) {
            this.logger.a("MaxAdPlacer", "Removed " + collection.size() + " ads from stream: " + collection);
        }
        if (this.e != null) {
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                this.e.onAdRemoved(((Integer) it2.next()).intValue());
            }
        }
    }
}
