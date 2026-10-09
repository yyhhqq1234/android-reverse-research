package com.applovin.impl.sdk.ad;

import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import androidx.arch.core.util.Function;
import androidx.core.util.Consumer;
import com.applovin.impl.adview.m;
import com.applovin.impl.d5;
import com.applovin.impl.eh;
import com.applovin.impl.hh;
import com.applovin.impl.lg;
import com.applovin.impl.qq;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sj;
import com.applovin.impl.sr;
import com.applovin.impl.tl;
import com.applovin.impl.yp;
import com.applovin.impl.z3;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.common.net.HttpHeaders;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.unity3d.services.UnityAdsConstants;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends AppLovinAdImpl implements hh {
    private final List f;
    private final AtomicBoolean g;
    private final AtomicBoolean h;
    private final AtomicReference i;
    private final Bundle j;
    private d k;

    /* JADX INFO: renamed from: com.applovin.impl.sdk.ad.b$b, reason: collision with other inner class name */
    public enum EnumC0036b {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    public enum c {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    public class d {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        private d() {
            this.a = AppLovinSdkUtils.dpToPx(j.m(), b.this.m());
            this.b = AppLovinSdkUtils.dpToPx(j.m(), b.this.o());
            this.c = AppLovinSdkUtils.dpToPx(j.m(), b.this.k());
            this.d = AppLovinSdkUtils.dpToPx(j.m(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(sj.q1)).intValue());
            this.e = AppLovinSdkUtils.dpToPx(j.m(), ((Integer) ((AppLovinAdBase) b.this).sdk.a(sj.p1)).intValue());
        }
    }

    public enum e {
        RESIZE_ASPECT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public b(JSONObject jSONObject, JSONObject jSONObject2, j jVar) {
        super(jSONObject, jSONObject2, jVar);
        this.f = CollectionUtils.synchronizedList();
        this.g = new AtomicBoolean();
        this.h = new AtomicBoolean();
        this.i = new AtomicReference();
        this.j = new Bundle();
    }

    private List K() {
        return getIntegerListFromAdObject("multi_close_style", null);
    }

    private String q0() {
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject != null) {
            return stringFromAdObject.replace("{CLCODE}", getClCode());
        }
        return null;
    }

    public List A() {
        return getStringListFromAdObject("custom_tabs_warmup_urls", Collections.emptyList());
    }

    public boolean A0() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.a(sj.S1));
    }

    public boolean B() {
        return getBooleanFromAdObject("dismiss_on_skip", Boolean.FALSE);
    }

    public boolean B0() {
        return getBooleanFromAdObject("custom_tabs_client_warmup_enabled", Boolean.FALSE);
    }

    public int C() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    public boolean C0() {
        return getBooleanFromAdObject("custom_tabs_enabled", Boolean.FALSE);
    }

    public int D() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    public boolean D0() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", Boolean.FALSE);
    }

    public int E() {
        return yp.a(getIntFromAdObject("graphic_completion_percent", -1), 90);
    }

    public boolean E0() {
        return getBooleanFromAdObject("gase", Boolean.FALSE);
    }

    public List F() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda13
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.l((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("imp_urls", new JSONObject()), getClCode(), null, null, R(), V0(), this.sdk);
        }
        return listA;
    }

    public boolean F0() {
        return getBooleanFromAdObject("lock_current_orientation", Boolean.FALSE);
    }

    public int G() {
        return getIntFromAdObject("mdafra", ((Integer) this.sdk.a(sj.U0)).intValue());
    }

    public abstract boolean G0();

    public boolean H() {
        return getBooleanFromAdObject("playback_requires_user_action", Boolean.TRUE);
    }

    public AtomicBoolean H0() {
        return this.g;
    }

    public String I() {
        return getStringFromFullResponse("event_id", null);
    }

    public boolean I0() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.a(sj.f2));
    }

    public List J() {
        List listK = K();
        if (listK == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(listK.size());
        Iterator it = listK.iterator();
        while (it.hasNext()) {
            arrayList.add(a(((Integer) it.next()).intValue()));
        }
        return arrayList;
    }

    public boolean J0() {
        return getBooleanFromAdObject("video_clickable", Boolean.FALSE);
    }

    public abstract boolean K0();

    public List L() {
        return getIntegerListFromAdObject("multi_close_delay_graphic", null);
    }

    public boolean L0() {
        return getBooleanFromAdObject("web_contents_debugging_enabled", Boolean.valueOf(yp.h(j.m()) || yp.f(j.m()) || ((Boolean) this.sdk.a(sj.f6)).booleanValue()));
    }

    public Uri M() {
        String stringFromAdObject = getStringFromAdObject("mute_image", "https://assets.applovin.com/sound_off.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean M0() {
        return getBooleanFromAdObject("web_video", Boolean.FALSE);
    }

    public String N() {
        return getStringFromAdObject("nia_button_title", "");
    }

    public abstract void N0();

    public String O() {
        return getStringFromAdObject("nia_message", "");
    }

    public boolean O0() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", Boolean.FALSE);
    }

    public String P() {
        return getStringFromAdObject("nia_title", "");
    }

    public boolean P0() {
        return getBooleanFromAdObject("should_apply_web_view_settings_to_web_view_button", (Boolean) this.sdk.a(sj.j6));
    }

    public abstract String Q();

    public boolean Q0() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? ((Boolean) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda25
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.t((tl) obj);
            }
        })).booleanValue() : JsonUtils.getBoolean(getJsonObjectFromAdObject("video_button_properties", null), "should_cache_video_button_html_assets", Boolean.FALSE).booleanValue();
    }

    public Map R() {
        HashMap map = new HashMap();
        try {
            tl tlVar = this.synchronizedAdObject;
            map.putAll(tlVar != null ? (Map) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda15
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.m((tl) obj);
                }
            }) : JsonUtils.toStringMap(getJsonObjectFromAdObject("http_headers_for_postbacks", new JSONObject())));
        } catch (JSONException e2) {
            this.sdk.I();
            if (n.a()) {
                this.sdk.I().a("DirectAd", "Failed to retrieve http headers for postbacks", e2);
            }
        }
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", Boolean.FALSE)) {
            map.put(HttpHeaders.USER_AGENT, sr.a());
        }
        return map;
    }

    public boolean R0() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? ((Boolean) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda7
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.u((tl) obj);
            }
        })).booleanValue() : JsonUtils.getBoolean(getJsonObjectFromAdObject("video_button_properties", null), "should_cache_video_button_html_url_contents", Boolean.FALSE).booleanValue();
    }

    public EnumC0036b S() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            if ("dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0036b.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return EnumC0036b.DO_NOT_DISMISS;
            }
        }
        return EnumC0036b.UNSPECIFIED;
    }

    public boolean S0() {
        return this.h.get();
    }

    public int T() {
        return getColorFromAdObject("postitial_progress_bar_color", -922746881);
    }

    public boolean T0() {
        return getBooleanFromAdObject("custom_tabs_should_track_events", Boolean.FALSE);
    }

    public long U() {
        return getLongFromAdObject("postitial_progress_bar_total_ms", -1L);
    }

    public boolean U0() {
        return getBooleanFromAdObject("serfaad", (Boolean) this.sdk.a(sj.T0));
    }

    public long V() {
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject >= 0) {
            return TimeUnit.SECONDS.toMillis(longFromAdObject);
        }
        return -1L;
    }

    public boolean V0() {
        return getBooleanFromAdObject("fire_postbacks_from_webview", Boolean.FALSE);
    }

    public int W() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    public boolean W0() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", Boolean.FALSE);
    }

    public List X() {
        String stringFromAdObject = getStringFromAdObject("required_html_resources", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : Collections.emptyList();
    }

    public boolean X0() {
        return getBooleanFromAdObject("fmsstwvoar", Boolean.FALSE);
    }

    public List Y() {
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : this.sdk.c(sj.F0);
    }

    public boolean Y0() {
        return getBooleanFromAdObject("avoms", Boolean.FALSE);
    }

    public List Z() {
        return getStringListFromAdObject("rea", X());
    }

    public boolean Z0() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", Boolean.TRUE);
    }

    public String a0() {
        return getStringFromAdObject("text_rewarded_inter_alert_body", "");
    }

    public boolean a1() {
        return getBooleanFromAdObject("require_interaction_for_click", Boolean.FALSE);
    }

    public String b0() {
        return getStringFromAdObject("text_rewarded_inter_alert_ok_action", "OK!");
    }

    public boolean b1() {
        return getBooleanFromAdObject("sruifwvc", Boolean.FALSE);
    }

    public String c0() {
        return getStringFromAdObject("text_rewarded_inter_alert_title", "Watch a video to earn a reward!");
    }

    public boolean c1() {
        return getBooleanFromAdObject("respect_adview_fully_watched", Boolean.FALSE);
    }

    public com.applovin.impl.adview.e.a d0() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        return intFromAdObject == -1 ? n() : a(intFromAdObject);
    }

    public boolean d1() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? ((Boolean) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda3
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.v((tl) obj);
            }
        })).booleanValue() : JsonUtils.getBoolean(getJsonObjectFromAdObject("video_button_properties", null), "should_respect_whitelist_when_retrieving_video_button_html_from_url", Boolean.FALSE).booleanValue();
    }

    public List e0() {
        return getStringListFromAdObject("substrings_for_disabled_click_logic", Collections.emptyList());
    }

    public boolean e1() {
        return getBooleanFromAdObject("show_nia", Boolean.FALSE);
    }

    public c f0() {
        c cVar = c.DEFAULT;
        String upperCase = getStringFromAdObject("ad_target", cVar.toString()).toUpperCase(Locale.ENGLISH);
        if ("ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase)) {
            return c.ACTIVITY_PORTRAIT;
        }
        return "ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase) ? c.ACTIVITY_LANDSCAPE : cVar;
    }

    public boolean f1() {
        return getBooleanFromAdObject("show_rewarded_interstitial_overlay_alert", Boolean.valueOf(AppLovinAdType.AUTO_INCENTIVIZED == getType()));
    }

    public Uri g0() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "https://assets.applovin.com/sound_on.png");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean g1() {
        return getBooleanFromAdObject("sscomt", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public abstract lg getAdEventTracker();

    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? (Bundle) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda1
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.k((tl) obj);
            }
        }) : JsonUtils.toBundle(getJsonObjectFromAdObject("ah_parameters", null));
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public String getDirectDownloadToken() {
        return getStringFromAdObject("ah_dd_token", null);
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
    public List getOpenMeasurementVerificationScriptResources() {
        List list;
        final Function function = new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return this.f$0.a((JSONArray) obj);
            }
        };
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda11
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.a(function, (tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            list = (List) function.apply(getJsonArrayFromAdObject("omid_verification_script_resources", null));
        }
        return list;
    }

    public List getPrivacySandboxImpressionAttributionUrls() {
        List<String> stringListFromAdObject = getStringListFromAdObject("privacy_sandbox_impression_attribution_urls", Collections.emptyList());
        if (stringListFromAdObject.isEmpty()) {
            return stringListFromAdObject;
        }
        ArrayList arrayList = new ArrayList(stringListFromAdObject.size());
        String clCode = getClCode();
        Iterator<String> it = stringListFromAdObject.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().replace("{CLCODE}", clCode));
        }
        return arrayList;
    }

    public String h0() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? (String) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda12
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.n((tl) obj);
            }
        }) : JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_base_url", UnityAdsConstants.DefaultUrls.AD_ASSET_PATH);
    }

    public boolean h1() {
        return getBooleanFromAdObject("track_auto_redirects", Boolean.FALSE);
    }

    public String i0() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? (String) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda6
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.o((tl) obj);
            }
        }) : JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html", "");
    }

    public boolean i1() {
        String str = this.sdk.f0().getExtraParameters().get("should_use_exoplayer_if_available");
        return StringUtils.isValidString(str) ? Boolean.parseBoolean(str) : getBooleanFromAdObject("suep", Boolean.FALSE);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return StringUtils.isValidString(getDirectDownloadToken());
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.kg
    public abstract boolean isOpenMeasurementEnabled();

    public abstract Uri j();

    public String j0() {
        tl tlVar = this.synchronizedAdObject;
        return tlVar != null ? (String) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda23
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return b.p((tl) obj);
            }
        }) : JsonUtils.getString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html_url", "");
    }

    public boolean j1() {
        return getBooleanFromAdObject("upiosp", Boolean.FALSE);
    }

    public abstract Uri l0();

    public long m0() {
        return getLongFromAdObject("close_delay", 0L);
    }

    public long n0() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    public int o0() {
        return yp.a(getIntFromAdObject("video_completion_percent", -1));
    }

    public List p0() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda20
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.r((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("video_end_urls", new JSONObject()), getClCode(), q0(), this.sdk);
        }
        return listA;
    }

    public e r0() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        if ("top".equals(stringFromAdObject)) {
            return e.TOP;
        }
        if ("bottom".equals(stringFromAdObject)) {
            return e.BOTTOM;
        }
        if ("left".equals(stringFromAdObject)) {
            return e.LEFT;
        }
        return "right".equals(stringFromAdObject) ? e.RIGHT : e.RESIZE_ASPECT;
    }

    public int s0() {
        return getColorFromAdObject("progress_bar_color", -922746881);
    }

    public boolean t0() {
        return getBooleanFromAdObject("progress_bar_enabled", Boolean.FALSE);
    }

    public abstract Uri u0();

    public int v0() {
        int i;
        if (yp.a(getSize())) {
            i = 1;
        } else {
            i = ((Boolean) this.sdk.a(sj.L5)).booleanValue() ? 0 : -1;
        }
        return getIntFromAdObject("whalt", i);
    }

    public List w() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda5
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.g((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public m w0() {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (m) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda9
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.s((tl) obj);
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject != null) {
            return new m(jsonObjectFromAdObject);
        }
        return null;
    }

    public List x0() {
        return CollectionUtils.explode(getStringFromAdObject("wlh", null));
    }

    public List y() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda14
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.i((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List y0() {
        return CollectionUtils.explode(getStringFromAdObject("wls", ""));
    }

    public List z() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda17
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.j((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public boolean z0() {
        return getBooleanFromAdObject("bvde", (Boolean) this.sdk.a(sj.R5));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle k(tl tlVar) {
        return JsonUtils.toBundle(tlVar.a("ah_parameters", (JSONObject) null));
    }

    public int k() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.a(sj.T1)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String p(tl tlVar) {
        return JsonUtils.getString(tlVar.a("video_button_properties", (JSONObject) null), "video_button_html_url", "");
    }

    public long p() {
        List listL = L();
        long longFromAdObject = getLongFromAdObject("close_delay_graphic", (listL == null || listL.size() <= 0) ? 0L : ((Integer) listL.get(0)).intValue());
        if (longFromAdObject == -1 || longFromAdObject == -2) {
            return 0L;
        }
        return longFromAdObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean u(tl tlVar) {
        return JsonUtils.getBoolean(tlVar.a("video_button_properties", (JSONObject) null), "should_cache_video_button_html_url_contents", Boolean.FALSE);
    }

    public List u() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda21
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.e((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean v(tl tlVar) {
        return JsonUtils.getBoolean(tlVar.a("video_button_properties", (JSONObject) null), "should_respect_whitelist_when_retrieving_video_button_html_from_url", Boolean.FALSE);
    }

    public List v() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda16
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.f((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(tl tlVar) {
        return JsonUtils.getString(tlVar.a("video_button_properties", (JSONObject) null), "video_button_html", "");
    }

    public int o() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.a(sj.V1)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean t(tl tlVar) {
        return JsonUtils.getBoolean(tlVar.a("video_button_properties", (JSONObject) null), "should_cache_video_button_html_assets", Boolean.FALSE);
    }

    public List t() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda2
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.d((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public qq k0() {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (qq) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda4
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.q((tl) obj);
                }
            });
        }
        return new qq(getJsonObjectFromAdObject("video_button_properties", null), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ qq q(tl tlVar) {
        return new qq(tlVar.a("video_button_properties", (JSONObject) null), this.sdk);
    }

    public int q() {
        return getColorFromAdObject("countdown_color", -922746881);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List r(tl tlVar) {
        return yp.a(tlVar.a("video_end_urls", new JSONObject()), getClCode(), q0(), this.sdk);
    }

    public int r() {
        return getIntFromAdObject("countdown_length", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(tl tlVar) {
        return yp.a(tlVar.a("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List b(tl tlVar) {
        return yp.a(tlVar.a("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public void b(boolean z) {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            tlVar.a("html_resources_cached", z);
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putBoolean(this.adObject, "html_resources_cached", z);
        }
    }

    public List b(final MotionEvent motionEvent, final boolean z, final boolean z2) {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda26
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.a(motionEvent, z, z2, (tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("click_tracking_urls", new JSONObject()), a(motionEvent, z, z2), c(motionEvent, z, z2), R(), V0(), this.sdk);
        }
        return listA;
    }

    public void b(Uri uri) {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            tlVar.b("mute_image", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "mute_image", uri.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List l(tl tlVar) {
        return yp.a(tlVar.a("imp_urls", new JSONObject()), getClCode(), null, null, R(), V0(), this.sdk);
    }

    public d l() {
        if (this.k == null) {
            this.k = new d();
        }
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Map m(tl tlVar) {
        try {
            return JsonUtils.toStringMap(tlVar.a("http_headers_for_postbacks", new JSONObject()));
        } catch (JSONException e2) {
            throw new RuntimeException(e2);
        }
    }

    public int m() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.a(sj.U1)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String n(tl tlVar) {
        return JsonUtils.getString(tlVar.a("video_button_properties", (JSONObject) null), "video_button_base_url", UnityAdsConstants.DefaultUrls.AD_ASSET_PATH);
    }

    public com.applovin.impl.adview.e.a n() {
        List listK = K();
        int intFromAdObject = getIntFromAdObject("close_style", (listK == null || listK.size() <= 0) ? -1 : ((Integer) listK.get(0)).intValue());
        return intFromAdObject == -1 ? a(hasVideoUrl()) : a(intFromAdObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ m s(tl tlVar) {
        JSONObject jSONObjectA = tlVar.a("web_view_settings", (JSONObject) null);
        if (jSONObjectA != null) {
            return new m(jSONObjectA);
        }
        return null;
    }

    public Bundle s() {
        Map map;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            map = (Map) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda19
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.c((tl) obj);
                }
            });
        } else {
            try {
                map = JsonUtils.toStringMap(getJsonObjectFromAdObject("custom_tabs_http_headers", new JSONObject()));
            } catch (JSONException e2) {
                this.sdk.I();
                if (n.a()) {
                    this.sdk.I().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e2);
                }
                map = new HashMap();
            }
        }
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            bundle.putString((String) entry.getKey(), (String) entry.getValue());
        }
        if (getBooleanFromAdObject("custom_tabs_should_use_webview_ua", Boolean.FALSE)) {
            bundle.putString(HttpHeaders.USER_AGENT, sr.a());
        }
        return bundle;
    }

    public d5 x() {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (d5) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda18
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return b.h((tl) obj);
                }
            });
        }
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("custom_tabs_settings", null);
        if (jsonObjectFromAdObject != null) {
            return new d5(jsonObjectFromAdObject);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ d5 h(tl tlVar) {
        JSONObject jSONObjectA = tlVar.a("custom_tabs_settings", (JSONObject) null);
        if (jSONObjectA != null) {
            return new d5(jSONObjectA);
        }
        return null;
    }

    public String h() {
        String stringFromAdObject = getStringFromAdObject("base_url", UnityAdsConstants.DefaultUrls.AD_ASSET_PATH);
        if ("null".equalsIgnoreCase(stringFromAdObject)) {
            return null;
        }
        return stringFromAdObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Map c(tl tlVar) {
        try {
            return JsonUtils.toStringMap(tlVar.a("custom_tabs_http_headers", new JSONObject()));
        } catch (JSONException e2) {
            this.sdk.I();
            if (n.a()) {
                this.sdk.I().a("DirectAd", "Failed to retrieve http headers for Custom Tabs", e2);
            }
            return new HashMap();
        }
    }

    private String c(MotionEvent motionEvent, boolean z, boolean z2) {
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map mapA = a(motionEvent, z, z2);
        if (stringFromAdObject != null) {
            return StringUtils.replace(stringFromAdObject, mapA);
        }
        return null;
    }

    public void c(Uri uri) {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            tlVar.b("unmute_image", uri.toString());
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(this.adObject, "unmute_image", uri.toString());
        }
    }

    public void c() {
        this.h.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List g(tl tlVar) {
        return yp.a(tlVar.a("custom_tabs_navigation_started_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public List g() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda10
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.b((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("app_killed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List e(tl tlVar) {
        return yp.a(tlVar.a("custom_tabs_navigation_failed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public Bundle e() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List d(tl tlVar) {
        return yp.a(tlVar.a("custom_tabs_navigation_aborted_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public List d() {
        List listA;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            return (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda22
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.a((tl) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            listA = yp.a(getJsonObjectFromAdObject("ad_closed_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
        }
        return listA;
    }

    public List d(MotionEvent motionEvent, boolean z, boolean z2) {
        List<String> stringListFromAdObject = getStringListFromAdObject("privacy_sandbox_click_attribution_urls", Collections.emptyList());
        if (stringListFromAdObject.isEmpty()) {
            return stringListFromAdObject;
        }
        Map mapA = a(motionEvent, z, z2);
        ArrayList arrayList = new ArrayList(stringListFromAdObject.size());
        Iterator<String> it = stringListFromAdObject.iterator();
        while (it.hasNext()) {
            arrayList.add(StringUtils.replace(it.next(), mapA));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List j(tl tlVar) {
        return yp.a(tlVar.a("custom_tabs_tab_shown_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List i(tl tlVar) {
        return yp.a(tlVar.a("custom_tabs_tab_hidden_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    public List i() {
        return this.f;
    }

    public eh f() {
        return (eh) this.i.getAndSet(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z, boolean z2, tl tlVar) {
        return yp.a(tlVar.a("click_tracking_urls", new JSONObject()), a(motionEvent, z, z2), c(motionEvent, z, z2), R(), V0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List a(Function function, tl tlVar) {
        return (List) function.apply(tlVar.a("omid_verification_script_resources", (JSONArray) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List f(tl tlVar) {
        return yp.a(tlVar.a("custom_tabs_navigation_finished_urls", new JSONObject()), getClCode(), (String) null, this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(MotionEvent motionEvent, boolean z, tl tlVar) {
        return yp.a(tlVar.a("video_click_tracking_urls", new JSONObject()), a(motionEvent, true, z), null, R(), V0(), this.sdk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, tl tlVar) {
        JsonUtils.putString(tlVar.a("video_button_properties", (JSONObject) null), "video_button_html", str);
    }

    public void a(eh ehVar) {
        this.i.set(ehVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List a(JSONArray jSONArray) {
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
                    this.sdk.I().a("DirectAd", "Failed to parse OMID verification script resource", th);
                }
            }
        }
        return arrayList;
    }

    public void a(Uri uri) {
        this.f.add(uri);
    }

    public void a(final String str) {
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            tlVar.a(new Consumer() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda8
                @Override // androidx.core.util.Consumer
                public final void accept(Object obj) {
                    b.a(str, (tl) obj);
                }
            });
            return;
        }
        synchronized (this.adObjectLock) {
            JsonUtils.putString(getJsonObjectFromAdObject("video_button_properties", null), "video_button_html", str);
        }
    }

    public List a(final MotionEvent motionEvent, final boolean z) {
        List listA;
        List list;
        tl tlVar = this.synchronizedAdObject;
        if (tlVar != null) {
            list = (List) tlVar.a(new Function() { // from class: com.applovin.impl.sdk.ad.b$$ExternalSyntheticLambda24
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.a(motionEvent, z, (tl) obj);
                }
            });
        } else {
            synchronized (this.adObjectLock) {
                listA = yp.a(getJsonObjectFromAdObject("video_click_tracking_urls", new JSONObject()), a(motionEvent, true, z), null, R(), V0(), this.sdk);
            }
            list = listA;
        }
        return list.isEmpty() ? b(motionEvent, true, z) : list;
    }

    private Map a(MotionEvent motionEvent, boolean z, boolean z2) {
        Point pointB = z3.b(j.m());
        HashMap map = new HashMap(7);
        map.put("{CLCODE}", getClCode());
        map.put("{CLICK_X}", String.valueOf(motionEvent != null ? motionEvent.getRawX() : -1.0f));
        map.put("{CLICK_Y}", String.valueOf(motionEvent != null ? motionEvent.getRawY() : -1.0f));
        map.put("{SCREEN_WIDTH}", String.valueOf(pointB.x));
        map.put("{SCREEN_HEIGHT}", String.valueOf(pointB.y));
        map.put("{IS_VIDEO_CLICK}", String.valueOf(z));
        map.put("{IS_INSTALL}", String.valueOf(z2));
        return map;
    }

    private com.applovin.impl.adview.e.a a(boolean z) {
        return z ? com.applovin.impl.adview.e.a.WHITE_ON_TRANSPARENT : com.applovin.impl.adview.e.a.WHITE_ON_BLACK;
    }

    protected com.applovin.impl.adview.e.a a(int i) {
        if (i == 1) {
            return com.applovin.impl.adview.e.a.WHITE_ON_TRANSPARENT;
        }
        if (i == 2) {
            return com.applovin.impl.adview.e.a.INVISIBLE;
        }
        if (i == 3) {
            return com.applovin.impl.adview.e.a.TRANSPARENT_SKIP;
        }
        return com.applovin.impl.adview.e.a.WHITE_ON_BLACK;
    }
}
