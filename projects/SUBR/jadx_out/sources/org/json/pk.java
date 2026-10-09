package org.json;

import android.app.Activity;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u0006\u0010\b\u001a\u00020\u000bR\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/ironsource/pk;", "", "", "b", "Landroid/app/Activity;", "activity", "", oo.d, "a", "Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "Lcom/ironsource/ek;", "Lcom/ironsource/ek;", "fullScreenAdInternal", "adUnitId", "Lcom/ironsource/l1;", "adTools", "Lcom/ironsource/tc;", "adControllerFactory", "Lcom/ironsource/ye;", IronSourceConstants.EVENTS_PROVIDER, "Lcom/ironsource/n9;", "currentTimeProvider", "<init>", "(Ljava/lang/String;Lcom/ironsource/l1;Lcom/ironsource/tc;Lcom/ironsource/ye;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class pk {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ek fullScreenAdInternal;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"com/ironsource/pk$a", "Lcom/ironsource/u1;", "", "isPublisherLoad", "Lcom/ironsource/c1;", "adProperties", "Lcom/ironsource/t1;", "a", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements u1 {
        final /* synthetic */ ye a;

        a(ye yeVar) {
            this.a = yeVar;
        }

        @Override // org.json.u1
        public t1 a(boolean isPublisherLoad, c1 adProperties) {
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            return np.INSTANCE.a(adProperties, this.a.s().a(), isPublisherLoad);
        }
    }

    public pk(String adUnitId, l1 adTools, tc adControllerFactory, ye provider, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adControllerFactory, "adControllerFactory");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.fullScreenAdInternal = new ek(LevelPlay.AdFormat.REWARDED, adUnitId, adTools, adControllerFactory, new a(provider), provider, currentTimeProvider);
    }

    public final void a(Activity activity, String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.fullScreenAdInternal.a(activity, placementName);
    }

    public final void a(LevelPlayRewardedAdListener listener) {
        this.fullScreenAdInternal.a(listener != null ? qk.b(listener) : null);
    }

    public final boolean a() {
        return this.fullScreenAdInternal.j();
    }

    public final void b() {
        this.fullScreenAdInternal.k();
    }
}
