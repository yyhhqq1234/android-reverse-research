package org.json.adapters.ironsource;

import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import org.json.gn;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.oi;
import org.json.uf;
import org.json.wf;

/* JADX INFO: loaded from: classes3.dex */
class IronSourceBannerListener implements gn {
    private WeakReference<IronSourceAdapter> mAdapter;
    private final String mDemandSourceName;
    private final BannerSmashListener mListener;

    IronSourceBannerListener(IronSourceAdapter ironSourceAdapter, BannerSmashListener bannerSmashListener, String str) {
        this.mDemandSourceName = str;
        this.mListener = bannerSmashListener;
        this.mAdapter = new WeakReference<>(ironSourceAdapter);
    }

    @Override // org.json.gn
    public void onBannerClick() {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
        this.mListener.onBannerAdClicked();
    }

    @Override // org.json.gn
    public void onBannerInitFailed(String str) {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
    }

    @Override // org.json.gn
    public void onBannerInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
    }

    @Override // org.json.gn
    public void onBannerLoadFail(String str) {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
        this.mListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("load failed - error = " + str));
    }

    @Override // org.json.gn
    public void onBannerLoadSuccess(oi oiVar, wf wfVar) {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
        if (this.mAdapter.get() != null) {
            if (wfVar == null) {
                this.mListener.onBannerAdLoadFailed(ErrorBuilder.adContainerIsNull(this.mAdapter.get().getProviderName()));
                return;
            }
            ConcurrentHashMap<String, ArrayList<oi>> concurrentHashMap = this.mAdapter.get().mDemandSourceToBnAd;
            if (concurrentHashMap.get(this.mDemandSourceName) == null) {
                concurrentHashMap.put(this.mDemandSourceName, new ArrayList<>());
            }
            concurrentHashMap.get(this.mDemandSourceName).add(oiVar);
            uf size = wfVar.getSize();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(size.c(), size.a());
            layoutParams.gravity = 17;
            this.mListener.onBannerAdLoaded(wfVar, layoutParams);
        }
    }

    @Override // org.json.gn
    public void onBannerShowSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " onBannerShowSuccess");
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener != null) {
            bannerSmashListener.onBannerAdShown();
        }
    }
}
