package org.json;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.ads.nativead.AdapterNativeAdData;
import org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import org.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0015¢\u0006\u0004\b5\u00106J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u0012\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0004\u0010\u0018R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R(\u0010+\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010%8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0013\u0010.\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0013\u0010/\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u001c\u0010-R\u0013\u00100\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\u001f\u0010-R\u0013\u00101\u001a\u0004\u0018\u00010\u00138F¢\u0006\u0006\u001a\u0004\b\"\u0010-R\u0013\u00104\u001a\u0004\u0018\u0001028F¢\u0006\u0006\u001a\u0004\b'\u00103¨\u00067"}, d2 = {"Lcom/ironsource/mk;", "Lcom/ironsource/zj;", "Lcom/ironsource/tl;", "Lcom/ironsource/ql;", "e", "", "m", "", "d", "f", "Lcom/ironsource/ok;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "a", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "b", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "onNativeAdLoadFailed", "", oo.d, "Lcom/ironsource/kk;", "Lcom/ironsource/kk;", oq.i, "Lcom/ironsource/ql;", "nativeAdController", "Ljava/lang/String;", "Lcom/ironsource/mediationsdk/model/Placement;", "g", "Lcom/ironsource/mediationsdk/model/Placement;", "placement", "h", "Lcom/ironsource/ok;", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "i", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "adapterNativeAdData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "<set-?>", "j", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "k", "()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAdViewBinder", "l", "()Ljava/lang/String;", "title", y8.h.F0, y8.h.E0, "callToAction", "Lcom/ironsource/lk$a;", "()Lcom/ironsource/lk$a;", y8.h.H0, "<init>", "(Lcom/ironsource/kk;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class mk extends zj implements tl {

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final kk nativeAd;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private ql nativeAdController;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private String placementName;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private Placement placement;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private ok listener;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private AdapterNativeAdData adapterNativeAdData;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private AdapterNativeAdViewBinder nativeAdViewBinder;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mk(kk nativeAd) {
        super(new l1(IronSource.AD_UNIT.NATIVE_AD, b2.b.MEDIATION));
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        this.nativeAd = nativeAd;
        this.placementName = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(mk this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        IronLog.API.info(String.valueOf(this$0));
        try {
            ql qlVar = this$0.nativeAdController;
            if (qlVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
                qlVar = null;
            }
            qlVar.i();
            this$0.listener = null;
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.API.error("destroyNativeAd()");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(mk this$0, ok okVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.listener = okVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(mk this$0, LevelPlayAdError levelPlayError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(levelPlayError, "$levelPlayError");
        ok okVar = this$0.listener;
        if (okVar != null) {
            okVar.a(this$0.nativeAd, levelPlayError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(mk this$0, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        ok okVar = this$0.listener;
        if (okVar != null) {
            okVar.b(this$0.nativeAd, adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(mk this$0, String placementName) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(placementName, "$placementName");
        this$0.placementName = placementName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(mk this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ql qlVar = null;
        if (this$0.getIsLoadAdCalled()) {
            IronLog.INTERNAL.warning(l1.a(this$0.getAdTools(), "Native ad load already called", (String) null, 2, (Object) null));
            return;
        }
        this$0.a(true);
        if (this$0.d()) {
            ql qlVar2 = this$0.nativeAdController;
            if (qlVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
            } else {
                qlVar = qlVar2;
            }
            qlVar.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(mk this$0, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInfo, "$adInfo");
        ok okVar = this$0.listener;
        if (okVar != null) {
            okVar.c(this$0.nativeAd, adInfo);
        }
    }

    private final ql e() {
        this.placement = getAdTools().d(this.placementName);
        String strB = getAdUnitId();
        Placement placement = this.placement;
        if (placement == null) {
            Intrinsics.throwUninitializedPropertyAccessException("placement");
            placement = null;
        }
        am amVar = new am(strB, placement);
        a(amVar);
        return new ql(this, getAdTools(), amVar);
    }

    public final void a(final ok listener) {
        a(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                mk.a(this.f$0, listener);
            }
        });
    }

    @Override // org.json.tl
    public void b(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        IronLog.CALLBACK.info(String.valueOf(this));
        nl nlVar = new nl();
        ql qlVar = this.nativeAdController;
        if (qlVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nativeAdController");
            qlVar = null;
        }
        qlVar.a(nlVar);
        this.adapterNativeAdData = nlVar.getNativeAdData();
        this.nativeAdViewBinder = nlVar.getNativeAdViewBinder();
        b(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                mk.b(this.f$0, adInfo);
            }
        });
    }

    public final void b(final String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        a(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                mk.a(this.f$0, placementName);
            }
        });
    }

    @Override // org.json.zj
    public boolean d() {
        this.nativeAdController = e();
        return true;
    }

    public final void f() {
        a(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                mk.a(this.f$0);
            }
        });
    }

    @Override // org.json.tl
    public void f(final LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        b(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                mk.a(this.f$0, adInfo);
            }
        });
    }

    public final String g() {
        AdapterNativeAdData adapterNativeAdData = this.adapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getAdvertiser();
        }
        return null;
    }

    public final String h() {
        AdapterNativeAdData adapterNativeAdData = this.adapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getBody();
        }
        return null;
    }

    public final String i() {
        AdapterNativeAdData adapterNativeAdData = this.adapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getCallToAction();
        }
        return null;
    }

    public final lk.a j() {
        NativeAdDataInterface.Image icon;
        AdapterNativeAdData adapterNativeAdData = this.adapterNativeAdData;
        if (adapterNativeAdData == null || (icon = adapterNativeAdData.getIcon()) == null) {
            return null;
        }
        return new lk.a(icon.getDrawable(), icon.getUri());
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final AdapterNativeAdViewBinder getNativeAdViewBinder() {
        return this.nativeAdViewBinder;
    }

    public final String l() {
        AdapterNativeAdData adapterNativeAdData = this.adapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getTitle();
        }
        return null;
    }

    public final void m() {
        a(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                mk.b(this.f$0);
            }
        });
    }

    @Override // org.json.tl
    public void onNativeAdLoadFailed(IronSourceError error) {
        final LevelPlayAdError levelPlayAdError = new LevelPlayAdError(error, null, 2, null);
        b(new Runnable() { // from class: com.ironsource.mk$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                mk.a(this.f$0, levelPlayAdError);
            }
        });
    }
}
