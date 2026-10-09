package org.json.adapters.unityads;

import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.y8;

/* JADX INFO: compiled from: UnityAdsInterstitialListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0016J&\u0010\u000f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0016J\u001c\u0010\u0014\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J&\u0010\u0017\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00182\b\u0010\u0012\u001a\u0004\u0018\u00010\bH\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\bH\u0016R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsInterstitialListener;", "Lcom/unity3d/ads/IUnityAdsLoadListener;", "Lcom/unity3d/ads/IUnityAdsShowListener;", "adapter", "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "mListener", "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;", "mPlacementId", "", "(Lcom/ironsource/adapters/unityads/UnityAdsAdapter;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V", "mAdapter", "Ljava/lang/ref/WeakReference;", "onUnityAdsAdLoaded", "", y8.j, "onUnityAdsFailedToLoad", "error", "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "onUnityAdsShowClick", "onUnityAdsShowComplete", "completionState", "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;", "onUnityAdsShowFailure", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "onUnityAdsShowStart", "unityadsadapter_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UnityAdsInterstitialListener implements IUnityAdsLoadListener, IUnityAdsShowListener {
    private final WeakReference<UnityAdsAdapter> mAdapter;
    private final InterstitialSmashListener mListener;
    private final String mPlacementId;

    /* JADX INFO: compiled from: UnityAdsInterstitialListener.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UnityAds.UnityAdsShowCompletionState.values().length];
            try {
                iArr[UnityAds.UnityAdsShowCompletionState.SKIPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UnityAds.UnityAdsShowCompletionState.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public UnityAdsInterstitialListener(UnityAdsAdapter adapter, InterstitialSmashListener mListener, String mPlacementId) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(mListener, "mListener");
        Intrinsics.checkNotNullParameter(mPlacementId, "mPlacementId");
        this.mListener = mListener;
        this.mPlacementId = mPlacementId;
        this.mAdapter = new WeakReference<>(adapter);
    }

    @Override // com.unity3d.ads.IUnityAdsLoadListener
    public void onUnityAdsAdLoaded(String placementId) {
        ConcurrentHashMap<String, Boolean> interstitialAdsAvailability;
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        if (this.mAdapter.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        UnityAdsAdapter unityAdsAdapter = this.mAdapter.get();
        if (unityAdsAdapter != null && (interstitialAdsAvailability = unityAdsAdapter.getInterstitialAdsAvailability()) != null) {
            interstitialAdsAvailability.put(this.mPlacementId, true);
        }
        this.mListener.onInterstitialAdReady();
    }

    @Override // com.unity3d.ads.IUnityAdsLoadListener
    public void onUnityAdsFailedToLoad(String placementId, UnityAds.UnityAdsLoadError error, String message) {
        IronSourceError ironSourceErrorBuildLoadFailedError;
        ConcurrentHashMap<String, Boolean> interstitialAdsAvailability;
        int unityAdsLoadErrorCode;
        if (this.mAdapter.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        if (error != null) {
            if (error == UnityAds.UnityAdsLoadError.NO_FILL) {
                unityAdsLoadErrorCode = 1158;
            } else {
                UnityAdsAdapter unityAdsAdapter = this.mAdapter.get();
                unityAdsLoadErrorCode = unityAdsAdapter != null ? unityAdsAdapter.getUnityAdsLoadErrorCode(error) : 510;
            }
            ironSourceErrorBuildLoadFailedError = new IronSourceError(unityAdsLoadErrorCode, message);
        } else {
            UnityAdsAdapter unityAdsAdapter2 = this.mAdapter.get();
            ironSourceErrorBuildLoadFailedError = ErrorBuilder.buildLoadFailedError("Interstitial", unityAdsAdapter2 != null ? unityAdsAdapter2.getProviderName() : null, message);
            Intrinsics.checkNotNullExpressionValue(ironSourceErrorBuildLoadFailedError, "buildLoadFailedError(\n  …iderName, message\n      )");
        }
        IronLog.ADAPTER_CALLBACK.error("placementId = " + this.mPlacementId + " ironSourceError = " + ironSourceErrorBuildLoadFailedError);
        UnityAdsAdapter unityAdsAdapter3 = this.mAdapter.get();
        if (unityAdsAdapter3 != null && (interstitialAdsAvailability = unityAdsAdapter3.getInterstitialAdsAvailability()) != null) {
            interstitialAdsAvailability.put(this.mPlacementId, false);
        }
        this.mListener.onInterstitialAdLoadFailed(ironSourceErrorBuildLoadFailedError);
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowStart(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        this.mListener.onInterstitialAdOpened();
        this.mListener.onInterstitialAdShowSucceeded();
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowFailure(String placementId, UnityAds.UnityAdsShowError error, String message) {
        IronSourceError ironSourceErrorBuildShowFailedError;
        if (this.mAdapter.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        if (error != null) {
            UnityAdsAdapter unityAdsAdapter = this.mAdapter.get();
            ironSourceErrorBuildShowFailedError = new IronSourceError(unityAdsAdapter != null ? unityAdsAdapter.getUnityAdsShowErrorCode(error) : 510, message);
        } else {
            ironSourceErrorBuildShowFailedError = ErrorBuilder.buildShowFailedError("Interstitial", message);
        }
        IronLog.ADAPTER_CALLBACK.error("placementId = " + this.mPlacementId + "ironSourceError = " + ironSourceErrorBuildShowFailedError);
        this.mListener.onInterstitialAdShowFailed(ironSourceErrorBuildShowFailedError);
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowClick(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId);
        this.mListener.onInterstitialAdClicked();
    }

    @Override // com.unity3d.ads.IUnityAdsShowListener
    public void onUnityAdsShowComplete(String placementId, UnityAds.UnityAdsShowCompletionState completionState) {
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + this.mPlacementId + " completionState: " + completionState);
        int i = completionState == null ? -1 : WhenMappings.$EnumSwitchMapping$0[completionState.ordinal()];
        if (i == 1 || i == 2) {
            this.mListener.onInterstitialAdClosed();
        }
    }
}
