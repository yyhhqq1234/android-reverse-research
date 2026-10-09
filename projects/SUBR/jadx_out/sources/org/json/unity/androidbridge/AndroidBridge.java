package org.json.unity.androidbridge;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.unity3d.player.UnityPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.adapters.supersonicads.SupersonicConfig;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.ISContainerParams;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.IronSourceSegment;
import org.json.mediationsdk.WaterfallConfiguration;
import org.json.mediationsdk.adunit.adapter.utility.AdInfo;
import org.json.mediationsdk.config.ConfigFile;
import org.json.mediationsdk.impressionData.ImpressionData;
import org.json.mediationsdk.impressionData.ImpressionDataListener;
import org.json.mediationsdk.integration.IntegrationHelper;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.Placement;
import org.json.mediationsdk.sdk.InitializationListener;
import org.json.mediationsdk.sdk.LevelPlayBannerListener;
import org.json.mediationsdk.sdk.SegmentListener;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidBridge implements InitializationListener, ImpressionDataListener, SegmentListener {
    private static final AndroidBridge mInstance = new AndroidBridge();
    private IronSourceBannerLayout mBanner;
    private FrameLayout mBannerContainer;
    private int mBannerVisibilityState;
    private boolean mIsBannerLoadCalled;
    private boolean mIsBannerLoadedFirst;
    private LevelPlayInterstitialWrapper mLevelPlayInterstitialWrapper;
    private LevelPlayRewardedVideoWrapper mLevelPlayRewardedVideoWrapper;
    private Handler mUIHandler;
    private UnityImpressionDataListener mUnityImpressionDataListener;
    private UnityInitializationListener mUnityInitializationListener;
    private UnityLevelPlayBannerListener mUnityLevelPlayBannerListener;
    private UnitySegmentListener mUnitySegmentListener;

    public void setLanguage(String language) {
    }

    public void setRewardedVideoCustomParams(String paramsJson) {
    }

    public static synchronized AndroidBridge getInstance() {
        return mInstance;
    }

    private AndroidBridge() {
        IronSource.addImpressionDataListener(this);
        IronSource.setSegmentListener(this);
        this.mLevelPlayRewardedVideoWrapper = new LevelPlayRewardedVideoWrapper();
        this.mLevelPlayInterstitialWrapper = new LevelPlayInterstitialWrapper();
        this.mUIHandler = new Handler(Looper.getMainLooper());
        this.mBannerContainer = null;
        this.mBanner = null;
        this.mIsBannerLoadedFirst = false;
        this.mIsBannerLoadCalled = false;
        this.mBannerVisibilityState = 0;
    }

    public void setUnityInitializationListener(UnityInitializationListener listener) {
        this.mUnityInitializationListener = listener;
    }

    public void setUnityRewardedVideoLevelPlayListener(UnityLevelPlayRewardedVideoListener listener) {
        this.mLevelPlayRewardedVideoWrapper.setLevelPlayRewardedVideoListener(listener);
    }

    public void setUnityRewardedVideoManualLevelPlayListener(UnityLevelPlayRewardedVideoManualListener listener) {
        this.mLevelPlayRewardedVideoWrapper.setLevelPlayManualRewardedVideoListener(listener);
    }

    public void setUnityInterstitialLevelPlayListener(UnityLevelPlayInterstitialListener listener) {
        this.mLevelPlayInterstitialWrapper.setInterstitialLevelPlaylistener(listener);
    }

    public void setUnitySegmentListener(UnitySegmentListener listener) {
        this.mUnitySegmentListener = listener;
    }

    public void setUnityBannerLevelPlayListener(UnityLevelPlayBannerListener listener) {
        this.mUnityLevelPlayBannerListener = listener;
    }

    public void setUnityImpressionDataListener(UnityImpressionDataListener listener) {
        this.mUnityImpressionDataListener = listener;
    }

    @Override // org.json.mediationsdk.impressionData.ImpressionDataListener
    public void onImpressionSuccess(final ImpressionData impressionData) {
        if (this.mUnityImpressionDataListener != null) {
            AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.1
                @Override // java.lang.Runnable
                public void run() {
                    AndroidBridge.this.mUnityImpressionDataListener.onImpressionDataReady(AndroidBridgeUtilities.getImpressionDataString(impressionData));
                    AndroidBridge.this.mUnityImpressionDataListener.onImpressionSuccess(AndroidBridgeUtilities.getImpressionDataString(impressionData));
                }
            });
        }
    }

    @Override // org.json.mediationsdk.sdk.InitializationListener
    public void onInitializationComplete() {
        if (this.mUnityInitializationListener != null) {
            AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.2
                @Override // java.lang.Runnable
                public void run() {
                    AndroidBridge.this.mUnityInitializationListener.onSdkInitializationCompleted();
                }
            });
        }
    }

    @Override // org.json.mediationsdk.sdk.SegmentListener
    public void onSegmentReceived(final String segment) {
        try {
            if (this.mUnitySegmentListener != null) {
                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.3
                    @Override // java.lang.Runnable
                    public void run() {
                        AndroidBridge.this.mUnitySegmentListener.onSegmentRecieved(segment);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Activity getUnityActivity() {
        return UnityPlayer.currentActivity;
    }

    public void setPluginData(String pluginType, String pluginVersion, String pluginFrameworkVersion) {
        ConfigFile.getConfigFile().setPluginData(pluginType, pluginVersion, pluginFrameworkVersion);
    }

    public String getAdvertiserId() {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.4
            @Override // java.util.concurrent.Callable
            public String call() throws Exception {
                return IronSource.getAdvertiserId(AndroidBridge.this.getUnityActivity());
            }
        });
        futureTask.run();
        try {
            return (String) futureTask.get(1L, TimeUnit.SECONDS);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void validateIntegration() {
        IntegrationHelper.validateIntegration(getUnityActivity());
    }

    public void shouldTrackNetworkState(boolean track) {
        IronSource.shouldTrackNetworkState(getUnityActivity(), track);
    }

    public boolean setDynamicUserId(String dynamicUserId) {
        return IronSource.setDynamicUserId(dynamicUserId);
    }

    public void setAdaptersDebug(boolean enabled) {
        IronSource.setAdaptersDebug(enabled);
    }

    public void setManualLoadRewardedVideo(boolean isOn) {
        this.mLevelPlayRewardedVideoWrapper.setIronSourceManualLoadListener(isOn);
    }

    public void setNetworkData(String networkKey, String networkData) {
        if (networkKey == null || networkData == null) {
            return;
        }
        try {
            IronSource.setNetworkData(networkKey, new JSONObject(networkData));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void onResume() {
        IronSource.onResume(getUnityActivity());
    }

    public void onPause() {
        IronSource.onPause(getUnityActivity());
    }

    public void setUserId(String userId) {
        IronSource.setUserId(userId);
    }

    public void init(String appKey) {
        IronSource.init(getUnityActivity(), appKey, this);
    }

    public void init(String appKey, String[] adUnits) {
        ArrayList arrayList = new ArrayList();
        for (String str : adUnits) {
            if (IronSource.AD_UNIT.REWARDED_VIDEO.toString().equalsIgnoreCase(str)) {
                arrayList.add(IronSource.AD_UNIT.REWARDED_VIDEO);
            } else if (IronSource.AD_UNIT.INTERSTITIAL.toString().equalsIgnoreCase(str)) {
                arrayList.add(IronSource.AD_UNIT.INTERSTITIAL);
            } else if (IronSource.AD_UNIT.BANNER.toString().equalsIgnoreCase(str)) {
                arrayList.add(IronSource.AD_UNIT.BANNER);
            }
        }
        IronSource.init(getUnityActivity(), appKey, this, (IronSource.AD_UNIT[]) arrayList.toArray(new IronSource.AD_UNIT[arrayList.size()]));
    }

    public void loadRewardedVideo() {
        IronSource.loadRewardedVideo();
    }

    public void showRewardedVideo() {
        IronSource.showRewardedVideo();
    }

    public void showRewardedVideo(String placementName) {
        IronSource.showRewardedVideo(placementName);
    }

    public boolean isRewardedVideoAvailable() {
        return IronSource.isRewardedVideoAvailable();
    }

    public boolean isRewardedVideoPlacementCapped(String placementName) {
        return IronSource.isRewardedVideoPlacementCapped(placementName);
    }

    public String getPlacementInfo(String placementName) {
        Placement rewardedVideoPlacementInfo = IronSource.getRewardedVideoPlacementInfo(placementName);
        HashMap map = new HashMap();
        try {
            map.put(AndroidBridgeConstants.PLACEMENT_NAME, rewardedVideoPlacementInfo.getCom.ironsource.oo.d java.lang.String());
            map.put(AndroidBridgeConstants.PLACEMENT_REWARD_NAME, rewardedVideoPlacementInfo.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_NAME java.lang.String());
            map.put(AndroidBridgeConstants.PLACEMENT_AMOUNT, Integer.valueOf(rewardedVideoPlacementInfo.getCom.ironsource.mediationsdk.utils.IronSourceConstants.EVENTS_REWARD_AMOUNT java.lang.String()));
            return new JSONObject(map).toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setRewardedVideoServerParams(String paramsJson) {
        IronSource.setRewardedVideoServerParameters(AndroidBridgeUtilities.getHashMapFromJsonString(paramsJson));
    }

    public void clearRewardedVideoServerParams() {
        IronSource.clearRewardedVideoServerParameters();
    }

    public void loadInterstitial() {
        IronSource.loadInterstitial();
    }

    public void showInterstitial() {
        IronSource.showInterstitial();
    }

    public void showInterstitial(String placementName) {
        IronSource.showInterstitial(placementName);
    }

    public boolean isInterstitialReady() {
        return IronSource.isInterstitialReady();
    }

    public boolean isInterstitialPlacementCapped(String placementName) {
        return IronSource.isInterstitialPlacementCapped(placementName);
    }

    public void loadBanner(String description, int width, int height, int position, String placementName, boolean isAdaptive, boolean isRespectCutoutsEnabled, float containerWidth, float containerHeight) {
        synchronized (mInstance) {
            if (this.mIsBannerLoadCalled) {
                return;
            }
            this.mIsBannerLoadCalled = true;
            loadAndShowBanner(description, width, height, position, placementName, isAdaptive, isRespectCutoutsEnabled, containerWidth, containerHeight);
        }
    }

    /* JADX INFO: renamed from: com.ironsource.unity.androidbridge.AndroidBridge$5, reason: invalid class name */
    class AnonymousClass5 implements Runnable {
        final /* synthetic */ float val$containerHeight;
        final /* synthetic */ float val$containerWidth;
        final /* synthetic */ String val$description;
        final /* synthetic */ int val$height;
        final /* synthetic */ boolean val$isAdaptive;
        final /* synthetic */ boolean val$isRespectCutoutsEnabled;
        final /* synthetic */ String val$placementName;
        final /* synthetic */ int val$position;
        final /* synthetic */ int val$width;

        AnonymousClass5(final int val$position, final String val$description, final int val$width, final int val$height, final boolean val$isAdaptive, final float val$containerWidth, final float val$containerHeight, final boolean val$isRespectCutoutsEnabled, final String val$placementName) {
            this.val$position = val$position;
            this.val$description = val$description;
            this.val$width = val$width;
            this.val$height = val$height;
            this.val$isAdaptive = val$isAdaptive;
            this.val$containerWidth = val$containerWidth;
            this.val$containerHeight = val$containerHeight;
            this.val$isRespectCutoutsEnabled = val$isRespectCutoutsEnabled;
            this.val$placementName = val$placementName;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (AndroidBridge.mInstance) {
                try {
                    int i = 48;
                    if (AndroidBridge.this.mBannerContainer == null) {
                        AndroidBridge.this.mBannerContainer = new FrameLayout(UnityPlayer.currentActivity);
                        AndroidBridge.this.mBannerContainer.setBackgroundColor(0);
                        AndroidBridge.this.mBannerContainer.setVisibility(AndroidBridge.this.mBannerVisibilityState);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams.gravity = this.val$position == 1 ? 48 : 80;
                        UnityPlayer.currentActivity.addContentView(AndroidBridge.this.mBannerContainer, layoutParams);
                    }
                    ISBannerSize bannerSize = AndroidBridge.this.getBannerSize(this.val$description, this.val$width, this.val$height);
                    boolean z = this.val$isAdaptive;
                    if (z) {
                        bannerSize.setAdaptive(z);
                        float deviceScreenWidth = this.val$containerWidth;
                        float maximalAdaptiveHeight = this.val$containerHeight;
                        if (deviceScreenWidth <= 0.0f) {
                            deviceScreenWidth = AndroidBridge.this.getDeviceScreenWidth();
                        }
                        if (maximalAdaptiveHeight <= 0.0f) {
                            maximalAdaptiveHeight = AndroidBridge.this.getMaximalAdaptiveHeight(deviceScreenWidth);
                        }
                        bannerSize.setContainerParams(new ISContainerParams((int) deviceScreenWidth, (int) maximalAdaptiveHeight));
                    }
                    if (this.val$isRespectCutoutsEnabled && Build.VERSION.SDK_INT >= 28) {
                        AndroidBridge.this.mBannerContainer.setFitsSystemWindows(true);
                        AndroidBridge.this.mBannerContainer.setSystemUiVisibility(1280);
                    }
                    AndroidBridge androidBridge = AndroidBridge.this;
                    androidBridge.mBanner = IronSource.createBanner(androidBridge.getUnityActivity(), bannerSize);
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    if (this.val$position != 1) {
                        i = 80;
                    }
                    layoutParams2.gravity = i;
                    if (AndroidBridge.this.mBannerContainer != null) {
                        AndroidBridge.this.mBannerContainer.addView(AndroidBridge.this.mBanner, layoutParams2);
                    }
                    AndroidBridge.this.mBanner.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.1
                        @Override // android.view.ViewGroup.OnHierarchyChangeListener
                        public void onChildViewRemoved(View view, View view1) {
                        }

                        @Override // android.view.ViewGroup.OnHierarchyChangeListener
                        public void onChildViewAdded(View view, View view1) {
                            AndroidBridge.this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    synchronized (AndroidBridge.mInstance) {
                                        if (AndroidBridge.this.mBanner != null) {
                                            AndroidBridge.this.mBanner.setVisibility(AndroidBridge.this.mBannerVisibilityState);
                                        }
                                        if (AndroidBridge.this.mBannerContainer != null) {
                                            AndroidBridge.this.mBannerContainer.requestLayout();
                                        }
                                    }
                                }
                            });
                        }
                    });
                    if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                        AndroidBridge.this.mBanner.setLevelPlayBannerListener(new LevelPlayBannerListener() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2
                            @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
                            public void onAdLoaded(final AdInfo adInfo) {
                                AndroidBridge.this.mIsBannerLoadedFirst = true;
                                if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                    AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                                AndroidBridge.this.mUnityLevelPlayBannerListener.onAdLoaded(AndroidBridgeUtilities.getAdInfoString(adInfo));
                                            }
                                        }
                                    });
                                }
                            }

                            @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
                            public void onAdLoadFailed(final IronSourceError ironSourceError) {
                                if (!AndroidBridge.this.mIsBannerLoadedFirst) {
                                    AndroidBridge.this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.2
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            synchronized (AndroidBridge.mInstance) {
                                                if (AndroidBridge.this.mBannerContainer != null) {
                                                    AndroidBridge.this.mBannerContainer.removeAllViews();
                                                }
                                                if (AndroidBridge.this.mBanner != null) {
                                                    AndroidBridge.this.mBanner = null;
                                                }
                                                AndroidBridge.this.mIsBannerLoadCalled = false;
                                            }
                                        }
                                    });
                                }
                                if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                    AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            AndroidBridge.this.mUnityLevelPlayBannerListener.onAdLoadFailed(AndroidBridgeUtilities.parseIronSourceError(ironSourceError));
                                        }
                                    });
                                }
                            }

                            @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
                            public void onAdClicked(final AdInfo adInfo) {
                                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.4
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                            AndroidBridge.this.mUnityLevelPlayBannerListener.onAdClicked(AndroidBridgeUtilities.getAdInfoString(adInfo));
                                        }
                                    }
                                });
                            }

                            @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
                            public void onAdLeftApplication(final AdInfo adInfo) {
                                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.5
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                            AndroidBridge.this.mUnityLevelPlayBannerListener.onAdLeftApplication(AndroidBridgeUtilities.getAdInfoString(adInfo));
                                        }
                                    }
                                });
                            }

                            @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
                            public void onAdScreenPresented(final AdInfo adInfo) {
                                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.6
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                            AndroidBridge.this.mUnityLevelPlayBannerListener.onAdScreenPresented(AndroidBridgeUtilities.getAdInfoString(adInfo));
                                        }
                                    }
                                });
                            }

                            @Override // org.json.mediationsdk.sdk.LevelPlayBannerListener
                            public void onAdScreenDismissed(final AdInfo adInfo) {
                                AndroidBridgeUtilities.postBackgroundTask(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.5.2.7
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                                            AndroidBridge.this.mUnityLevelPlayBannerListener.onAdScreenDismissed(AndroidBridgeUtilities.getAdInfoString(adInfo));
                                        }
                                    }
                                });
                            }
                        });
                    }
                    if (this.val$placementName != null) {
                        IronSource.loadBanner(AndroidBridge.this.mBanner, this.val$placementName);
                    } else {
                        IronSource.loadBanner(AndroidBridge.this.mBanner);
                    }
                } catch (Throwable th) {
                    if (AndroidBridge.this.mUnityLevelPlayBannerListener != null) {
                        AndroidBridge.this.mUnityLevelPlayBannerListener.onAdLoadFailed(AndroidBridgeUtilities.parseErrorToEvent(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, th.getMessage()));
                    }
                }
            }
        }
    }

    private void loadAndShowBanner(final String description, final int width, final int height, final int position, final String placementName, final boolean isAdaptive, final boolean isRespectCutoutsEnabled, final float containerWidth, final float containerHeight) {
        this.mUIHandler.post(new AnonymousClass5(position, description, width, height, isAdaptive, containerWidth, containerHeight, isRespectCutoutsEnabled, placementName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ISBannerSize getBannerSize(String description, int width, int height) {
        if (description.equals("CUSTOM")) {
            return new ISBannerSize(width, height);
        }
        if (description.equals("SMART")) {
            return ISBannerSize.SMART;
        }
        if (description.equals("RECTANGLE")) {
            return ISBannerSize.RECTANGLE;
        }
        if (description.equals("LARGE")) {
            return ISBannerSize.LARGE;
        }
        return ISBannerSize.BANNER;
    }

    public void destroyBanner() {
        synchronized (mInstance) {
            this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.6
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (AndroidBridge.mInstance) {
                        try {
                            if (AndroidBridge.this.mBannerContainer != null) {
                                AndroidBridge.this.mBannerContainer.removeAllViews();
                            }
                            if (AndroidBridge.this.mBanner != null) {
                                IronSource.destroyBanner(AndroidBridge.this.mBanner);
                                AndroidBridge.this.mBanner = null;
                                AndroidBridge.this.mBannerVisibilityState = 0;
                            }
                            if (AndroidBridge.this.mBannerContainer != null) {
                                AndroidBridge.this.mBannerContainer.setVisibility(0);
                                AndroidBridge.this.mBannerContainer = null;
                            }
                        } catch (Exception unused) {
                        }
                        AndroidBridge.this.mIsBannerLoadCalled = false;
                        AndroidBridge.this.mIsBannerLoadedFirst = false;
                    }
                }
            });
        }
    }

    public void displayBanner() {
        synchronized (mInstance) {
            this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.7
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (AndroidBridge.mInstance) {
                        try {
                            AndroidBridge.this.mBannerVisibilityState = 0;
                            if (AndroidBridge.this.mBannerContainer != null) {
                                AndroidBridge.this.mBanner.setVisibility(0);
                                AndroidBridge.this.mBannerContainer.setVisibility(0);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
    }

    public void hideBanner() {
        synchronized (mInstance) {
            this.mUIHandler.post(new Runnable() { // from class: com.ironsource.unity.androidbridge.AndroidBridge.8
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (AndroidBridge.mInstance) {
                        try {
                            AndroidBridge.this.mBannerVisibilityState = 8;
                            if (AndroidBridge.this.mBannerContainer != null) {
                                AndroidBridge.this.mBanner.setVisibility(8);
                                AndroidBridge.this.mBannerContainer.setVisibility(8);
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
    }

    public boolean isBannerPlacementCapped(String placementName) {
        return IronSource.isBannerPlacementCapped(placementName);
    }

    public float getMaximalAdaptiveHeight(float width) {
        return ISBannerSize.getMaximalAdaptiveHeight((int) width);
    }

    public float getDeviceScreenWidth() {
        WindowManager windowManager;
        Display defaultDisplay;
        Activity unityActivity = getUnityActivity();
        if (unityActivity == null || (windowManager = unityActivity.getWindowManager()) == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            return 0.0f;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.widthPixels / displayMetrics.density;
    }

    public void setSegment(String segmentJson) {
        try {
            IronSource.setSegmentListener(this);
            JSONObject jSONObject = new JSONObject(segmentJson);
            IronSourceSegment ironSourceSegment = new IronSourceSegment();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next.equals("age")) {
                    ironSourceSegment.setAge(jSONObject.optInt(next));
                } else if (next.equals(AndroidBridgeConstants.SEGMENT_GENDER)) {
                    ironSourceSegment.setGender(jSONObject.optString(next));
                } else if (next.equals("level")) {
                    ironSourceSegment.setLevel(jSONObject.optInt(next));
                } else if (next.equals(AndroidBridgeConstants.SEGMENT_PAYING)) {
                    ironSourceSegment.setIsPaying(jSONObject.optInt(next) != 0);
                } else if (next.equals(AndroidBridgeConstants.SEGMENT_CREATION_DATE)) {
                    ironSourceSegment.setUserCreationDate(jSONObject.optLong(next));
                } else if (next.equals("segmentName")) {
                    ironSourceSegment.setSegmentName(jSONObject.optString(next));
                } else if (next.equals("iapt")) {
                    ironSourceSegment.setIAPTotal(jSONObject.optDouble(next));
                } else {
                    ironSourceSegment.setCustom(next, jSONObject.optString(next));
                }
            }
            IronSource.setSegment(ironSourceSegment);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setConsent(boolean consent) {
        IronSource.setConsent(consent);
    }

    public void setMetaData(String key, String value) {
        IronSource.setMetaData(key, value);
    }

    public void setMetaData(String key, String[] values) {
        ArrayList arrayList = new ArrayList();
        for (String str : values) {
            arrayList.add(str);
        }
        IronSource.setMetaData(key, arrayList);
    }

    public void setClientSideCallbacks(boolean status) {
        SupersonicConfig.getConfigObj().setClientSideCallbacks(status);
    }

    public void setWaterfallConfiguration(String configurationParams, String adUnit) {
        try {
            WaterfallConfiguration.WaterfallConfigurationBuilder waterfallConfigurationBuilderBuilder = WaterfallConfiguration.builder();
            JSONObject jSONObject = new JSONObject(configurationParams);
            if (jSONObject.has(AndroidBridgeConstants.WATERFALL_CONFIG_CEILING_KEY)) {
                waterfallConfigurationBuilderBuilder.setCeiling(jSONObject.getDouble(AndroidBridgeConstants.WATERFALL_CONFIG_CEILING_KEY));
            }
            if (jSONObject.has(AndroidBridgeConstants.WATERFALL_CONFIG_FLOOR_KEY)) {
                waterfallConfigurationBuilderBuilder.setFloor(jSONObject.getDouble(AndroidBridgeConstants.WATERFALL_CONFIG_FLOOR_KEY));
            }
            IronSource.setWaterfallConfiguration(waterfallConfigurationBuilderBuilder.build(), IronSource.AD_UNIT.valueOf(adUnit));
        } catch (JSONException unused) {
            Log.e("LevelPlayAndroidBridge", String.format("Internal exception occurred while parsing configuration parameters for ad unit: %s. Please check the format of the configuration parameters.", adUnit));
        }
    }

    public void setAdRevenueData(String dataSource, String paramsJson) {
        IronSource.setAdRevenueData(dataSource, new JSONObject(AndroidBridgeUtilities.getHashMapFromJsonString(paramsJson)));
    }

    public void launchTestSuite() {
        IronSource.launchTestSuite(getUnityActivity());
    }
}
