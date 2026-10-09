package com.applovin.impl;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.firebase.messaging.Constants;
import java.io.File;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.unity.androidbridge.AndroidBridgeConstants;

/* JADX INFO: loaded from: classes.dex */
public class la {
    private static final int g = (int) TimeUnit.SECONDS.toMillis(30);
    private JSONObject a;
    private final ExecutorService b;
    private final Map c = Collections.synchronizedMap(new HashMap());
    private final Set d = Collections.synchronizedSet(new HashSet());
    protected final com.applovin.impl.sdk.j e;
    protected final com.applovin.impl.sdk.n f;

    public la(com.applovin.impl.sdk.j jVar) {
        this.e = jVar;
        this.f = jVar.I();
        this.b = Executors.newFixedThreadPool(1, new a(jVar));
    }

    class a implements ThreadFactory {
        final /* synthetic */ com.applovin.impl.sdk.j a;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:health_events_reporter");
            thread.setDaemon(true);
            thread.setPriority(((Integer) this.a.a(sj.U)).intValue());
            thread.setUncaughtExceptionHandler(new C0022a());
            return thread;
        }

        a(com.applovin.impl.sdk.j jVar) {
            this.a = jVar;
        }

        /* JADX INFO: renamed from: com.applovin.impl.la$a$a, reason: collision with other inner class name */
        class C0022a implements Thread.UncaughtExceptionHandler {
            C0022a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                a.this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    a.this.a.I().a("HealthEventsReporter", "Caught unhandled exception", th);
                }
            }
        }
    }

    private void c(ka kaVar, Object obj, List list) {
        HttpURLConnection httpURLConnection;
        Throwable th;
        if (kaVar.a() == ka.b.AD || kaVar.a() == ka.b.USER_SESSION || !yp.a(((Integer) this.e.a(sj.D)).intValue())) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            try {
                httpURLConnection = (HttpURLConnection) a(kaVar, obj, map).openConnection();
                try {
                    int i = g;
                    httpURLConnection.setConnectTimeout(i);
                    httpURLConnection.setReadTimeout(i);
                    httpURLConnection.setDefaultUseCaches(false);
                    httpURLConnection.setAllowUserInteraction(false);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setInstanceFollowRedirects(true);
                    httpURLConnection.setDoOutput(false);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("AppLovin-Event-Type", kaVar.b());
                    int responseCode = httpURLConnection.getResponseCode();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.f.a("HealthEventsReporter", kaVar.b() + " reported with code " + responseCode + " and extra parameters " + map);
                    }
                    this.c.put(kaVar, Long.valueOf(System.currentTimeMillis()));
                    yp.a(httpURLConnection, this.e);
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (com.applovin.impl.sdk.n.a()) {
                            this.f.d("HealthEventsReporter", "Failed to report " + kaVar.b() + " with extra parameters " + map, th);
                        }
                        yp.a(httpURLConnection, this.e);
                    } catch (Throwable th3) {
                        yp.a(httpURLConnection, this.e);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                httpURLConnection = null;
                th = th4;
            }
        }
    }

    private void d(final ka kaVar, final Object obj, List list) {
        final String str = (String) this.e.a(sj.E);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        double dA = kaVar.a(this.e);
        if (yp.a(dA)) {
            if (((Boolean) this.e.a(sj.K)).booleanValue()) {
                a(str, kaVar, obj, a(kaVar, dA, obj, list));
                return;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                final JSONObject jSONObjectA = a(kaVar, dA, obj, Collections.singletonList((Map) it.next()));
                this.b.execute(new Runnable() { // from class: com.applovin.impl.la$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a(str, kaVar, obj, jSONObjectA);
                    }
                });
            }
        }
    }

    private URL a(ka kaVar, Object obj, Map map) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder("https://ms.applovin.com/1.0/sdk/error?");
        Iterator it = b(kaVar, obj, map).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String strEncode = URLEncoder.encode((String) entry.getKey(), "UTF-8");
            String strEncode2 = URLEncoder.encode((String) entry.getValue(), "UTF-8");
            sb.append(strEncode);
            sb.append(com.ironsource.y8.i.b);
            sb.append(strEncode2);
            if (it.hasNext()) {
                sb.append(com.ironsource.y8.i.c);
            }
        }
        return new URL(sb.toString());
    }

    private Map b(ka kaVar, Object obj, Map map) {
        HashMap map2 = new HashMap();
        map2.put("type", kaVar.b());
        if (kaVar == ka.P || kaVar == ka.d0 || kaVar == ka.b0) {
            if (((Boolean) this.e.a(sj.p4)).booleanValue()) {
                CollectionUtils.putStringIfValid("wvvc", String.valueOf(sr.d()), map2);
                CollectionUtils.putStringIfValid("wvv", sr.c(), map2);
                CollectionUtils.putStringIfValid("wvpn", sr.b(), map2);
            }
            CollectionUtils.putStringIfValid("oglv", this.e.x().E(), map2);
        }
        Map mapH = this.e.x().H();
        map2.put(org.json.md.A, String.valueOf(mapH.get(org.json.md.A)));
        map2.put("country_code", String.valueOf(mapH.get("country_code")));
        map2.put("cc", this.e.s().getCountryCode());
        map2.put("applovin_random_token", this.e.Z());
        map2.put("compass_random_token", this.e.r());
        map2.put(org.json.md.v, Build.MODEL);
        map2.put("brand", Build.MANUFACTURER);
        map2.put("brand_name", Build.BRAND);
        map2.put("hardware", Build.HARDWARE);
        map2.put("revision", Build.DEVICE);
        map2.put(org.json.md.y, Build.VERSION.RELEASE);
        map2.put("api_level", String.valueOf(Build.VERSION.SDK_INT));
        map2.put("sdk_version", String.valueOf(AppLovinSdk.VERSION));
        CollectionUtils.putStringIfValid("ad_review_sdk_version", v.b(), map2);
        map2.put(org.json.md.s, (String) this.e.a(sj.v));
        a(map2);
        a(obj, map2);
        if (map != null) {
            map2.putAll(map);
        }
        return map2;
    }

    public static Map a(com.applovin.impl.sdk.ad.b bVar) {
        return a(bVar, false, (com.applovin.impl.sdk.j) null);
    }

    public static Map a(com.applovin.impl.sdk.ad.b bVar, boolean z, com.applovin.impl.sdk.j jVar) {
        HashMap map = new HashMap();
        if (bVar != null) {
            CollectionUtils.putStringIfValid("ad_domain", bVar.getAdDomain(), map);
            CollectionUtils.putStringIfValid("ad_id", String.valueOf(bVar.getAdIdNumber()), map);
            MaxAdFormat maxAdFormatD = bVar.getAdZone().d();
            CollectionUtils.putStringIfValid("ad_format", maxAdFormatD != null ? maxAdFormatD.getLabel() : null, map);
            CollectionUtils.putStringIfValid("ad_zone_id", bVar.getAdZone().e(), map);
            CollectionUtils.putStringIfValid("clcode", bVar.getClCode(), map);
            CollectionUtils.putStringIfValid("dsp_id", bVar.getDspId(), map);
            CollectionUtils.putStringIfValid("dsp_name", bVar.getDspName(), map);
            CollectionUtils.putStringIfValid("ad_size", bVar.getSize().getLabel(), map);
            CollectionUtils.putBooleanIfValid("is_persisted_ad", Boolean.valueOf(bVar.G0()), map);
            if (z) {
                if (((Boolean) jVar.a(sj.N)).booleanValue()) {
                    List listI = bVar.i();
                    HashMap map2 = new HashMap();
                    Iterator it = listI.iterator();
                    while (it.hasNext()) {
                        String path = ((Uri) it.next()).getPath();
                        map2.put(path, Formatter.formatFileSize(com.applovin.impl.sdk.j.m(), new File(path).length()));
                    }
                    map.put("path", map2.toString());
                }
                if ((bVar instanceof com.applovin.impl.sdk.ad.a) && ((Boolean) jVar.a(sj.O)).booleanValue()) {
                    map.put("details", ((com.applovin.impl.sdk.ad.a) bVar).l1());
                }
            }
        }
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(String str, ka kaVar, Object obj, JSONObject jSONObject) {
        HttpURLConnection httpURLConnection = null;
        try {
            URL url = new URL(str);
            byte[] bytes = jSONObject.toString().getBytes("UTF-8");
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
            try {
                int i = g;
                httpURLConnection2.setConnectTimeout(i);
                httpURLConnection2.setReadTimeout(i);
                httpURLConnection2.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                httpURLConnection2.setDefaultUseCaches(false);
                httpURLConnection2.setAllowUserInteraction(false);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setInstanceFollowRedirects(true);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setFixedLengthStreamingMode(bytes.length);
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setRequestProperty("AppLovin-Event-Type", kaVar.b());
                OutputStream outputStream = httpURLConnection2.getOutputStream();
                outputStream.write(bytes);
                outputStream.close();
                int responseCode = httpURLConnection2.getResponseCode();
                if (com.applovin.impl.sdk.n.a()) {
                    this.f.a("HealthEventsReporter", kaVar.b() + " reported with code " + responseCode);
                }
                this.c.put(kaVar, Long.valueOf(System.currentTimeMillis()));
                yp.a(httpURLConnection2, this.e);
            } catch (Throwable th) {
                th = th;
                httpURLConnection = httpURLConnection2;
                try {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.f.d("HealthEventsReporter", "Failed to report " + kaVar.b(), th);
                    }
                } finally {
                    yp.a(httpURLConnection, this.e);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private AppLovinAdSize a(h0 h0Var, com.applovin.impl.sdk.ad.b bVar) {
        AppLovinAdSize appLovinAdSizeF = h0Var != null ? h0Var.f() : null;
        if (appLovinAdSizeF != null) {
            return appLovinAdSizeF;
        }
        if (bVar != null) {
            return bVar.getSize();
        }
        return null;
    }

    private JSONObject a(ka kaVar, double d, Object obj, List list) {
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putLong(jSONObject, "ts_ms", System.currentTimeMillis());
        if (kaVar == ka.P || kaVar == ka.d0 || kaVar == ka.b0) {
            if (((Boolean) this.e.a(sj.p4)).booleanValue()) {
                JsonUtils.putStringIfValid(jSONObject, "wvvc", String.valueOf(sr.d()));
                JsonUtils.putStringIfValid(jSONObject, "wvv", sr.c());
                JsonUtils.putStringIfValid(jSONObject, "wvpn", sr.b());
            }
            JsonUtils.putStringIfValid(jSONObject, "oglv", this.e.x().E());
        }
        JSONObject jSONObject2 = new JSONObject();
        Map mapH = this.e.x().H();
        JsonUtils.putObject(jSONObject2, org.json.md.A, mapH.get(org.json.md.A));
        JsonUtils.putObject(jSONObject2, org.json.md.y, mapH.get(org.json.md.y));
        JsonUtils.putObject(jSONObject2, "brand", mapH.get("brand"));
        JsonUtils.putObject(jSONObject2, org.json.md.v, mapH.get(org.json.md.v));
        JsonUtils.putObject(jSONObject2, "revision", mapH.get("revision"));
        JsonUtils.putObject(jSONObject2, "country_code", mapH.get("country_code"));
        JsonUtils.putObject(jSONObject2, "cc", this.e.s().getCountryCode());
        JsonUtils.putObject(jSONObject2, "applovin_random_token", this.e.Z());
        JsonUtils.putObject(jSONObject2, "ad_review_sdk_version", StringUtils.emptyIfNull(v.b()));
        Map mapB = this.e.x().B();
        JsonUtils.putObject(jSONObject2, "sdk_version", mapB.get("sdk_version"));
        JsonUtils.putObject(jSONObject2, "plugin_version", this.e.a(sj.K3));
        JsonUtils.putObject(jSONObject2, "app_version", mapB.get("app_version"));
        JsonUtils.putObject(jSONObject2, com.ironsource.y8.h.V, mapB.get(com.ironsource.y8.h.V));
        JsonUtils.putObject(jSONObject2, "first_install", Boolean.toString(Boolean.TRUE.equals((Boolean) mapB.get("first_install_v2"))));
        JsonUtils.putObject(jSONObject2, org.json.md.s, this.e.a(sj.v));
        JsonUtils.putObject(jSONObject2, "mediation_provider", this.e.N());
        JsonUtils.putObject(jSONObject, "shared_fields", jSONObject2);
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            JSONObject jSONObject3 = new JSONObject();
            JsonUtils.putDouble(jSONObject3, "ts_ms", System.currentTimeMillis());
            JsonUtils.putString(jSONObject3, "type", kaVar.b());
            JsonUtils.putDouble(jSONObject3, "weight", d);
            JsonUtils.putString(jSONObject3, "level", "DEBUG");
            a(obj, map);
            JsonUtils.putAll(jSONObject3, (Map<String, ?>) map);
            jSONArray.put(jSONObject3);
        }
        JsonUtils.putObject(jSONObject, "events", jSONArray);
        return jSONObject;
    }

    public static Map a(fe feVar) {
        Map mapA = a((oe) feVar);
        CollectionUtils.putStringIfValid("bcode", feVar.B(), mapA);
        CollectionUtils.putStringIfValid("creative_id", feVar.getCreativeId(), mapA);
        CollectionUtils.putStringIfValid("ad_unit_id", feVar.getAdUnitId(), mapA);
        CollectionUtils.putStringIfValid("ad_format", feVar.getFormat().getLabel(), mapA);
        return mapA;
    }

    private List a(String str) {
        List<Integer> integerList = JsonUtils.getIntegerList(this.a, StringUtils.getHost(str), null);
        return integerList == null ? JsonUtils.getIntegerList(this.a, "default", null) : integerList;
    }

    private boolean a(ka kaVar, long j) {
        Long l = (Long) this.c.get(kaVar);
        return System.currentTimeMillis() - (l != null ? l.longValue() : -1L) < j;
    }

    public void a() {
        this.a = JsonUtils.deserialize((String) this.e.a(sj.M));
    }

    public void a(String str, String str2, int i) {
        a(str, str2, i, new HashMap());
    }

    public void a(String str, String str2, int i, HashMap map) {
        List listA = a(str2);
        boolean z = listA != null;
        if (z && listA.contains(Integer.valueOf(i))) {
            return;
        }
        if (z || i >= 400) {
            map.put(Constants.ScionAnalytics.PARAM_SOURCE, str);
            map.put("url", StringUtils.emptyIfNull(str2));
            map.put("code", String.valueOf(i));
            a(ka.Y, (Map) map);
        }
    }

    private void a(Object obj, Map map) {
        if (map == null) {
            return;
        }
        if (obj == null) {
            obj = this.e.B().a();
        }
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            map.put("fs_ad_network", "AppLovin");
            map.put("fs_ad_creative_id", Long.toString(((com.applovin.impl.sdk.ad.b) obj).getAdIdNumber()));
        } else if (obj instanceof fe) {
            fe feVar = (fe) obj;
            map.put("fs_ad_network", feVar.getNetworkName());
            map.put("fs_ad_creative_id", feVar.getCreativeId());
        } else {
            map.put("fs_ad_network", "None");
            map.put("fs_ad_creative_id", "None");
        }
    }

    private void a(Map map) {
        String packageName;
        PackageInfo packageInfo;
        try {
            PackageManager packageManager = com.applovin.impl.sdk.j.m().getPackageManager();
            packageName = com.applovin.impl.sdk.j.m().getPackageName();
            try {
                packageInfo = packageManager.getPackageInfo(packageName, 0);
            } catch (Throwable unused) {
                packageInfo = null;
            }
        } catch (Throwable unused2) {
            packageName = "";
        }
        map.put(com.ironsource.y8.h.V, packageName);
        map.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        map.put("app_version_code", String.valueOf(packageInfo != null ? packageInfo.versionCode : 0));
    }

    public void a(final ka kaVar, final Object obj, final List list, long j) {
        if (a(kaVar, j)) {
            return;
        }
        try {
            if (yp.h()) {
                this.b.execute(new Runnable() { // from class: com.applovin.impl.la$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.b(kaVar, obj, list);
                    }
                });
            } else {
                b(kaVar, obj, list);
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.n.a()) {
                this.f.d("HealthEventsReporter", "Failed to report " + kaVar.b() + " with extra parameters collection " + list, th);
            }
        }
    }

    public void a(ka kaVar, h0 h0Var, AppLovinError appLovinError) {
        a(kaVar, h0Var, (com.applovin.impl.sdk.ad.b) null, appLovinError);
    }

    private void a(ka kaVar, h0 h0Var, com.applovin.impl.sdk.ad.b bVar, AppLovinError appLovinError) {
        if (((Boolean) this.e.a(sj.L)).booleanValue() && this.e.y0()) {
            return;
        }
        HashMap map = new HashMap();
        if (bVar != null) {
            map.putAll(a(bVar));
        }
        if (h0Var != null) {
            CollectionUtils.putStringIfValid("ad_zone_id", h0Var.e(), map);
            MaxAdFormat maxAdFormatD = h0Var.d();
            if (maxAdFormatD != null) {
                CollectionUtils.putStringIfValid("ad_format", maxAdFormatD.getLabel(), map);
            }
        }
        AppLovinAdSize appLovinAdSizeA = a(h0Var, bVar);
        if (appLovinAdSizeA != null) {
            CollectionUtils.putStringIfValid("ad_size", appLovinAdSizeA.getLabel(), map);
        }
        if (appLovinError != null) {
            CollectionUtils.putStringIfValid("error_message", appLovinError.getMessage(), map);
            CollectionUtils.putStringIfValid(AndroidBridgeConstants.ERROR_CODE, String.valueOf(appLovinError.getCode()), map);
        }
        a(kaVar, (Map) map);
    }

    public void a(ka kaVar, fe feVar) {
        a(kaVar, feVar.getFormat(), feVar.getAdUnitId(), feVar, null);
    }

    public void a(ka kaVar, fe feVar, MaxError maxError) {
        a(kaVar, feVar.getFormat(), feVar.getAdUnitId(), feVar, maxError);
    }

    public void a(ka kaVar, com.applovin.impl.sdk.ad.b bVar) {
        a(kaVar, bVar != null ? bVar.getAdZone() : null, bVar, (AppLovinError) null);
    }

    private void a(ka kaVar, MaxAdFormat maxAdFormat, String str, fe feVar, MaxError maxError) {
        HashMap map = new HashMap();
        if (feVar != null) {
            map.putAll(a(feVar));
        } else {
            CollectionUtils.putStringIfValid("ad_unit_id", str, map);
            CollectionUtils.putStringIfValid("ad_format", maxAdFormat.getLabel(), map);
        }
        if (maxError != null) {
            CollectionUtils.putStringIfValid("error_message", maxError.getMessage(), map);
            CollectionUtils.putStringIfValid(AndroidBridgeConstants.ERROR_CODE, String.valueOf(maxError.getCode()), map);
            CollectionUtils.putStringIfValid("mediated_network_error_message", maxError.getMediatedNetworkErrorMessage(), map);
            CollectionUtils.putStringIfValid("mediated_network_error_code", String.valueOf(maxError.getMediatedNetworkErrorCode()), map);
        }
        a(kaVar, (Map) map);
    }

    public void a(ka kaVar, MaxAdFormat maxAdFormat, String str, MaxError maxError) {
        a(kaVar, maxAdFormat, str, null, maxError);
    }

    public void a(ka kaVar, Object obj, Map map, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(map);
        a(kaVar, obj, arrayList, j);
    }

    public void a(ka kaVar, String str) {
        a(kaVar, str, (Map) new HashMap());
    }

    public void a(ka kaVar, String str, Map map) {
        map.put(Constants.ScionAnalytics.PARAM_SOURCE, str);
        a(kaVar, map);
    }

    public void a(ka kaVar, String str, Map map, String str2) {
        if (!StringUtils.isValidString(str2) || this.d.add(str2)) {
            map.put(Constants.ScionAnalytics.PARAM_SOURCE, str);
            a(kaVar, str, map);
        }
    }

    public void a(ka kaVar, Map map) {
        a(kaVar, (Object) null, map, 0L);
    }

    public void a(ka kaVar, Map map, long j) {
        a(kaVar, (Object) null, map, j);
    }

    public void a(String str, String str2, Throwable th) {
        a(str, str2, th, new HashMap());
    }

    public void a(String str, String str2, Throwable th, Map map) {
        a(str + ":" + str2, th, map);
    }

    public void a(String str, Throwable th) {
        a(str, th, new HashMap());
    }

    public void a(String str, Throwable th, Map map) {
        map.put(Constants.ScionAnalytics.PARAM_SOURCE, str);
        map.put("top_main_method", th.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add(map);
        for (Throwable th2 : th.getSuppressed()) {
            HashMap map2 = new HashMap();
            CollectionUtils.putStringIfValid(Constants.ScionAnalytics.PARAM_SOURCE, str, map2);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), map2);
            CollectionUtils.putStringIfValid("suppressed_throwable", th2.toString(), map2);
            arrayList.add(map2);
        }
        a(ka.R, (Object) null, arrayList, 0L);
    }

    public void a(String str, String str2, com.applovin.impl.sdk.ad.b bVar) {
        HashMap map = new HashMap();
        map.put(Constants.ScionAnalytics.PARAM_SOURCE, str);
        map.put("error_message", str2);
        if (bVar != null) {
            map.putAll(a(bVar, true, this.e));
            boolean zK0 = bVar.K0();
            map.put("is_video_stream", String.valueOf(zK0));
            if (zK0 && (bVar instanceof com.applovin.impl.sdk.ad.a)) {
                CollectionUtils.putStringIfValid("video_url", ((com.applovin.impl.sdk.ad.a) bVar).o1(), map);
            } else {
                CollectionUtils.putStringIfValid("video_url", bVar.Q(), map);
            }
        }
        a(ka.W, (Map) map);
    }

    public static Map a(oe oeVar) {
        HashMap map = new HashMap(3);
        CollectionUtils.putStringIfValid("network_name", oeVar.c(), map);
        String strB = oeVar.b();
        CollectionUtils.putStringIfValid("adapter_class", oeVar.b(), map);
        CollectionUtils.putStringIfValid("adapter_version", ze.a(strB).getAdapterVersion(), map);
        return map;
    }

    public static Map a(MaxError maxError) {
        HashMap map = new HashMap(4);
        CollectionUtils.putStringIfValid("error_message", maxError.getMessage(), map);
        CollectionUtils.putStringIfValid(AndroidBridgeConstants.ERROR_CODE, String.valueOf(maxError.getCode()), map);
        CollectionUtils.putStringIfValid("mediated_network_error_message", maxError.getMediatedNetworkErrorMessage(), map);
        CollectionUtils.putStringIfValid("mediated_network_error_code", String.valueOf(maxError.getMediatedNetworkErrorCode()), map);
        return map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(ka kaVar, Object obj, List list) {
        if (AppLovinSdkUtils.isEmulator()) {
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.f.a("HealthEventsReporter", "Reporting " + kaVar.b() + " with extra parameters collection " + list);
        }
        c(kaVar, obj, list);
        d(kaVar, obj, list);
    }
}
