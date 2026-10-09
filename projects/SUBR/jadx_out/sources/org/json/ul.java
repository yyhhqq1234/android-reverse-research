package org.json;

import android.app.Activity;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.ads.nativead.AdapterNativeAdData;
import org.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import org.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import org.json.mediationsdk.adunit.adapter.listener.NativeAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\b\u0010\t\u001a\u00020\u0005H\u0014J\b\u0010\n\u001a\u00020\u0005H\u0016J\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016R(\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006!"}, d2 = {"Lcom/ironsource/ul;", "Lcom/ironsource/y;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "Lcom/ironsource/g0;", "adInstancePresenter", "", "a", "Lcom/ironsource/nl;", "nativeAdBinder", "y", "b", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "adapterNativeAdData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAdViewBinder", "onAdLoadSuccess", "<set-?>", "v", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "()Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "w", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "H", "()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/z;", "instanceData", "Lcom/ironsource/c0;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/c0;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ul extends y implements NativeAdListener {

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private AdapterNativeAdData adapterNativeAdData;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    private AdapterNativeAdViewBinder nativeAdViewBinder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ul(t2 adTools, z instanceData, c0 listener) {
        super(adTools, instanceData, listener);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(listener, "listener");
    }

    /* JADX INFO: renamed from: G, reason: from getter */
    public final AdapterNativeAdData getAdapterNativeAdData() {
        return this.adapterNativeAdData;
    }

    /* JADX INFO: renamed from: H, reason: from getter */
    public final AdapterNativeAdViewBinder getNativeAdViewBinder() {
        return this.nativeAdViewBinder;
    }

    @Override // org.json.y
    public void a(g0 adInstancePresenter) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        adInstancePresenter.a(this);
    }

    public final void a(nl nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        nativeAdBinder.a(this.adapterNativeAdData);
        nativeAdBinder.a(this.nativeAdViewBinder);
    }

    @Override // org.json.y
    public void b() {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(getInstanceSignature());
        if (f() == null) {
            ironLog.warning("adapter == null");
            return;
        }
        try {
            if (f() instanceof AdapterNativeAdInterface) {
                Object objF = f();
                Intrinsics.checkNotNull(objF, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<*>");
                ((AdapterNativeAdInterface) objF).destroyAd(getCurrentAdData());
            } else {
                ironLog.error(a("adapter not instance of AdapterNativeAdInterface"));
            }
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            getAdTools().getEventSender().getTroubleshoot().f(str);
        }
        super.b();
    }

    @Override // org.json.mediationsdk.adunit.adapter.listener.NativeAdListener
    public void onAdLoadSuccess(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        this.adapterNativeAdData = adapterNativeAdData;
        this.nativeAdViewBinder = nativeAdViewBinder;
        super.onAdLoadSuccess();
    }

    @Override // org.json.y
    protected void y() {
        if (!(f() instanceof AdapterNativeAdInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterNativeAdInterface"));
            return;
        }
        AdData currentAdData = getCurrentAdData();
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            IronLog.INTERNAL.error(a("activity must not be null"));
            getAdTools().getEventSender().getTroubleshoot().f("activity must not be null");
            return;
        }
        Object objF = f();
        Intrinsics.checkNotNull(objF, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener>");
        Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
        Intrinsics.checkNotNullExpressionValue(currentActiveActivity, "getInstance().currentActiveActivity");
        ((AdapterNativeAdInterface) objF).loadAd(currentAdData, currentActiveActivity, this);
    }
}
