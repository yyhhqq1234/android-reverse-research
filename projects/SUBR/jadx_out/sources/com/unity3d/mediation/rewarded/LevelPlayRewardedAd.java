package com.unity3d.mediation.rewarded;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlay;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.b2;
import org.json.ek;
import org.json.jl;
import org.json.l1;
import org.json.mediationsdk.IronSource;
import org.json.n9;
import org.json.oo;
import org.json.pk;
import org.json.tc;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0011\b\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0018B\u0019\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u0017\u0010\u001bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007J\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bR\u0017\u0010\u0012\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u001d"}, d2 = {"Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;", "", "", "loadAd", "Landroid/app/Activity;", "activity", "", oo.d, "showAd", "", "isAdReady", "Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "a", "Ljava/lang/String;", "getAdUnitId", "()Ljava/lang/String;", "adUnitId", "Lcom/ironsource/pk;", "b", "Lcom/ironsource/pk;", "adInternal", "<init>", "(Ljava/lang/String;)V", "Lcom/ironsource/ek$b;", "payload", "(Ljava/lang/String;Lcom/ironsource/ek$b;)V", "Companion", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class LevelPlayRewardedAd {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String adUnitId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final pk adInternal;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Companion;", "", "()V", "isPlacementCapped", "", oo.d, "", "mediationsdk_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final boolean isPlacementCapped(String placementName) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            return ek.INSTANCE.a(placementName, LevelPlay.AdFormat.REWARDED);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LevelPlayRewardedAd(String adUnitId) {
        this(adUnitId, new ek.b(new l1(IronSource.AD_UNIT.REWARDED_VIDEO, b2.b.MEDIATION), new tc(), jl.INSTANCE.d(), new n9.a()));
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
    }

    public LevelPlayRewardedAd(String adUnitId, ek.b payload) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(payload, "payload");
        this.adUnitId = adUnitId;
        this.adInternal = new pk(adUnitId, payload.getAdTools(), payload.getAdControllerFactory(), payload.getProvider(), payload.getCurrentTimeProvider());
    }

    @JvmStatic
    public static final boolean isPlacementCapped(String str) {
        return INSTANCE.isPlacementCapped(str);
    }

    public static /* synthetic */ void showAd$default(LevelPlayRewardedAd levelPlayRewardedAd, Activity activity, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        levelPlayRewardedAd.showAd(activity, str);
    }

    public final String getAdUnitId() {
        return this.adUnitId;
    }

    public final boolean isAdReady() {
        return this.adInternal.a();
    }

    public final void loadAd() {
        this.adInternal.b();
    }

    public final void setListener(LevelPlayRewardedAdListener listener) {
        this.adInternal.a(listener);
    }

    public final void showAd(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        showAd$default(this, activity, null, 2, null);
    }

    public final void showAd(Activity activity, String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.adInternal.a(activity, placementName);
    }
}
