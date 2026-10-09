package org.json.mediationsdk;

import org.json.JSONObject;
import org.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.sdk.RewardedVideoSmashListener;

/* JADX INFO: loaded from: classes3.dex */
public class z extends a<RewardedVideoAdListener> implements RewardedVideoSmashListener {
    public z(AbstractAdapter abstractAdapter, NetworkSettings networkSettings) {
        super(abstractAdapter, networkSettings, IronSource.AD_UNIT.REWARDED_VIDEO, null);
    }

    private boolean a(IronSourceError ironSourceError) {
        return ironSourceError.getErrorCode() == 1057;
    }

    @Override // org.json.mediationsdk.a
    protected void a(JSONObject jSONObject, JSONObject jSONObject2, AdData adData) {
        Integer num = adData.getInt("instanceType");
        if (num == null || num.intValue() != 1) {
            this.a.loadRewardedVideoForBidding(jSONObject, jSONObject2, adData.getServerData(), this);
        } else {
            this.a.loadRewardedVideo(jSONObject, jSONObject2, this);
        }
    }

    @Override // org.json.mediationsdk.a
    protected IronSource.AD_UNIT b() {
        return IronSource.AD_UNIT.REWARDED_VIDEO;
    }

    protected boolean b(IronSourceError ironSourceError) {
        return ironSourceError.getErrorCode() == 1058;
    }

    @Override // org.json.mediationsdk.a
    protected boolean b(JSONObject jSONObject) {
        return this.a.isRewardedVideoAvailable(jSONObject);
    }

    @Override // org.json.mediationsdk.a
    protected void e(JSONObject jSONObject) {
        this.a.showRewardedVideo(jSONObject, this);
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdClicked();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClosed() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdClosed();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdEnded() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdEnded();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdOpened();
            ((RewardedVideoAdListener) this.b.get()).onAdShowSuccess();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdRewarded() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdRewarded();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdShowFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdShowFailed(ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdStarted() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdStarted();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdVisible() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdVisible();
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAvailabilityChanged(boolean z) {
        IronLog.INTERNAL.verbose(a("available = " + z));
        if (this.b.get() != null) {
            if (z) {
                ((RewardedVideoAdListener) this.b.get()).onAdLoadSuccess();
            } else {
                ((RewardedVideoAdListener) this.b.get()).onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 510, "");
            }
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoInitSuccess() {
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadFailed(IronSourceError ironSourceError) {
        AdapterErrorType adapterErrorType;
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        if (this.b.get() != null) {
            if (b(ironSourceError)) {
                adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
            } else {
                adapterErrorType = a(ironSourceError) ? AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
            }
            ((RewardedVideoAdListener) this.b.get()).onAdLoadFailed(adapterErrorType, ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoLoadSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((RewardedVideoAdListener) this.b.get()).onAdLoadSuccess();
        }
    }
}
