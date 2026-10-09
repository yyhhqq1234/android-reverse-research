package org.json.unity.androidbridge;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.LevelPlayAdSize;
import com.unity3d.mediation.banner.LevelPlayBannerAdView;
import com.unity3d.mediation.banner.LevelPlayBannerAdViewListener;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes3.dex */
public class BannerAd {
    Activity mActivity = UnityPlayer.currentActivity;
    LevelPlayBannerAdView mBannerAdView;
    int mBannerAdViewVisibilityState;

    public BannerAd(String adUnitId, String sizeDescription, int sizeWidth, int sizeHeight, int customWidth, int position, String placementName, boolean displayOnLoad, boolean respectSafeArea, final IUnityBannerAdListener bannerListener) {
        this.mBannerAdViewVisibilityState = 4;
        this.mBannerAdView = new LevelPlayBannerAdView(this.mActivity, adUnitId);
        LevelPlayAdSize adSize = BannerUtils.getAdSize(sizeDescription, sizeWidth, sizeHeight, customWidth);
        if (adSize != null) {
            this.mBannerAdView.setAdSize(adSize);
        }
        if (placementName != null && placementName != "") {
            this.mBannerAdView.setPlacementName(placementName);
        }
        this.mBannerAdView.setBackgroundColor(0);
        if (displayOnLoad) {
            this.mBannerAdView.setVisibility(0);
            this.mBannerAdViewVisibilityState = 0;
        } else {
            this.mBannerAdView.setVisibility(8);
            this.mBannerAdViewVisibilityState = 8;
        }
        if (respectSafeArea && Build.VERSION.SDK_INT >= 28) {
            this.mBannerAdView.setFitsSystemWindows(true);
            this.mBannerAdView.setSystemUiVisibility(1280);
            this.mBannerAdView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.ironsource.unity.androidbridge.BannerAd$$ExternalSyntheticLambda0
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return this.f$0.m428lambda$new$0$comironsourceunityandroidbridgeBannerAd(view, windowInsets);
                }
            });
        }
        setPosition(position);
        this.mBannerAdView.setBannerListener(new LevelPlayBannerAdViewListener() { // from class: com.ironsource.unity.androidbridge.BannerAd.1
            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdLoaded(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdLoadFailed(LevelPlayAdError adError) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdLoadFailed(LevelPlayUtils.adErrorToString(adError));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdDisplayed(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdDisplayFailed(LevelPlayAdInfo levelPlayAdInfo, LevelPlayAdError adError) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdDisplayFailed(LevelPlayUtils.adInfoToString(levelPlayAdInfo), LevelPlayUtils.adErrorToString(adError));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdClicked(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdClicked(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdExpanded(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdExpanded(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdCollapsed(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdCollapsed(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }

            @Override // com.unity3d.mediation.banner.LevelPlayBannerAdViewListener
            public void onAdLeftApplication(LevelPlayAdInfo levelPlayAdInfo) {
                IUnityBannerAdListener iUnityBannerAdListener = bannerListener;
                if (iUnityBannerAdListener != null) {
                    iUnityBannerAdListener.onAdLeftApplication(LevelPlayUtils.adInfoToString(levelPlayAdInfo));
                }
            }
        });
    }

    /* JADX INFO: renamed from: lambda$new$0$com-ironsource-unity-androidbridge-BannerAd, reason: not valid java name */
    /* synthetic */ WindowInsets m428lambda$new$0$comironsourceunityandroidbridgeBannerAd(View view, WindowInsets windowInsets) {
        if (windowInsets != null) {
            this.mBannerAdView.setPadding(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return windowInsets;
    }

    public void load() {
        this.mBannerAdView.loadAd();
    }

    public void destroy() {
        this.mBannerAdView.destroy();
    }

    public void showAd() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd.2
            @Override // java.lang.Runnable
            public void run() {
                if (BannerAd.this.mBannerAdView != null) {
                    BannerAd.this.mBannerAdView.setVisibility(0);
                }
                BannerAd.this.mBannerAdViewVisibilityState = 0;
            }
        });
    }

    public void hideAd() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd.3
            @Override // java.lang.Runnable
            public void run() {
                if (BannerAd.this.mBannerAdView != null) {
                    BannerAd.this.mBannerAdView.setVisibility(8);
                }
                BannerAd.this.mBannerAdViewVisibilityState = 8;
            }
        });
    }

    public void resumeAutoRefresh() {
        this.mBannerAdView.resumeAutoRefresh();
    }

    public void pauseAutoRefresh() {
        this.mBannerAdView.pauseAutoRefresh();
    }

    /* JADX INFO: renamed from: com.ironsource.unity.androidbridge.BannerAd$4, reason: invalid class name */
    class AnonymousClass4 implements Runnable {
        final /* synthetic */ int val$position;

        AnonymousClass4(final int val$position) {
            this.val$position = val$position;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BannerAd.this.mBannerAdView.getParent() == null) {
                BannerAd.this.mActivity.addContentView(BannerAd.this.mBannerAdView, new FrameLayout.LayoutParams(-1, -2));
            }
            BannerAd.this.setPositionInternal(this.val$position, 0, 0);
            BannerAd.this.mBannerAdView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.ironsource.unity.androidbridge.BannerAd.4.1
                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewRemoved(View parent, View child) {
                }

                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewAdded(View parent, View child) {
                    BannerAd.this.mActivity.runOnUiThread(new Runnable() { // from class: com.ironsource.unity.androidbridge.BannerAd.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (BannerAd.this.mBannerAdView != null) {
                                BannerAd.this.mBannerAdView.setVisibility(BannerAd.this.mBannerAdViewVisibilityState);
                            }
                            BannerAd.this.mBannerAdView.requestLayout();
                        }
                    });
                }
            });
        }
    }

    private void setPosition(int position) {
        this.mActivity.runOnUiThread(new AnonymousClass4(position));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPositionInternal(int position, int offsetX, int offsetY) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mBannerAdView.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.gravity = position == 1 ? 48 : 80;
        this.mBannerAdView.setLayoutParams(layoutParams);
    }
}
