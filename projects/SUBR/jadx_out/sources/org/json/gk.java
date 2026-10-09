package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0014\u001a\u00020\n\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0006\u0010\r\u001a\u00020\fR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/ironsource/gk;", "", "Lcom/ironsource/u1;", "a", "", "c", "Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/app/Activity;", "activity", "", oo.d, "", "b", "Lcom/ironsource/ye;", "Lcom/ironsource/ye;", IronSourceConstants.EVENTS_PROVIDER, "Lcom/ironsource/ek;", "Lcom/ironsource/ek;", "fullScreenAdInternal", "adUnitId", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/tc;", "adControllerFactory", "Lcom/ironsource/n9;", "currentTimeProvider", "<init>", "(Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class gk {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ye provider;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final ek fullScreenAdInternal;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"com/ironsource/gk$a", "Lcom/ironsource/u1;", "", "isPublisherLoad", "Lcom/ironsource/c1;", "adProperties", "Lcom/ironsource/t1;", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements u1 {
        a() {
        }

        @Override // org.json.u1
        public t1 a(boolean isPublisherLoad, c1 adProperties) {
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            return hi.INSTANCE.a(adProperties, gk.this.provider.s().a(), isPublisherLoad);
        }
    }

    public gk(String adUnitId, l1 adTools, tc adControllerFactory, ye provider, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adControllerFactory, "adControllerFactory");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.provider = provider;
        this.fullScreenAdInternal = new ek(LevelPlay.AdFormat.INTERSTITIAL, adUnitId, adTools, adControllerFactory, a(), provider, currentTimeProvider);
    }

    private final u1 a() {
        return new a();
    }

    public final void a(Activity activity, String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.fullScreenAdInternal.a(activity, placementName);
    }

    public final void a(LevelPlayInterstitialAdListener listener) {
        this.fullScreenAdInternal.a(listener != null ? hk.b(listener) : null);
    }

    public final boolean b() {
        return this.fullScreenAdInternal.j();
    }

    public final void c() {
        this.fullScreenAdInternal.k();
    }
}
