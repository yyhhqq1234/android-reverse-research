package org.json;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u001b\u001a\u00020\u0019¢\u0006\u0004\b \u0010!J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\b\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\u001a\u0010\b\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\b\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0016R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001c¨\u0006\""}, d2 = {"Lcom/ironsource/ad;", "Lcom/ironsource/dd;", "Lcom/ironsource/g1;", "d", "", "c", "loadInterval", "", "a", IronSourceConstants.EVENTS_DURATION, "isExpired", "", "loadAd", "Landroid/app/Activity;", "activity", "", oo.d, "b", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "onAdInfoChanged", "Lcom/ironsource/ek;", "Lcom/ironsource/ek;", "adInternal", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "Lcom/ironsource/n9;", "Lcom/ironsource/n9;", "currentTimeProvider", "J", "expiredDurationInMillis", "e", "loadSuccessTimestamp", "<init>", "(Lcom/ironsource/ek;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/n9;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class ad implements dd {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ek adInternal;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private LevelPlayAdInfo adInfo;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final n9 currentTimeProvider;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final long expiredDurationInMillis;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final long loadSuccessTimestamp;

    public ad(ek adInternal, LevelPlayAdInfo adInfo, n9 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.adInternal = adInternal;
        this.adInfo = adInfo;
        this.currentTimeProvider = currentTimeProvider;
        this.expiredDurationInMillis = adInternal.getAdTools().b(adInternal.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String());
        this.loadSuccessTimestamp = currentTimeProvider.a();
    }

    private final void a(long duration, boolean isExpired) {
        long j = this.expiredDurationInMillis;
        this.adInternal.getAdTools().getEventSender().getTroubleshoot().a(Long.valueOf(duration), j >= 0 ? TimeUnit.MILLISECONDS.toMinutes(j) : -1L, isExpired);
    }

    private final boolean a(long loadInterval) {
        long j = this.expiredDurationInMillis;
        return 0 <= j && j <= loadInterval;
    }

    private final long c() {
        return this.currentTimeProvider.a() - this.loadSuccessTimestamp;
    }

    private final g1 d() {
        i8 i8VarA = this.adInternal.getMediationServicesProvider().t().a(this.adInternal.getAdUnitId());
        return i8VarA.d() ? g1.a.INSTANCE.a(i8VarA.e()) : new g1.b(false, 1, null);
    }

    @Override // org.json.dd
    /* JADX INFO: renamed from: a, reason: from getter */
    public LevelPlayAdInfo getAdInfo() {
        return this.adInfo;
    }

    @Override // org.json.dd
    public void a(Activity activity, String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Placement placementA = this.adInternal.getAdTools().a(this.adInternal.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String(), placementName);
        sc adController = this.adInternal.getAdController();
        if (adController == null) {
            this.adInternal.a(new LevelPlayAdError(this.adInternal.getAdUnitId(), IronSourceError.ERROR_IS_SHOW_EXCEPTION, "Internal Error, Illegal state"), this.adInfo);
            return;
        }
        LevelPlayAdInfo levelPlayAdInfo = new LevelPlayAdInfo(this.adInfo, placementName);
        this.adInfo = levelPlayAdInfo;
        ek ekVar = this.adInternal;
        ekVar.a(new cd(ekVar, levelPlayAdInfo));
        adController.a(activity, placementA);
    }

    @Override // org.json.dd
    public g1 b() {
        g1 g1VarD = d();
        return ((g1VarD instanceof g1.b) && a(c()) && this.expiredDurationInMillis > 0) ? g1.a.INSTANCE.a() : g1VarD;
    }

    @Override // org.json.dd
    public void loadAd() {
        long jC = c();
        boolean zA = a(jC);
        a(jC, zA);
        ek ekVar = this.adInternal;
        if (zA) {
            ekVar.l();
        } else {
            ekVar.a(this.adInfo);
        }
    }

    @Override // org.json.dd
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.adInfo = adInfo;
    }
}
