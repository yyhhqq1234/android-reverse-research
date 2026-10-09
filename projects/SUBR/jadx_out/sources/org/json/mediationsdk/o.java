package org.json.mediationsdk;

import org.json.JSONObject;
import org.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.sdk.InterstitialSmashListener;

/* JADX INFO: loaded from: classes3.dex */
public class o extends a<InterstitialAdListener> implements InterstitialSmashListener {
    public o(AbstractAdapter abstractAdapter, NetworkSettings networkSettings) {
        super(abstractAdapter, networkSettings, IronSource.AD_UNIT.INTERSTITIAL, null);
    }

    @Override // org.json.mediationsdk.a
    protected void a(JSONObject jSONObject, JSONObject jSONObject2, AdData adData) {
        Integer num = adData.getInt("instanceType");
        if (num == null || num.intValue() != 1) {
            this.a.loadInterstitialForBidding(jSONObject, jSONObject2, adData.getServerData(), this);
        } else {
            this.a.loadInterstitial(jSONObject, jSONObject2, this);
        }
    }

    protected boolean a(IronSourceError ironSourceError) {
        return ironSourceError.getErrorCode() == 1158;
    }

    @Override // org.json.mediationsdk.a
    protected IronSource.AD_UNIT b() {
        return IronSource.AD_UNIT.INTERSTITIAL;
    }

    @Override // org.json.mediationsdk.a
    protected boolean b(JSONObject jSONObject) {
        return this.a.isInterstitialReady(jSONObject);
    }

    @Override // org.json.mediationsdk.a
    protected void e(JSONObject jSONObject) {
        this.a.showInterstitial(jSONObject, this);
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdClicked();
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdClosed() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdClosed();
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdLoadFailed(a(ironSourceError) ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdOpened();
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdReady() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdLoadSuccess();
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdShowFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdShowSucceeded() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((InterstitialAdListener) this.b.get()).onAdShowSuccess();
        }
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialAdVisible() {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.InterstitialSmashListener
    public void onInterstitialInitSuccess() {
    }
}
