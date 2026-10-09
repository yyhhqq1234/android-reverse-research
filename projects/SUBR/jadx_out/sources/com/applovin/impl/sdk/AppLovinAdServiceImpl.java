package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.e4;
import com.applovin.impl.fc;
import com.applovin.impl.h0;
import com.applovin.impl.i8;
import com.applovin.impl.ka;
import com.applovin.impl.o9;
import com.applovin.impl.om;
import com.applovin.impl.qb;
import com.applovin.impl.qm;
import com.applovin.impl.s;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.tp;
import com.applovin.impl.u0;
import com.applovin.impl.uj;
import com.applovin.impl.um;
import com.applovin.impl.w;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.zq;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService, com.applovin.impl.sdk.a.InterfaceC0035a {
    private final j a;
    private final n b;
    private final Map c;
    private final Object d = new Object();
    private final Map e = Collections.synchronizedMap(new HashMap());
    private final AtomicReference f = new AtomicReference();

    class b implements ArrayService.DirectDownloadListener {
        final /* synthetic */ com.applovin.impl.adview.a a;
        final /* synthetic */ com.applovin.impl.sdk.ad.b b;
        final /* synthetic */ AppLovinAdView c;
        final /* synthetic */ Uri d;

        b(com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri) {
            this.a = aVar;
            this.b = bVar;
            this.c = appLovinAdView;
            this.d = uri;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onAppDetailsDismissed() {
            if (this.a != null) {
                AppLovinAdServiceImpl.this.a.e0().resumeForClick();
                fc.a(this.a.e(), this.b, this.c);
            }
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onAppDetailsDisplayed() {
            AppLovinAdServiceImpl.this.a.e0().pauseForClick();
            com.applovin.impl.adview.a aVar = this.a;
            if (aVar != null) {
                aVar.x();
                fc.c(this.a.e(), this.b, this.c);
            }
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            n unused = AppLovinAdServiceImpl.this.b;
            if (n.a()) {
                AppLovinAdServiceImpl.this.b.a("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
            }
            AppLovinAdServiceImpl.this.a(this.b, this.c, this.a, this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class c implements qb {
        private final d a;

        /* synthetic */ c(AppLovinAdServiceImpl appLovinAdServiceImpl, d dVar, a aVar) {
            this(dVar);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.c)) {
                AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
                AppLovinAdServiceImpl.this.a.h().a(appLovinAdImpl);
                if (appLovinAdImpl.canExpire()) {
                    AppLovinAdServiceImpl.this.a.f().a(appLovinAdImpl, AppLovinAdServiceImpl.this);
                }
                appLovinAd = new com.applovin.impl.sdk.ad.c(appLovinAdImpl.getAdZone(), AppLovinAdServiceImpl.this.a);
            }
            Collection collectionEmptySet = Collections.emptySet();
            synchronized (this.a.a) {
                if (!this.a.c) {
                    collectionEmptySet = new HashSet(this.a.d);
                    this.a.d.clear();
                }
                d dVar = this.a;
                dVar.b = false;
                dVar.c = false;
            }
            Iterator it = collectionEmptySet.iterator();
            while (it.hasNext()) {
                AppLovinAdServiceImpl.this.a(appLovinAd, (AppLovinAdLoadListener) it.next());
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            failedToReceiveAdV2(new AppLovinError(i, ""));
        }

        @Override // com.applovin.impl.qb
        public void failedToReceiveAdV2(AppLovinError appLovinError) {
            Collection collectionEmptySet = Collections.emptySet();
            synchronized (this.a.a) {
                if (!this.a.c) {
                    collectionEmptySet = new HashSet(this.a.d);
                    this.a.d.clear();
                }
                d dVar = this.a;
                dVar.b = false;
                dVar.c = false;
            }
            Iterator it = collectionEmptySet.iterator();
            while (it.hasNext()) {
                AppLovinAdServiceImpl.this.b(appLovinError, (AppLovinAdLoadListener) it.next());
            }
        }

        private c(d dVar) {
            this.a = dVar;
        }
    }

    AppLovinAdServiceImpl(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
        HashMap map = new HashMap(6);
        this.c = map;
        a aVar = null;
        map.put(h0.c(), new d(aVar));
        map.put(h0.k(), new d(aVar));
        map.put(h0.j(), new d(aVar));
        map.put(h0.m(), new d(aVar));
        map.put(h0.b(), new d(aVar));
        map.put(h0.h(), new d(aVar));
    }

    private void c(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdLoadListener instanceof qb) {
            ((qb) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
        } else {
            appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
        }
    }

    public void addCustomQueryParams(Map<String, String> map) {
        this.e.putAll(map);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void collectBidToken(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "collectBidToken(listener=" + appLovinBidTokenCollectionListener + ")");
        }
        this.a.x().a(appLovinBidTokenCollectionListener);
    }

    public JSONObject getAndResetCustomPostBody() {
        return (JSONObject) this.f.getAndSet(null);
    }

    public Map<String, String> getAndResetCustomQueryParams() {
        Map<String, String> map;
        synchronized (this.e) {
            map = CollectionUtils.map(this.e);
            this.e.clear();
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        if (n.a()) {
            this.b.a("AppLovinAdService", "getBidToken()");
        }
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String strD = this.a.x().D();
        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        if (StringUtils.isValidString(strD) && n.a()) {
            this.b.a("AppLovinAdService", "Successfully retrieved bid token");
        }
        return strD;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        a(h0.a(appLovinAdSize, AppLovinAdType.REGULAR), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, final AppLovinAdLoadListener appLovinAdLoadListener) {
        String strTrim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(strTrim)) {
            n.h("AppLovinAdService", "Empty ad token");
            c(new AppLovinError(-8, "Empty ad token"), appLovinAdLoadListener);
            return;
        }
        w wVar = new w(strTrim, this.a);
        if (wVar.c() == w.a.REGULAR) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Loading next ad for token: " + wVar);
            }
            a(new qm(wVar, appLovinAdLoadListener, this.a));
            return;
        }
        if (wVar.c() != w.a.AD_RESPONSE_JSON) {
            AppLovinError appLovinError = new AppLovinError(-8, "Invalid token type");
            n.h("AppLovinAdService", "Invalid token type");
            c(appLovinError, appLovinAdLoadListener);
            return;
        }
        final JSONObject jSONObjectA = wVar.a();
        if (jSONObjectA == null) {
            String str2 = "Unable to retrieve ad response JSON from token: " + wVar.b();
            AppLovinError appLovinError2 = new AppLovinError(-8, str2);
            n.h("AppLovinAdService", str2);
            c(appLovinError2, appLovinAdLoadListener);
            return;
        }
        e4.c(jSONObjectA, this.a);
        e4.b(jSONObjectA, this.a);
        e4.a(jSONObjectA, this.a);
        u0.b(this.a);
        if (JsonUtils.getJSONArray(jSONObjectA, "ads", new JSONArray()).length() <= 0) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "No ad returned from the server for token: " + wVar);
            }
            c(AppLovinError.NO_FILL, appLovinAdLoadListener);
            return;
        }
        if (n.a()) {
            this.b.a("AppLovinAdService", "Rendering ad for token: " + wVar);
        }
        final h0 h0VarA = yp.a(jSONObjectA, this.a);
        MaxAdFormat maxAdFormatD = h0VarA.d();
        if (((Boolean) this.a.a(sj.Y0)).booleanValue() && maxAdFormatD != null && maxAdFormatD.isFullscreenAd()) {
            this.a.g().a(h0VarA, new com.applovin.impl.sdk.d.a() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda5
                @Override // com.applovin.impl.sdk.d.a
                public final void a(com.applovin.impl.sdk.ad.b bVar) {
                    this.f$0.a(appLovinAdLoadListener, jSONObjectA, h0VarA, bVar);
                }
            });
        } else {
            a(new um(jSONObjectA, h0VarA, appLovinAdLoadListener, this.a));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("No zone id specified");
        }
        if (n.a()) {
            this.b.a("AppLovinAdService", "Loading next ad of zone {" + str + "}");
        }
        a(h0.a(str), appLovinAdLoadListener);
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        }
        a(h0.b(str), appLovinAdLoadListener);
    }

    public void maybeFireAppKilledWhilePlayingAdPostback() {
        Long l;
        if (((Boolean) this.a.a(sj.g2)).booleanValue() && (l = (Long) this.a.b(uj.M)) != null && System.currentTimeMillis() - l.longValue() <= ((Long) this.a.a(sj.k2)).longValue()) {
            if (((Boolean) this.a.a(sj.j2)).booleanValue() || b()) {
                a();
            }
        }
    }

    public void maybeSubmitPersistentPostbacks(List<s> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<s> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public void setCustomPostBody(JSONObject jSONObject) {
        this.f.set(jSONObject);
    }

    public String toString() {
        return "AppLovinAdService{adLoadStates=" + this.c + '}';
    }

    public void trackAndLaunchClick(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Uri uri, MotionEvent motionEvent, boolean z, Bundle bundle) {
        if (bVar == null) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "Unable to track ad view click. No ad specified");
                return;
            }
            return;
        }
        if (bundle == null || !Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Tracking click on an ad...");
            }
            boolean z2 = bundle != null && Boolean.parseBoolean(bundle.getString("install_click"));
            maybeSubmitPersistentPostbacks(bVar.b(motionEvent, z, z2));
            if (this.a.Y() != null) {
                this.a.Y().b(bVar.d(motionEvent, false, z2), motionEvent);
            }
        } else if (n.a()) {
            this.b.a("AppLovinAdService", "Skipping tracking for click on an ad...");
        }
        if (appLovinAdView == null || uri == null) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
            }
        } else if (bVar.isDirectDownloadEnabled()) {
            this.a.n().startDirectInstallOrDownloadProcess(bVar, bundle, new b(aVar, bVar, appLovinAdView, uri));
        } else {
            a(bVar, appLovinAdView, aVar, uri);
        }
    }

    public void trackCustomTabsNavigationAborted(com.applovin.impl.sdk.ad.b bVar) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation aborted on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.t());
    }

    public void trackCustomTabsNavigationFailed(com.applovin.impl.sdk.ad.b bVar) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation failed on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.u());
    }

    public void trackCustomTabsNavigationFinished(com.applovin.impl.sdk.ad.b bVar) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation finished on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.v());
    }

    public void trackCustomTabsNavigationStarted(com.applovin.impl.sdk.ad.b bVar) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation started on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.w());
    }

    public void trackCustomTabsTabHidden(com.applovin.impl.sdk.ad.b bVar) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs tab hidden on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.y());
    }

    public void trackCustomTabsTabShown(com.applovin.impl.sdk.ad.b bVar) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs tab shown on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.z());
    }

    public void trackFullScreenAdClosed(com.applovin.impl.sdk.ad.b bVar, long j, List<Long> list, long j2, boolean z, int i) {
        if (bVar == null) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "Unable to track ad closed. No ad specified.");
                return;
            }
            return;
        }
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking ad closed...");
        }
        List<s> listD = bVar.d();
        if (listD == null || listD.isEmpty()) {
            if (n.a()) {
                this.b.k("AppLovinAdService", "Unable to track ad closed for AD #" + bVar.getAdIdNumber() + ". Missing ad close tracking URL." + bVar.getAdIdNumber());
                return;
            }
            return;
        }
        for (s sVar : listD) {
            String strA = a(sVar.c(), j, j2, list, z, i);
            String strA2 = a(sVar.a(), j, j2, list, z, i);
            if (StringUtils.isValidString(strA)) {
                a(new s(strA, strA2));
            } else if (n.a()) {
                this.b.b("AppLovinAdService", "Failed to parse url: " + sVar.c());
            }
        }
    }

    public void trackImpression(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "Unable to track impression click. No ad specified");
            }
        } else {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Tracking impression on ad...");
            }
            maybeSubmitPersistentPostbacks(bVar.F());
            if (this.a.Y() != null) {
                this.a.Y().b(bVar.getPrivacySandboxImpressionAttributionUrls());
            }
        }
    }

    public void trackVideoEnd(com.applovin.impl.sdk.ad.b bVar, long j, int i, boolean z) {
        if (bVar == null) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "Unable to track video end. No ad specified");
                return;
            }
            return;
        }
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking video end on ad...");
        }
        List<s> listP0 = bVar.p0();
        if (listP0 == null || listP0.isEmpty()) {
            if (n.a()) {
                this.b.k("AppLovinAdService", "Unable to submit persistent postback for AD #" + bVar.getAdIdNumber() + ". Missing video end tracking URL.");
                return;
            }
            return;
        }
        String string = Long.toString(System.currentTimeMillis());
        for (s sVar : listP0) {
            if (StringUtils.isValidString(sVar.c())) {
                String strA = a(sVar.c(), j, i, string, z);
                String strA2 = a(sVar.a(), j, i, string, z);
                if (strA != null) {
                    a(new s(strA, strA2));
                } else if (n.a()) {
                    this.b.b("AppLovinAdService", "Failed to parse url: " + sVar.c());
                }
            } else if (n.a()) {
                this.b.k("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinError appLovinError, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(appLovinError, appLovinAdLoadListener);
            }
        });
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        }
        a(h0.a(appLovinAdSize, AppLovinAdType.REGULAR, str), appLovinAdLoadListener);
    }

    private Uri b(Uri uri, String str) {
        try {
            return Uri.parse(uri.getQueryParameter(str));
        } catch (Throwable th) {
            this.a.I();
            if (n.a()) {
                this.a.I().k("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
            }
            this.a.D().a("AppLovinAdService", "buildDeepLinkPlusUrl", th);
            return null;
        }
    }

    private static class d {
        final Object a;
        boolean b;
        boolean c;
        final Collection d;

        private d() {
            this.a = new Object();
            this.d = new HashSet();
        }

        public String toString() {
            return "AdLoadState{, isWaitingForAd=" + this.b + ", isReloadingExpiredAd=" + this.c + ", pendingAdListeners=" + this.d + '}';
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private boolean b() {
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        Context contextM = j.m();
        ApplicationExitInfo applicationExitInfo = ((ActivityManager) contextM.getSystemService("activity")).getHistoricalProcessExitReasons(contextM.getPackageName(), 0, 1).get(0);
        return applicationExitInfo.getReason() == 10 || applicationExitInfo.getReason() == 11;
    }

    public AppLovinAd dequeueAd(h0 h0Var) {
        AppLovinAdImpl appLovinAdImplA = this.a.h().a(h0Var);
        if (n.a()) {
            this.b.a("AppLovinAdService", "Dequeued ad: " + appLovinAdImplA + " for zone: " + h0Var + "...");
        }
        return appLovinAdImplA;
    }

    public void trackAndLaunchVideoClick(com.applovin.impl.sdk.ad.b bVar, Uri uri, MotionEvent motionEvent, Bundle bundle, o9 o9Var, Context context) {
        if (bVar == null) {
            if (n.a()) {
                this.b.b("AppLovinAdService", "Unable to track video click. No ad specified");
                return;
            }
            return;
        }
        if (bundle != null && Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Skipping tracking for VIDEO click on an ad...");
            }
        } else {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Tracking VIDEO click on an ad...");
            }
            boolean z = bundle != null && Boolean.parseBoolean(bundle.getString("install_click"));
            maybeSubmitPersistentPostbacks(bVar.a(motionEvent, z));
            if (this.a.Y() != null) {
                this.a.Y().b(bVar.d(motionEvent, true, z), motionEvent);
            }
        }
        if (bVar.isDirectDownloadEnabled()) {
            this.a.n().startDirectInstallOrDownloadProcess(bVar, bundle, new a(bVar, uri, o9Var, context));
        } else {
            a(bVar, uri, o9Var, context);
        }
    }

    class a implements ArrayService.DirectDownloadListener {
        final /* synthetic */ com.applovin.impl.sdk.ad.b a;
        final /* synthetic */ Uri b;
        final /* synthetic */ o9 c;
        final /* synthetic */ Context d;

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onAppDetailsDismissed() {
            AppLovinAdServiceImpl.this.a.e0().resumeForClick();
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onAppDetailsDisplayed() {
            AppLovinAdServiceImpl.this.a.e0().pauseForClick();
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            n unused = AppLovinAdServiceImpl.this.b;
            if (n.a()) {
                AppLovinAdServiceImpl.this.b.a("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
            }
            AppLovinAdServiceImpl.this.a(this.a, this.b, this.c, this.d);
        }

        a(com.applovin.impl.sdk.ad.b bVar, Uri uri, o9 o9Var, Context context) {
            this.a = bVar;
            this.b = uri;
            this.c = o9Var;
            this.d = context;
        }
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0035a
    public void onAdExpired(i8 i8Var) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) i8Var;
        h0 adZone = appLovinAdImpl.getAdZone();
        if (n.a()) {
            this.b.k("AppLovinAdService", "Ad expired for zone: " + adZone);
        }
        this.a.h().b(appLovinAdImpl);
        if (this.a.y0() || !((Boolean) this.a.a(sj.e1)).booleanValue()) {
            return;
        }
        d dVarA = a(adZone);
        synchronized (dVarA.a) {
            if (!dVarA.b) {
                this.a.I();
                if (n.a()) {
                    this.a.I().a("AppLovinAdService", "Reloading ad after expiration for zone {" + adZone + "}...");
                }
                dVarA.b = true;
                dVarA.c = true;
                a(adZone, new c(this, dVarA, null));
            } else if (n.a()) {
                this.b.a("AppLovinAdService", "Cancelled expired ad reload. Already waiting on an ad load...");
            }
        }
    }

    private void a(final h0 h0Var, final c cVar) {
        AppLovinAdImpl appLovinAdImplE = this.a.h().e(h0Var);
        if (appLovinAdImplE != null && !appLovinAdImplE.isExpired()) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Using pre-loaded ad: " + appLovinAdImplE + " for " + h0Var);
            }
            cVar.adReceived(appLovinAdImplE);
            return;
        }
        MaxAdFormat maxAdFormatD = h0Var.d();
        if (((Boolean) this.a.a(sj.Y0)).booleanValue() && maxAdFormatD != null && maxAdFormatD.isFullscreenAd()) {
            this.a.g().a(h0Var, new com.applovin.impl.sdk.d.a() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda0
                @Override // com.applovin.impl.sdk.d.a
                public final void a(com.applovin.impl.sdk.ad.b bVar) {
                    this.f$0.a(cVar, h0Var, bVar);
                }
            });
        } else {
            a(new om(h0Var, cVar, this.a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final c cVar, h0 h0Var, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    cVar.adReceived(bVar);
                }
            });
        } else {
            a(new om(h0Var, cVar, this.a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(o9 o9Var) {
        if (o9Var != null) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Dismissing ad after forwarding click");
            }
            o9Var.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final AppLovinAdLoadListener appLovinAdLoadListener, JSONObject jSONObject, h0 h0Var, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    appLovinAdLoadListener.adReceived(bVar);
                }
            });
        } else {
            a(new um(jSONObject, h0Var, appLovinAdLoadListener, this.a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, Uri uri, o9 o9Var, Context context) {
        if (a(uri.getScheme())) {
            a(uri, bVar, (com.applovin.impl.adview.a) null, o9Var);
        } else if (tp.b(uri)) {
            a(uri, bVar, (AppLovinAdView) null, (com.applovin.impl.adview.a) null, context, this.a);
        } else {
            tp.a(uri, context, this.a);
        }
    }

    private void a(h0 h0Var, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (h0Var == null) {
            throw new IllegalArgumentException("No zone specified");
        }
        if (appLovinAdLoadListener != null) {
            this.a.I();
            if (n.a()) {
                this.a.I().a("AppLovinAdService", "Loading next ad of zone {" + h0Var + "}...");
            }
            d dVarA = a(h0Var);
            synchronized (dVarA.a) {
                dVarA.d.add(appLovinAdLoadListener);
                if (!dVarA.b) {
                    dVarA.b = true;
                    a(h0Var, new c(this, dVarA, null));
                } else if (n.a()) {
                    this.b.a("AppLovinAdService", "Already waiting on an ad load...");
                }
            }
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    private void a(yl ylVar) {
        if (!this.a.s0()) {
            n.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.a.c();
        this.a.i0().a(ylVar, tm.b.CORE);
    }

    private void a(s sVar) {
        if (StringUtils.isValidString(sVar.c())) {
            this.a.W().e(com.applovin.impl.sdk.network.d.b().d(sVar.c()).a(StringUtils.isValidString(sVar.a()) ? sVar.a() : null).a(sVar.b()).a(false).b(sVar.d()).a());
        } else if (n.a()) {
            this.b.k("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
        }
    }

    private d a(h0 h0Var) {
        d dVar;
        synchronized (this.d) {
            dVar = (d) this.c.get(h0Var);
            if (dVar == null) {
                dVar = new d(null);
                this.c.put(h0Var, dVar);
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AppLovinAd appLovinAd, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(appLovinAdLoadListener, appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAdLoadListener appLovinAdLoadListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdLoadListener.adReceived(appLovinAd);
        } catch (Throwable th) {
            n.c("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            this.a.D().a("AppLovinAdService", "notifyAdLoadedCallback", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        try {
            c(appLovinError, appLovinAdLoadListener);
        } catch (Throwable th) {
            n.c("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            this.a.D().a("AppLovinAdService", "notifyAdLoadFailedCallback".concat(appLovinAdLoadListener instanceof qb ? "V2" : ""), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Uri uri) {
        Context context;
        if (!((Boolean) this.a.a(sj.B)).booleanValue() || (context = zq.a(appLovinAdView, this.a)) == null) {
            context = appLovinAdView.getContext();
        }
        Context context2 = context;
        if (a(uri.getScheme())) {
            a(uri, bVar, aVar, (o9) null);
        } else if (tp.b(uri)) {
            a(uri, bVar, appLovinAdView, aVar, context2, this.a);
        } else {
            a(uri, bVar, appLovinAdView, aVar, context2);
        }
    }

    private String a(String str, long j, int i, String str2, boolean z) {
        try {
            if (!StringUtils.isValidString(str)) {
                return null;
            }
            if (i < 0 || i > 100) {
                i = 0;
            }
            return Uri.parse(str).buildUpon().appendQueryParameter("et_s", Long.toString(j)).appendQueryParameter("pv", Integer.toString(i)).appendQueryParameter("vid_ts", str2).appendQueryParameter("uvs", Boolean.toString(z)).build().toString();
        } catch (Throwable th) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Unknown error parsing the video end url: " + str, th);
            }
            this.a.D().a("AppLovinAdService", "buildVideoEndUrl", th);
            return null;
        }
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context) {
        if (tp.a(uri, context, this.a)) {
            fc.b(aVar.e(), bVar, appLovinAdView);
        }
        aVar.x();
    }

    private boolean a(String str) {
        String str2 = this.a.f0().getExtraParameters().get("forwarding_click_scheme");
        return StringUtils.isValidString(str2) && StringUtils.isValidString(str) && str.equalsIgnoreCase(str2);
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.adview.a aVar, final o9 o9Var) {
        if (n.a()) {
            this.b.a("AppLovinAdService", "Forwarding click " + uri);
        }
        bVar.setMaxAdValue("forwarding_clicked_url", uri.toString());
        String str = this.a.f0().getExtraParameters().get("close_ad_on_forwarding_click_scheme");
        if (StringUtils.isValidString(str) && Boolean.parseBoolean(str)) {
            if (o9Var != null) {
                AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.AppLovinAdServiceImpl$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(o9Var);
                    }
                });
            } else {
                if (aVar == null || yp.a(bVar.getSize())) {
                    return;
                }
                if (n.a()) {
                    this.b.a("AppLovinAdService", "Closing ad after forwarding click");
                }
                aVar.z();
            }
        }
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context, j jVar) {
        if (uri != null && StringUtils.isValidString(uri.getQuery())) {
            Uri uriB = b(uri, "primaryUrl");
            List listA = a(uri, "primaryTrackingUrl");
            Uri uriB2 = b(uri, "fallbackUrl");
            List listA2 = a(uri, "fallbackTrackingUrl");
            if (uriB == null && uriB2 == null) {
                jVar.I();
                if (n.a()) {
                    jVar.I().b("AppLovinAdService", "Failed to parse both primary and backup URLs for Deep Link+ command");
                    return;
                }
                return;
            }
            if (!a(uriB, "primary", listA, bVar, appLovinAdView, aVar, context, jVar)) {
                a(uriB2, "backup", listA2, bVar, appLovinAdView, aVar, context, jVar);
            }
            if (aVar != null) {
                aVar.x();
                return;
            }
            return;
        }
        jVar.I();
        if (n.a()) {
            jVar.I().b("AppLovinAdService", "Failed to execute Deep Link+ command - no query parameters found");
        }
    }

    private boolean a(Uri uri, String str, List list, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context, j jVar) {
        jVar.I();
        if (n.a()) {
            jVar.I().a("AppLovinAdService", "Opening " + str + " URL: " + uri);
        }
        boolean zA = tp.a(uri, context, jVar);
        if (zA) {
            jVar.I();
            if (n.a()) {
                jVar.I().a("AppLovinAdService", "URL opened successfully, dispatching tracking URLs: " + list);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jVar.X().dispatchPostbackAsync(((Uri) it.next()).toString(), null);
            }
            if (aVar != null) {
                fc.b(aVar.e(), bVar, appLovinAdView);
            }
        } else {
            jVar.I();
            if (n.a()) {
                jVar.I().b("AppLovinAdService", "URL failed to open");
            }
        }
        return zA;
    }

    private List a(Uri uri, String str) {
        List<String> queryParameters = uri.getQueryParameters(str);
        ArrayList arrayList = new ArrayList(queryParameters.size());
        Iterator<String> it = queryParameters.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(Uri.parse(it.next()));
            } catch (Throwable th) {
                this.a.I();
                if (n.a()) {
                    this.a.I().k("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
                }
                this.a.D().a("AppLovinAdService", "buildDeepLinkPlusUrlList", th);
            }
        }
        return arrayList;
    }

    private String a(String str, long j, long j2, List list, boolean z, int i) {
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        Uri.Builder builderAppendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j)).appendQueryParameter("vs_ms", Long.toString(j2));
        if (list != null && list.size() > 0) {
            builderAppendQueryParameter.appendQueryParameter("ec_ms", list.toString());
        }
        if (i != h.i) {
            builderAppendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z));
            builderAppendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(h.a(i)));
        }
        return builderAppendQueryParameter.build().toString();
    }

    private void a() {
        Map<String, String> mapTryToStringMap;
        if (n.a()) {
            this.b.a("AppLovinAdService", "Tracking app killed during ad from previous run.");
        }
        String str = (String) this.a.b(uj.P);
        if (TextUtils.isEmpty(str)) {
            if (n.a()) {
                this.b.a("AppLovinAdService", "Couldn't get last ad data. Tracking event with empty data.");
            }
            mapTryToStringMap = null;
        } else {
            mapTryToStringMap = JsonUtils.tryToStringMap(JsonUtils.jsonObjectFromJsonString(str, new JSONObject()));
        }
        this.a.D().a(ka.N, (Map) mapTryToStringMap);
        String str2 = (String) this.a.b(uj.O);
        if (str2 != null) {
            JSONObject jSONObjectJsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(str2, null);
            String string = JsonUtils.getString(jSONObjectJsonObjectFromJsonString, "app_killed_postback_url", null);
            String string2 = JsonUtils.getString(jSONObjectJsonObjectFromJsonString, "app_killed_postback_backup_url", null);
            Long l = (Long) this.a.b(uj.N);
            if (l != null) {
                string = StringUtils.appendQueryParameter(string, "imp_duration_ms", String.valueOf(l));
                string2 = StringUtils.appendQueryParameter(string2, "imp_duration_ms", String.valueOf(l));
            }
            a(new s(string, string2));
            return;
        }
        if (n.a()) {
            this.b.k("AppLovinAdService", "Unable to track app killed during ad from previous run. Missing app killed tracking URLs.");
        }
    }
}
