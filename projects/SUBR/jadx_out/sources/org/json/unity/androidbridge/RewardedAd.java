package org.json.unity.androidbridge;

import android.app.Activity;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAd;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes3.dex */
public class RewardedAd {
    Activity mActivity = UnityPlayer.currentActivity;
    LevelPlayRewardedAd mRewardedAd;

    public RewardedAd(String adUnitId, final IUnityRewardedAdListener rewardedAdListener) {
        LevelPlayRewardedAd levelPlayRewardedAd = new LevelPlayRewardedAd(adUnitId);
        this.mRewardedAd = levelPlayRewardedAd;
        levelPlayRewardedAd.setListener(new LevelPlayRewardedAdListener() { // from class: com.ironsource.unity.androidbridge.RewardedAd.1
            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdLoaded(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdLoadFailed(LevelPlayAdError levelPlayAdError) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdLoadFailed(LevelPlayUtils.adErrorToString(levelPlayAdError));
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdDisplayed(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdRewarded(LevelPlayReward levelPlayReward, LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdRewarded(LevelPlayUtils.adInfoToString(levelPlayAdInfo), levelPlayReward.getName(), levelPlayReward.getAmount());
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdDisplayFailed(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdDisplayFailed(LevelPlayUtils.adErrorToString(levelPlayAdError), LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdClosed(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdClosed(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdInfoChanged(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdInfoChanged(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdClicked(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityRewardedAdListener iUnityRewardedAdListener = rewardedAdListener;
                if (iUnityRewardedAdListener != null) {
                    iUnityRewardedAdListener.onAdClicked(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }
        });
    }

    public void loadAd() {
        this.mRewardedAd.loadAd();
    }

    public void showAd(String placementName) {
        this.mRewardedAd.showAd(this.mActivity, placementName);
    }

    public boolean isAdReady() {
        return this.mRewardedAd.isAdReady();
    }

    public static boolean isPlacementCapped(String placementName) {
        return LevelPlayRewardedAd.isPlacementCapped(placementName);
    }
}
