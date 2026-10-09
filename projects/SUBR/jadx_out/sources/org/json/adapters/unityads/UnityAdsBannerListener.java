package org.json.adapters.unityads;

import android.widget.FrameLayout;
import com.unity3d.services.banners.BannerErrorCode;
import com.unity3d.services.banners.BannerErrorInfo;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;

/* JADX INFO: compiled from: UnityAdsBannerListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u000eH\u0016R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsBannerListener;", "Lcom/unity3d/services/banners/BannerView$IListener;", "adapter", "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "mListener", "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;", "mPlacementId", "", "(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V", "mAdapter", "Ljava/lang/ref/WeakReference;", "onBannerClick", "", "bannerView", "Lcom/unity3d/services/banners/BannerView;", "onBannerFailedToLoad", "bannerErrorInfo", "Lcom/unity3d/services/banners/BannerErrorInfo;", "onBannerLeftApplication", "onBannerLoaded", "onBannerShown", "bannerAdView", "unityadsadapter_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UnityAdsBannerListener implements BannerView.IListener {
    private final WeakReference<UnityAdsAdapter> mAdapter;
    private final BannerSmashListener mListener;
    private final String mPlacementId;

    public UnityAdsBannerListener(UnityAdsAdapter adapter, BannerSmashListener mListener, String mPlacementId) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(mListener, "mListener");
        Intrinsics.checkNotNullParameter(mPlacementId, "mPlacementId");
        this.mListener = mListener;
        this.mPlacementId = mPlacementId;
        this.mAdapter = new WeakReference<>(adapter);
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerLoaded(BannerView bannerView) {
        FrameLayout.LayoutParams layoutParamsCreateLayoutParams;
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        if (this.mAdapter.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        BannerSmashListener bannerSmashListener = this.mListener;
        BannerView bannerView2 = bannerView;
        UnityAdsAdapter unityAdsAdapter = this.mAdapter.get();
        if (unityAdsAdapter != null) {
            UnityBannerSize size = bannerView.getSize();
            Intrinsics.checkNotNullExpressionValue(size, "bannerView.size");
            layoutParamsCreateLayoutParams = unityAdsAdapter.createLayoutParams(size);
        } else {
            layoutParamsCreateLayoutParams = null;
        }
        bannerSmashListener.onBannerAdLoaded(bannerView2, layoutParamsCreateLayoutParams);
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerShown(BannerView bannerAdView) {
        Intrinsics.checkNotNullParameter(bannerAdView, "bannerAdView");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        if (this.mAdapter.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
        } else {
            this.mListener.onBannerAdShown();
        }
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerFailedToLoad(BannerView bannerView, BannerErrorInfo bannerErrorInfo) {
        IronSourceError ironSourceErrorBuildLoadFailedError;
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        Intrinsics.checkNotNullParameter(bannerErrorInfo, "bannerErrorInfo");
        if (this.mAdapter.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        StringBuilder sb = new StringBuilder();
        UnityAdsAdapter unityAdsAdapter = this.mAdapter.get();
        sb.append(unityAdsAdapter != null ? unityAdsAdapter.getProviderName() : null);
        sb.append(" banner, onAdLoadFailed placementId ");
        sb.append(this.mPlacementId);
        sb.append(" with error: ");
        sb.append(bannerErrorInfo.errorMessage);
        String string = sb.toString();
        if (bannerErrorInfo.errorCode == BannerErrorCode.NO_FILL) {
            ironSourceErrorBuildLoadFailedError = new IronSourceError(606, string);
        } else {
            ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError(string);
        }
        IronLog.ADAPTER_CALLBACK.error("placementId = " + this.mPlacementId + " ironSourceError = " + ironSourceErrorBuildLoadFailedError);
        this.mListener.onBannerAdLoadFailed(ironSourceErrorBuildLoadFailedError);
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerClick(BannerView bannerView) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        this.mListener.onBannerAdClicked();
    }

    @Override // com.unity3d.services.banners.BannerView.IListener
    public void onBannerLeftApplication(BannerView bannerView) {
        Intrinsics.checkNotNullParameter(bannerView, "bannerView");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        this.mListener.onBannerAdLeftApplication();
    }
}
