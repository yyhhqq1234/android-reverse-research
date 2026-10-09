package org.json.adapters.ironsource;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.nearby.messages.Strategy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import org.json.a1;
import org.json.adapters.ironsource.nativeAd.IronSourceNativeAdAdapter;
import org.json.eg;
import org.json.environment.ContextProvider;
import org.json.jl;
import org.json.kn;
import org.json.l9;
import org.json.lm;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.AdapterUtils;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.IntegrationData;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.demandOnly.ISDemandOnlyBannerLayout;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.metadata.a;
import org.json.mediationsdk.p;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
import org.json.mediationsdk.sdk.RewardedVideoSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.mm;
import org.json.oi;
import org.json.pi;
import org.json.sdk.IronSourceNetwork;
import org.json.sdk.utils.SDKUtils;
import org.json.uf;
import org.json.zg;

/* JADX INFO: loaded from: classes3.dex */
public class IronSourceAdapter extends AbstractAdapter implements ContextProvider.a {
    public static final String IRONSOURCE_BIDDING_TOKEN_KEY = "token";
    public static final String IRONSOURCE_ONE_FLOW_KEY = "isOneFlow";
    private static final int IS_LOAD_EXCEPTION = 1000;
    private static final int IS_SHOW_EXCEPTION = 1001;
    private static final int RV_LOAD_EXCEPTION = 1002;
    private static final int RV_SHOW_EXCEPTION = 1003;
    private static final String VERSION = "8.5.0";
    public final String ADM_KEY;
    private final String DEMAND_SOURCE_NAME;
    private final String DYNAMIC_CONTROLLER_CONFIG;
    private final String DYNAMIC_CONTROLLER_DEBUG_MODE;
    private final String DYNAMIC_CONTROLLER_URL;
    private final String LWS_SUPPORT_STATE;
    private final String SDK_PLUGIN_TYPE;
    private final String SESSION_ID;
    ConcurrentHashMap<String, ArrayList<oi>> mDemandSourceToBnAd;
    ConcurrentHashMap<String, oi> mDemandSourceToISAd;
    ConcurrentHashMap<String, oi> mDemandSourceToRvAd;
    private final mm mNetworkGlobalDataWriter;
    private final zg sessionDepthService;
    private static AtomicBoolean mDidInitSdk = new AtomicBoolean(false);
    private static a1 mBaseAdPlayerExtraParams = new a1();

    private IronSourceAdapter(String str) {
        super(str);
        this.DYNAMIC_CONTROLLER_URL = "controllerUrl";
        this.DYNAMIC_CONTROLLER_DEBUG_MODE = "debugMode";
        this.DYNAMIC_CONTROLLER_CONFIG = "controllerConfig";
        this.SESSION_ID = "sessionid";
        this.SDK_PLUGIN_TYPE = lm.a.SDK_PLUGIN_TYPE;
        this.ADM_KEY = "adm";
        this.DEMAND_SOURCE_NAME = "demandSourceName";
        this.LWS_SUPPORT_STATE = "isSupportedLWS";
        this.mNetworkGlobalDataWriter = new mm();
        this.sessionDepthService = jl.P().k();
        this.mDemandSourceToRvAd = new ConcurrentHashMap<>();
        this.mDemandSourceToISAd = new ConcurrentHashMap<>();
        this.mDemandSourceToBnAd = new ConcurrentHashMap<>();
        setNativeAdAdapter(new IronSourceNativeAdAdapter(this));
        ContextProvider.getInstance().registerLifeCycleListener(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:37:0x006b A[PHI: r5
  0x006b: PHI (r5v3 int) = (r5v0 int), (r5v4 int) binds: [B:26:0x0050, B:36:0x0069] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private uf convertBannerSize(Context context, ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        description.hashCode();
        description.hashCode();
        byte b = -1;
        switch (description.hashCode()) {
            case -387072689:
                if (description.equals("RECTANGLE")) {
                    b = 0;
                }
                break;
            case 72205083:
                if (description.equals("LARGE")) {
                    b = 1;
                }
                break;
            case 79011241:
                if (description.equals("SMART")) {
                    b = 2;
                }
                break;
            case 1951953708:
                if (description.equals("BANNER")) {
                    b = 3;
                }
                break;
            case 1999208305:
                if (description.equals("CUSTOM")) {
                    b = 4;
                }
                break;
        }
        int i = 50;
        int i2 = 320;
        switch (b) {
            case 0:
                i2 = Strategy.TTL_SECONDS_DEFAULT;
                i = IronSourceConstants.INTERSTITIAL_DAILY_CAPPED;
                return new uf(AdapterUtils.dpToPixels(context, i2), AdapterUtils.dpToPixels(context, i), description);
            case 1:
                i = 90;
                return new uf(AdapterUtils.dpToPixels(context, i2), AdapterUtils.dpToPixels(context, i), description);
            case 2:
                boolean zIsLargeScreen = AdapterUtils.isLargeScreen(context);
                i2 = zIsLargeScreen ? 728 : 320;
                if (zIsLargeScreen) {
                    i = 90;
                }
                return new uf(AdapterUtils.dpToPixels(context, i2), AdapterUtils.dpToPixels(context, i), description);
            case 3:
                return new uf(AdapterUtils.dpToPixels(context, i2), AdapterUtils.dpToPixels(context, i), description);
            case 4:
                int height = iSBannerSize.getHeight();
                if (height != 50 && height != 90) {
                    return null;
                }
                i = height;
                return new uf(AdapterUtils.dpToPixels(context, i2), AdapterUtils.dpToPixels(context, i), description);
            default:
                return null;
        }
    }

    private oi createBannerAdInstance(String str, uf ufVar, JSONObject jSONObject, LoadAdData loadAdData, BannerSmashListener bannerSmashListener) {
        IronLog.ADAPTER_API.verbose("creating banner ad instance for " + str);
        return new pi(str, new IronSourceBannerListener(this, bannerSmashListener, str)).a(mBaseAdPlayerExtraParams.get()).a(jSONObject.optInt("instanceType", 2) == 2).c(jSONObject.optBoolean("isOneFlow")).a(ufVar).b(loadAdData.isMultipleAdObjectsFlow()).b(loadAdData.adUnitId()).a();
    }

    private oi createInterstitialAdInstance(String str, JSONObject jSONObject, LoadAdData loadAdData, InterstitialSmashListener interstitialSmashListener) {
        boolean zOptBoolean = jSONObject.optBoolean("isOneFlow");
        boolean z = jSONObject.optInt("instanceType", 2) == 2;
        IronLog.ADAPTER_API.verbose("creating ad instance for " + str + " isBidder=" + z);
        return new pi(str, new IronSourceInterstitialListener(interstitialSmashListener, str)).a(mBaseAdPlayerExtraParams.get()).c(zOptBoolean).a(z).b(loadAdData.isMultipleAdObjectsFlow()).b(loadAdData.adUnitId()).a();
    }

    private oi createRewardedVideoAdInstance(String str, boolean z, JSONObject jSONObject, LoadAdData loadAdData, RewardedVideoSmashListener rewardedVideoSmashListener) {
        boolean zOptBoolean = jSONObject.optBoolean("isOneFlow");
        boolean z2 = jSONObject.optInt("instanceType", 2) == 2;
        IronLog.ADAPTER_API.verbose("creating ad instance for " + str + " isDemandOnly=" + z + " isBidder=" + z2);
        return new pi(str, new IronSourceRewardedVideoListener(rewardedVideoSmashListener, str, z)).a(mBaseAdPlayerExtraParams.get()).c().c(zOptBoolean).b(loadAdData.isMultipleAdObjectsFlow()).a(z2).b(loadAdData.adUnitId()).a();
    }

    public static String getAdapterSDKVersion() {
        return SDKUtils.getSDKVersion();
    }

    public static IntegrationData getIntegrationData(Context context) {
        return new IntegrationData("IronSource", "8.5.0");
    }

    private void initInterstitialInternal(String str, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener, String str2) {
        initSDK(str, jSONObject);
        interstitialSmashListener.onInterstitialInitSuccess();
    }

    private void initRewardedVideoInternal(String str, JSONObject jSONObject) {
        initSDK(str, jSONObject);
    }

    private boolean isMultipleAdObjectsFlow(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optBoolean("isMultipleAdUnits", false);
    }

    private void loadBannerInternal(Activity activity, ISBannerSize iSBannerSize, JSONObject jSONObject, BannerSmashListener bannerSmashListener, String str, LoadAdData loadAdData) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        try {
            uf ufVarConvertBannerSize = convertBannerSize(ContextProvider.getInstance().getApplicationContext(), iSBannerSize);
            if (ufVarConvertBannerSize == null) {
                bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getProviderName()));
            } else {
                IronSourceNetwork.loadAdView(activity, createBannerAdInstance(demandSourceName, ufVarConvertBannerSize, jSONObject, loadAdData, bannerSmashListener), new IronSourceLoadParameters.WithLog(new IronSourceLoadParameters.Base(jSONObject, str)).value());
            }
        } catch (Exception e) {
            l9.d().a(e);
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("Banner Load Fail, " + getProviderName() + " - " + e.getMessage()));
        }
    }

    private void loadInterstitialAdInternal(String str, String str2, JSONObject jSONObject, LoadAdData loadAdData, InterstitialSmashListener interstitialSmashListener) throws Exception {
        IronSourceLoadParameters.WithLog withLog = new IronSourceLoadParameters.WithLog(new IronSourceLoadParameters.Base(jSONObject, str2));
        oi oiVarCreateInterstitialAdInstance = this.mDemandSourceToISAd.get(str);
        if (oiVarCreateInterstitialAdInstance == null) {
            oiVarCreateInterstitialAdInstance = createInterstitialAdInstance(str, jSONObject, loadAdData, interstitialSmashListener);
            this.mDemandSourceToISAd.put(str, oiVarCreateInterstitialAdInstance);
        }
        IronSourceNetwork.loadAd(oiVarCreateInterstitialAdInstance, withLog.value());
    }

    private void loadRewardedVideoAdInternal(JSONObject jSONObject, String str, String str2, LoadAdData loadAdData, RewardedVideoSmashListener rewardedVideoSmashListener) throws Exception {
        IronSourceLoadParameters.WithLog withLog = new IronSourceLoadParameters.WithLog(new IronSourceLoadParameters.Base(jSONObject, str2));
        oi oiVarCreateRewardedVideoAdInstance = this.mDemandSourceToRvAd.get(str);
        if (oiVarCreateRewardedVideoAdInstance == null) {
            oiVarCreateRewardedVideoAdInstance = createRewardedVideoAdInstance(str, withLog.demandOnly(), jSONObject, loadAdData, rewardedVideoSmashListener);
            this.mDemandSourceToRvAd.put(str, oiVarCreateRewardedVideoAdInstance);
        }
        IronSourceNetwork.loadAd(oiVarCreateRewardedVideoAdInstance, withLog.value());
    }

    private void showAdInternal(oi oiVar, IronSource.AD_UNIT ad_unit) throws Exception {
        int iA = this.sessionDepthService.a(ad_unit);
        HashMap map = new HashMap();
        map.put("sessionDepth", String.valueOf(iA));
        IronLog.ADAPTER_API.verbose("demandSourceName=" + oiVar.g() + " showParams=" + map);
        IronSourceNetwork.showAd(ContextProvider.getInstance().getCurrentActiveActivity(), oiVar, map);
    }

    public static IronSourceAdapter startAdapter(String str) {
        return new IronSourceAdapter(str);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject jSONObject) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose(demandSourceName + ": destroyBanner()");
        ArrayList<oi> arrayList = this.mDemandSourceToBnAd.get(demandSourceName);
        if (arrayList != null) {
            try {
                Iterator<oi> it = arrayList.iterator();
                while (it.hasNext()) {
                    IronSourceNetwork.destroyAd(it.next());
                }
                this.mDemandSourceToBnAd.remove(demandSourceName);
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.ADAPTER_API.verbose("destroyBanner failed: " + e.getMessage());
            }
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public void earlyInit(String str, String str2, JSONObject jSONObject) {
        if (p.m().n() == null) {
            IronLog.ADAPTER_API.error("Appkey is null for early init");
            return;
        }
        IronSourceUtils.sendAutomationLog(getDemandSourceName(jSONObject) + ": earlyInit");
        initSDK(p.m().n(), jSONObject);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public Map<String, Object> getBannerBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return new HashMap();
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return SDKUtils.getSDKVersion();
    }

    public String getDemandSourceName(JSONObject jSONObject) {
        return !TextUtils.isEmpty(jSONObject.optString("demandSourceName")) ? jSONObject.optString("demandSourceName") : getProviderName();
    }

    public HashMap<String, String> getInitParams() {
        HashMap<String, String> map = new HashMap<>();
        String pluginType = getPluginType();
        if (!TextUtils.isEmpty(pluginType)) {
            map.put(lm.a.SDK_PLUGIN_TYPE, pluginType);
        }
        if (!TextUtils.isEmpty(p.m().u())) {
            map.put("sessionid", p.m().u());
        }
        return map;
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public Map<String, Object> getInterstitialBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return new HashMap();
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public LoadWhileShowSupportState getLoadWhileShowSupportState(JSONObject jSONObject) {
        LoadWhileShowSupportState loadWhileShowSupportState = this.mLWSSupportState;
        return (jSONObject == null || !jSONObject.optBoolean("isSupportedLWS")) ? loadWhileShowSupportState : LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public Map<String, Object> getRewardedVideoBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return new HashMap();
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "8.5.0";
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.INTERNAL.verbose("demandSourceName: " + demandSourceName);
        initRewardedVideoInternal(str, jSONObject);
        loadRewardedVideo(jSONObject, jSONObject2, rewardedVideoSmashListener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        initSDK(str, jSONObject);
        bannerSmashListener.onBannerInitSuccess();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.INTERNAL.verbose("demandSourceName: " + demandSourceName);
        initInterstitialInternal(str, jSONObject, interstitialSmashListener, demandSourceName);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.INTERNAL.verbose("demandSourceName: " + demandSourceName);
        initInterstitialInternal(str, jSONObject, interstitialSmashListener, demandSourceName);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoForDemandOnly(String str, String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.INTERNAL.verbose("demandSourceName: " + demandSourceName);
        initRewardedVideoInternal(str, jSONObject);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.INTERNAL.verbose("demandSourceName: " + demandSourceName);
        initRewardedVideoInternal(str, jSONObject);
        rewardedVideoSmashListener.onRewardedVideoInitSuccess();
    }

    public void initSDK(String str, JSONObject jSONObject) {
        if (mDidInitSdk.compareAndSet(false, true)) {
            String mediationUserId = IronSourceUtils.getMediationUserId();
            int iOptInt = jSONObject.optInt("debugMode", 0);
            if (isAdaptersDebugEnabled()) {
                iOptInt = 3;
            }
            IronLog ironLog = IronLog.ADAPTER_API;
            ironLog.verbose("setting debug mode to " + iOptInt);
            SDKUtils.setDebugMode(iOptInt);
            SDKUtils.setControllerUrl(jSONObject.optString("controllerUrl"));
            ironLog.verbose("IronSourceNetwork setting controller url to " + jSONObject.optString("controllerUrl"));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("controllerConfig");
            String string = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : "";
            SDKUtils.setControllerConfig(string);
            ironLog.verbose("IronSourceNetwork setting controller config to " + string);
            HashMap<String, String> initParams = getInitParams();
            mBaseAdPlayerExtraParams.a(initParams);
            String strN = p.m().n();
            ironLog.verbose("with appKey=" + strN + " userId=" + mediationUserId + " parameters " + initParams);
            IronSourceNetwork.addInitListener(new kn() { // from class: com.ironsource.adapters.ironsource.IronSourceAdapter.1
                @Override // org.json.kn
                public void onFail(eg egVar) {
                    IronLog.ADAPTER_API.verbose("OnNetworkSDKInitListener fail - code:" + egVar.a() + " message:" + egVar.b());
                }

                @Override // org.json.kn
                public void onSuccess() {
                    IronLog.ADAPTER_API.verbose("OnNetworkSDKInitListener success");
                }
            });
            IronSourceNetwork.initSDK(ContextProvider.getInstance().getApplicationContext(), strN, mediationUserId, initParams);
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject jSONObject) {
        oi oiVar = this.mDemandSourceToISAd.get(getDemandSourceName(jSONObject));
        return oiVar != null && IronSourceNetwork.isAdAvailableForInstance(oiVar);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject jSONObject) {
        oi oiVar = this.mDemandSourceToRvAd.get(getDemandSourceName(jSONObject));
        return oiVar != null && IronSourceNetwork.isAdAvailableForInstance(oiVar);
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return false;
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener) {
        if (ironSourceBannerLayout != null) {
            loadBannerInternal(ironSourceBannerLayout.getActivity(), ironSourceBannerLayout.getSize(), jSONObject, bannerSmashListener, str, new LoadAdData(jSONObject2));
            return;
        }
        bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("Banner Load Fail, " + getProviderName() + " - banner is null"));
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForDemandOnlyForBidding(JSONObject jSONObject, String str, ISDemandOnlyBannerLayout iSDemandOnlyBannerLayout, BannerSmashListener bannerSmashListener) {
        if (iSDemandOnlyBannerLayout != null) {
            loadBannerInternal(iSDemandOnlyBannerLayout.getActivity(), iSDemandOnlyBannerLayout.getSize(), jSONObject, bannerSmashListener, str, new LoadAdData());
            return;
        }
        bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("Banner Load Fail, " + getProviderName() + " - banner is null"));
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        try {
            loadInterstitialAdInternal(demandSourceName, null, jSONObject, new LoadAdData(jSONObject2), interstitialSmashListener);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.error("exception " + e.getMessage());
            interstitialSmashListener.onInterstitialAdLoadFailed(new IronSourceError(1000, e.getMessage()));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, InterstitialSmashListener interstitialSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        try {
            loadInterstitialAdInternal(demandSourceName, str, jSONObject, new LoadAdData(jSONObject2), interstitialSmashListener);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.error("for bidding exception " + e.getMessage());
            interstitialSmashListener.onInterstitialAdLoadFailed(new IronSourceError(1000, e.getMessage()));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        try {
            loadRewardedVideoAdInternal(jSONObject, demandSourceName, null, new LoadAdData(jSONObject2), rewardedVideoSmashListener);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.error("exception " + e.getMessage());
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            rewardedVideoSmashListener.onRewardedVideoLoadFailed(new IronSourceError(1002, e.getMessage()));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        try {
            loadRewardedVideoAdInternal(jSONObject, demandSourceName, str, new LoadAdData(jSONObject2), rewardedVideoSmashListener);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.error("exception " + e.getMessage());
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            rewardedVideoSmashListener.onRewardedVideoLoadFailed(new IronSourceError(1002, e.getMessage()));
        }
    }

    @Override // com.ironsource.environment.ContextProvider.a
    public void onPause(Activity activity) {
        IronLog.ADAPTER_API.verbose("IronSourceNetwork.onPause");
        IronSourceNetwork.onPause(activity);
    }

    @Override // com.ironsource.environment.ContextProvider.a
    public void onResume(Activity activity) {
        IronLog.ADAPTER_API.verbose("IronSourceNetwork.onResume");
        IronSourceNetwork.onResume(activity);
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean z) {
        IronLog ironLog = IronLog.ADAPTER_API;
        StringBuilder sb = new StringBuilder("(");
        sb.append(z ? a.g : "false");
        sb.append(")");
        ironLog.verbose(sb.toString());
        this.mNetworkGlobalDataWriter.a(z);
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    protected void setMetaData(String str, List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        mBaseAdPlayerExtraParams.b(str, list.get(0));
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String demandSourceName = getDemandSourceName(jSONObject);
        IronLog.ADAPTER_API.verbose("demandSourceName: " + demandSourceName);
        try {
            showAdInternal(this.mDemandSourceToISAd.get(demandSourceName), IronSource.AD_UNIT.INTERSTITIAL);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.error("exception " + e.getMessage());
            interstitialSmashListener.onInterstitialAdShowFailed(new IronSourceError(1001, e.getMessage()));
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        try {
            showAdInternal(this.mDemandSourceToRvAd.get(getDemandSourceName(jSONObject)), IronSource.AD_UNIT.REWARDED_VIDEO);
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.ADAPTER_API.error("exception " + e.getMessage());
            rewardedVideoSmashListener.onRewardedVideoAdShowFailed(new IronSourceError(1003, e.getMessage()));
        }
    }
}
