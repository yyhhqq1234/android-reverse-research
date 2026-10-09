package com.applovin.impl;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import org.json.unity.androidbridge.AndroidBridgeConstants;

/* JADX INFO: loaded from: classes.dex */
public abstract class fe extends oe implements MaxAd {
    private final int l;
    private final AtomicBoolean m;
    private final AtomicBoolean n;
    protected com.applovin.impl.mediation.g o;
    private final String p;
    private MaxAdWaterfallInfo q;
    private long r;
    private String s;
    private String t;
    private bd u;

    public abstract fe a(com.applovin.impl.mediation.g gVar);

    @Override // com.applovin.impl.oe
    public String toString() {
        return "MediatedAd{thirdPartyAdPlacementId=" + T() + ", adUnitId=" + getAdUnitId() + ", format=" + getFormat().getLabel() + ", networkName='" + getNetworkName() + "'}";
    }

    public int J() {
        return this.l;
    }

    public com.applovin.impl.mediation.g A() {
        return this.o;
    }

    public static fe a(int i, Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
        String string = JsonUtils.getString(jSONObject2, "ad_format", null);
        MaxAdFormat fromString = MaxAdFormat.formatFromString(string);
        Objects.requireNonNull(fromString, "Invalid ad format for string: " + string);
        if (fromString.isAdViewAd()) {
            return new ge(i, map, jSONObject, jSONObject2, jVar);
        }
        if (fromString == MaxAdFormat.NATIVE) {
            return new ie(i, map, jSONObject, jSONObject2, jVar);
        }
        if (fromString.isFullscreenAd()) {
            return new he(i, map, jSONObject, jSONObject2, jVar);
        }
        throw new IllegalArgumentException("Unsupported ad format: " + string);
    }

    protected fe(int i, Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.g gVar, com.applovin.impl.sdk.j jVar) {
        super(map, jSONObject, jSONObject2, jVar);
        this.m = new AtomicBoolean();
        this.n = new AtomicBoolean();
        this.l = i;
        this.o = gVar;
        this.p = gVar != null ? gVar.b() : null;
    }

    public List U() {
        return b("mwf_info_urls");
    }

    public String B() {
        return a("bcode", "");
    }

    public long E() {
        return a("bwt_ms", ((Long) this.a.a(ue.B7)).longValue());
    }

    public long S() {
        return a("twt_ms", ((Long) this.a.a(ue.C7)).longValue());
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdWaterfallInfo getWaterfall() {
        return this.q;
    }

    @Override // com.applovin.mediation.MaxAd
    public long getRequestLatencyMillis() {
        return this.r;
    }

    public void i(String str) {
        this.s = str;
    }

    public String M() {
        return this.s;
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdReviewCreativeId() {
        return this.t;
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxAdFormat getFormat() {
        return MaxAdFormat.formatFromString(a("ad_format", b("ad_format", (String) null)));
    }

    @Override // com.applovin.mediation.MaxAd
    public AppLovinSdkUtils.Size getSize() {
        int iA = a("ad_width", -3);
        int iA2 = a("ad_height", -3);
        if (iA != -3 && iA2 != -3) {
            return new AppLovinSdkUtils.Size(iA, iA2);
        }
        return getFormat().getSize();
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkName() {
        return a("network_name", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getNetworkPlacement() {
        return StringUtils.emptyIfNull(T());
    }

    @Override // com.applovin.mediation.MaxAd
    public String getCreativeId() {
        return a("creative_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public double getRevenue() {
        if (((Boolean) this.a.a(ue.y7)).booleanValue() && getFormat().isFullscreenAd() && !u().get()) {
            this.a.I();
            if (!com.applovin.impl.sdk.n.a()) {
                return 0.0d;
            }
            this.a.I().b("MediatedAd", "Attempting to retrieve revenue when not available yet");
            return 0.0d;
        }
        tl tlVar = this.i;
        if (tlVar != null) {
            return ((Double) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda5
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return fe.f((tl) obj);
                }
            })).doubleValue();
        }
        return JsonUtils.getDouble(a("revenue_parameters", (JSONObject) null), "revenue", -1.0d);
    }

    public void a(long j) {
        this.r = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Double f(tl tlVar) {
        return Double.valueOf(JsonUtils.getDouble(tlVar.a("revenue_parameters", (JSONObject) null), "revenue", -1.0d));
    }

    @Override // com.applovin.mediation.MaxAd
    public String getRevenuePrecision() {
        tl tlVar = this.i;
        if (tlVar != null) {
            return (String) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda2
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return fe.h((tl) obj);
                }
            });
        }
        return JsonUtils.getString(a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String h(tl tlVar) {
        return JsonUtils.getString(tlVar.a("revenue_parameters", (JSONObject) null), "precision", "");
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspName() {
        return a("dsp_name", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getDspId() {
        return a("dsp_id", (String) null);
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str) {
        return getAdValue(str, null);
    }

    public double N() {
        return a("price", -1.0f);
    }

    public JSONObject x() {
        tl tlVar = this.i;
        if (tlVar != null) {
            return (JSONObject) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda6
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return fe.b((tl) obj);
                }
            });
        }
        return a("ad_values", new JSONObject());
    }

    public void a(MaxAdWaterfallInfo maxAdWaterfallInfo) {
        this.q = maxAdWaterfallInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject b(tl tlVar) {
        return JsonUtils.deepCopy(tlVar.a("ad_values", new JSONObject()));
    }

    public JSONObject O() {
        tl tlVar = this.i;
        if (tlVar != null) {
            return (JSONObject) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda1
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return fe.e((tl) obj);
                }
            });
        }
        return a("publisher_extra_info", new JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject e(tl tlVar) {
        return JsonUtils.deepCopy(tlVar.a("publisher_extra_info", new JSONObject()));
    }

    public JSONObject Q() {
        tl tlVar = this.i;
        if (tlVar != null) {
            return (JSONObject) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return fe.g((tl) obj);
                }
            });
        }
        return a("revenue_parameters", new JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ JSONObject g(tl tlVar) {
        return JsonUtils.deepCopy(tlVar.a("revenue_parameters", new JSONObject()));
    }

    public String P() {
        return JsonUtils.getString(Q(), "revenue_event", "");
    }

    public void h(String str) {
        this.t = str;
    }

    public String R() {
        return b("event_id", "");
    }

    public String v() {
        return a("adomain", (String) null);
    }

    public boolean a0() {
        com.applovin.impl.mediation.g gVar = this.o;
        return gVar != null && gVar.k() && this.o.j();
    }

    public String z() {
        return this.p;
    }

    public Bundle F() {
        JSONObject jSONObjectA;
        tl tlVar = this.i;
        if (tlVar != null) {
            return (Bundle) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda4
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return this.f$0.c((tl) obj);
                }
            });
        }
        if (c("credentials")) {
            jSONObjectA = a("credentials", new JSONObject());
        } else {
            jSONObjectA = a("server_parameters", new JSONObject());
            JsonUtils.putString(jSONObjectA, AndroidBridgeConstants.PLACEMENT_ID, T());
        }
        return JsonUtils.toBundle(jSONObjectA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Bundle c(tl tlVar) {
        JSONObject jSONObjectA;
        if (tlVar.a("credentials")) {
            jSONObjectA = tlVar.a("credentials", new JSONObject());
        } else {
            jSONObjectA = tlVar.a("server_parameters", new JSONObject());
            JsonUtils.putString(jSONObjectA, AndroidBridgeConstants.PLACEMENT_ID, T());
        }
        return JsonUtils.toBundle(jSONObjectA);
    }

    public String D() {
        return a("bid_response", (String) null);
    }

    public boolean X() {
        return StringUtils.isValidString(D());
    }

    public long C() {
        return a("bid_expiration_ms", BundleUtils.getLong("bid_expiration_ms", -1L, l()));
    }

    public boolean Z() {
        return a("is_js_tag_ad", Boolean.FALSE).booleanValue();
    }

    public boolean b0() {
        return a("only_load_when_initialized", Boolean.FALSE).booleanValue();
    }

    public boolean c0() {
        return a("prefer_load_when_initialized", Boolean.TRUE).booleanValue();
    }

    public MaxAdFormat I() {
        String strA = a("haf", (String) null);
        if (StringUtils.isValidString(strA)) {
            return MaxAdFormat.formatFromString(strA);
        }
        return null;
    }

    public boolean Y() {
        return I() != null;
    }

    public bd H() {
        bd bdVar = this.u;
        if (bdVar != null) {
            return bdVar;
        }
        tl tlVar = this.i;
        if (tlVar != null) {
            this.u = (bd) tlVar.a(new Function() { // from class: com.applovin.impl.fe$$ExternalSyntheticLambda3
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return fe.d((tl) obj);
                }
            });
        } else {
            this.u = new bd(a("hybrid_ad_config", (JSONObject) null));
        }
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ bd d(tl tlVar) {
        return new bd(tlVar.a("hybrid_ad_config", (JSONObject) null));
    }

    @Override // com.applovin.mediation.MaxAd
    public String getAdValue(String str, String str2) {
        JSONObject jSONObjectX = x();
        if (jSONObjectX.has(str)) {
            return JsonUtils.getString(jSONObjectX, str, str2);
        }
        Bundle bundleL = l();
        if (bundleL.containsKey(str)) {
            return bundleL.getString(str);
        }
        JSONObject jSONObjectO = O();
        if (jSONObjectO.has(str)) {
            return JsonUtils.getString(jSONObjectO, str, str2);
        }
        return a(str, str2);
    }

    public View y() {
        com.applovin.impl.mediation.g gVar;
        if (!a0() || (gVar = this.o) == null) {
            return null;
        }
        return gVar.d();
    }

    @Override // com.applovin.mediation.MaxAd
    public MaxNativeAd getNativeAd() {
        com.applovin.impl.mediation.g gVar = this.o;
        if (gVar != null) {
            return gVar.e();
        }
        return null;
    }

    public String T() {
        return a("third_party_ad_placement_id", (String) null);
    }

    public String V() {
        return b("waterfall_name", "");
    }

    public String W() {
        return b("waterfall_test_name", "");
    }

    public long G() {
        if (L() > 0) {
            return K() - L();
        }
        return -1L;
    }

    private long L() {
        return a("load_started_time_ms", 0L);
    }

    public void e0() {
        c("load_started_time_ms", SystemClock.elapsedRealtime());
    }

    public long K() {
        return a("load_completed_time_ms", 0L);
    }

    public void d0() {
        c("load_completed_time_ms", SystemClock.elapsedRealtime());
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject jSONObjectX = x();
        JsonUtils.putAll(jSONObjectX, jSONObject);
        a("ad_values", (Object) jSONObjectX);
    }

    public AtomicBoolean u() {
        return this.m;
    }

    public AtomicBoolean w() {
        return this.n;
    }

    public void b(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        JSONObject jSONObjectO = O();
        JsonUtils.putAll(jSONObjectO, jSONObject);
        a("publisher_extra_info", (Object) jSONObjectO);
    }

    public void t() {
        this.o = null;
        this.q = null;
    }

    public void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (bundle.containsKey("ad_values")) {
            a(BundleUtils.toJSONObject(bundle.getBundle("ad_values")));
        }
        if (bundle.containsKey("creative_id") && !c("creative_id")) {
            c("creative_id", BundleUtils.getString("creative_id", bundle));
        }
        if (bundle.containsKey("ad_width") && !c("ad_width") && bundle.containsKey("ad_height") && !c("ad_height")) {
            int i = BundleUtils.getInt("ad_width", bundle);
            int i2 = BundleUtils.getInt("ad_height", bundle);
            c("ad_width", i);
            c("ad_height", i2);
        }
        if (bundle.containsKey("publisher_extra_info")) {
            b(BundleUtils.toJSONObject(bundle.getBundle("publisher_extra_info")));
        }
    }
}
