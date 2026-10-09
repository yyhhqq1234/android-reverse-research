package org.json.mediationsdk;

import android.view.View;
import android.widget.FrameLayout;
import org.json.JSONObject;
import org.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import org.json.mediationsdk.adunit.adapter.utility.AdData;
import org.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.model.NetworkSettings;
import org.json.mediationsdk.sdk.BannerSmashListener;

/* JADX INFO: loaded from: classes3.dex */
public class j extends a<BannerAdListener> implements BannerSmashListener {
    public j(AbstractAdapter abstractAdapter, NetworkSettings networkSettings) {
        super(abstractAdapter, networkSettings, IronSource.AD_UNIT.BANNER, null);
    }

    @Override // org.json.mediationsdk.a
    protected void a(JSONObject jSONObject) {
        this.a.destroyBanner(jSONObject);
    }

    @Override // org.json.mediationsdk.a
    protected void a(JSONObject jSONObject, JSONObject jSONObject2, AdData adData) {
        Integer num = adData.getInt("instanceType");
        IronSourceBannerLayout ironSourceBannerLayout = (IronSourceBannerLayout) adData.getAdUnitData().get("bannerLayout");
        if (num == null || num.intValue() != 1) {
            this.a.loadBannerForBidding(jSONObject, jSONObject2, adData.getServerData(), ironSourceBannerLayout, this);
        } else {
            this.a.loadBanner(jSONObject, jSONObject2, ironSourceBannerLayout, this);
        }
    }

    protected boolean a(IronSourceError ironSourceError) {
        return ironSourceError.getErrorCode() == 606;
    }

    @Override // org.json.mediationsdk.a
    protected IronSource.AD_UNIT b() {
        return IronSource.AD_UNIT.BANNER;
    }

    @Override // org.json.mediationsdk.a
    public void c(JSONObject jSONObject) {
        this.a.onBannerViewBound(jSONObject);
    }

    @Override // org.json.mediationsdk.a
    public void d(JSONObject jSONObject) {
        this.a.onBannerViewWillBind(jSONObject);
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdClicked();
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLeftApplication() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdLeftApplication();
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoadFailed(IronSourceError ironSourceError) {
        IronLog.ADAPTER_CALLBACK.verbose(a("error = " + ironSourceError));
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdLoadFailed(a(ironSourceError) ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, ironSourceError.getErrorCode(), ironSourceError.getErrorMessage());
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdLoaded(View view, FrameLayout.LayoutParams layoutParams) {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdLoadSuccess(view, layoutParams);
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenDismissed() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdScreenDismissed();
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdScreenPresented() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdScreenPresented();
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerAdShown() {
        IronLog.ADAPTER_CALLBACK.verbose(a());
        if (this.b.get() != null) {
            ((BannerAdListener) this.b.get()).onAdOpened();
        }
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitFailed(IronSourceError ironSourceError) {
    }

    @Override // org.json.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitSuccess() {
    }
}
