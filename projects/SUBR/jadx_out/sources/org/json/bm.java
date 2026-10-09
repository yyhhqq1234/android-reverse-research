package org.json;

import android.app.Activity;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.ads.nativead.AdapterNativeAdData;
import org.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import org.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import org.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import org.json.mediationsdk.adunit.adapter.listener.NativeAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004BI\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0014\u0010$\u001a\u0010\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010#\u0018\u00010\"\u0012\b\u0010&\u001a\u0004\u0018\u00010%\u0012\u0006\u0010(\u001a\u00020'\u0012\b\u0010)\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b*\u0010+J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002J\b\u0010\f\u001a\u00020\tH\u0014J\u0006\u0010\r\u001a\u00020\tJ\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000f\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R(\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006,"}, d2 = {"Lcom/ironsource/bm;", "Lcom/ironsource/n7;", "Lcom/ironsource/o2;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "Lcom/ironsource/a2;", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "adapterNativeAdData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAdViewBinder", "", "a", "J", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "P", "onAdLoadSuccess", gt.c, "Lcom/ironsource/y1;", NotificationCompat.CATEGORY_EVENT, "", "", "", "<set-?>", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "Q", "()Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "s", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "R", "()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "Lcom/ironsource/po;", "threadInterface", "Lcom/ironsource/j1;", "adSmashData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;", "adapter", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "Lcom/ironsource/j5;", "item", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Lcom/ironsource/po;Lcom/ironsource/j1;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/j5;Lcom/ironsource/o2;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class bm extends n7<o2> implements NativeAdListener, a2 {

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private AdapterNativeAdData adapterNativeAdData;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private AdapterNativeAdViewBinder nativeAdViewBinder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm(po threadInterface, j1 adSmashData, BaseAdAdapter<?, AdapterAdListener> baseAdAdapter, Placement placement, j5 item, o2 o2Var) {
        super(threadInterface, adSmashData, baseAdAdapter, new z2(adSmashData.g(), adSmashData.g().getNativeAdSettings(), IronSource.AD_UNIT.NATIVE_AD), item, o2Var);
        Intrinsics.checkNotNullParameter(threadInterface, "threadInterface");
        Intrinsics.checkNotNullParameter(adSmashData, "adSmashData");
        Intrinsics.checkNotNullParameter(item, "item");
        this.g = placement;
    }

    private final void J() {
        zt ztVar;
        IronLog.INTERNAL.verbose(d());
        if (y()) {
            super.onAdOpened();
            return;
        }
        if (this.e != n7.h.FAILED) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            String str = String.format("unexpected onAdOpened for %s, state - %s", Arrays.copyOf(new Object[]{k(), this.e}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(format, *args)");
            b2 b2Var = this.d;
            if (b2Var == null || (ztVar = b2Var.k) == null) {
                return;
            }
            ztVar.o(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(bm this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(bm this$0, AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "$adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "$nativeAdViewBinder");
        this$0.a(adapterNativeAdData, nativeAdViewBinder);
    }

    private final void a(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder) {
        this.adapterNativeAdData = adapterNativeAdData;
        this.nativeAdViewBinder = nativeAdViewBinder;
        super.onAdLoadSuccess();
    }

    @Override // org.json.n7
    protected void G() {
        zt ztVar;
        if (!(this.c instanceof AdapterNativeAdInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterNativeAdInterface"));
            return;
        }
        if (ContextProvider.getInstance().getCurrentActiveActivity() == null) {
            IronLog.INTERNAL.error(a("activity must not be null"));
            b2 b2Var = this.d;
            if (b2Var == null || (ztVar = b2Var.k) == null) {
                return;
            }
            ztVar.f("activity must not be null");
            return;
        }
        Object obj = this.c;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener>");
        AdData mCurrentAdData = this.k;
        Intrinsics.checkNotNullExpressionValue(mCurrentAdData, "mCurrentAdData");
        Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
        Intrinsics.checkNotNullExpressionValue(currentActiveActivity, "getInstance().currentActiveActivity");
        ((AdapterNativeAdInterface) obj).loadAd(mCurrentAdData, currentActiveActivity, this);
    }

    public final void P() {
        zt ztVar;
        wk wkVar;
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(k());
        a(n7.h.NONE);
        Object obj = this.c;
        if (obj == null) {
            ironLog.warning("mAdapter == null");
            return;
        }
        try {
            if (obj instanceof AdapterNativeAdInterface) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface<*>");
                AdData mCurrentAdData = this.k;
                Intrinsics.checkNotNullExpressionValue(mCurrentAdData, "mCurrentAdData");
                ((AdapterNativeAdInterface) obj).destroyAd(mCurrentAdData);
            } else {
                ironLog.error(a("adapter not instance of AdapterNativeAdInterface"));
            }
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "destroyNativeAd - exception = " + th.getLocalizedMessage();
            IronLog.INTERNAL.error(a(str));
            b2 b2Var = this.d;
            if (b2Var != null && (ztVar = b2Var.k) != null) {
                ztVar.f(str);
            }
        }
        b2 b2Var2 = this.d;
        if (b2Var2 == null || (wkVar = b2Var2.g) == null) {
            return;
        }
        Integer sessionDepth = r();
        Intrinsics.checkNotNullExpressionValue(sessionDepth, "sessionDepth");
        wkVar.a(sessionDepth.intValue());
    }

    /* JADX INFO: renamed from: Q, reason: from getter */
    public final AdapterNativeAdData getAdapterNativeAdData() {
        return this.adapterNativeAdData;
    }

    /* JADX INFO: renamed from: R, reason: from getter */
    public final AdapterNativeAdViewBinder getNativeAdViewBinder() {
        return this.nativeAdViewBinder;
    }

    @Override // org.json.n7, org.json.a2
    public Map<String, Object> a(y1 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Map<String, Object> data = super.a(event);
        if (this.g != null) {
            Intrinsics.checkNotNullExpressionValue(data, "data");
            data.put("placement", j());
        }
        Intrinsics.checkNotNullExpressionValue(data, "data");
        return data;
    }

    @Override // org.json.mediationsdk.adunit.adapter.listener.NativeAdListener
    public void onAdLoadSuccess(final AdapterNativeAdData adapterNativeAdData, final AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        if (u().c()) {
            u().a(new Runnable() { // from class: com.ironsource.bm$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    bm.a(this.f$0, adapterNativeAdData, nativeAdViewBinder);
                }
            });
        } else {
            a(adapterNativeAdData, nativeAdViewBinder);
        }
    }

    @Override // org.json.n7, org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    public void onAdOpened() {
        if (u().c()) {
            u().a(new Runnable() { // from class: com.ironsource.bm$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    bm.a(this.f$0);
                }
            });
        } else {
            J();
        }
    }
}
