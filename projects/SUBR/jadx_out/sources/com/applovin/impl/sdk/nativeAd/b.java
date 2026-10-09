package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.aq;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.tm;
import com.applovin.impl.yl;
import com.applovin.impl.yp;
import com.applovin.impl.zm;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.unity3d.services.core.device.MimeTypes;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.y8;

/* JADX INFO: loaded from: classes.dex */
public class b extends yl implements a.InterfaceC0038a, AppLovinAdLoadListener {
    private final List A;
    private final List B;
    private final List C;
    private final JSONObject h;
    private final JSONObject i;
    private final AppLovinNativeAdLoadListener j;
    private String k;
    private String l;
    private String m;
    private Double n;
    private String o;
    private Uri p;
    private Uri q;
    private aq r;
    private Uri s;
    private Uri t;
    private Uri u;
    private Uri v;
    private final List w;
    private final List x;
    private final List y;
    private final List z;

    public b(JSONObject jSONObject, JSONObject jSONObject2, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, j jVar) {
        super("TaskRenderNativeAd", jVar);
        this.k = "";
        this.l = "";
        this.m = "";
        this.n = null;
        this.o = "";
        this.p = null;
        this.q = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.z = new ArrayList();
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.h = jSONObject;
        this.i = jSONObject2;
        this.j = appLovinNativeAdLoadListener;
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String string = JsonUtils.getString(jSONObject, "url", null);
        if (StringUtils.isValidString(string)) {
            this.u = Uri.parse(string);
            if (n.a()) {
                this.c.a(this.b, "Processed click destination URL: " + this.u);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "fallback", null);
        if (StringUtils.isValidString(string2)) {
            this.v = Uri.parse(string2);
            if (n.a()) {
                this.c.a(this.b, "Processed click destination backup URL: " + this.v);
            }
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "clicktrackers", null);
        if (jSONArray != null) {
            if (!JsonUtils.getBoolean(this.h, "use_requests_for_native_ad_click_postbacks", (Boolean) this.a.a(sj.R2)).booleanValue()) {
                try {
                    this.w.addAll(JsonUtils.toList(jSONArray));
                    if (n.a()) {
                        this.c.a(this.b, "Processed click tracking URLs: " + this.w);
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    if (n.a()) {
                        this.c.a(this.b, "Failed to render click tracking URLs", th);
                        return;
                    }
                    return;
                }
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray, i, null);
                if (objectAtIndex instanceof String) {
                    String str = (String) objectAtIndex;
                    if (!TextUtils.isEmpty(str)) {
                        this.y.add(new e.a(this.a).b(str).b(false).a(false).h(f()).a());
                    }
                }
            }
            if (n.a()) {
                this.c.a(this.b, "Processed click tracking requests: " + this.y);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        if (n.a()) {
            this.c.a(this.b, "Preparing native ad view components...");
        }
        try {
            appLovinNativeAdImpl.setUpNativeAdViewComponents();
            if (n.a()) {
                this.c.a(this.b, "Successfully prepared native ad view components");
            }
            appLovinNativeAdImpl.getAdEventTracker().h();
            this.j.onNativeAdLoaded(appLovinNativeAdImpl);
        } catch (Throwable th) {
            if (n.a()) {
                this.c.a(this.b, "Failed to prepare native ad view components", th);
            }
            b(th.getMessage());
            this.a.D().a(this.b, "prepareNativeComponents", th);
        }
    }

    private void c(final AppLovinNativeAdImpl appLovinNativeAdImpl) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.b$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(appLovinNativeAdImpl);
            }
        });
    }

    private void e() {
        AppLovinNativeAdImpl appLovinNativeAdImplBuild = new AppLovinNativeAdImpl.Builder(JsonUtils.shallowCopy(this.h), JsonUtils.shallowCopy(this.i), this.a).setTitle(this.k).setAdvertiser(this.l).setBody(this.m).setCallToAction(this.o).setStarRating(this.n).setIconUri(this.p).setMainImageUri(this.q).setPrivacyIconUri(this.s).setVastAd(this.r).setPrivacyDestinationUri(this.t).setClickDestinationUri(this.u).setClickDestinationBackupUri(this.v).setClickTrackingUrls(this.w).setJsTrackers(this.x).setClickTrackingRequests(this.y).setImpressionRequests(this.z).setViewableMRC50Requests(this.A).setViewableMRC100Requests(this.B).setViewableVideo50Requests(this.C).build();
        appLovinNativeAdImplBuild.getAdEventTracker().e();
        if (n.a()) {
            this.c.a(this.b, "Starting cache task for type: " + appLovinNativeAdImplBuild.getType() + "...");
        }
        this.a.i0().a((yl) new a(appLovinNativeAdImplBuild, this.a, this), tm.b.CORE);
    }

    private boolean f() {
        return JsonUtils.getBoolean(this.h, "fire_native_ad_postbacks_from_webview", (Boolean) this.a.a(sj.Q2)).booleanValue();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        if (n.a()) {
            this.c.a(this.b, "VAST ad rendered successfully");
        }
        this.r = (aq) appLovinAd;
        e();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        if (n.a()) {
            this.c.b(this.b, "VAST ad failed to render");
        }
        e();
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.lang.String, org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.String, org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r3v63 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // java.lang.Runnable
    public void run() {
        ?? r3 = 0;
        String string = JsonUtils.getString(this.h, "privacy_icon_url", null);
        if (URLUtil.isValidUrl(string)) {
            this.s = Uri.parse(string);
        }
        String string2 = JsonUtils.getString(this.h, "privacy_url", null);
        if (URLUtil.isValidUrl(string2)) {
            this.t = Uri.parse(string2);
        }
        JSONObject jSONObject = JsonUtils.getJSONObject(this.h, "ortb_response", (JSONObject) null);
        if (jSONObject == null || jSONObject.length() == 0) {
            if (n.a()) {
                this.c.b(this.b, "No oRtb response provided: " + this.h);
            }
            b("No oRtb response provided");
            return;
        }
        String string3 = JsonUtils.getString(jSONObject, "version", null);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "value", (JSONObject) null);
        if (n.a()) {
            this.c.a(this.b, "Rendering native ad for oRTB version: " + string3);
        }
        JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "native", jSONObject2);
        a(JsonUtils.getJSONObject(jSONObject3, "link", (JSONObject) null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject3, "assets", null);
        if (jSONArray == null || jSONArray.length() == 0) {
            if (n.a()) {
                this.c.b(this.b, "Unable to retrieve assets - failing ad load: " + this.h);
            }
            b("Unable to retrieve assets");
            return;
        }
        String str = "";
        int i = 0;
        while (i < jSONArray.length()) {
            JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) r3);
            if (jSONObject4.has("title")) {
                this.k = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "title", (JSONObject) r3), y8.h.K0, r3);
                if (n.a()) {
                    this.c.a(this.b, "Processed title: " + this.k);
                }
            } else if (jSONObject4.has("link")) {
                a(JsonUtils.getJSONObject(jSONObject4, "link", (JSONObject) r3));
            } else if (jSONObject4.has("img")) {
                int i2 = JsonUtils.getInt(jSONObject4, "id", -1);
                JSONObject jSONObject5 = JsonUtils.getJSONObject(jSONObject4, "img", (JSONObject) r3);
                int i3 = JsonUtils.getInt(jSONObject5, "type", -1);
                String string4 = JsonUtils.getString(jSONObject5, "url", r3);
                if (i3 == 1 || 3 == i2) {
                    this.p = Uri.parse(string4);
                    if (n.a()) {
                        this.c.a(this.b, "Processed icon URL: " + this.p);
                    }
                } else if (i3 == 3 || 2 == i2) {
                    this.q = Uri.parse(string4);
                    if (n.a()) {
                        this.c.a(this.b, "Processed main image URL: " + this.q);
                    }
                } else {
                    if (n.a()) {
                        this.c.k(this.b, "Unrecognized image: " + jSONObject4);
                    }
                    int i4 = JsonUtils.getInt(jSONObject5, "w", -1);
                    int i5 = JsonUtils.getInt(jSONObject5, "h", -1);
                    if (i4 <= 0 || i5 <= 0) {
                        if (n.a()) {
                            this.c.k(this.b, "Skipping...");
                        }
                    } else if (i4 / i5 > 1.0d) {
                        if (n.a()) {
                            this.c.a(this.b, "Inferring main image from " + i4 + "x" + i5 + "...");
                        }
                        this.q = Uri.parse(string4);
                    } else {
                        if (n.a()) {
                            this.c.a(this.b, "Inferring icon image from " + i4 + "x" + i5 + "...");
                        }
                        this.p = Uri.parse(string4);
                    }
                }
            } else if (jSONObject4.has(MimeTypes.BASE_TYPE_VIDEO)) {
                String string5 = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, MimeTypes.BASE_TYPE_VIDEO, (JSONObject) null), "vasttag", null);
                if (StringUtils.isValidString(string5)) {
                    if (n.a()) {
                        this.c.a(this.b, "Processed VAST video");
                    }
                } else if (n.a()) {
                    this.c.k(this.b, "Ignoring invalid \"vasttag\" for video: " + jSONObject4);
                }
                str = string5;
            } else if (jSONObject4.has("data")) {
                int i6 = JsonUtils.getInt(jSONObject4, "id", -1);
                JSONObject jSONObject6 = JsonUtils.getJSONObject(jSONObject4, "data", (JSONObject) null);
                int i7 = JsonUtils.getInt(jSONObject6, "type", -1);
                String string6 = JsonUtils.getString(jSONObject6, "value", null);
                if (i7 == 1 || i6 == 8) {
                    this.l = string6;
                    if (n.a()) {
                        this.c.a(this.b, "Processed advertiser: " + this.l);
                    }
                } else if (i7 == 2 || i6 == 4) {
                    this.m = string6;
                    if (n.a()) {
                        this.c.a(this.b, "Processed body: " + this.m);
                    }
                } else if (i7 == 12 || i6 == 5) {
                    this.o = string6;
                    if (n.a()) {
                        this.c.a(this.b, "Processed cta: " + this.o);
                    }
                } else if (i7 == 3 || i6 == 6) {
                    double dA = yp.a(string6, -1.0d);
                    if (dA != -1.0d) {
                        this.n = Double.valueOf(dA);
                        if (n.a()) {
                            this.c.a(this.b, "Processed star rating: " + this.n);
                        }
                    } else if (n.a()) {
                        this.c.a(this.b, "Received invalid star rating: " + string6);
                    }
                } else if (n.a()) {
                    this.c.k(this.b, "Skipping unsupported data: " + jSONObject4);
                }
            } else if (n.a()) {
                this.c.b(this.b, "Unsupported asset object: " + jSONObject4);
            }
            i++;
            r3 = 0;
        }
        String string7 = JsonUtils.getString(jSONObject3, "jstracker", null);
        if (StringUtils.isValidString(string7)) {
            this.x.add(string7);
            if (n.a()) {
                this.c.a(this.b, "Processed jstracker: " + string7);
            }
        }
        Object obj = null;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject3, "imptrackers", null);
        if (jSONArray2 != null) {
            int i8 = 0;
            while (i8 < jSONArray2.length()) {
                Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray2, i8, obj);
                if (objectAtIndex instanceof String) {
                    String str2 = (String) objectAtIndex;
                    if (!TextUtils.isEmpty(str2)) {
                        this.z.add(new e.a(this.a).b(str2).b(false).a(false).h(f()).a());
                        if (n.a()) {
                            this.c.a(this.b, "Processed imptracker URL: " + str2);
                        }
                    }
                }
                i8++;
                obj = null;
            }
        }
        ?? r4 = 0;
        JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject3, "eventtrackers", null);
        if (jSONArray3 != null) {
            int i9 = 0;
            while (i9 < jSONArray3.length()) {
                JSONObject jSONObject7 = JsonUtils.getJSONObject(jSONArray3, i9, (JSONObject) r4);
                int i10 = JsonUtils.getInt(jSONObject7, NotificationCompat.CATEGORY_EVENT, -1);
                int i11 = JsonUtils.getInt(jSONObject7, "method", -1);
                String string8 = JsonUtils.getString(jSONObject7, "url", r4);
                if (!TextUtils.isEmpty(string8)) {
                    if (i11 == 1 || i11 == 2) {
                        if (i11 == 2 && string8.startsWith("<script")) {
                            this.x.add(string8);
                        } else {
                            e eVarA = new e.a(this.a).b(string8).b(false).a(false).h(f() || i11 == 2).a();
                            if (i10 == 1) {
                                this.z.add(eVarA);
                                if (n.a()) {
                                    this.c.a(this.b, "Processed impression URL: " + string8);
                                }
                            } else if (i10 == 2) {
                                this.A.add(eVarA);
                                if (n.a()) {
                                    this.c.a(this.b, "Processed viewable MRC50 URL: " + string8);
                                }
                            } else if (i10 == 3) {
                                this.B.add(eVarA);
                                if (n.a()) {
                                    this.c.a(this.b, "Processed viewable MRC100 URL: " + string8);
                                }
                            } else if (i10 == 4) {
                                this.C.add(eVarA);
                                if (n.a()) {
                                    this.c.a(this.b, "Processed viewable video 50 URL: " + string8);
                                }
                            } else if (i10 == 555) {
                                if (n.a()) {
                                    this.c.a(this.b, "Ignoring processing of OMID URL: " + string8);
                                }
                            } else if (n.a()) {
                                this.c.b(this.b, "Unsupported event tracker: " + jSONObject7);
                            }
                        }
                    } else if (n.a()) {
                        this.c.b(this.b, "Unsupported method for event tracker: " + jSONObject7);
                    }
                }
                i9++;
                r4 = 0;
            }
        }
        if (!StringUtils.isValidString(str)) {
            e();
            return;
        }
        if (n.a()) {
            this.c.a(this.b, "Processing VAST video...");
        }
        this.a.i0().a(zm.a(str, JsonUtils.shallowCopy(this.h), JsonUtils.shallowCopy(this.i), this, this.a));
    }

    private void b(String str) {
        this.j.onNativeAdLoadFailed(new AppLovinError(-6, str));
    }

    @Override // com.applovin.impl.sdk.nativeAd.a.InterfaceC0038a
    public void a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        if (n.a()) {
            this.c.a(this.b, "Successfully cached and loaded ad");
        }
        c(appLovinNativeAdImpl);
    }
}
