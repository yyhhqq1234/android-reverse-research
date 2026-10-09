package org.json;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/ironsource/cd;", "Lcom/ironsource/dd;", "", "loadAd", "Lcom/ironsource/g1;", "b", "Landroid/app/Activity;", "activity", "", oo.d, "a", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "Lcom/ironsource/ek;", "Lcom/ironsource/ek;", "adInternal", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "<init>", "(Lcom/ironsource/ek;Lcom/unity3d/mediation/LevelPlayAdInfo;)V", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
public final class cd implements dd {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final ek adInternal;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final LevelPlayAdInfo adInfo;

    public cd(ek adInternal, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInternal, "adInternal");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.adInternal = adInternal;
        this.adInfo = adInfo;
    }

    @Override // org.json.dd
    /* JADX INFO: renamed from: a, reason: from getter */
    public LevelPlayAdInfo getAdInfo() {
        return this.adInfo;
    }

    @Override // org.json.dd
    public void a(Activity activity, String placementName) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.adInternal.a(new LevelPlayAdError(this.adInternal.getAdUnitId(), LevelPlayAdError.ERROR_CODE_SHOW_WHILE_SHOW, "Ad is already showing"), this.adInfo);
    }

    @Override // org.json.dd
    public g1 b() {
        return new g1.a(false, "ad is showing", 1, null);
    }

    @Override // org.json.dd
    public void loadAd() {
        this.adInternal.b(new LevelPlayAdError(this.adInternal.getAdUnitId(), LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, "Load is called while ad is showing"));
    }

    @Override // org.json.dd
    public /* synthetic */ void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo) {
        Intrinsics.checkNotNullParameter(levelPlayAdInfo, "adInfo");
    }
}
