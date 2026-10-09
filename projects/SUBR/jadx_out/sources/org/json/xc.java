package org.json;

import android.app.Activity;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener;
import org.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import org.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010+\u001a\u00020*\u0012\u0006\u0010#\u001a\u00020\u001f¢\u0006\u0004\b,\u0010-J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J\b\u0010\b\u001a\u00020\u0005H\u0002J\b\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0005H\u0002J\u001a\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002J\b\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014J\b\u0010\u0016\u001a\u00020\u0005H\u0014J\b\u0010\u0017\u001a\u00020\u0005H\u0016J\u001a\u0010\u0018\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0019\u001a\u00020\u0005H\u0016J\b\u0010\u001a\u001a\u00020\u0005H\u0016J\b\u0010\u001b\u001a\u00020\u0005H\u0016J\b\u0010\u001c\u001a\u00020\u0005H\u0016J\b\u0010\u001d\u001a\u00020\u0005H\u0016R$\u0010#\u001a\u0010\u0012\f\u0012\n  *\u0004\u0018\u00010\u001f0\u001f0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006."}, d2 = {"Lcom/ironsource/xc;", "Lcom/ironsource/y;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdRewardListener;", "", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "K", "H", "L", "J", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "errorMessage", "b", "I", "Lcom/ironsource/g0;", "adInstancePresenter", "a", "Landroid/app/Activity;", "activity", "y", gt.g, gt.e, "onAdShowSuccess", "onAdVisible", "onAdStarted", "onAdEnded", gt.i, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/yc;", "kotlin.jvm.PlatformType", "v", "Ljava/lang/ref/WeakReference;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/xa;", "w", "Lcom/ironsource/xa;", "rewardDurationAfterClose", "Lcom/ironsource/t2;", "adTools", "Lcom/ironsource/z;", "instanceData", "<init>", "(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/yc;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class xc extends y implements InterstitialAdListener, RewardedVideoAdListener, AdapterAdRewardListener {

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private WeakReference<yc> listener;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    private xa rewardDurationAfterClose;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xc(t2 adTools, z instanceData, yc listener) {
        super(adTools, instanceData, listener);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(instanceData, "instanceData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = new WeakReference<>(listener);
    }

    private final void G() {
        this.rewardDurationAfterClose = new xa();
        IronLog.INTERNAL.verbose(y.a(this, (String) null, 1, (Object) null));
        getAdTools().getEventSender().getAdInteraction().a(j(), "");
        yc ycVar = this.listener.get();
        if (ycVar != null) {
            ycVar.b(this);
        }
    }

    private final void H() {
        IronLog.INTERNAL.verbose(y.a(this, (String) null, 1, (Object) null));
        getAdTools().getEventSender().getAdInteraction().d(j());
    }

    private final void I() {
        HashMap map = new HashMap();
        Map<String, String> mapK = getAdTools().k();
        if (mapK != null) {
            for (String str : mapK.keySet()) {
                map.put("custom_" + str, mapK.get(str));
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strA = getAdTools().a(jCurrentTimeMillis, getInstanceName());
        long jA = xa.a(this.rewardDurationAfterClose);
        LevelPlayReward levelPlayRewardA = jl.INSTANCE.d().o().a(j(), getInstanceData().i().getAdProperties().getAdUnitId());
        if (levelPlayRewardA == null) {
            levelPlayRewardA = z9.INSTANCE.a();
        }
        LevelPlayReward levelPlayReward = levelPlayRewardA;
        getAdTools().getEventSender().getAdInteraction().a(j(), levelPlayReward.getName(), levelPlayReward.getAmount(), jCurrentTimeMillis, strA, jA, map, getAdTools().j());
        yc ycVar = this.listener.get();
        if (ycVar != null) {
            ycVar.a(this, levelPlayReward);
        }
    }

    private final void J() {
        IronLog.INTERNAL.verbose(y.a(this, (String) null, 1, (Object) null));
        getAdTools().getEventSender().getAdInteraction().l(j());
        yc ycVar = this.listener.get();
        if (ycVar != null) {
            ycVar.a(this);
        }
    }

    private final void K() {
        IronLog.INTERNAL.verbose(y.a(this, (String) null, 1, (Object) null));
        getAdTools().getEventSender().getAdInteraction().i(j());
    }

    private final void L() {
        IronLog.INTERNAL.verbose(y.a(this, (String) null, 1, (Object) null));
        getAdTools().getEventSender().getAdInteraction().k(j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(xc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(xc this$0, int i, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b(i, str);
    }

    private final void b(int errorCode, String errorMessage) {
        IronLog.INTERNAL.verbose(a("error = " + errorCode + ", " + errorMessage));
        getAdTools().getEventSender().getAdInteraction().a(j(), errorCode, errorMessage, "");
        a(n1.a.FailedToShow);
        IronSourceError ironSourceError = new IronSourceError(errorCode, errorMessage);
        yc ycVar = this.listener.get();
        if (ycVar != null) {
            ycVar.a(this, ironSourceError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(xc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(xc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(xc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(xc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.K();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(xc this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.L();
    }

    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose(a("placementName = " + j()));
        try {
            getAdTools().getEventSender().getAdInteraction().a(activity, j());
            if (f() instanceof AdapterAdFullScreenInterface) {
                Object objF = f();
                Intrinsics.checkNotNull(objF, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>");
                ((AdapterAdFullScreenInterface) objF).showAd(getCurrentAdData(), this);
            } else {
                ironLog.error(a("showAd - adapter not instance of AdapterAdFullScreenInterface"));
                getAdTools().getEventSender().getTroubleshoot().f("showAd - adapter not instance of AdapterAdFullScreenInterface");
            }
        } catch (Throwable th) {
            l9.d().a(th);
            String str = "showAd - exception = " + th.getMessage();
            IronLog.INTERNAL.error(a(str));
            getAdTools().getEventSender().getTroubleshoot().f(str);
            b(x1.h(getInstanceData().getAdFormat()), str);
        }
    }

    @Override // org.json.y
    public void a(g0 adInstancePresenter) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        adInstancePresenter.a(this);
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdClosed() {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                xc.a(this.f$0);
            }
        });
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdEnded() {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                xc.b(this.f$0);
            }
        });
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdRewardListener
    public void onAdRewarded() {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                xc.c(this.f$0);
            }
        });
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowFailed(final int errorCode, final String errorMessage) {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                xc.a(this.f$0, errorCode, errorMessage);
            }
        });
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdShowSuccess() {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                xc.d(this.f$0);
            }
        });
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdStarted() {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                xc.e(this.f$0);
            }
        });
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    public void onAdVisible() {
        a(new Runnable() { // from class: com.ironsource.xc$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                xc.f(this.f$0);
            }
        });
    }

    @Override // org.json.y
    protected void y() {
        if (!(f() instanceof AdapterAdFullScreenInterface)) {
            IronLog.INTERNAL.error(a("adapter not instance of AdapterAdFullScreenInterface"));
            return;
        }
        Object objF = f();
        Intrinsics.checkNotNull(objF, "null cannot be cast to non-null type com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface<com.ironsource.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener>");
        ((AdapterAdFullScreenInterface) objF).loadAd(getInstanceData().getAdData(), ContextProvider.getInstance().getCurrentActiveActivity(), this);
    }
}
