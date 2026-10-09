package org.json.unity.androidbridge;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAd;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes3.dex */
public class InterstitialAd {
    Activity mActivity = UnityPlayer.currentActivity;
    LevelPlayInterstitialAd mInterstitialAd;

    public InterstitialAd(String adUnitId, final IUnityInterstitialAdListener interstitialAdListener) {
        LevelPlayInterstitialAd levelPlayInterstitialAd = new LevelPlayInterstitialAd(adUnitId);
        this.mInterstitialAd = levelPlayInterstitialAd;
        levelPlayInterstitialAd.setListener(new LevelPlayInterstitialAdListener() { // from class: com.ironsource.unity.androidbridge.InterstitialAd.1
            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdLoaded(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdLoadFailed(LevelPlayAdError levelPlayAdError) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdLoadFailed(LevelPlayUtils.adErrorToString(levelPlayAdError));
                }
            }

            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdDisplayed(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdClosed(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdClosed(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdClicked(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdClicked(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdDisplayFailed(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdDisplayFailed(LevelPlayUtils.adErrorToString(levelPlayAdError), LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener
            public void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityInterstitialAdListener iUnityInterstitialAdListener = interstitialAdListener;
                if (iUnityInterstitialAdListener != null) {
                    iUnityInterstitialAdListener.onAdInfoChanged(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }
        });
    }

    public void loadAd() {
        this.mInterstitialAd.loadAd();
    }

    public void showAd(String placementName) {
        this.mInterstitialAd.showAd(this.mActivity, placementName);
    }

    public boolean isAdReady() {
        return this.mInterstitialAd.isAdReady();
    }

    public static boolean isPlacementCapped(String placementName) {
        return LevelPlayInterstitialAd.isPlacementCapped(placementName);
    }
}
