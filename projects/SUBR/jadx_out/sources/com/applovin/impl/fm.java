package com.applovin.impl;

import android.content.Context;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class fm extends yl {
    private static JSONObject m;
    private static final Object n = new Object();
    private static final Map o = Collections.synchronizedMap(new HashMap());
    private final String h;
    private final MaxAdFormat i;
    private final Map j;
    private final Context k;
    private final b l;

    public interface b {
        void a(JSONArray jSONArray);
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray;
        try {
            synchronized (n) {
                jSONArray = JsonUtils.getJSONArray(m, "signal_providers", null);
            }
            if (jSONArray != null && jSONArray.length() > 0) {
                if (o.size() > 0) {
                    b(jSONArray, m);
                    return;
                } else {
                    a(jSONArray, m);
                    return;
                }
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k(this.b, "Unable to find cached signal providers, fetching signal providers from SharedPreferences.");
            }
            JSONObject jSONObject = new JSONObject((String) this.a.a(uj.F, JsonUtils.EMPTY_JSON));
            JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            if (jSONArray2 != null && jSONArray2.length() != 0) {
                if (o.size() > 0) {
                    b(jSONArray2, jSONObject);
                    return;
                } else {
                    a(jSONArray2, jSONObject);
                    return;
                }
            }
            a("No signal providers found", (Throwable) null);
        } catch (InterruptedException e) {
            a("Failed to wait for signals", e);
            this.a.D().a("TaskCollectSignals", "waitForSignals", e);
        } catch (JSONException e2) {
            a("Failed to parse signals JSON", e2);
            this.a.D().a("TaskCollectSignals", "parseSignalsJSON", e2);
        } catch (Throwable th) {
            a("Failed to collect signals", th);
            this.a.D().a("TaskCollectSignals", "collectSignals", th);
        }
    }

    public fm(String str, MaxAdFormat maxAdFormat, Map map, Context context, com.applovin.impl.sdk.j jVar, b bVar) {
        super("TaskCollectSignals", jVar);
        this.h = str;
        this.i = maxAdFormat;
        this.j = map;
        this.k = context;
        this.l = bVar;
    }

    private void a(final zj zjVar, final yj.a aVar) {
        if (zjVar.r()) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.fm$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(zjVar, aVar);
                }
            });
        } else {
            this.a.P().collectSignal(this.h, this.i, zjVar, this.k, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(zj zjVar, yj.a aVar) {
        this.a.P().collectSignal(this.h, this.i, zjVar, this.k, aVar);
    }

    private void b(JSONArray jSONArray, JSONObject jSONObject) throws JSONException {
        Set set = (Set) o.get(this.h);
        if (set != null && !set.isEmpty()) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (set.contains(JsonUtils.getString(jSONObject2, "name", null))) {
                    jSONArray2.put(jSONObject2);
                }
            }
            a(jSONArray2, jSONObject);
            return;
        }
        a("No signal providers found for ad unit: " + this.h, (Throwable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c implements yj.a, Runnable {
        private final b a;
        private final Object b;
        private int c;
        private final AtomicBoolean d;
        private final Collection f;
        private final com.applovin.impl.sdk.j g;
        private final com.applovin.impl.sdk.n h;

        private c(int i, b bVar, com.applovin.impl.sdk.j jVar) {
            this.c = i;
            this.a = bVar;
            this.g = jVar;
            this.h = jVar.I();
            this.b = new Object();
            this.f = new ArrayList(i);
            this.d = new AtomicBoolean();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.d.compareAndSet(false, true)) {
                a();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            ArrayList<yj> arrayList;
            synchronized (this.b) {
                arrayList = new ArrayList(this.f);
            }
            JSONArray jSONArray = new JSONArray();
            for (yj yjVar : arrayList) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    zj zjVarF = yjVar.f();
                    jSONObject.put("name", zjVarF.c());
                    jSONObject.put("class", zjVarF.b());
                    jSONObject.put("adapter_version", yjVar.a());
                    jSONObject.put("sdk_version", yjVar.d());
                    JSONObject jSONObject2 = new JSONObject();
                    MaxError maxErrorC = yjVar.c();
                    if (maxErrorC != null) {
                        jSONObject2.put("error_message", maxErrorC.getMessage());
                    } else {
                        jSONObject2.put("signal", yjVar.e());
                    }
                    jSONObject2.put("signal_collection_time_ms", yjVar.b());
                    jSONObject2.put("is_cached", yjVar.g());
                    jSONObject.put("data", jSONObject2);
                    jSONArray.put(jSONObject);
                    if (com.applovin.impl.sdk.n.a()) {
                        this.h.a("TaskCollectSignals", "Collected signal from " + zjVarF);
                    }
                } catch (JSONException e) {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.h.a("TaskCollectSignals", "Failed to create signal data", e);
                    }
                    this.g.D().a("TaskCollectSignals", "createSignalsData", e);
                }
            }
            a(jSONArray);
        }

        private void a(JSONArray jSONArray) {
            b bVar = this.a;
            if (bVar != null) {
                bVar.a(jSONArray);
            }
        }

        @Override // com.applovin.impl.yj.a
        public void a(yj yjVar) {
            boolean z;
            synchronized (this.b) {
                this.f.add(yjVar);
                int i = this.c - 1;
                this.c = i;
                z = i < 1;
            }
            if (z && this.d.compareAndSet(false, true)) {
                if (yp.h() && ((Boolean) this.g.a(sj.R)).booleanValue()) {
                    this.g.i0().a((yl) new jn(this.g, "handleSignalCollectionCompleted", new Runnable() { // from class: com.applovin.impl.fm$c$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a();
                        }
                    }), tm.b.MEDIATION);
                } else {
                    a();
                }
            }
        }
    }

    private void a(JSONArray jSONArray, JSONObject jSONObject) throws JSONException {
        c cVar = new c(jSONArray.length(), this.l, this.a);
        this.a.i0().a(new jn(this.a, "timeoutCollectSignal", cVar), tm.b.TIMEOUT, ((Long) this.a.a(ue.M6)).longValue());
        for (int i = 0; i < jSONArray.length(); i++) {
            a(new zj(this.j, jSONArray.getJSONObject(i), jSONObject, this.a), cVar);
        }
    }

    public static void a(JSONObject jSONObject, com.applovin.impl.sdk.j jVar) {
        try {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "ad_unit_signal_providers", (JSONObject) null);
            if (jSONObject2 != null) {
                for (String str : JsonUtils.toList(jSONObject2.names())) {
                    o.put(str, new HashSet(JsonUtils.getList(jSONObject2, str, null)));
                }
            }
        } catch (JSONException e) {
            com.applovin.impl.sdk.n.c("TaskCollectSignals", "Failed to parse ad unit signal providers for JSON object: " + jSONObject, e);
            jVar.D().a("TaskCollectSignals", "parseAdUnitSignalProvidersJSON", e);
        }
    }

    private void a(String str, Throwable th) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "No signals collected: " + str, th);
        }
        b bVar = this.l;
        if (bVar != null) {
            bVar.a(new JSONArray());
        }
    }

    public static void a(JSONObject jSONObject) {
        synchronized (n) {
            m = jSONObject;
        }
    }
}
