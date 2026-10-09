package org.json.adapters.applovin;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.google.android.gms.nearby.messages.Strategy;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.AdapterUtils;
import org.json.mediationsdk.INetworkInitCallbackListener;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.IntegrationData;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.metadata.MetaDataUtils;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
import org.json.mediationsdk.sdk.RewardedVideoSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
class AppLovinAdapter extends AbstractAdapter implements INetworkInitCallbackListener {
    private static final String DEFAULT_ZONE_ID = "defaultZoneId";
    private static final String GitHash = "9c68ca8";
    private static final String SDK_KEY = "sdkKey";
    private static final String VERSION = "4.3.48";
    private static final String ZONE_ID = "zoneId";
    private static AppLovinSdk mAppLovinSdk;
    private static AppLovinSdkSettings mAppLovinSettings;
    protected final CopyOnWriteArraySet<String> mRewardedVideoZoneIdsForInitCallbacks;
    protected final ConcurrentHashMap<String, AppLovinBannerListener> mZoneIdToAppLovinBannerListener;
    protected final ConcurrentHashMap<String, AppLovinInterstitialListener> mZoneIdToAppLovinInterstitialListener;
    protected final ConcurrentHashMap<String, AppLovinRewardedVideoListener> mZoneIdToAppLovinRewardedVideoListener;
    protected final ConcurrentHashMap<String, AppLovinAdView> mZoneIdToBannerAd;
    protected final ConcurrentHashMap<String, FrameLayout.LayoutParams> mZoneIdToBannerLayout;
    protected final ConcurrentHashMap<String, AppLovinAdSize> mZoneIdToBannerSize;
    protected final ConcurrentHashMap<String, BannerSmashListener> mZoneIdToBannerSmashListener;
    protected final ConcurrentHashMap<String, Boolean> mZoneIdToInterstitialAdReadyStatus;
    protected final ConcurrentHashMap<String, InterstitialSmashListener> mZoneIdToInterstitialSmashListener;
    protected final ConcurrentHashMap<String, AppLovinIncentivizedInterstitial> mZoneIdToRewardedVideoAd;
    protected final ConcurrentHashMap<String, RewardedVideoSmashListener> mZoneIdToRewardedVideoSmashListener;
    protected static final ConcurrentHashMap<String, AppLovinAd> mZoneIdToInterstitialAd = new ConcurrentHashMap<>();
    private static final AtomicBoolean mWasInitCalled = new AtomicBoolean(false);
    private static InitState mInitState = InitState.INIT_STATE_NONE;
    private static final HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();

    private enum InitState {
        INIT_STATE_NONE,
        INIT_STATE_IN_PROGRESS,
        INIT_STATE_SUCCESS,
        INIT_STATE_FAILED
    }

    protected String getErrorString(int i) {
        if (i == -8) {
            return "The provided ad token is invalid; ad token must be returned from AppLovin S2S integration.";
        }
        if (i == -7) {
            return "The zone provided is invalid; the zone needs to be added to your AppLovin account or may still be propagating to our servers.";
        }
        if (i == -6) {
            return "There has been a failure to render an ad on screen.";
        }
        switch (i) {
            case -1009:
                return "The device had no network connectivity at the time of an ad request, either due to airplane mode or no service.";
            case -1001:
                return "The network conditions prevented the SDK from receiving an ad.";
            case AppLovinErrorCodes.INVALID_URL /* -900 */:
                return "A postback URL you attempted to dispatch was empty or nil.";
            case AppLovinErrorCodes.INVALID_RESPONSE /* -800 */:
                return "The AppLovin servers have returned an invalid response";
            case AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO /* -600 */:
                return "The user exited out of the ad early. You may or may not wish to grant a reward depending on your preference.";
            case AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT /* -500 */:
                return "A reward validation requested timed out (usually due to poor connectivity).";
            case AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR /* -400 */:
                return "An unknown server-side error occurred.";
            case AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED /* -300 */:
                return "The developer called for a rewarded video before one was available.";
            case AppLovinErrorCodes.SDK_DISABLED /* -22 */:
                return "The SDK is currently disabled.";
            case -1:
                return "The system is in unexpected state.";
            case 204:
                return "No ads are currently eligible for your device.";
            default:
                switch (i) {
                    case AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES /* -202 */:
                        return "An attempt to cache a video resource to the filesystem failed; the device may be out of space.";
                    case AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES /* -201 */:
                        return "An attempt to cache an image resource to the filesystem failed; the device may be out of space.";
                    case AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES /* -200 */:
                        return "An attempt to cache a resource to the filesystem failed; the device may be out of space.";
                    default:
                        return "Unknown error";
                }
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.48";
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return false;
    }

    public static AppLovinAdapter startAdapter(String str) {
        return new AppLovinAdapter(str);
    }

    private AppLovinAdapter(String str) {
        super(str);
        IronLog.INTERNAL.verbose();
        this.mZoneIdToAppLovinRewardedVideoListener = new ConcurrentHashMap<>();
        this.mZoneIdToRewardedVideoAd = new ConcurrentHashMap<>();
        this.mZoneIdToRewardedVideoSmashListener = new ConcurrentHashMap<>();
        this.mRewardedVideoZoneIdsForInitCallbacks = new CopyOnWriteArraySet<>();
        this.mZoneIdToAppLovinInterstitialListener = new ConcurrentHashMap<>();
        this.mZoneIdToInterstitialSmashListener = new ConcurrentHashMap<>();
        this.mZoneIdToInterstitialAdReadyStatus = new ConcurrentHashMap<>();
        this.mZoneIdToAppLovinBannerListener = new ConcurrentHashMap<>();
        this.mZoneIdToBannerSmashListener = new ConcurrentHashMap<>();
        this.mZoneIdToBannerLayout = new ConcurrentHashMap<>();
        this.mZoneIdToBannerAd = new ConcurrentHashMap<>();
        this.mZoneIdToBannerSize = new ConcurrentHashMap<>();
        this.mLWSSupportState = LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    public static IntegrationData getIntegrationData(Context context) {
        return new IntegrationData("AppLovin", "4.3.48");
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return getAdapterSDKVersion();
    }

    public static String getAdapterSDKVersion() {
        return AppLovinSdk.VERSION;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initSdk, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void m371x25ebba3a(String str, String str2) {
        if (mInitState == InitState.INIT_STATE_NONE || mInitState == InitState.INIT_STATE_IN_PROGRESS) {
            initCallbackListeners.add(this);
        }
        if (mWasInitCalled.compareAndSet(false, true)) {
            IronLog.ADAPTER_API.verbose("sdkKey = " + str);
            Context applicationContext = ContextProvider.getInstance().getApplicationContext();
            mInitState = InitState.INIT_STATE_IN_PROGRESS;
            try {
                AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfigurationBuild = AppLovinSdkInitializationConfiguration.builder(str, applicationContext).setMediationProvider(AppLovinMediationProvider.IRONSOURCE).build();
                AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(applicationContext);
                mAppLovinSdk = appLovinSdk;
                AppLovinSdkSettings settings = appLovinSdk.getSettings();
                settings.setVerboseLogging(isAdaptersDebugEnabled());
                if (!TextUtils.isEmpty(str2)) {
                    IronLog.ADAPTER_API.verbose("setUserIdentifier to " + str2);
                    settings.setUserIdentifier(str2);
                }
                mAppLovinSettings = settings;
                mAppLovinSdk.initialize(appLovinSdkInitializationConfigurationBuild, new AppLovinSdk.SdkInitializationListener() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.1
                    @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
                    public void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                        AppLovinAdapter.this.initializationSuccess();
                    }
                });
            } catch (Throwable th) {
                initializationFailure(th.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        mInitState = InitState.INIT_STATE_SUCCESS;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackSuccess();
        }
        initCallbackListeners.clear();
    }

    private void initializationFailure(String str) {
        IronLog.ADAPTER_CALLBACK.verbose();
        mInitState = InitState.INIT_STATE_FAILED;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackFailed("AppLovin sdk init failed - " + str);
        }
        initCallbackListeners.clear();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        for (String str : this.mZoneIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mZoneIdToRewardedVideoSmashListener.get(str);
            if (rewardedVideoSmashListener != null) {
                if (this.mRewardedVideoZoneIdsForInitCallbacks.contains(str)) {
                    rewardedVideoSmashListener.onRewardedVideoInitSuccess();
                } else {
                    loadRewardedVideoInternal(str, rewardedVideoSmashListener);
                }
            }
        }
        Iterator<InterstitialSmashListener> it = this.mZoneIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitSuccess();
        }
        Iterator<BannerSmashListener> it2 = this.mZoneIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String str) {
        for (String str2 : this.mZoneIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mZoneIdToRewardedVideoSmashListener.get(str2);
            if (rewardedVideoSmashListener != null) {
                if (this.mRewardedVideoZoneIdsForInitCallbacks.contains(str2)) {
                    rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                } else {
                    rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
                }
            }
        }
        Iterator<InterstitialSmashListener> it = this.mZoneIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(str, "Interstitial"));
        }
        Iterator<BannerSmashListener> it2 = this.mZoneIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitFailed(ErrorBuilder.buildInitFailedError(str, "Banner"));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, final String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("error - missing param - sdkKey");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing param - sdkKey", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing param - zoneId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToRewardedVideoSmashListener.put(zoneId, rewardedVideoSmashListener);
        this.mRewardedVideoZoneIdsForInitCallbacks.add(zoneId);
        int i = AnonymousClass2.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m371x25ebba3a(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            rewardedVideoSmashListener.onRewardedVideoInitSuccess();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.adapters.applovin.AppLovinAdapter$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState;

        static {
            int[] iArr = new int[InitState.values().length];
            $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState = iArr;
            try {
                iArr[InitState.INIT_STATE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[InitState.INIT_STATE_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[InitState.INIT_STATE_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, final String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - sdkKey");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToRewardedVideoSmashListener.put(zoneId, rewardedVideoSmashListener);
        int i = AnonymousClass2.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m368x60294087(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            loadRewardedVideoInternal(zoneId, rewardedVideoSmashListener);
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoInternal(getZoneId(jSONObject), rewardedVideoSmashListener);
    }

    private void loadRewardedVideoInternal(String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitialCreate;
        IronLog.ADAPTER_API.verbose("zoneId = " + str);
        if (this.mZoneIdToRewardedVideoAd.containsKey(str)) {
            appLovinIncentivizedInterstitialCreate = this.mZoneIdToRewardedVideoAd.get(str);
        } else {
            if (!str.equals(DEFAULT_ZONE_ID)) {
                appLovinIncentivizedInterstitialCreate = AppLovinIncentivizedInterstitial.create(str, mAppLovinSdk);
            } else {
                appLovinIncentivizedInterstitialCreate = AppLovinIncentivizedInterstitial.create(mAppLovinSdk);
            }
            this.mZoneIdToRewardedVideoAd.put(str, appLovinIncentivizedInterstitialCreate);
        }
        AppLovinRewardedVideoListener appLovinRewardedVideoListener = new AppLovinRewardedVideoListener(this, rewardedVideoSmashListener, str);
        this.mZoneIdToAppLovinRewardedVideoListener.put(str, appLovinRewardedVideoListener);
        appLovinIncentivizedInterstitialCreate.preload(appLovinRewardedVideoListener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        if (isRewardedVideoAvailable(jSONObject)) {
            if (!TextUtils.isEmpty(getDynamicUserId())) {
                mAppLovinSettings.setUserIdentifier(getDynamicUserId());
            }
            AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.mZoneIdToRewardedVideoAd.get(zoneId);
            AppLovinRewardedVideoListener appLovinRewardedVideoListener = this.mZoneIdToAppLovinRewardedVideoListener.get(zoneId);
            appLovinIncentivizedInterstitial.show(ContextProvider.getInstance().getCurrentActiveActivity(), appLovinRewardedVideoListener, appLovinRewardedVideoListener, appLovinRewardedVideoListener, appLovinRewardedVideoListener);
            return;
        }
        rewardedVideoSmashListener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject jSONObject) {
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.mZoneIdToRewardedVideoAd.get(getZoneId(jSONObject));
        return appLovinIncentivizedInterstitial != null && appLovinIncentivizedInterstitial.isAdReadyToDisplay();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, final String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - sdkKey");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing param - sdkKey", "Interstitial"));
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing param - zoneId", "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToInterstitialSmashListener.put(zoneId, interstitialSmashListener);
        int i = AnonymousClass2.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m370x63bdb9aa(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            interstitialSmashListener.onInterstitialInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        AppLovinInterstitialListener appLovinInterstitialListener = new AppLovinInterstitialListener(this, interstitialSmashListener, zoneId);
        this.mZoneIdToAppLovinInterstitialListener.put(zoneId, appLovinInterstitialListener);
        if (mZoneIdToInterstitialAd.containsKey(zoneId)) {
            String str = "AppLovin can't load multiple interstitial ads for the same zoneId - " + zoneId + ", skipping load attempt since there is a loaded interstitial ad for this zoneId";
            IronLog.INTERNAL.info(str);
            interstitialSmashListener.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError(str));
            return;
        }
        if (!zoneId.equals(DEFAULT_ZONE_ID)) {
            mAppLovinSdk.getAdService().loadNextAdForZoneId(zoneId, appLovinInterstitialListener);
        } else {
            mAppLovinSdk.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinInterstitialListener);
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        if (isInterstitialReady(jSONObject)) {
            AppLovinAd appLovinAd = mZoneIdToInterstitialAd.get(zoneId);
            AppLovinInterstitialListener appLovinInterstitialListener = this.mZoneIdToAppLovinInterstitialListener.get(zoneId);
            AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreate = AppLovinInterstitialAd.create(mAppLovinSdk, ContextProvider.getInstance().getApplicationContext());
            appLovinInterstitialAdDialogCreate.setAdClickListener(appLovinInterstitialListener);
            appLovinInterstitialAdDialogCreate.setAdDisplayListener(appLovinInterstitialListener);
            appLovinInterstitialAdDialogCreate.setAdVideoPlaybackListener(appLovinInterstitialListener);
            appLovinInterstitialAdDialogCreate.showAndRender(appLovinAd);
            this.mZoneIdToInterstitialAdReadyStatus.put(zoneId, false);
            return;
        }
        mZoneIdToInterstitialAd.remove(zoneId);
        interstitialSmashListener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject jSONObject) {
        String zoneId = getZoneId(jSONObject);
        return mZoneIdToInterstitialAd.containsKey(zoneId) && this.mZoneIdToInterstitialAdReadyStatus.containsKey(zoneId) && this.mZoneIdToInterstitialAdReadyStatus.get(zoneId).booleanValue();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, final String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - sdkKey");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing param - sdkKey", "Banner"));
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing param - zoneId", "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToBannerSmashListener.put(zoneId, bannerSmashListener);
        int i = AnonymousClass2.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m369x937bdf88(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            bannerSmashListener.onBannerInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject jSONObject, JSONObject jSONObject2, final IronSourceBannerLayout ironSourceBannerLayout, final BannerSmashListener bannerSmashListener) {
        final String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.error("banner layout is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildNoConfigurationAvailableError("banner layout is null"));
            return;
        }
        final AppLovinAdSize appLovinAdSizeCalculateBannerSize = calculateBannerSize(ironSourceBannerLayout.getSize(), AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()));
        if (appLovinAdSizeCalculateBannerSize == null) {
            IronLog.INTERNAL.error("size not supported, size is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getProviderName()));
        } else {
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m372xc4115512(ironSourceBannerLayout, bannerSmashListener, zoneId, appLovinAdSizeCalculateBannerSize);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$loadBanner$4$com-ironsource-adapters-applovin-AppLovinAdapter, reason: not valid java name */
    /* synthetic */ void m372xc4115512(IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener, String str, AppLovinAdSize appLovinAdSize) {
        try {
            if (ironSourceBannerLayout == null) {
                IronLog.INTERNAL.verbose("banner is null");
                bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getProviderName()));
                return;
            }
            FrameLayout.LayoutParams bannerLayoutParams = getBannerLayoutParams(ironSourceBannerLayout.getSize());
            AppLovinBannerListener appLovinBannerListener = new AppLovinBannerListener(this, bannerSmashListener, str, bannerLayoutParams);
            AppLovinAdView appLovinAdView = new AppLovinAdView(mAppLovinSdk, appLovinAdSize, ContextProvider.getInstance().getApplicationContext());
            appLovinAdView.setAdDisplayListener(appLovinBannerListener);
            appLovinAdView.setAdClickListener(appLovinBannerListener);
            appLovinAdView.setAdViewEventListener(appLovinBannerListener);
            this.mZoneIdToBannerAd.put(str, appLovinAdView);
            this.mZoneIdToBannerLayout.put(str, bannerLayoutParams);
            this.mZoneIdToAppLovinBannerListener.put(str, appLovinBannerListener);
            this.mZoneIdToBannerSize.put(str, appLovinAdSize);
            if (!str.equals(DEFAULT_ZONE_ID)) {
                mAppLovinSdk.getAdService().loadNextAdForZoneId(str, appLovinBannerListener);
            } else {
                mAppLovinSdk.getAdService().loadNextAd(appLovinAdSize, appLovinBannerListener);
            }
        } catch (Exception e) {
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError(getProviderName() + " loadBanner exception " + e.getMessage()));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject jSONObject) {
        final String zoneId = getZoneId(jSONObject);
        final AppLovinAdView appLovinAdView = this.mZoneIdToBannerAd.get(zoneId);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m367x6de777f7(appLovinAdView, zoneId);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$destroyBanner$5$com-ironsource-adapters-applovin-AppLovinAdapter, reason: not valid java name */
    /* synthetic */ void m367x6de777f7(AppLovinAdView appLovinAdView, String str) {
        if (appLovinAdView != null) {
            appLovinAdView.destroy();
        }
        this.mZoneIdToBannerAd.remove(str);
        this.mZoneIdToBannerLayout.remove(str);
        this.mZoneIdToAppLovinBannerListener.remove(str);
        this.mZoneIdToBannerSize.remove(str);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        IronLog.INTERNAL.verbose("adUnit = " + ad_unit);
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.mZoneIdToAppLovinRewardedVideoListener.clear();
            this.mZoneIdToRewardedVideoAd.clear();
            this.mZoneIdToRewardedVideoSmashListener.clear();
            this.mRewardedVideoZoneIdsForInitCallbacks.clear();
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.mZoneIdToAppLovinInterstitialListener.clear();
            this.mZoneIdToInterstitialAdReadyStatus.clear();
            mZoneIdToInterstitialAd.clear();
            this.mZoneIdToInterstitialSmashListener.clear();
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m373x283ad6b4();
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$releaseMemory$6$com-ironsource-adapters-applovin-AppLovinAdapter, reason: not valid java name */
    /* synthetic */ void m373x283ad6b4() {
        Iterator<AppLovinAdView> it = this.mZoneIdToBannerAd.values().iterator();
        while (it.hasNext()) {
            it.next().destroy();
        }
        this.mZoneIdToAppLovinBannerListener.clear();
        this.mZoneIdToBannerSmashListener.clear();
        this.mZoneIdToBannerLayout.clear();
        this.mZoneIdToBannerAd.clear();
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    protected void setMetaData(String str, List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        String str2 = list.get(0);
        IronLog.ADAPTER_API.verbose("key = " + str + ", value = " + str2);
        if (MetaDataUtils.isValidCCPAMetaData(str, str2)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str2));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean z) {
        IronLog.ADAPTER_API.verbose("consent = " + z);
        AppLovinPrivacySettings.setHasUserConsent(z, ContextProvider.getInstance().getApplicationContext());
    }

    private void setCCPAValue(boolean z) {
        IronLog.ADAPTER_API.verbose("value = " + z);
        AppLovinPrivacySettings.setDoNotSell(z, ContextProvider.getInstance().getApplicationContext());
    }

    private AppLovinAdSize calculateBannerSize(ISBannerSize iSBannerSize, boolean z) {
        if (iSBannerSize == null) {
            IronLog.ADAPTER_API.error(getProviderName() + " calculateLayoutParams - bannerSize is null");
            return null;
        }
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
                return AppLovinAdSize.MREC;
            case "LARGE":
            case "BANNER":
                return AppLovinAdSize.BANNER;
            case "SMART":
                return z ? AppLovinAdSize.LEADER : AppLovinAdSize.BANNER;
            case "CUSTOM":
                if (iSBannerSize.getHeight() >= 40 && iSBannerSize.getHeight() <= 60) {
                    return AppLovinAdSize.BANNER;
                }
            default:
                return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x001d  */
    private FrameLayout.LayoutParams getBannerLayoutParams(ISBannerSize iSBannerSize) {
        byte b = 0;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description.hashCode()) {
            case -387072689:
                if (!description.equals("RECTANGLE")) {
                    b = -1;
                }
                break;
            case 72205083:
                if (!description.equals("LARGE")) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case 79011241:
                if (!description.equals("SMART")) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 1951953708:
                if (!description.equals("BANNER")) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case 1999208305:
                if (!description.equals("CUSTOM")) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, Strategy.TTL_SECONDS_DEFAULT), AdapterUtils.dpToPixels(applicationContext, IronSourceConstants.INTERSTITIAL_DAILY_CAPPED));
                break;
            case 1:
            case 3:
                layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, 320), AdapterUtils.dpToPixels(applicationContext, 50));
                break;
            case 2:
                layoutParams = AdapterUtils.isLargeScreen(applicationContext) ? new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, 728), AdapterUtils.dpToPixels(applicationContext, 90)) : new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, 320), AdapterUtils.dpToPixels(applicationContext, 50));
                break;
            case 4:
                if (iSBannerSize.getHeight() >= 40 && iSBannerSize.getHeight() <= 60) {
                    layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, 320), AdapterUtils.dpToPixels(applicationContext, 50));
                }
                break;
        }
        layoutParams.gravity = 17;
        return layoutParams;
    }

    private String getZoneId(JSONObject jSONObject) {
        return !TextUtils.isEmpty(jSONObject.optString(ZONE_ID)) ? jSONObject.optString(ZONE_ID) : DEFAULT_ZONE_ID;
    }
}
