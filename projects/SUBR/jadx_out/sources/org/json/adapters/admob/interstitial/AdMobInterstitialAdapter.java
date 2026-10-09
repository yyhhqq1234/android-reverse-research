package org.json.adapters.admob.interstitial;

import android.text.TextUtils;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
import org.json.adapters.admob.AdMobAdapter;
import org.json.environment.ContextProvider;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.adapter.AbstractInterstitialAdapter;
import org.json.mediationsdk.bidding.BiddingDataCallback;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobInterstitialAdapter extends AbstractInterstitialAdapter<AdMobAdapter> {
    private final ConcurrentHashMap<String, InterstitialAd> mAdUnitIdToAd;
    private final ConcurrentHashMap<String, Boolean> mAdUnitIdToAdsAvailability;
    private final ConcurrentHashMap<String, InterstitialSmashListener> mAdUnitIdToListener;

    public AdMobInterstitialAdapter(AdMobAdapter adMobAdapter) {
        super(adMobAdapter);
        this.mAdUnitIdToListener = new ConcurrentHashMap<>();
        this.mAdUnitIdToAd = new ConcurrentHashMap<>();
        this.mAdUnitIdToAdsAvailability = new ConcurrentHashMap<>();
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        initInterstitialInternal(jSONObject, interstitialSmashListener);
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        initInterstitialInternal(jSONObject, interstitialSmashListener);
    }

    private void initInterstitialInternal(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(adUnitIdKey), "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mAdUnitIdToListener.put(configStringValueFromKey, interstitialSmashListener);
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("onInterstitialInitSuccess - adUnitId = " + configStringValueFromKey);
            interstitialSmashListener.onInterstitialInitSuccess();
            return;
        }
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.verbose("onInterstitialInitFailed - adUnitId = " + configStringValueFromKey);
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("AdMob sdk init failed", "Interstitial"));
            return;
        }
        getAdapter().initSDK(jSONObject);
    }

    @Override // org.json.mediationsdk.adapter.AbstractAdUnitAdapter, org.json.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        Iterator<InterstitialSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.adapter.AbstractAdUnitAdapter, org.json.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String str) {
        Iterator<InterstitialSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(str, "Interstitial"));
        }
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        loadInterstitialInternal(jSONObject, jSONObject2, null, interstitialSmashListener);
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, InterstitialSmashListener interstitialSmashListener) {
        loadInterstitialInternal(jSONObject, jSONObject2, str, interstitialSmashListener);
    }

    private void loadInterstitialInternal(final JSONObject jSONObject, final JSONObject jSONObject2, final String str, final InterstitialSmashListener interstitialSmashListener) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.interstitial.AdMobInterstitialAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                AdMobInterstitialAdapter adMobInterstitialAdapter = AdMobInterstitialAdapter.this;
                String configStringValueFromKey = adMobInterstitialAdapter.getConfigStringValueFromKey(jSONObject, adMobInterstitialAdapter.getAdapter().getAdUnitIdKey());
                IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
                AdMobInterstitialAdapter.this.mAdUnitIdToAdsAvailability.put(configStringValueFromKey, false);
                InterstitialAd.load(ContextProvider.getInstance().getApplicationContext(), configStringValueFromKey, AdMobInterstitialAdapter.this.getAdapter().createAdRequest(jSONObject2, str), new AdMobInterstitialAdLoadListener(AdMobInterstitialAdapter.this, configStringValueFromKey, interstitialSmashListener));
            }
        });
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(final JSONObject jSONObject, final InterstitialSmashListener interstitialSmashListener) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.interstitial.AdMobInterstitialAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                AdMobInterstitialAdapter adMobInterstitialAdapter = AdMobInterstitialAdapter.this;
                String configStringValueFromKey = adMobInterstitialAdapter.getConfigStringValueFromKey(jSONObject, adMobInterstitialAdapter.getAdapter().getAdUnitIdKey());
                IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
                InterstitialAd interstitialAd = AdMobInterstitialAdapter.this.getInterstitialAd(configStringValueFromKey);
                if (AdMobInterstitialAdapter.this.isInterstitialReadyForAdUnitId(configStringValueFromKey) && interstitialAd != null) {
                    interstitialAd.setFullScreenContentCallback(new AdMobInterstitialAdShowListener(configStringValueFromKey, interstitialSmashListener));
                    interstitialAd.show(ContextProvider.getInstance().getCurrentActiveActivity());
                } else {
                    IronLog.ADAPTER_API.error("Ad not ready to display");
                    interstitialSmashListener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
                }
                AdMobInterstitialAdapter.this.mAdUnitIdToAdsAvailability.put(configStringValueFromKey, false);
            }
        });
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public final boolean isInterstitialReady(JSONObject jSONObject) {
        return isInterstitialReadyForAdUnitId(getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInterstitialReadyForAdUnitId(String str) {
        return !TextUtils.isEmpty(str) && this.mAdUnitIdToAdsAvailability.containsKey(str) && this.mAdUnitIdToAdsAvailability.get(str).booleanValue();
    }

    @Override // org.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        Iterator<InterstitialAd> it = this.mAdUnitIdToAd.values().iterator();
        while (it.hasNext()) {
            it.next().setFullScreenContentCallback(null);
        }
        this.mAdUnitIdToAd.clear();
        this.mAdUnitIdToListener.clear();
        this.mAdUnitIdToAdsAvailability.clear();
    }

    @Override // org.json.mediationsdk.adapter.AbstractInterstitialAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void collectInterstitialBiddingData(JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback) {
        getAdapter().collectBiddingData(biddingDataCallback, AdFormat.INTERSTITIAL, null);
    }

    public void onInterstitialAdLoaded(String str, InterstitialAd interstitialAd) {
        this.mAdUnitIdToAd.put(str, interstitialAd);
        this.mAdUnitIdToAdsAvailability.put(str, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterstitialAd getInterstitialAd(String str) {
        if (TextUtils.isEmpty(str) || !this.mAdUnitIdToAd.containsKey(str)) {
            return null;
        }
        return this.mAdUnitIdToAd.get(str);
    }
}
