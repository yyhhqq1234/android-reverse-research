package org.json.mediationsdk;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.json.jj;
import org.json.mediationsdk.ads.nativead.AdapterNativeAdData;
import org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener;
import org.json.mediationsdk.adunit.adapter.AdapterDebugInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterAPSDataInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterConsentInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface;
import org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface;
import org.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import org.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.bidding.BiddingDataCallback;
import org.json.mediationsdk.config.ConfigFile;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.sdk.BannerAdapterInterface;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
import org.json.mediationsdk.sdk.RewardedVideoSmashListener;
import org.json.v7;

/* JADX INFO: loaded from: classes3.dex */
public class u implements AdapterAPSDataInterface, AdapterBaseInterface, AdapterConsentInterface, AdapterDebugInterface, AdapterMetaDataInterface, AdapterSettingsInterface, BannerSmashListener, v7, InterstitialSmashListener, NativeAdSmashListener, RewardedVideoSmashListener, AdapterNetworkDataInterface {
    private final AbstractAdapter a;
    private WeakReference<NetworkInitializationListener> b;

    public u(AbstractAdapter abstractAdapter) {
        this.a = abstractAdapter;
    }

    @Override // org.json.v7
    public Map<String, Object> a(AdData adData) {
        JSONObject jSONObjectA = jj.a(adData.getConfiguration());
        JSONObject jSONObjectA2 = jj.a(adData.getAdUnitData());
        IronSource.AD_UNIT ad_unit = (IronSource.AD_UNIT) adData.getAdUnitData().get("adUnit");
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return this.a.getRewardedVideoBiddingData(jSONObjectA, jSONObjectA2);
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return this.a.getInterstitialBiddingData(jSONObjectA, jSONObjectA2);
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return this.a.getBannerBiddingData(jSONObjectA, jSONObjectA2);
        }
        if (ad_unit == IronSource.AD_UNIT.NATIVE_AD) {
            return this.a.getNativeAdBiddingData(jSONObjectA, jSONObjectA2);
        }
        IronLog.INTERNAL.error("ad unit not supported - " + ad_unit);
        return null;
    }

    void a() {
        String pluginType = ConfigFile.getConfigFile().getPluginType();
        if (TextUtils.isEmpty(pluginType)) {
            return;
        }
        this.a.setPluginData(pluginType);
    }

    @Override // org.json.v7
    public void a(AdData adData, BiddingDataCallback biddingDataCallback) {
        JSONObject jSONObjectA = jj.a(adData.getConfiguration());
        JSONObject jSONObjectA2 = jj.a(adData.getAdUnitData());
        IronSource.AD_UNIT ad_unit = (IronSource.AD_UNIT) adData.getAdUnitData().get("adUnit");
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.a.collectRewardedVideoBiddingData(jSONObjectA, jSONObjectA2, biddingDataCallback);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.a.collectInterstitialBiddingData(jSONObjectA, jSONObjectA2, biddingDataCallback);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            this.a.collectBannerBiddingData(jSONObjectA, jSONObjectA2, biddingDataCallback);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.NATIVE_AD) {
            this.a.collectNativeAdBiddingData(jSONObjectA, jSONObjectA2, biddingDataCallback);
            return;
        }
        IronLog.INTERNAL.error("ad unit not supported - " + ad_unit);
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return this.a.getVersion();
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public LoadWhileShowSupportState getBannerLoadWhileShowSupportedState(NetworkSettings networkSettings) {
        return this.a.getBannerLoadWhileShowSupportState(networkSettings.getBannerSettings());
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public LoadWhileShowSupportState getLoadWhileShowSupportedState(NetworkSettings networkSettings) {
        return this.a.getLoadWhileShowSupportState(networkSettings.getRewardedVideoSettings());
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return this.a.getCoreSDKVersion();
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        this.b = new WeakReference<>(networkInitializationListener);
        String str = (String) adData.getAdUnitData().get("userId");
        IronSource.AD_UNIT ad_unit = (IronSource.AD_UNIT) adData.getAdUnitData().get("adUnit");
        a();
        JSONObject jSONObjectA = jj.a(adData.getConfiguration());
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.a.initRewardedVideoWithCallback("", str, jSONObjectA, this);
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            Integer num = adData.getInt("instanceType");
            if (num == null || num.intValue() != 1) {
                this.a.initInterstitialForBidding("", str, jSONObjectA, this);
                return;
            } else {
                this.a.initInterstitial("", str, jSONObjectA, this);
                return;
            }
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            Integer num2 = adData.getInt("instanceType");
            if (num2 == null || num2.intValue() != 1) {
                this.a.initBannerForBidding("", str, jSONObjectA, this);
                return;
            } else {
                this.a.initBanners("", str, jSONObjectA, this);
                return;
            }
        }
        if (ad_unit != IronSource.AD_UNIT.NATIVE_AD) {
            IronLog.INTERNAL.error("ad unit not supported - " + ad_unit);
            return;
        }
        Integer num3 = adData.getInt("instanceType");
        if (num3 == null || num3.intValue() != 1) {
            this.a.initNativeAdForBidding("", str, jSONObjectA, this);
        } else {
            this.a.initNativeAds("", str, jSONObjectA, this);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return this.a.isUsingActivityBeforeImpression(ad_unit);
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdClicked() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLeftApplication() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoadFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenDismissed() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenPresented() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdShown() {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClicked() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClosed() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdOpened() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdReady() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowSucceeded() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdVisible() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener
    public void onNativeAdClicked() {
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener
    public void onNativeAdInitFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener
    public void onNativeAdInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener
    public void onNativeAdLoadFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener
    public void onNativeAdLoaded(AdapterNativeAdData adapterNativeAdData, AdapterNativeAdViewBinder adapterNativeAdViewBinder) {
    }

    @Override // org.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener
    public void onNativeAdShown() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClicked() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClosed() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdEnded() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdOpened() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdRewarded() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdStarted() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdVisible() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        NetworkInitializationListener networkInitializationListener = this.b.get();
        if (networkInitializationListener != null) {
            networkInitializationListener.onInitSuccess();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadSuccess() {
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterAPSDataInterface
    public void setAPSData(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        BannerAdapterInterface bannerAdapterInterface = this.a;
        if (bannerAdapterInterface instanceof SetAPSInterface) {
            ((SetAPSInterface) bannerAdapterInterface).setAPSData(ad_unit, jSONObject);
        }
    }

    @Override // org.json.mediationsdk.adunit.adapter.AdapterDebugInterface
    public void setAdapterDebug(boolean z) {
        this.a.setAdapterDebug(Boolean.valueOf(z));
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean z) {
        this.a.setConsent(z);
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String str, List<String> list) {
        this.a.setMetaData(str, list);
    }

    @Override // org.json.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface
    public void setNetworkData(AdapterNetworkData adapterNetworkData) {
        this.a.setNetworkData(adapterNetworkData);
    }
}
