package org.json;

import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002¨\u0006\u0003"}, d2 = {"Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;", "Lcom/ironsource/fk;", "b", "mediationsdk_release"}, k = 2, mv = {1, 8, 0})
public final class hk {

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\u000e"}, d2 = {"com/ironsource/hk$a", "Lcom/ironsource/fk;", "Lcom/unity3d/mediation/LevelPlayAdInfo;", "adInfo", "", gt.j, "Lcom/unity3d/mediation/LevelPlayAdError;", "error", gt.b, "onAdDisplayed", "onAdDisplayFailed", gt.f, gt.g, "onAdInfoChanged", "mediationsdk_release"}, k = 1, mv = {1, 8, 0})
    public static final class a implements fk {
        final /* synthetic */ LevelPlayInterstitialAdListener a;

        a(LevelPlayInterstitialAdListener levelPlayInterstitialAdListener) {
            this.a = levelPlayInterstitialAdListener;
        }

        @Override // org.json.fk
        public void onAdClicked(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.a.onAdClicked(adInfo);
        }

        @Override // org.json.fk
        public void onAdClosed(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.a.onAdClosed(adInfo);
        }

        @Override // org.json.fk
        public void onAdDisplayFailed(LevelPlayAdError error, LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(error, "error");
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.a.onAdDisplayFailed(error, adInfo);
        }

        @Override // org.json.fk
        public void onAdDisplayed(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.a.onAdDisplayed(adInfo);
        }

        @Override // org.json.fk
        public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.a.onAdInfoChanged(adInfo);
        }

        @Override // org.json.fk
        public void onAdLoadFailed(LevelPlayAdError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.a.onAdLoadFailed(error);
        }

        @Override // org.json.fk
        public void onAdLoaded(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            this.a.onAdLoaded(adInfo);
        }

        @Override // org.json.fk
        public /* synthetic */ void onAdRewarded(LevelPlayReward levelPlayReward, LevelPlayAdInfo levelPlayAdInfo) {
            fk.CC.$default$onAdRewarded(this, levelPlayReward, levelPlayAdInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fk b(LevelPlayInterstitialAdListener levelPlayInterstitialAdListener) {
        return new a(levelPlayInterstitialAdListener);
    }
}
