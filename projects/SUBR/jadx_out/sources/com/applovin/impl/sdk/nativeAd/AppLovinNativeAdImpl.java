package com.applovin.impl.sdk.nativeAd;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.arch.core.util.Function;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.aq;
import com.applovin.impl.br;
import com.applovin.impl.fc;
import com.applovin.impl.og;
import com.applovin.impl.qg;
import com.applovin.impl.s;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tl;
import com.applovin.impl.tp;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.impl.zq;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinNativeAdImpl extends AppLovinAdBase implements AppLovinNativeAd, View.OnClickListener, AppLovinTouchToClickListener.OnClickListener {
    private static final String AD_RESPONSE_TYPE_APPLOVIN = "applovin";
    private static final String AD_RESPONSE_TYPE_ORTB = "ortb";
    private static final String AD_RESPONSE_TYPE_UNDEFINED = "undefined";
    private static final String DEFAULT_APPLOVIN_PRIVACY_URL = "https://www.applovin.com/privacy/";
    private static final float MINIMUM_STARS_TO_RENDER = 3.0f;
    private static final String TAG = "AppLovinNativeAd";
    private static final int VIEWABLE_MRC100_PERCENTAGE = 100;
    private static final int VIEWABLE_MRC50_PERCENTAGE = 50;
    private static final int VIEWABLE_MRC_REQUIRED_SECONDS = 1;
    private static final int VIEWABLE_VIDEO_MRC_REQUIRED_SECONDS = 2;
    private final og adEventTracker;
    private final String advertiser;
    private final String body;
    private final String callToAction;
    private final Uri clickDestinationBackupUri;
    private final Uri clickDestinationUri;
    private final List<e> clickTrackingRequests;
    private final List<String> clickTrackingUrls;
    private AppLovinNativeAdEventListener eventListener;
    private Uri iconUri;
    private final List<e> impressionRequests;
    private final AtomicBoolean impressionTracked;
    private final List<String> jsTrackers;
    private float mainImageAspectRatio;
    private Uri mainImageUri;
    private AppLovinMediaView mediaView;
    private ViewGroup nativeAdView;
    private final b onAttachStateChangeHandler;
    private AppLovinOptionsView optionsView;
    private Uri privacyDestinationUri;
    private Uri privacyIconUri;
    private final List<View> registeredViews;
    private final Double starRating;
    private final String tag;
    private final String title;
    private final aq vastAd;
    private View videoView;
    private final c viewableMRC100Callback;
    private br viewableMRC100Tracker;
    private final c viewableMRC50Callback;
    private br viewableMRC50Tracker;
    private c viewableVideoMRC50Callback;
    private br viewableVideoMRC50Tracker;

    class a implements ArrayService.DirectDownloadListener {
        final /* synthetic */ Uri a;
        final /* synthetic */ Uri b;
        final /* synthetic */ Context c;

        a(Uri uri, Uri uri2, Context context) {
            this.a = uri;
            this.b = uri2;
            this.c = context;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onAppDetailsDismissed() {
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onAppDetailsDisplayed() {
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            AppLovinNativeAdImpl.this.launchUri(this.a, this.b, this.c);
        }
    }

    private static class b implements View.OnAttachStateChangeListener {
        private final AppLovinNativeAdImpl a;

        public b(AppLovinNativeAdImpl appLovinNativeAdImpl) {
            this.a = appLovinNativeAdImpl;
        }

        protected boolean a(Object obj) {
            return obj instanceof b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!bVar.a(this)) {
                return false;
            }
            AppLovinNativeAdImpl appLovinNativeAdImplA = a();
            AppLovinNativeAdImpl appLovinNativeAdImplA2 = bVar.a();
            return appLovinNativeAdImplA != null ? appLovinNativeAdImplA.equals(appLovinNativeAdImplA2) : appLovinNativeAdImplA2 == null;
        }

        public int hashCode() {
            AppLovinNativeAdImpl appLovinNativeAdImplA = a();
            return (appLovinNativeAdImplA == null ? 43 : appLovinNativeAdImplA.hashCode()) + 59;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.a.maybeHandleOnAttachedToWindow(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        public String toString() {
            return "AppLovinNativeAdImpl.OnAttachStateChangeHandler(ad=" + a() + ")";
        }

        public AppLovinNativeAdImpl a() {
            return this.a;
        }
    }

    private class c implements br.a {
        private final List a;

        public c(List list) {
            this.a = list;
        }

        protected boolean a(Object obj) {
            return obj instanceof c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a(this)) {
                return false;
            }
            List listA = a();
            List listA2 = cVar.a();
            return listA != null ? listA.equals(listA2) : listA2 == null;
        }

        public int hashCode() {
            List listA = a();
            return (listA == null ? 43 : listA.hashCode()) + 59;
        }

        @Override // com.applovin.impl.br.a
        public void onLogVisibilityImpression() {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                ((AppLovinAdBase) AppLovinNativeAdImpl.this).sdk.X().dispatchPostbackRequest((e) it.next(), null);
            }
        }

        public String toString() {
            return "AppLovinNativeAdImpl.VisibilityCallback(requests=" + a() + ")";
        }

        public List a() {
            return this.a;
        }
    }

    /* synthetic */ AppLovinNativeAdImpl(Builder builder, a aVar) {
        this(builder);
    }

    private List<s> getDirectClickTrackingPostbacks() {
        List<s> listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl$$ExternalSyntheticLambda3
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.m222x5876c986((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("click_tracking_urls", new JSONObject()), getClCode(), getStringFromAdObject("click_tracking_url", null), this.sdk);
        }
        return listA;
    }

    private List<String> getPrivacySandboxClickAttributionUrls() {
        return getStringListFromAdObject("privacy_sandbox_click_attribution_urls", Collections.emptyList());
    }

    private List<String> getPrivacySandboxImpressionAttributionUrls() {
        return getStringListFromAdObject("privacy_sandbox_impression_attribution_urls", Collections.emptyList());
    }

    private boolean isDspAd() {
        return AD_RESPONSE_TYPE_ORTB.equalsIgnoreCase(getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchUri(Uri uri, Uri uri2, Context context) {
        if (tp.a(uri, context, this.sdk)) {
            this.sdk.I();
            if (n.a()) {
                this.sdk.I().a(this.tag, "Opening URL: " + uri);
                return;
            }
            return;
        }
        if (tp.a(uri2, context, this.sdk)) {
            this.sdk.I();
            if (n.a()) {
                this.sdk.I().a(this.tag, "Opening backup URL: " + uri2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleOnAttachedToWindow(View view) {
        if (this.impressionTracked.compareAndSet(false, true)) {
            br brVar = new br(this.nativeAdView, this.sdk, this.viewableMRC50Callback);
            this.viewableMRC50Tracker = brVar;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            brVar.a(0, 50.0f, 50.0f, timeUnit.toMillis(1L), this.nativeAdView);
            br brVar2 = new br(this.nativeAdView, this.sdk, this.viewableMRC100Callback);
            this.viewableMRC100Tracker = brVar2;
            brVar2.a(0, 100.0f, 100.0f, timeUnit.toMillis(1L), this.nativeAdView);
            aq aqVar = this.vastAd;
            if (aqVar != null && aqVar.hasVideoUrl()) {
                br brVar3 = new br(this.nativeAdView, this.sdk, this.viewableVideoMRC50Callback);
                this.viewableVideoMRC50Tracker = brVar3;
                brVar3.a(0, 50.0f, 50.0f, timeUnit.toMillis(2L), this.videoView);
            }
            List<String> list = this.jsTrackers;
            if (list != null) {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    this.sdk.p0().b(it.next());
                }
            }
            Iterator<e> it2 = this.impressionRequests.iterator();
            while (it2.hasNext()) {
                this.sdk.X().dispatchPostbackRequest(it2.next(), null);
            }
            this.adEventTracker.a(view);
            this.adEventTracker.g();
            if (this.sdk.Y() != null) {
                this.sdk.Y().b(getPrivacySandboxImpressionAttributionUrls());
            }
        }
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void destroy() {
        unregisterViewsForInteraction();
        this.eventListener = null;
        this.adEventTracker.f();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getAdIdNumber() {
        return getLongFromAdObject("ad_id", -1L);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getAdvertiser() {
        return this.advertiser;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getBody() {
        return this.body;
    }

    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getCallToAction() {
        return this.callToAction;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? (Bundle) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl$$ExternalSyntheticLambda4
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return JsonUtils.toBundle(((tl) obj).a("ah_parameters", (JSONObject) null));
            }
        }) : JsonUtils.toBundle(getJsonObjectFromAdObject("ah_parameters", null));
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public String getDirectDownloadToken() {
        return getStringFromAdObject("ah_dd_token", null);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public Uri getIconUri() {
        return this.iconUri;
    }

    public float getMainImageAspectRatio() {
        return this.mainImageAspectRatio;
    }

    public Uri getMainImageUri() {
        return this.mainImageUri;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public AppLovinMediaView getMediaView() {
        return this.mediaView;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources() {
        List<VerificationScriptResource> list;
        if (this.sdk.V().e()) {
            return Collections.singletonList(VerificationScriptResource.createVerificationScriptResourceWithParameters(qg.c(), qg.b(), qg.a()));
        }
        final Function function = new Function() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return this.f$0.m223x77615e1e((JSONArray) obj);
            }
        };
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl$$ExternalSyntheticLambda1
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return AppLovinNativeAdImpl.lambda$getOpenMeasurementVerificationScriptResources$3(function, (tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            list = (List) function.apply(getJsonArrayFromAdObject("omid_verification_script_resources", null));
        }
        return list;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public AppLovinOptionsView getOptionsView() {
        return this.optionsView;
    }

    public Uri getPrivacyDestinationUri() {
        return this.privacyDestinationUri;
    }

    public Uri getPrivacyIconUri() {
        return this.privacyIconUri;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public Double getStarRating() {
        return this.starRating;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return getStringFromAdObject("type", "undefined");
    }

    protected void handleNativeAdClick(Uri uri, Uri uri2, MotionEvent motionEvent, Context context) {
        if (this.sdk.Y() != null) {
            this.sdk.Y().b(getPrivacySandboxClickAttributionUrls(), motionEvent);
        }
        handleNativeAdClick(uri, uri2, context);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return StringUtils.isValidString(getDirectDownloadToken());
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public boolean isOpenMeasurementEnabled() {
        if (this.sdk.V().e()) {
            return true;
        }
        return getBooleanFromAdObject("omsdk_enabled", Boolean.FALSE);
    }

    /* JADX INFO: renamed from: lambda$getOpenMeasurementVerificationScriptResources$2$com-applovin-impl-sdk-nativeAd-AppLovinNativeAdImpl, reason: not valid java name */
    /* synthetic */ List m223x77615e1e(JSONArray jSONArray) {
        if (jSONArray == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            try {
                URL url = new URL(JsonUtils.getString(jSONObject, "url", null));
                String string = JsonUtils.getString(jSONObject, "vendor_key", null);
                String string2 = JsonUtils.getString(jSONObject, "parameters", null);
                if (StringUtils.isValidString(string) && StringUtils.isValidString(string2)) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(string, url, string2));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                }
            } catch (Throwable th) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().a(this.tag, "Failed to parse OMID verification script resource", th);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: lambda$unregisterViewsForInteraction$0$com-applovin-impl-sdk-nativeAd-AppLovinNativeAdImpl, reason: not valid java name */
    /* synthetic */ void m224xfd413d54() {
        for (View view : this.registeredViews) {
            view.setOnTouchListener(null);
            view.setOnClickListener(null);
        }
        this.sdk.I();
        if (n.a()) {
            this.sdk.I().a(this.tag, "Unregistered views: " + this.registeredViews);
        }
        this.registeredViews.clear();
        br brVar = this.viewableMRC50Tracker;
        if (brVar != null) {
            brVar.b();
        }
        br brVar2 = this.viewableMRC100Tracker;
        if (brVar2 != null) {
            brVar2.b();
        }
        br brVar3 = this.viewableVideoMRC50Tracker;
        if (brVar3 != null) {
            brVar3.b();
        }
        ViewGroup viewGroup = this.nativeAdView;
        if (viewGroup != null) {
            viewGroup.removeOnAttachStateChangeListener(this.onAttachStateChangeHandler);
            this.nativeAdView = null;
        }
        AppLovinMediaView appLovinMediaView = this.mediaView;
        if (appLovinMediaView != null) {
            appLovinMediaView.destroy();
        }
        AppLovinOptionsView appLovinOptionsView = this.optionsView;
        if (appLovinOptionsView != null) {
            appLovinOptionsView.destroy();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        this.sdk.I();
        if (n.a()) {
            this.sdk.I().a(this.tag, "Handle view clicked");
        }
        this.sdk.j().maybeSubmitPersistentPostbacks(getDirectClickTrackingPostbacks());
        if (!((Boolean) this.sdk.a(sj.B)).booleanValue() || (context = zq.a(this.nativeAdView, this.sdk)) == null) {
            context = view.getContext();
        }
        handleNativeAdClick(this.clickDestinationUri, this.clickDestinationBackupUri, context);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void registerViewsForInteraction(List<View> list, ViewGroup viewGroup) {
        this.nativeAdView = viewGroup;
        if (z3.e() && this.nativeAdView.isAttachedToWindow()) {
            maybeHandleOnAttachedToWindow(this.nativeAdView);
        } else if (z3.e() || this.nativeAdView.getParent() == null) {
            this.nativeAdView.addOnAttachStateChangeListener(this.onAttachStateChangeHandler);
        } else {
            maybeHandleOnAttachedToWindow(this.nativeAdView);
        }
        this.sdk.I();
        if (n.a()) {
            this.sdk.I().a(this.tag, "Registered ad view for impressions: " + this.nativeAdView);
        }
        if (this.clickDestinationUri == null && this.clickDestinationBackupUri == null) {
            this.sdk.I();
            if (n.a()) {
                this.sdk.I().a(this.tag, "Skipping click registration - no click URLs provided");
                return;
            }
            return;
        }
        for (View view : list) {
            if (view.hasOnClickListeners()) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().k(this.tag, "View has an onClickListener already - " + view);
                }
            }
            if (!view.isClickable()) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().k(this.tag, "View is not clickable - " + view);
                }
            }
            if (!view.isEnabled()) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().b(this.tag, "View is not enabled - " + view);
                }
            }
            if (view instanceof Button) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().a(this.tag, "Registering click for button: " + view);
                }
            } else {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().a(this.tag, "Registering click for view: " + view);
                }
            }
            if (((Boolean) this.sdk.a(sj.I2)).booleanValue()) {
                view.setOnTouchListener(new AppLovinTouchToClickListener(this.sdk, sj.m0, viewGroup.getContext(), this));
            } else {
                view.setOnClickListener(this);
            }
            this.registeredViews.add(view);
        }
        this.sdk.I();
        if (n.a()) {
            this.sdk.I().a(this.tag, "Registered views: " + this.registeredViews);
        }
    }

    public void setEventListener(AppLovinNativeAdEventListener appLovinNativeAdEventListener) {
        this.eventListener = appLovinNativeAdEventListener;
    }

    public void setIconUri(Uri uri) {
        this.iconUri = uri;
    }

    public void setMainImageAspectRatio(float f) {
        this.mainImageAspectRatio = f;
    }

    public void setMainImageUri(Uri uri) {
        this.mainImageUri = uri;
    }

    public void setPrivacyIconUri(Uri uri) {
        this.privacyIconUri = uri;
    }

    public void setUpNativeAdViewComponents() {
        aq aqVar = this.vastAd;
        if (aqVar == null || !aqVar.hasVideoUrl()) {
            this.mediaView = new AppLovinMediaView(this, this.sdk, j.m());
        } else {
            try {
                this.mediaView = new AppLovinVastMediaView(this, this.sdk, j.m());
            } catch (Throwable th) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().d(this.tag, "Failed to create ExoPlayer VAST media view. Falling back to static image for media view.", th);
                }
                this.sdk.D().a(TAG, "createExoPlayerVASTMediaView", th);
                this.mediaView = new AppLovinMediaView(this, this.sdk, j.m());
            }
        }
        if (this.privacyDestinationUri != null) {
            this.optionsView = new AppLovinOptionsView(this, this.sdk, j.m());
            return;
        }
        this.sdk.I();
        if (n.a()) {
            this.sdk.I().a(this.tag, "Privacy icon will not render because no native ad privacy URL is provided.");
        }
    }

    public void setVideoView(View view) {
        this.videoView = view;
    }

    public String toString() {
        return "AppLovinNativeAd{adIdNumber=" + getAdIdNumber() + " - " + getTitle() + "}";
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void unregisterViewsForInteraction() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m224xfd413d54();
            }
        });
    }

    private AppLovinNativeAdImpl(Builder builder) {
        super(builder.adObject, builder.fullResponse, builder.sdk);
        this.impressionTracked = new AtomicBoolean();
        this.registeredViews = new ArrayList();
        this.onAttachStateChangeHandler = new b(this);
        this.adEventTracker = new og(this);
        this.title = builder.title;
        this.advertiser = builder.advertiser;
        this.body = builder.body;
        this.callToAction = builder.callToAction;
        this.iconUri = builder.iconUri;
        this.mainImageUri = builder.mainImageUri;
        this.mainImageAspectRatio = builder.mainImageAspectRatio;
        this.privacyIconUri = builder.privacyIconUri;
        aq aqVar = builder.vastAd;
        this.vastAd = aqVar;
        this.clickDestinationUri = builder.clickDestinationUri;
        this.clickDestinationBackupUri = builder.clickDestinationBackupUri;
        this.clickTrackingUrls = builder.clickTrackingUrls;
        this.jsTrackers = builder.jsTrackers;
        this.clickTrackingRequests = builder.clickTrackingRequests;
        this.impressionRequests = builder.impressionRequests;
        Double d = builder.starRating;
        this.starRating = (d == null || d.doubleValue() < 3.0d) ? null : d;
        if (builder.privacyDestinationUri != null) {
            this.privacyDestinationUri = builder.privacyDestinationUri;
        } else if (!isDspAd() || getSdk().k0().c()) {
            this.privacyDestinationUri = Uri.parse(DEFAULT_APPLOVIN_PRIVACY_URL);
        }
        this.viewableMRC50Callback = new c(builder.viewableMRC50Requests);
        this.viewableMRC100Callback = new c(builder.viewableMRC100Requests);
        if (aqVar != null && aqVar.hasVideoUrl()) {
            this.viewableVideoMRC50Callback = new c(builder.viewableVideo50Requests);
        }
        this.tag = "AppLovinNativeAd:" + getAdIdNumber();
    }

    private void handleNativeAdClick(Uri uri, Uri uri2, Context context) {
        if (this.clickTrackingRequests.size() > 0) {
            Iterator<e> it = this.clickTrackingRequests.iterator();
            while (it.hasNext()) {
                this.sdk.X().dispatchPostbackRequest(it.next(), null);
            }
        } else {
            Iterator<String> it2 = this.clickTrackingUrls.iterator();
            while (it2.hasNext()) {
                this.sdk.X().dispatchPostbackAsync(it2.next(), null);
            }
        }
        fc.b(this.eventListener, this);
        if (isDirectDownloadEnabled()) {
            this.sdk.n().startDirectInstallOrDownloadProcess(this, null, new a(uri, uri2, context));
        } else {
            launchUri(uri, uri2, context);
        }
    }

    @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
    public void onClick(View view, MotionEvent motionEvent) {
        Context context;
        this.sdk.I();
        if (n.a()) {
            this.sdk.I().a(this.tag, "Handle view clicked");
        }
        this.sdk.j().maybeSubmitPersistentPostbacks(getDirectClickTrackingPostbacks());
        if (!((Boolean) this.sdk.a(sj.B)).booleanValue() || (context = zq.a(this.nativeAdView, this.sdk)) == null) {
            context = view.getContext();
        }
        handleNativeAdClick(this.clickDestinationUri, this.clickDestinationBackupUri, motionEvent, context);
    }

    public aq getVastAd() {
        return this.vastAd;
    }

    /* JADX INFO: renamed from: lambda$getDirectClickTrackingPostbacks$1$com-applovin-impl-sdk-nativeAd-AppLovinNativeAdImpl, reason: not valid java name */
    /* synthetic */ List m222x5876c986(tl tlVar) {
        return yp.a(tlVar.a("click_tracking_urls", new JSONObject()), getClCode(), tlVar.a("click_tracking_url", (String) null), this.sdk);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public og getAdEventTracker() {
        return this.adEventTracker;
    }

    static /* synthetic */ List lambda$getOpenMeasurementVerificationScriptResources$3(Function function, tl tlVar) {
        return (List) function.apply(tlVar.a("omid_verification_script_resources", (JSONArray) null));
    }

    public static class Builder {
        private final JSONObject adObject;
        private String advertiser;
        private String body;
        private String callToAction;
        private Uri clickDestinationBackupUri;
        private Uri clickDestinationUri;
        private List<e> clickTrackingRequests;
        private List<String> clickTrackingUrls;
        private final JSONObject fullResponse;
        private Uri iconUri;
        private List<e> impressionRequests;
        private List<String> jsTrackers;
        private float mainImageAspectRatio;
        private Uri mainImageUri;
        private Uri privacyDestinationUri;
        private Uri privacyIconUri;
        private final j sdk;
        private Double starRating;
        private String title;
        private aq vastAd;
        private List<e> viewableMRC100Requests;
        private List<e> viewableMRC50Requests;
        private List<e> viewableVideo50Requests;

        public Builder(JSONObject jSONObject, JSONObject jSONObject2, j jVar) {
            this.adObject = jSONObject;
            this.fullResponse = jSONObject2;
            this.sdk = jVar;
        }

        public AppLovinNativeAdImpl build() {
            return new AppLovinNativeAdImpl(this, null);
        }

        public Builder setAdvertiser(String str) {
            this.advertiser = str;
            return this;
        }

        public Builder setBody(String str) {
            this.body = str;
            return this;
        }

        public Builder setCallToAction(String str) {
            this.callToAction = str;
            return this;
        }

        public Builder setClickDestinationBackupUri(Uri uri) {
            this.clickDestinationBackupUri = uri;
            return this;
        }

        public Builder setClickDestinationUri(Uri uri) {
            this.clickDestinationUri = uri;
            return this;
        }

        public Builder setClickTrackingRequests(List<e> list) {
            this.clickTrackingRequests = list;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            this.clickTrackingUrls = list;
            return this;
        }

        public Builder setIconUri(Uri uri) {
            this.iconUri = uri;
            return this;
        }

        public Builder setImpressionRequests(List<e> list) {
            this.impressionRequests = list;
            return this;
        }

        public Builder setJsTrackers(List<String> list) {
            this.jsTrackers = list;
            return this;
        }

        public Builder setMainImageUri(Uri uri) {
            this.mainImageUri = uri;
            return this;
        }

        public Builder setPrivacyDestinationUri(Uri uri) {
            this.privacyDestinationUri = uri;
            return this;
        }

        public Builder setPrivacyIconUri(Uri uri) {
            this.privacyIconUri = uri;
            return this;
        }

        public Builder setStarRating(Double d) {
            this.starRating = d;
            return this;
        }

        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        public Builder setViewableMRC100Requests(List<e> list) {
            this.viewableMRC100Requests = list;
            return this;
        }

        public Builder setViewableMRC50Requests(List<e> list) {
            this.viewableMRC50Requests = list;
            return this;
        }

        public Builder setViewableVideo50Requests(List<e> list) {
            this.viewableVideo50Requests = list;
            return this;
        }

        public Builder setVastAd(aq aqVar) {
            this.vastAd = aqVar;
            return this;
        }
    }
}
