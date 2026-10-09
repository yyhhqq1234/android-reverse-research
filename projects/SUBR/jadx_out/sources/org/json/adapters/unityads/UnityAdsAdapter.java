package org.json.adapters.unityads;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.ads.metadata.PlayerMetaData;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import org.json.environment.ContextProvider;
import org.json.j5;
import org.json.mediationsdk.AbstractAdapter;
import org.json.mediationsdk.AdapterUtils;
import org.json.mediationsdk.INetworkInitCallbackListener;
import org.json.mediationsdk.ISBannerSize;
import org.json.mediationsdk.IntegrationData;
import org.json.mediationsdk.IronSource;
import org.json.mediationsdk.IronSourceBannerLayout;
import org.json.mediationsdk.LoadWhileShowSupportState;
import org.json.mediationsdk.bidding.BiddingDataCallback;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.logger.IronSourceError;
import org.json.mediationsdk.metadata.MetaData;
import org.json.mediationsdk.metadata.MetaDataUtils;
import org.json.mediationsdk.sdk.BannerSmashListener;
import org.json.mediationsdk.sdk.InterstitialSmashListener;
import org.json.mediationsdk.sdk.RewardedVideoSmashListener;
import org.json.mediationsdk.utils.ErrorBuilder;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.mediationsdk.utils.IronSourceUtils;
import org.json.oq;
import org.json.y8;

/* JADX INFO: compiled from: UnityAdsAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010 \n\u0002\b\u0005\u0018\u0000 t2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001tB\u000f\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020%H\u0016J\u001a\u0010&\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020%H\u0002J$\u0010'\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020%H\u0016J$\u0010(\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020%H\u0016J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,J\u0010\u0010-\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0005H\u0002J\u001a\u00101\u001a\u0004\u0018\u00010,2\u0006\u0010+\u001a\u0002022\u0006\u00103\u001a\u00020\fH\u0002J \u00104\u001a\u00020\u00132\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u000209H\u0002J\b\u0010:\u001a\u00020\u0005H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\"H\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\u000e\u0010B\u001a\u00020?2\u0006\u0010@\u001a\u00020CJ\u000e\u0010D\u001a\u00020?2\u0006\u0010@\u001a\u00020EJ\b\u0010F\u001a\u00020\u0005H\u0016J0\u0010G\u001a\u00020 2\u0006\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u00108\u001a\u00020JH\u0016J(\u0010K\u001a\u00020 2\u0006\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u000209H\u0016J(\u0010L\u001a\u00020 2\u0006\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u000209H\u0016J(\u0010M\u001a\u00020 2\u0006\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u00020NH\u0016J(\u0010O\u001a\u00020 2\u0006\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u00020NH\u0016J(\u0010P\u001a\u00020 2\u0006\u0010H\u001a\u00020\u00052\u0006\u0010I\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u00020JH\u0016J\u0010\u0010Q\u001a\u00020 2\u0006\u0010R\u001a\u00020\u0005H\u0002J\u0010\u0010S\u001a\u00020\f2\u0006\u0010+\u001a\u000202H\u0002J\u0010\u0010T\u001a\u00020\f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010U\u001a\u00020\f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010V\u001a\u00020\f2\u0006\u00100\u001a\u00020WH\u0016J*\u0010X\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u00105\u001a\u0002062\u0006\u00108\u001a\u000209H\u0016J2\u0010Y\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\"2\u0006\u0010Z\u001a\u00020\u00052\u0006\u00105\u001a\u0002062\u0006\u00108\u001a\u000209H\u0016J6\u0010[\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\"2\b\u00105\u001a\u0004\u0018\u0001062\u0006\u00108\u001a\u0002092\b\u0010Z\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010\\\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u00108\u001a\u00020NH\u0016J(\u0010]\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010Z\u001a\u00020\u00052\u0006\u00108\u001a\u00020NH\u0016J\"\u0010^\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u00020N2\b\u0010Z\u001a\u0004\u0018\u00010\u0005H\u0002J \u0010_\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u00108\u001a\u00020JH\u0016J(\u0010`\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0006\u0010Z\u001a\u00020\u00052\u0006\u00108\u001a\u00020JH\u0016J\"\u0010a\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\b\u0010Z\u001a\u0004\u0018\u00010\u00052\u0006\u00108\u001a\u00020JH\u0002J\b\u0010b\u001a\u00020 H\u0016J\u0018\u0010c\u001a\u00020 2\u0006\u0010@\u001a\u00020A2\u0006\u0010d\u001a\u00020\u0005H\u0016J\u0010\u0010e\u001a\u00020 2\u0006\u0010@\u001a\u00020\u0005H\u0016J\b\u0010f\u001a\u00020 H\u0016J\u001a\u0010g\u001a\u00020 2\u0006\u00100\u001a\u00020W2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010h\u001a\u00020 2\u0006\u0010i\u001a\u00020\fH\u0002J\u0010\u0010j\u001a\u00020 2\u0006\u0010i\u001a\u00020\fH\u0002J\u0010\u0010k\u001a\u00020 2\u0006\u0010l\u001a\u00020\fH\u0014J\u001e\u0010m\u001a\u00020 2\u0006\u0010n\u001a\u00020\u00052\f\u0010o\u001a\b\u0012\u0004\u0012\u00020\u00050pH\u0014J\u0018\u0010q\u001a\u00020 2\u0006\u0010n\u001a\u00020\u00052\u0006\u0010i\u001a\u00020\fH\u0002J\u0018\u0010r\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u00020NH\u0016J\u0018\u0010s\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u00108\u001a\u00020JH\u0016R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\u00030\bj\b\u0012\u0004\u0012\u00020\u0003`\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\f8CX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00150\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00170\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00190\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u000eR\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006u"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "Lcom/ironsource/mediationsdk/AbstractAdapter;", "Lcom/unity3d/ads/IUnityAdsInitializationListener;", "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;", "providerName", "", "(Ljava/lang/String;)V", "initCallbackListeners", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "interstitialAdsAvailability", "Ljava/util/concurrent/ConcurrentHashMap;", "", "getInterstitialAdsAvailability", "()Ljava/util/concurrent/ConcurrentHashMap;", "interstitialPlacementIdToLoadedAdObjectId", "isOSSupported", "()Z", "placementIdToBannerAd", "Lcom/unity3d/services/banners/BannerView;", "placementIdToBannerListener", "Lcom/ironsource/adapters/unityads/UnityAdsBannerListener;", "placementIdToInterstitialListener", "Lcom/ironsource/adapters/unityads/UnityAdsInterstitialListener;", "placementIdToRewardedVideoListener", "Lcom/ironsource/adapters/unityads/UnityAdsRewardedVideoListener;", "rewardedVideoAdsAvailability", "getRewardedVideoAdsAvailability", "rewardedVideoPlacementIdToLoadedAdObjectId", "unityAdsStorageLock", "", "collectBannerBiddingData", "", "config", "Lorg/json/JSONObject;", "adData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "collectBiddingData", "collectInterstitialBiddingData", "collectRewardedVideoBiddingData", "createLayoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "size", "Lcom/unity3d/services/banners/UnityBannerSize;", y8.g.R, "errorForUnsupportedAdapter", "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "adUnit", "getBannerSize", "Lcom/ironsource/mediationsdk/ISBannerSize;", "isLargeScreen", "getBannerView", oq.h, "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;", y8.j, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;", "getCoreSDKVersion", "getLoadWhileShowSupportState", "Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;", "mAdUnitSettings", "getUnityAdsInitializationErrorCode", "", "error", "Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;", "getUnityAdsLoadErrorCode", "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;", "getUnityAdsShowErrorCode", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", MobileAdsBridge.versionMethodName, "initAndLoadRewardedVideo", "appKey", "userId", "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;", "initBannerForBidding", "initBanners", y8.g.A, "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;", "initInterstitialForBidding", "initRewardedVideoWithCallback", "initSDK", AndroidGetAdPlayerContext.KEY_GAME_ID, "isBannerSizeSupported", "isInterstitialReady", "isRewardedVideoAvailable", "isUsingActivityBeforeImpression", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", y8.g.M, "loadBannerForBidding", j5.s, "loadBannerInternal", y8.g.D, "loadInterstitialForBidding", "loadInterstitialInternal", "loadRewardedVideo", "loadRewardedVideoForBidding", "loadRewardedVideoInternal", "onInitializationComplete", "onInitializationFailed", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "onNetworkInitCallbackFailed", "onNetworkInitCallbackSuccess", "releaseMemory", "setCCPAValue", "value", "setCOPPAValue", "setConsent", y8.i.b0, "setMetaData", y8.h.W, "values", "", "setUnityAdsMetaData", y8.g.G, y8.g.h, "Companion", "unityadsadapter_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UnityAdsAdapter extends AbstractAdapter implements IUnityAdsInitializationListener, INetworkInitCallbackListener {
    private static final String ADAPTER_VERSION_KEY = "adapter_version";
    private static final String CONSENT_CCPA = "privacy.consent";
    private static final String CONSENT_GDPR = "gdpr.consent";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String GAME_DESIGNATION = "mode";
    private static final String GAME_ID = "sourceId";
    private static final String GitHash = "861f230";
    private static final String LWS_SUPPORT_STATE = "isSupportedLWS";
    private static final String MEDIATION_NAME = "ironSource";
    private static final String MIXED_AUDIENCE = "mixed";
    private static final String PLACEMENT_ID = "zoneId";
    private static final String UNITYADS_COPPA = "user.nonBehavioral";
    private static final String UNITYADS_METADATA_COPPA_KEY = "unityads_coppa";
    private static final String VERSION = "4.3.45";
    private final HashSet<INetworkInitCallbackListener> initCallbackListeners;
    private final ConcurrentHashMap<String, Boolean> interstitialAdsAvailability;
    private final ConcurrentHashMap<String, String> interstitialPlacementIdToLoadedAdObjectId;
    private final ConcurrentHashMap<String, BannerView> placementIdToBannerAd;
    private final ConcurrentHashMap<String, UnityAdsBannerListener> placementIdToBannerListener;
    private final ConcurrentHashMap<String, UnityAdsInterstitialListener> placementIdToInterstitialListener;
    private final ConcurrentHashMap<String, UnityAdsRewardedVideoListener> placementIdToRewardedVideoListener;
    private final ConcurrentHashMap<String, Boolean> rewardedVideoAdsAvailability;
    private final ConcurrentHashMap<String, String> rewardedVideoPlacementIdToLoadedAdObjectId;
    private final Object unityAdsStorageLock;

    /* JADX INFO: compiled from: UnityAdsAdapter.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IronSource.AD_UNIT.values().length];
            try {
                iArr[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IronSource.AD_UNIT.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IronSource.AD_UNIT.NATIVE_AD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ UnityAdsAdapter(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @JvmStatic
    public static final IntegrationData getIntegrationData(Context context) {
        return INSTANCE.getIntegrationData(context);
    }

    private final boolean isOSSupported() {
        return true;
    }

    @JvmStatic
    public static final UnityAdsAdapter startAdapter(String str) {
        return INSTANCE.startAdapter(str);
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.45";
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        return false;
    }

    private UnityAdsAdapter(String str) {
        super(str);
        this.placementIdToRewardedVideoListener = new ConcurrentHashMap<>();
        this.rewardedVideoPlacementIdToLoadedAdObjectId = new ConcurrentHashMap<>();
        this.rewardedVideoAdsAvailability = new ConcurrentHashMap<>();
        this.placementIdToInterstitialListener = new ConcurrentHashMap<>();
        this.interstitialPlacementIdToLoadedAdObjectId = new ConcurrentHashMap<>();
        this.interstitialAdsAvailability = new ConcurrentHashMap<>();
        this.placementIdToBannerListener = new ConcurrentHashMap<>();
        this.placementIdToBannerAd = new ConcurrentHashMap<>();
        this.initCallbackListeners = new HashSet<>();
        this.unityAdsStorageLock = new Object();
        IronLog.INTERNAL.verbose();
    }

    public final ConcurrentHashMap<String, Boolean> getRewardedVideoAdsAvailability() {
        return this.rewardedVideoAdsAvailability;
    }

    public final ConcurrentHashMap<String, Boolean> getInterstitialAdsAvailability() {
        return this.interstitialAdsAvailability;
    }

    /* JADX INFO: compiled from: UnityAdsAdapter.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;", "", "()V", "ADAPTER_VERSION_KEY", "", "CONSENT_CCPA", "CONSENT_GDPR", "GAME_DESIGNATION", "GAME_ID", "GitHash", "LWS_SUPPORT_STATE", "MEDIATION_NAME", "MIXED_AUDIENCE", "PLACEMENT_ID", "UNITYADS_COPPA", "UNITYADS_METADATA_COPPA_KEY", "VERSION", "getIntegrationData", "Lcom/ironsource/mediationsdk/IntegrationData;", "context", "Landroid/content/Context;", IronSourceConstants.START_ADAPTER, "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "providerName", "unityadsadapter_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final UnityAdsAdapter startAdapter(String providerName) {
            Intrinsics.checkNotNullParameter(providerName, "providerName");
            return new UnityAdsAdapter(providerName, null);
        }

        @JvmStatic
        public final IntegrationData getIntegrationData(Context context) {
            return new IntegrationData("UnityAds", "4.3.45");
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return UnityAds.getVersion();
    }

    private final void initSDK(String gameId) {
        if (!UnityAds.isInitialized()) {
            this.initCallbackListeners.add(this);
        }
        IronLog.ADAPTER_API.verbose();
        synchronized (this.unityAdsStorageLock) {
            MediationMetaData mediationMetaData = new MediationMetaData(ContextProvider.getInstance().getApplicationContext());
            mediationMetaData.setName(MEDIATION_NAME);
            mediationMetaData.setVersion(IronSourceUtils.getSDKVersion());
            mediationMetaData.set(ADAPTER_VERSION_KEY, "4.3.45");
            mediationMetaData.commit();
            Unit unit = Unit.INSTANCE;
        }
        UnityAds.setDebugMode(isAdaptersDebugEnabled());
        UnityAds.initialize(ContextProvider.getInstance().getApplicationContext(), gameId, false, this);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.INetworkInitCallbackListener
    public void onNetworkInitCallbackFailed(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.unity3d.ads.IUnityAdsInitializationListener
    public void onInitializationComplete() {
        IronLog.ADAPTER_CALLBACK.verbose();
        Iterator<T> it = this.initCallbackListeners.iterator();
        while (it.hasNext()) {
            ((INetworkInitCallbackListener) it.next()).onNetworkInitCallbackSuccess();
        }
        this.initCallbackListeners.clear();
    }

    @Override // com.unity3d.ads.IUnityAdsInitializationListener
    public void onInitializationFailed(UnityAds.UnityAdsInitializationError error, String message) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(message, "message");
        IronLog.ADAPTER_CALLBACK.verbose();
        String str = getUnityAdsInitializationErrorCode(error) + message;
        Iterator<T> it = this.initCallbackListeners.iterator();
        while (it.hasNext()) {
            ((INetworkInitCallbackListener) it.next()).onNetworkInitCallbackFailed(str);
        }
        this.initCallbackListeners.clear();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String appKey, String userId, JSONObject config, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String gameId = config.optString(GAME_ID);
        String strOptString = config.optString(PLACEMENT_ID);
        if (!isOSSupported()) {
            IronSourceError ironSourceErrorErrorForUnsupportedAdapter = errorForUnsupportedAdapter(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
            IronLog.INTERNAL.error(ironSourceErrorErrorForUnsupportedAdapter.getErrorMessage());
            listener.onRewardedVideoInitFailed(ironSourceErrorErrorForUnsupportedAdapter);
            return;
        }
        IronLog.ADAPTER_API.verbose("gameId = " + gameId + ", placementId = " + strOptString);
        if (!UnityAds.isInitialized()) {
            Intrinsics.checkNotNullExpressionValue(gameId, "gameId");
            initSDK(gameId);
        }
        listener.onRewardedVideoInitSuccess();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String appKey, String userId, JSONObject config, JSONObject adData, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("gameId = " + config.optString(GAME_ID) + ", placementId = " + config.optString(PLACEMENT_ID));
        loadRewardedVideoInternal(config, null, listener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject config, JSONObject adData, String serverData, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("placementId = " + config.optString(PLACEMENT_ID));
        loadRewardedVideoInternal(config, serverData, listener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject config, JSONObject adData, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("placementId = " + config.optString(PLACEMENT_ID));
        loadRewardedVideoInternal(config, null, listener);
    }

    private final void loadRewardedVideoInternal(JSONObject config, String serverData, RewardedVideoSmashListener listener) {
        String placementId = config.optString(PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.rewardedVideoAdsAvailability;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, false);
        UnityAdsRewardedVideoListener unityAdsRewardedVideoListener = new UnityAdsRewardedVideoListener(this, listener, placementId);
        this.placementIdToRewardedVideoListener.put(placementId, unityAdsRewardedVideoListener);
        UnityAdsLoadOptions unityAdsLoadOptions = new UnityAdsLoadOptions();
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        unityAdsLoadOptions.setObjectId(string);
        String str = serverData;
        if (!(str == null || str.length() == 0)) {
            unityAdsLoadOptions.setAdMarkup(serverData);
        }
        this.rewardedVideoPlacementIdToLoadedAdObjectId.put(placementId, string);
        if (!UnityAds.isInitialized()) {
            String strOptString = config.optString(GAME_ID);
            Intrinsics.checkNotNullExpressionValue(strOptString, "config.optString(GAME_ID)");
            initSDK(strOptString);
        }
        UnityAds.load(placementId, unityAdsLoadOptions, unityAdsRewardedVideoListener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.rewardedVideoAdsAvailability;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, false);
        String dynamicUserId = getDynamicUserId();
        if (!(dynamicUserId == null || dynamicUserId.length() == 0)) {
            synchronized (this.unityAdsStorageLock) {
                PlayerMetaData playerMetaData = new PlayerMetaData(ContextProvider.getInstance().getApplicationContext());
                playerMetaData.setServerId(getDynamicUserId());
                playerMetaData.commit();
                Unit unit = Unit.INSTANCE;
            }
        }
        UnityAdsRewardedVideoListener unityAdsRewardedVideoListener = this.placementIdToRewardedVideoListener.get(placementId);
        String str = this.rewardedVideoPlacementIdToLoadedAdObjectId.get(placementId);
        UnityAdsShowOptions unityAdsShowOptions = new UnityAdsShowOptions();
        unityAdsShowOptions.setObjectId(str);
        UnityAds.show(ContextProvider.getInstance().getCurrentActiveActivity(), placementId, unityAdsShowOptions, unityAdsRewardedVideoListener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!isOSSupported()) {
            IronLog.INTERNAL.error(errorForUnsupportedAdapter(IronSourceConstants.REWARDED_VIDEO_AD_UNIT).getErrorMessage());
            return false;
        }
        String strOptString = config.optString(PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + strOptString);
        return this.rewardedVideoAdsAvailability.containsKey(strOptString) && Intrinsics.areEqual((Object) this.rewardedVideoAdsAvailability.get(strOptString), (Object) true);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void collectRewardedVideoBiddingData(JSONObject config, JSONObject adData, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        collectBiddingData(config, biddingDataCallback);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String appKey, String userId, JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        initInterstitial(appKey, userId, config, listener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String appKey, String userId, JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("gameId = " + config.optString(GAME_ID) + ", placementId = " + config.optString(PLACEMENT_ID));
        if (!UnityAds.isInitialized()) {
            String strOptString = config.optString(GAME_ID);
            Intrinsics.checkNotNullExpressionValue(strOptString, "config.optString(GAME_ID)");
            initSDK(strOptString);
        }
        listener.onInterstitialInitSuccess();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject config, JSONObject adData, String serverData, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("placementId = " + config.optString(PLACEMENT_ID));
        loadInterstitialInternal(config, listener, serverData);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject config, JSONObject adData, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("placementId = " + config.optString(PLACEMENT_ID));
        loadInterstitialInternal(config, listener, null);
    }

    private final void loadInterstitialInternal(JSONObject config, InterstitialSmashListener listener, String serverData) {
        String placementId = config.optString(PLACEMENT_ID);
        String gameId = config.optString(GAME_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.interstitialAdsAvailability;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, false);
        UnityAdsInterstitialListener unityAdsInterstitialListener = new UnityAdsInterstitialListener(this, listener, placementId);
        this.placementIdToInterstitialListener.put(placementId, unityAdsInterstitialListener);
        UnityAdsLoadOptions unityAdsLoadOptions = new UnityAdsLoadOptions();
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        unityAdsLoadOptions.setObjectId(string);
        String str = serverData;
        if (!(str == null || str.length() == 0)) {
            unityAdsLoadOptions.setAdMarkup(serverData);
        }
        this.interstitialPlacementIdToLoadedAdObjectId.put(placementId, string);
        if (!UnityAds.isInitialized()) {
            Intrinsics.checkNotNullExpressionValue(gameId, "gameId");
            initSDK(gameId);
        }
        UnityAds.load(placementId, unityAdsLoadOptions, unityAdsInterstitialListener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.interstitialAdsAvailability;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, false);
        Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
        UnityAdsInterstitialListener unityAdsInterstitialListener = this.placementIdToInterstitialListener.get(placementId);
        String str = this.interstitialPlacementIdToLoadedAdObjectId.get(placementId);
        UnityAdsShowOptions unityAdsShowOptions = new UnityAdsShowOptions();
        unityAdsShowOptions.setObjectId(str);
        UnityAds.show(currentActiveActivity, placementId, unityAdsShowOptions, unityAdsInterstitialListener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!isOSSupported()) {
            IronLog.INTERNAL.error(errorForUnsupportedAdapter("Interstitial").getErrorMessage());
            return false;
        }
        String strOptString = config.optString(PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + strOptString);
        return this.interstitialAdsAvailability.containsKey(strOptString) && Intrinsics.areEqual((Object) this.interstitialAdsAvailability.get(strOptString), (Object) true);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void collectInterstitialBiddingData(JSONObject config, JSONObject adData, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        collectBiddingData(config, biddingDataCallback);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String appKey, String userId, JSONObject config, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        initBanners(appKey, userId, config, listener);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String appKey, String userId, JSONObject config, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose("gameId = " + config.optString(GAME_ID) + ", placementId = " + config.optString(PLACEMENT_ID));
        if (!UnityAds.isInitialized()) {
            String strOptString = config.optString(GAME_ID);
            Intrinsics.checkNotNullExpressionValue(strOptString, "config.optString(GAME_ID)");
            initSDK(strOptString);
        }
        listener.onBannerInitSuccess();
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject config, JSONObject adData, String serverData, IronSourceBannerLayout banner, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        Intrinsics.checkNotNullParameter(banner, "banner");
        Intrinsics.checkNotNullParameter(listener, "listener");
        loadBannerInternal(config, adData, banner, listener, serverData);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject config, JSONObject adData, IronSourceBannerLayout banner, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(banner, "banner");
        Intrinsics.checkNotNullParameter(listener, "listener");
        loadBannerInternal(config, adData, banner, listener, null);
    }

    private final void loadBannerInternal(JSONObject config, JSONObject adData, IronSourceBannerLayout banner, BannerSmashListener listener, String serverData) {
        String placementId = config.optString(PLACEMENT_ID);
        if (banner == null) {
            IronLog.INTERNAL.error("banner is null");
            listener.onBannerAdLoadFailed(ErrorBuilder.buildNoConfigurationAvailableError("banner is null"));
            return;
        }
        ISBannerSize size = banner.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "banner.size");
        if (!isBannerSizeSupported(size)) {
            IronLog.ADAPTER_API.verbose("size not supported, size = " + banner.getSize().getDescription());
            listener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getProviderName()));
            return;
        }
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        BannerView bannerView = getBannerView(banner, placementId, listener);
        UnityAdsLoadOptions unityAdsLoadOptions = new UnityAdsLoadOptions();
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        unityAdsLoadOptions.setObjectId(string);
        String str = serverData;
        if (!(str == null || str.length() == 0)) {
            unityAdsLoadOptions.setAdMarkup(serverData);
        }
        if (!UnityAds.isInitialized()) {
            String strOptString = config.optString(GAME_ID);
            Intrinsics.checkNotNullExpressionValue(strOptString, "config.optString(GAME_ID)");
            initSDK(strOptString);
        }
        bannerView.load(unityAdsLoadOptions);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        String strOptString = config.optString(PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + strOptString);
        if (this.placementIdToBannerAd.get(strOptString) != null) {
            BannerView bannerView = this.placementIdToBannerAd.get(strOptString);
            if (bannerView != null) {
                bannerView.destroy();
            }
            this.placementIdToBannerAd.remove(strOptString);
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.BannerAdapterInterface
    public void collectBannerBiddingData(JSONObject config, JSONObject adData, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        collectBiddingData(config, biddingDataCallback);
    }

    @Override // org.json.mediationsdk.AbstractAdapter, org.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT adUnit, JSONObject config) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        IronLog.INTERNAL.verbose("adUnit = " + adUnit);
        int i = WhenMappings.$EnumSwitchMapping$0[adUnit.ordinal()];
        if (i == 1) {
            this.placementIdToRewardedVideoListener.clear();
            this.rewardedVideoPlacementIdToLoadedAdObjectId.clear();
            this.rewardedVideoAdsAvailability.clear();
        } else if (i == 2) {
            this.placementIdToInterstitialListener.clear();
            this.interstitialPlacementIdToLoadedAdObjectId.clear();
            this.interstitialAdsAvailability.clear();
        } else {
            if (i != 3) {
                return;
            }
            for (BannerView bannerView : this.placementIdToBannerAd.values()) {
                if (bannerView != null) {
                    bannerView.destroy();
                }
            }
            this.placementIdToBannerListener.clear();
            this.placementIdToBannerAd.clear();
        }
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean consent) {
        IronLog.ADAPTER_API.verbose("setConsent = " + consent);
        setUnityAdsMetaData(CONSENT_GDPR, consent);
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    protected void setMetaData(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        if (values.isEmpty()) {
            return;
        }
        String str = values.get(0);
        IronLog.ADAPTER_API.verbose("key = " + key + ", value = " + str);
        if (MetaDataUtils.isValidCCPAMetaData(key, str)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str));
            return;
        }
        String valueForType = MetaDataUtils.formatValueForType(str, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        if (MetaDataUtils.isValidMetaData(key, UNITYADS_METADATA_COPPA_KEY, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    private final void setUnityAdsMetaData(String key, boolean value) {
        IronLog.INTERNAL.verbose("key = " + key + "value = " + value);
        synchronized (this.unityAdsStorageLock) {
            com.unity3d.ads.metadata.MetaData metaData = new com.unity3d.ads.metadata.MetaData(ContextProvider.getInstance().getApplicationContext());
            metaData.set(key, Boolean.valueOf(value));
            if (Intrinsics.areEqual(key, "user.nonBehavioral")) {
                metaData.set("mode", MIXED_AUDIENCE);
            }
            metaData.commit();
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void setCOPPAValue(boolean value) {
        IronLog.ADAPTER_API.verbose("value = " + value);
        setUnityAdsMetaData("user.nonBehavioral", value);
    }

    private final void setCCPAValue(boolean value) {
        IronLog.ADAPTER_API.verbose("value = " + value);
        setUnityAdsMetaData(CONSENT_CCPA, value ^ true);
    }

    private final void collectBiddingData(JSONObject config, final BiddingDataCallback biddingDataCallback) {
        IronLog.ADAPTER_API.verbose();
        if (!UnityAds.isInitialized()) {
            String strOptString = config != null ? config.optString(GAME_ID) : null;
            if (strOptString == null) {
                strOptString = "";
            }
            initSDK(strOptString);
        }
        UnityAds.getToken(new IUnityAdsTokenListener() { // from class: com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda0
            @Override // com.unity3d.ads.IUnityAdsTokenListener
            public final void onUnityAdsTokenReady(String str) {
                UnityAdsAdapter.collectBiddingData$lambda$5(biddingDataCallback, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectBiddingData$lambda$5(BiddingDataCallback biddingDataCallback, String str) {
        Intrinsics.checkNotNullParameter(biddingDataCallback, "$biddingDataCallback");
        IronLog.ADAPTER_API.verbose("token = " + str);
        if (str == null) {
            str = "";
        }
        biddingDataCallback.onSuccess(MapsKt.mapOf(TuplesKt.to("token", str)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0032 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final boolean isBannerSizeSupported(ISBannerSize size) {
        String description = size.getDescription();
        if (description != null) {
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals("RECTANGLE")) {
                        return true;
                    }
                    break;
                case 72205083:
                    if (description.equals("LARGE")) {
                        return true;
                    }
                    break;
                case 79011241:
                    if (description.equals("SMART")) {
                        return true;
                    }
                    break;
                case 1951953708:
                    if (description.equals("BANNER")) {
                        return true;
                    }
                    break;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
    
        if (r4.equals("LARGE") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return new com.unity3d.services.banners.UnityBannerSize(320, 50);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
    
        if (r4.equals("BANNER") == false) goto L25;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.unity3d.services.banners.UnityBannerSize getBannerSize(org.json.mediationsdk.ISBannerSize r4, boolean r5) {
        /*
            r3 = this;
            java.lang.String r4 = r4.getDescription()
            if (r4 == 0) goto L56
            int r0 = r4.hashCode()
            r1 = 50
            r2 = 320(0x140, float:4.48E-43)
            switch(r0) {
                case -387072689: goto L43;
                case 72205083: goto L34;
                case 79011241: goto L1b;
                case 1951953708: goto L12;
                default: goto L11;
            }
        L11:
            goto L56
        L12:
            java.lang.String r5 = "BANNER"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L3d
            goto L56
        L1b:
            java.lang.String r0 = "SMART"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L24
            goto L56
        L24:
            com.unity3d.services.banners.UnityBannerSize r4 = new com.unity3d.services.banners.UnityBannerSize
            if (r5 == 0) goto L30
            r5 = 728(0x2d8, float:1.02E-42)
            r0 = 90
            r4.<init>(r5, r0)
            goto L57
        L30:
            r4.<init>(r2, r1)
            goto L57
        L34:
            java.lang.String r5 = "LARGE"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L3d
            goto L56
        L3d:
            com.unity3d.services.banners.UnityBannerSize r4 = new com.unity3d.services.banners.UnityBannerSize
            r4.<init>(r2, r1)
            goto L57
        L43:
            java.lang.String r5 = "RECTANGLE"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L4c
            goto L56
        L4c:
            com.unity3d.services.banners.UnityBannerSize r4 = new com.unity3d.services.banners.UnityBannerSize
            r5 = 300(0x12c, float:4.2E-43)
            r0 = 250(0xfa, float:3.5E-43)
            r4.<init>(r5, r0)
            goto L57
        L56:
            r4 = 0
        L57:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.adapters.unityads.UnityAdsAdapter.getBannerSize(com.ironsource.mediationsdk.ISBannerSize, boolean):com.unity3d.services.banners.UnityBannerSize");
    }

    private final BannerView getBannerView(IronSourceBannerLayout banner, String placementId, BannerSmashListener listener) {
        if (this.placementIdToBannerAd.get(placementId) != null) {
            BannerView bannerView = this.placementIdToBannerAd.get(placementId);
            if (bannerView != null) {
                bannerView.destroy();
            }
            this.placementIdToBannerAd.remove(placementId);
        }
        ISBannerSize size = banner.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "banner.size");
        BannerView bannerView2 = new BannerView(ContextProvider.getInstance().getCurrentActiveActivity(), placementId, getBannerSize(size, AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext())));
        UnityAdsBannerListener unityAdsBannerListener = new UnityAdsBannerListener(this, listener, placementId);
        this.placementIdToBannerListener.put(placementId, unityAdsBannerListener);
        bannerView2.setListener(unityAdsBannerListener);
        this.placementIdToBannerAd.put(placementId, bannerView2);
        return bannerView2;
    }

    public final FrameLayout.LayoutParams createLayoutParams(UnityBannerSize size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(ContextProvider.getInstance().getApplicationContext(), size.getWidth()), -2, 17);
    }

    private final IronSourceError errorForUnsupportedAdapter(String adUnit) {
        IronSourceError ironSourceErrorBuildInitFailedError = ErrorBuilder.buildInitFailedError("UnityAds SDK version is not supported", adUnit);
        Intrinsics.checkNotNullExpressionValue(ironSourceErrorBuildInitFailedError, "buildInitFailedError(\"Un…s not supported\", adUnit)");
        return ironSourceErrorBuildInitFailedError;
    }

    private final int getUnityAdsInitializationErrorCode(UnityAds.UnityAdsInitializationError error) {
        for (UnityAds.UnityAdsInitializationError unityAdsInitializationError : UnityAds.UnityAdsInitializationError.values()) {
            if (StringsKt.equals(unityAdsInitializationError.name(), error.toString(), true)) {
                return UnityAds.UnityAdsInitializationError.valueOf(error.toString()).ordinal();
            }
        }
        return 510;
    }

    public final int getUnityAdsLoadErrorCode(UnityAds.UnityAdsLoadError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        for (UnityAds.UnityAdsLoadError unityAdsLoadError : UnityAds.UnityAdsLoadError.values()) {
            if (StringsKt.equals(unityAdsLoadError.name(), error.toString(), true)) {
                return UnityAds.UnityAdsLoadError.valueOf(error.toString()).ordinal();
            }
        }
        return 510;
    }

    public final int getUnityAdsShowErrorCode(UnityAds.UnityAdsShowError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        for (UnityAds.UnityAdsShowError unityAdsShowError : UnityAds.UnityAdsShowError.values()) {
            if (StringsKt.equals(unityAdsShowError.name(), error.toString(), true)) {
                return UnityAds.UnityAdsShowError.valueOf(error.toString()).ordinal();
            }
        }
        return 510;
    }

    @Override // org.json.mediationsdk.AbstractAdapter
    public LoadWhileShowSupportState getLoadWhileShowSupportState(JSONObject mAdUnitSettings) {
        Intrinsics.checkNotNullParameter(mAdUnitSettings, "mAdUnitSettings");
        return !mAdUnitSettings.optBoolean(LWS_SUPPORT_STATE, true) ? LoadWhileShowSupportState.NONE : LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }
}
