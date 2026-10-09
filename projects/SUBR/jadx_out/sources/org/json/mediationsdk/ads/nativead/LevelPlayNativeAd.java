package org.json.mediationsdk.ads.nativead;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.ContextProvider;
import org.json.environment.thread.IronSourceThreadManager;
import org.json.l9;
import org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface;
import org.json.mediationsdk.ads.nativead.interfaces.NativeAdInterface;
import org.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener;
import org.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.p;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.oo;
import org.json.xl;
import org.json.y8;
import org.json.zl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001DB\u0011\b\u0002\u0012\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0016J\b\u0010\b\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tJ\b\u0010\r\u001a\u0004\u0018\u00010\fJ\"\u0010\u0014\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0012\u0010\u0017\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u0010\u0018\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0019\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R(\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010*\u001a\u0004\u0018\u00010\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u00104R\u0016\u00107\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00104R\u0016\u00109\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u00104R\u0016\u0010;\u001a\u0004\u0018\u00010\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u00104R\u0016\u0010?\u001a\u0004\u0018\u00010<8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006E"}, d2 = {"Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;", "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdInterface;", "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface;", "Lcom/ironsource/mediationsdk/ads/nativead/internal/InternalNativeAdListener;", "", "a", "b", "loadAd", "destroyAd", "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "Ljava/util/UUID;", "getObjectId", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "adapterNativeAdData", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAdViewBinder", "onNativeAdLoaded", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", "onNativeAdLoadFailed", "onNativeAdImpression", "onNativeAdClicked", "", "Ljava/lang/String;", "mPlacementName", "Lcom/ironsource/mediationsdk/model/Placement;", "Lcom/ironsource/mediationsdk/model/Placement;", "mPlacement", "c", "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;", "mListener", "Lcom/ironsource/xl;", "d", "Lcom/ironsource/xl;", "mAdManager", "e", "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;", "mAdapterNativeAdData", "<set-?>", "f", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "getNativeAdViewBinder", "()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "g", "Ljava/util/concurrent/atomic/AtomicBoolean;", "mWasInitCalled", "getTitle", "()Ljava/lang/String;", "title", "getAdvertiser", y8.h.F0, "getBody", y8.h.E0, "getCallToAction", "callToAction", "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;", "getIcon", "()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;", y8.h.H0, "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;", "builder", "<init>", "(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;)V", "Builder", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class LevelPlayNativeAd implements NativeAdInterface, NativeAdDataInterface, InternalNativeAdListener {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private String mPlacementName;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private Placement mPlacement;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private LevelPlayNativeAdListener mListener;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private xl mAdManager;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private AdapterNativeAdData mAdapterNativeAdData;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private AdapterNativeAdViewBinder nativeAdViewBinder;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final AtomicBoolean mWasInitCalled;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u0006\u0010\f\u001a\u00020\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd$Builder;", "", "", oo.d, "withPlacementName", "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "withListener", "Landroid/app/Activity;", "activity", "withActivity", "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;", "build", "a", "Ljava/lang/String;", "getMPlacementName$mediationsdk_release", "()Ljava/lang/String;", "setMPlacementName$mediationsdk_release", "(Ljava/lang/String;)V", "mPlacementName", "b", "Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;", "getMListener$mediationsdk_release", "()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;", "setMListener$mediationsdk_release", "(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAdListener;)V", "mListener", "<init>", "()V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private String mPlacementName;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private LevelPlayNativeAdListener mListener;

        public final LevelPlayNativeAd build() {
            return new LevelPlayNativeAd(this, null);
        }

        /* JADX INFO: renamed from: getMListener$mediationsdk_release, reason: from getter */
        public final LevelPlayNativeAdListener getMListener() {
            return this.mListener;
        }

        /* JADX INFO: renamed from: getMPlacementName$mediationsdk_release, reason: from getter */
        public final String getMPlacementName() {
            return this.mPlacementName;
        }

        public final void setMListener$mediationsdk_release(LevelPlayNativeAdListener levelPlayNativeAdListener) {
            this.mListener = levelPlayNativeAdListener;
        }

        public final void setMPlacementName$mediationsdk_release(String str) {
            this.mPlacementName = str;
        }

        public final Builder withActivity(Activity activity) {
            ContextProvider.getInstance().updateActivity(activity);
            IronLog ironLog = IronLog.INTERNAL;
            StringBuilder sb = new StringBuilder("activity is updated to: ");
            sb.append(activity != null ? activity.hashCode() : 0);
            ironLog.verbose(sb.toString());
            return this;
        }

        public final Builder withListener(LevelPlayNativeAdListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.mListener = listener;
            return this;
        }

        public final Builder withPlacementName(String placementName) {
            this.mPlacementName = placementName;
            return this;
        }
    }

    private LevelPlayNativeAd(Builder builder) {
        this.mWasInitCalled = new AtomicBoolean(false);
        this.mPlacementName = builder.getMPlacementName();
        this.mListener = builder.getMListener();
    }

    public /* synthetic */ LevelPlayNativeAd(Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
        this(builder);
    }

    private final void a() {
        LevelPlayNativeAdListener levelPlayNativeAdListener = this.mListener;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoadFailed(this, ErrorBuilder.buildInitFailedError("init() has failed", IronSourceConstants.NATIVE_AD_UNIT));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd this$0) {
        Unit unit;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b();
        xl xlVar = this$0.mAdManager;
        if (xlVar != null) {
            xlVar.a(this$0.mPlacement);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            this$0.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd this$0, AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder nativeAdViewBinder, AdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "$adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "$nativeAdViewBinder");
        this$0.mAdapterNativeAdData = adapterNativeAdData;
        this$0.nativeAdViewBinder = nativeAdViewBinder;
        LevelPlayNativeAdListener levelPlayNativeAdListener = this$0.mListener;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoaded(this$0, adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd this$0, AdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LevelPlayNativeAdListener levelPlayNativeAdListener = this$0.mListener;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdClicked(this$0, adInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(LevelPlayNativeAd this$0, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LevelPlayNativeAdListener levelPlayNativeAdListener = this$0.mListener;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoadFailed(this$0, ironSourceError);
        }
    }

    private final void b() {
        if (this.mWasInitCalled.compareAndSet(false, true)) {
            xl xlVarF = p.m().f();
            this.mAdManager = xlVarF;
            if (xlVarF != null) {
                xlVarF.a(this);
                zl zlVarN = p.m().n(this.mPlacementName);
                Intrinsics.checkNotNullExpressionValue(zlVarN, "getInstance().getNativeAdPlacement(mPlacementName)");
                this.mPlacement = new Placement(zlVarN);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(LevelPlayNativeAd this$0, AdInfo adInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LevelPlayNativeAdListener levelPlayNativeAdListener = this$0.mListener;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdImpression(this$0, adInfo);
        }
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdInterface
    public void destroyAd() {
        IronLog.API.info(String.valueOf(this));
        try {
            xl xlVar = this.mAdManager;
            if (xlVar != null) {
                xlVar.M();
            }
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.API.error("destroyNativeAd()");
        }
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getAdvertiser() {
        AdapterNativeAdData adapterNativeAdData = this.mAdapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getAdvertiser();
        }
        return null;
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getBody() {
        AdapterNativeAdData adapterNativeAdData = this.mAdapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getBody();
        }
        return null;
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getCallToAction() {
        AdapterNativeAdData adapterNativeAdData = this.mAdapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getCallToAction();
        }
        return null;
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public NativeAdDataInterface.Image getIcon() {
        AdapterNativeAdData adapterNativeAdData = this.mAdapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getIcon();
        }
        return null;
    }

    public final AdapterNativeAdViewBinder getNativeAdViewBinder() {
        return this.nativeAdViewBinder;
    }

    public final UUID getObjectId() {
        xl xlVar = this.mAdManager;
        if (xlVar != null) {
            return xlVar.k();
        }
        return null;
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdDataInterface
    public String getTitle() {
        AdapterNativeAdData adapterNativeAdData = this.mAdapterNativeAdData;
        if (adapterNativeAdData != null) {
            return adapterNativeAdData.getTitle();
        }
        return null;
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdInterface
    public void loadAd() {
        IronLog.API.info(String.valueOf(this));
        String initError = p.m().e();
        Intrinsics.checkNotNullExpressionValue(initError, "initError");
        if (!(initError.length() > 0)) {
            IronSourceThreadManager.INSTANCE.getInitHandler().post(new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LevelPlayNativeAd.a(this.f$0);
                }
            });
            return;
        }
        LevelPlayNativeAdListener levelPlayNativeAdListener = this.mListener;
        if (levelPlayNativeAdListener != null) {
            levelPlayNativeAdListener.onAdLoadFailed(this, ErrorBuilder.buildInitFailedError("loadAd(): " + initError, IronSourceConstants.NATIVE_AD_UNIT));
        }
    }

    @Override // org.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdClicked(final AdInfo adInfo) {
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.a(this.f$0, adInfo);
            }
        }, 0L, 2, null);
    }

    @Override // org.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdImpression(final AdInfo adInfo) {
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.b(this.f$0, adInfo);
            }
        }, 0L, 2, null);
    }

    @Override // org.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdLoadFailed(final IronSourceError error) {
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.a(this.f$0, error);
            }
        }, 0L, 2, null);
    }

    @Override // org.json.mediationsdk.ads.nativead.internal.InternalNativeAdListener
    public void onNativeAdLoaded(final AdInfo adInfo, final AdapterNativeAdData adapterNativeAdData, final AdapterNativeAdViewBinder nativeAdViewBinder) {
        Intrinsics.checkNotNullParameter(adapterNativeAdData, "adapterNativeAdData");
        Intrinsics.checkNotNullParameter(nativeAdViewBinder, "nativeAdViewBinder");
        IronLog.CALLBACK.info(String.valueOf(this));
        IronSourceThreadManager.postOnUiThreadTask$default(IronSourceThreadManager.INSTANCE, new Runnable() { // from class: com.ironsource.mediationsdk.ads.nativead.LevelPlayNativeAd$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                LevelPlayNativeAd.a(this.f$0, adapterNativeAdData, nativeAdViewBinder, adInfo);
            }
        }, 0L, 2, null);
    }

    public final void setListener(LevelPlayNativeAdListener listener) {
        this.mListener = listener;
    }
}
