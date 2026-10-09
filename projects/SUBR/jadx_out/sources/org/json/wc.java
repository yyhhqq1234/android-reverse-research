package org.json;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\f\u001a\u00020\u000fH\u0016R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/ironsource/wc;", "Lcom/ironsource/dd;", "", "d", "Lcom/ironsource/sc;", "c", "", "loadAd", "Landroid/app/Activity;", "activity", "", oo.d, "a", "Lcom/ironsource/g1;", "b", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "Lcom/ironsource/ek;", "Lcom/ironsource/ek;", "adInternal", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "Lcom/ironsource/ch;", "Lcom/ironsource/ch;", "testSuiteLoadConfigService", "<init>", "(Lcom/ironsource/ek;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class wc implements dd {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ek adInternal;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final LevelPlayAdInfo adInfo;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final ch testSuiteLoadConfigService;

    public wc(ek adInternal) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        this.adInternal = adInternal;
        this.adInfo = new LevelPlayAdInfo(adInternal.getAdUnitId(), adInternal.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String().toString(), null, null, null, null, 60, null);
        this.testSuiteLoadConfigService = adInternal.getMediationServicesProvider().n();
    }

    private final sc c() {
        sc adController = this.adInternal.getAdController();
        if (adController != null) {
            return adController;
        }
        c1 c1Var = new c1(a.a(this.adInternal.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String()), this.adInternal.getAdUnitId(), null, this.testSuiteLoadConfigService.getTestSuiteLoadAdConfigInternal(), 4, null);
        this.adInternal.getAdTools().getEventSender().a(new z1(this.adInternal.getAdTools(), c1Var));
        tc fullscreenAdControllerFactory = this.adInternal.getFullscreenAdControllerFactory();
        ek ekVar = this.adInternal;
        sc scVarA = fullscreenAdControllerFactory.a(ekVar, ekVar.getAdTools(), c1Var, this.adInternal.getAdUnitDataFactory());
        this.adInternal.a(scVarA);
        return scVarA;
    }

    private final boolean d() {
        if (this.adInternal.getAdUnitId().length() == 0) {
            this.adInternal.onAdLoadFailed(new LevelPlayAdError(this.adInternal.getAdUnitId(), LevelPlayAdError.ERROR_CODE_NO_AD_UNIT_ID_SPECIFIED, "Ad unit ID should be specified"));
            return false;
        }
        if (!this.adInternal.getAdTools().g()) {
            this.adInternal.onAdLoadFailed(new LevelPlayAdError(this.adInternal.getAdUnitId(), LevelPlayAdError.ERROR_CODE_LOAD_BEFORE_INIT_SUCCESS_CALLBACK, "Load must be called after init success callback"));
            return false;
        }
        ck ckVarA = this.adInternal.getMediationServicesProvider().s().a();
        if (ckVarA != null && ckVarA.a(this.adInternal.getAdUnitId(), this.adInternal.getCom.ironsource.mediationsdk.impressionData.ImpressionData.IMPRESSION_DATA_KEY_AD_FORMAT java.lang.String())) {
            return true;
        }
        this.adInternal.b(new LevelPlayAdError(this.adInternal.getAdUnitId(), LevelPlayAdError.ERROR_CODE_INVALID_AD_UNIT_ID, "Invalid ad unit id"));
        return false;
    }

    @Override // org.json.dd
    /* JADX INFO: renamed from: a, reason: from getter */
    public LevelPlayAdInfo getAdInfo() {
        return this.adInfo;
    }

    @Override // org.json.dd
    public void a(Activity activity, String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.adInternal.a(new LevelPlayAdError(this.adInternal.getAdUnitId(), LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK, "Show called before load success"));
    }

    @Override // org.json.dd
    public g1 b() {
        return new g1.a(false, "load ad was not called", 1, null);
    }

    @Override // org.json.dd
    public void loadAd() {
        if (d()) {
            this.adInternal.a(c());
            this.adInternal.l();
        }
    }

    @Override // org.json.dd
    public /* synthetic */ void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo) {
        Intrinsics.checkNotNullParameter(levelPlayAdInfo, "adInfo");
    }
}
