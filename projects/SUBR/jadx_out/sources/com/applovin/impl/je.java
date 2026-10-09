package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxNativeAdAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class je implements Comparable, AppLovinCommunicatorSubscriber {
    private final List A;
    private final List B;
    private final List C;
    private final Map D;
    private final boolean E;
    private final boolean F;
    private final rn G;
    private final boolean H;
    private final String I;
    private final Map J;
    private final com.applovin.impl.sdk.j a;
    private final a b;
    private int c;
    private final boolean d;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final String o;
    private final String p;
    private String q;
    private String r;
    private final String s;
    private final String t;
    private final String u;
    private final String v;
    private final int w;
    private final List x;
    private final List y;
    private final List z;

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "MediatedNetwork";
    }

    public String toString() {
        return "MediatedNetwork{name=" + this.o + ", displayName=" + this.p + ", sdkAvailable=" + this.d + ", sdkVersion=" + this.r + ", adapterAvailable=" + this.f + ", adapterVersion=" + this.s + "}";
    }

    public enum a {
        MISSING("MISSING"),
        INCOMPLETE_INTEGRATION("INCOMPLETE INTEGRATION"),
        INVALID_INTEGRATION("INVALID INTEGRATION"),
        COMPLETE("COMPLETE");

        private final String a;

        a(String str) {
            this.a = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String b() {
            return this.a;
        }
    }

    public enum b {
        NOT_SUPPORTED("Not Supported", SupportMenu.CATEGORY_MASK, "This network does not support test mode."),
        INVALID_INTEGRATION("Invalid Integration", SupportMenu.CATEGORY_MASK, "Please address all the integration issue(s) marked in red above."),
        NOT_INITIALIZED("Not Initialized", SupportMenu.CATEGORY_MASK, "Please configure this network in your MAX dashboard."),
        DISABLED("Enable", -16776961, "Please re-launch the app to enable test ads."),
        READY("", -16776961, "");

        private final String a;
        private final int b;
        private final String c;

        b(String str, int i, String str2) {
            this.a = str;
            this.b = i;
            this.c = str2;
        }

        public String c() {
            return this.a;
        }

        public int d() {
            return this.b;
        }

        public String b() {
            return this.c;
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0246 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x024a  */
    /* JADX WARN: Code duplicated, block: B:71:0x025c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0268  */
    /* JADX WARN: Code duplicated, block: B:75:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:78:0x02b8  */
    public je(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        String adapterVersion;
        String strA;
        boolean zEquals;
        String string;
        boolean zIsBeta;
        boolean z;
        boolean z2;
        int iLastIndexOf;
        String lowerCase;
        Integer numA;
        JSONObject jSONObject2;
        String string2;
        boolean z3;
        this.a = jVar;
        String string3 = JsonUtils.getString(jSONObject, "name", "");
        this.o = string3;
        this.p = JsonUtils.getString(jSONObject, "display_name", "");
        this.q = JsonUtils.getString(jSONObject, "adapter_class", "");
        this.t = JsonUtils.getString(jSONObject, "latest_adapter_version", "");
        this.A = a(jSONObject);
        Boolean bool = Boolean.FALSE;
        this.k = JsonUtils.getBoolean(jSONObject, "hide_if_missing", bool).booleanValue();
        JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject, "configuration", new JSONObject());
        this.y = a(jSONObject3, jVar);
        this.n = JsonUtils.getBoolean(jSONObject3, "java_8_required", bool).booleanValue();
        this.E = JsonUtils.getBoolean(jSONObject3, "has_micro_sdk", bool).booleanValue();
        this.F = JsonUtils.getBoolean(jSONObject3, "hide_initialization_status", bool).booleanValue();
        this.B = JsonUtils.getList(jSONObject3, "live_network_filtering_names", null);
        JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONObject3, "test_mode", new JSONObject());
        JSONObject jSONObject5 = JsonUtils.getJSONObject(jSONObject4, "network_names", (JSONObject) null);
        if (jSONObject5 != null && jSONObject5.length() > 0) {
            ArrayList arrayList = new ArrayList(Arrays.asList(string3));
            HashMap map = new HashMap(jSONObject5.length());
            Iterator<String> itKeys = jSONObject5.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                MaxAdFormat fromString = MaxAdFormat.formatFromString(next);
                String string4 = JsonUtils.getString(jSONObject5, next, null);
                if (fromString != null && !TextUtils.isEmpty(string4)) {
                    arrayList.add(string4);
                    map.put(fromString, string4);
                }
            }
            this.C = arrayList;
            this.D = map;
        } else {
            this.C = Arrays.asList(string3);
            this.D = null;
        }
        JSONObject jSONObject6 = JsonUtils.getJSONObject(jSONObject, "test_mode", new JSONObject());
        Boolean bool2 = Boolean.TRUE;
        this.i = JsonUtils.getBoolean(jSONObject6, "supported", bool2).booleanValue();
        this.j = JsonUtils.getBoolean(jSONObject, "test_mode_requires_init", Boolean.FALSE).booleanValue();
        this.u = JsonUtils.getString(jSONObject6, OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, null);
        this.G = new rn(JsonUtils.getJSONObject(jSONObject3, "tcf_config"), this.p);
        List list = JsonUtils.getList(jSONObject, "existence_classes", null);
        if (list != null) {
            this.d = yp.a(list);
        } else {
            this.d = yp.a(JsonUtils.getString(jSONObject, "existence_class", ""));
        }
        List listEmptyList = Collections.emptyList();
        String str = this.q;
        String string5 = JsonUtils.getString(jSONObject3, "init_adapter_class", null);
        if (string5 != null) {
            this.q = string5;
        }
        MaxAdapter maxAdapterA = ze.a(str, jVar);
        if (maxAdapterA != null) {
            this.f = true;
            try {
                adapterVersion = maxAdapterA.getAdapterVersion();
                try {
                    strA = ze.a(maxAdapterA);
                    try {
                        listEmptyList = a(maxAdapterA, JsonUtils.getBoolean(jSONObject4, "is_mrec_supported", bool2).booleanValue());
                        JSONObject jSONObject7 = JsonUtils.getJSONObject(jSONObject3, "native_ad_view_config", (JSONObject) null);
                        if (jSONObject7 != null) {
                            String string6 = JsonUtils.getString(jSONObject7, "min_adapter_version", null);
                            z3 = string6 == null || yp.a(adapterVersion, string6) >= 0;
                            try {
                                string = JsonUtils.getString(jSONObject7, "network_name", null);
                            } catch (Throwable th) {
                                th = th;
                                string = null;
                                com.applovin.impl.sdk.n.h("MediatedNetwork", "Failed to load adapter for network " + this.o + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                                z = z3;
                                zIsBeta = false;
                                Class<?> cls = Class.forName(this.q);
                                zEquals = cls.getMethod("loadNativeAd", MaxAdapterResponseParameters.class, Activity.class, MaxNativeAdAdapterListener.class).getDeclaringClass().equals(cls);
                                this.s = adapterVersion;
                                this.r = strA;
                                this.x = listEmptyList;
                                this.l = zEquals;
                                this.m = z;
                                this.v = string;
                                this.z = a(jSONObject3, adapterVersion, jVar);
                                this.h = yp.a(JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "alternative_network", (JSONObject) null), "adapter_class", ""));
                                this.b = a();
                                if (adapterVersion.equals(this.t)) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                }
                                this.g = z2;
                                Context contextM = com.applovin.impl.sdk.j.m();
                                iLastIndexOf = this.o.lastIndexOf("_");
                                if (iLastIndexOf != -1) {
                                    lowerCase = this.o.toLowerCase().substring(0, iLastIndexOf);
                                } else {
                                    lowerCase = this.o.toLowerCase();
                                }
                                this.w = contextM.getResources().getIdentifier("applovin_ic_mediation_" + lowerCase, "drawable", contextM.getPackageName());
                                this.c = MaxAdapter.InitializationStatus.NOT_INITIALIZED.getCode();
                                AppLovinCommunicator.getInstance(contextM).subscribe(this, "adapter_initialization_status");
                                numA = jVar.K().a(this.q);
                                if (numA != null) {
                                    this.c = numA.intValue();
                                }
                                jSONObject2 = JsonUtils.getJSONObject(jSONObject3, "amazon_marketplace", (JSONObject) null);
                                if (jSONObject2 == null) {
                                }
                                this.H = false;
                                this.I = null;
                                this.J = null;
                            }
                        } else {
                            string = null;
                            z3 = false;
                        }
                        try {
                            z = z3;
                            zIsBeta = maxAdapterA.isBeta();
                        } catch (Throwable th2) {
                            th = th2;
                            com.applovin.impl.sdk.n.h("MediatedNetwork", "Failed to load adapter for network " + this.o + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                            z = z3;
                            zIsBeta = false;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        string = null;
                        z3 = false;
                        com.applovin.impl.sdk.n.h("MediatedNetwork", "Failed to load adapter for network " + this.o + ". Please check that you have a compatible network SDK integrated. Error: " + th);
                        z = z3;
                        zIsBeta = false;
                        Class<?> cls2 = Class.forName(this.q);
                        zEquals = cls2.getMethod("loadNativeAd", MaxAdapterResponseParameters.class, Activity.class, MaxNativeAdAdapterListener.class).getDeclaringClass().equals(cls2);
                        this.s = adapterVersion;
                        this.r = strA;
                        this.x = listEmptyList;
                        this.l = zEquals;
                        this.m = z;
                        this.v = string;
                        this.z = a(jSONObject3, adapterVersion, jVar);
                        this.h = yp.a(JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "alternative_network", (JSONObject) null), "adapter_class", ""));
                        this.b = a();
                        if (adapterVersion.equals(this.t)) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        this.g = z2;
                        Context contextM2 = com.applovin.impl.sdk.j.m();
                        iLastIndexOf = this.o.lastIndexOf("_");
                        if (iLastIndexOf != -1) {
                            lowerCase = this.o.toLowerCase().substring(0, iLastIndexOf);
                        } else {
                            lowerCase = this.o.toLowerCase();
                        }
                        this.w = contextM2.getResources().getIdentifier("applovin_ic_mediation_" + lowerCase, "drawable", contextM2.getPackageName());
                        this.c = MaxAdapter.InitializationStatus.NOT_INITIALIZED.getCode();
                        AppLovinCommunicator.getInstance(contextM2).subscribe(this, "adapter_initialization_status");
                        numA = jVar.K().a(this.q);
                        if (numA != null) {
                            this.c = numA.intValue();
                        }
                        jSONObject2 = JsonUtils.getJSONObject(jSONObject3, "amazon_marketplace", (JSONObject) null);
                        if (jSONObject2 == null) {
                        }
                        this.H = false;
                        this.I = null;
                        this.J = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    strA = "";
                }
            } catch (Throwable th5) {
                th = th5;
                adapterVersion = "";
                strA = adapterVersion;
            }
            try {
                Class<?> cls3 = Class.forName(this.q);
                zEquals = cls3.getMethod("loadNativeAd", MaxAdapterResponseParameters.class, Activity.class, MaxNativeAdAdapterListener.class).getDeclaringClass().equals(cls3);
            } catch (Throwable th6) {
                jVar.I();
                if (com.applovin.impl.sdk.n.a()) {
                    jVar.I().a("MediatedNetwork", "Failed to check if adapter overrides MaxNativeAdAdapter", th6);
                }
                zEquals = false;
            }
        } else {
            this.f = false;
            adapterVersion = "";
            strA = adapterVersion;
            zEquals = false;
            string = null;
            zIsBeta = false;
            z = false;
        }
        this.s = adapterVersion;
        this.r = strA;
        this.x = listEmptyList;
        this.l = zEquals;
        this.m = z;
        this.v = string;
        this.z = a(jSONObject3, adapterVersion, jVar);
        this.h = yp.a(JsonUtils.getString(JsonUtils.getJSONObject(jSONObject, "alternative_network", (JSONObject) null), "adapter_class", ""));
        this.b = a();
        if (adapterVersion.equals(this.t) || zIsBeta) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.g = z2;
        Context contextM3 = com.applovin.impl.sdk.j.m();
        iLastIndexOf = this.o.lastIndexOf("_");
        if (iLastIndexOf != -1) {
            lowerCase = this.o.toLowerCase().substring(0, iLastIndexOf);
        } else {
            lowerCase = this.o.toLowerCase();
        }
        this.w = contextM3.getResources().getIdentifier("applovin_ic_mediation_" + lowerCase, "drawable", contextM3.getPackageName());
        this.c = MaxAdapter.InitializationStatus.NOT_INITIALIZED.getCode();
        AppLovinCommunicator.getInstance(contextM3).subscribe(this, "adapter_initialization_status");
        numA = jVar.K().a(this.q);
        if (numA != null) {
            this.c = numA.intValue();
        }
        jSONObject2 = JsonUtils.getJSONObject(jSONObject3, "amazon_marketplace", (JSONObject) null);
        if (jSONObject2 == null && this.d) {
            this.H = true;
            this.I = JsonUtils.getString(jSONObject2, "test_mode_app_id", null);
            JSONObject jSONObject8 = JsonUtils.getJSONObject(jSONObject2, "test_mode_slot_ids", new JSONObject());
            HashMap map2 = new HashMap(jSONObject8.length());
            Iterator<String> itKeys2 = jSONObject8.keys();
            while (itKeys2.hasNext()) {
                String next2 = itKeys2.next();
                MaxAdFormat fromString2 = MaxAdFormat.formatFromString(next2);
                JSONObject jSONObject9 = JsonUtils.getJSONObject(jSONObject8, next2, (JSONObject) null);
                if (fromString2 != null && jSONObject9 != null && (string2 = JsonUtils.getString(jSONObject9, "uuid", null)) != null) {
                    map2.put(fromString2, new p0(string2, jSONObject9, fromString2));
                }
            }
            this.J = map2;
            return;
        }
        this.H = false;
        this.I = null;
        this.J = null;
    }

    public a q() {
        return this.b;
    }

    public int i() {
        return this.c;
    }

    public b y() {
        if (!this.i) {
            return b.NOT_SUPPORTED;
        }
        a aVar = this.b;
        if (aVar != a.COMPLETE && (aVar != a.INCOMPLETE_INTEGRATION || !E() || !A())) {
            return b.INVALID_INTEGRATION;
        }
        if (!this.a.k0().c()) {
            return b.DISABLED;
        }
        if (this.j && (this.c == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() || this.c == MaxAdapter.InitializationStatus.INITIALIZING.getCode())) {
            return b.NOT_INITIALIZED;
        }
        return b.READY;
    }

    public boolean E() {
        return this.d;
    }

    public boolean A() {
        return this.f;
    }

    public boolean B() {
        return this.g;
    }

    public boolean F() {
        return this.b == a.MISSING && this.k;
    }

    public String m() {
        return this.o;
    }

    public String g() {
        return this.p;
    }

    public String p() {
        return this.r;
    }

    public String c() {
        return this.s;
    }

    public String k() {
        return this.t;
    }

    public String b() {
        return this.q;
    }

    public String w() {
        return this.v;
    }

    public List u() {
        return this.C;
    }

    public List l() {
        return this.B;
    }

    public List s() {
        return this.A;
    }

    public int h() {
        return this.w;
    }

    public List r() {
        return this.x;
    }

    public boolean H() {
        return this.l;
    }

    public boolean I() {
        return this.m;
    }

    public List n() {
        return this.y;
    }

    public List f() {
        return this.z;
    }

    public boolean D() {
        return this.n;
    }

    public boolean G() {
        return this.F;
    }

    public Map x() {
        return this.D;
    }

    public boolean z() {
        return this.E;
    }

    public String v() {
        return this.u;
    }

    public rn t() {
        return this.G;
    }

    public final com.applovin.impl.sdk.j o() {
        return this.a;
    }

    public final String j() {
        StringBuilder sb = new StringBuilder("\n---------- ");
        sb.append(this.o);
        sb.append(" ----------\nStatus  - ");
        sb.append(this.b.b());
        sb.append("\nSDK     - ");
        String str = "UNAVAILABLE";
        sb.append((!this.d || TextUtils.isEmpty(this.r)) ? "UNAVAILABLE" : this.r);
        sb.append("\nAdapter - ");
        if (this.f && !TextUtils.isEmpty(this.s)) {
            str = this.s;
        }
        sb.append(str);
        for (gh ghVar : n()) {
            if (!ghVar.c()) {
                sb.append("\n* MISSING ");
                sb.append(ghVar.b());
                sb.append(": ");
                sb.append(ghVar.a());
            }
        }
        for (o6 o6Var : f()) {
            if (!o6Var.c()) {
                sb.append("\n* MISSING ");
                sb.append(o6Var.b());
                sb.append(": ");
                sb.append(o6Var.a());
            }
        }
        return sb.toString();
    }

    public boolean C() {
        return this.H;
    }

    public String e() {
        return this.I;
    }

    public Map d() {
        return this.J;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(je jeVar) {
        return this.p.compareToIgnoreCase(jeVar.p);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        String string = appLovinCommunicatorMessage.getMessageData().getString("adapter_class", "");
        if (this.q.equals(string)) {
            this.c = appLovinCommunicatorMessage.getMessageData().getInt("init_status", 0);
            MaxAdapter maxAdapterA = ze.a(string, this.a);
            if (maxAdapterA != null) {
                String strA = ze.a(maxAdapterA);
                if (this.r.equals(strA)) {
                    return;
                }
                this.r = strA;
                this.a.q().a(this.r, string);
            }
        }
    }

    private a a() {
        a aVar;
        if (this.d) {
            if (this.f) {
                aVar = a.COMPLETE;
            } else if (this.h) {
                aVar = a.MISSING;
            } else {
                aVar = a.INCOMPLETE_INTEGRATION;
            }
        } else if (this.f) {
            aVar = a.INCOMPLETE_INTEGRATION;
        } else {
            aVar = a.MISSING;
        }
        if (aVar == a.MISSING) {
            return aVar;
        }
        Iterator it = this.y.iterator();
        while (it.hasNext()) {
            if (!((gh) it.next()).c()) {
                return a.INVALID_INTEGRATION;
            }
        }
        Iterator it2 = this.z.iterator();
        while (it2.hasNext()) {
            if (!((o6) it2.next()).c()) {
                return a.INVALID_INTEGRATION;
            }
        }
        return (!this.n || com.applovin.impl.sdk.j.w0()) ? aVar : a.INVALID_INTEGRATION;
    }

    private List a(JSONObject jSONObject, String str, com.applovin.impl.sdk.j jVar) {
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "dependencies", new JSONArray());
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "dependencies_v2", new JSONArray());
        ArrayList arrayList = new ArrayList(jSONArray.length() + jSONArray2.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null) {
                arrayList.add(new o6(jSONObject2, jVar));
            }
        }
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && o6.a(str, JsonUtils.getString(jSONObject3, "min_adapter_version", null), JsonUtils.getString(jSONObject3, "max_adapter_version", null))) {
                arrayList.add(new o6(jSONObject3, jVar));
            }
        }
        return arrayList;
    }

    private List a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        ArrayList arrayList = new ArrayList();
        if (this.q.equals("com.applovin.mediation.adapters.AppLovinMediationAdapter")) {
            gh ghVar = new gh("com.google.android.gms.permission.AD_ID", "Please add\n<uses-permission android:name=\"com.google.android.gms.permission.AD_ID\" />\nto your AndroidManifest.xml", com.applovin.impl.sdk.j.m());
            if (ghVar.c()) {
                arrayList.add(ghVar);
            }
        }
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "permissions", new JSONObject());
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                arrayList.add(new gh(next, jSONObject2.getString(next), com.applovin.impl.sdk.j.m()));
            } catch (JSONException unused) {
            }
        }
        return arrayList;
    }

    private List a(MaxAdapter maxAdapter, boolean z) {
        ArrayList arrayList = new ArrayList(5);
        if (maxAdapter instanceof MaxInterstitialAdapter) {
            arrayList.add(MaxAdFormat.INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAppOpenAdapter) {
            arrayList.add(MaxAdFormat.APP_OPEN);
        }
        if (maxAdapter instanceof MaxRewardedAdapter) {
            arrayList.add(MaxAdFormat.REWARDED);
        }
        if (maxAdapter instanceof MaxRewardedInterstitialAdapter) {
            arrayList.add(MaxAdFormat.REWARDED_INTERSTITIAL);
        }
        if (maxAdapter instanceof MaxAdViewAdapter) {
            arrayList.add(MaxAdFormat.BANNER);
            arrayList.add(MaxAdFormat.LEADER);
            if (z) {
                arrayList.add(MaxAdFormat.MREC);
            }
        }
        if (maxAdapter instanceof MaxNativeAdAdapter) {
            arrayList.add(MaxAdFormat.NATIVE);
        }
        return arrayList;
    }

    private List a(JSONObject jSONObject) {
        return JsonUtils.optList(JsonUtils.getJSONArray(jSONObject, "supported_regions", null), null);
    }
}
