package com.applovin.impl.mediation;

import android.app.Activity;
import com.applovin.impl.am;
import com.applovin.impl.an;
import com.applovin.impl.fi;
import com.applovin.impl.ka;
import com.applovin.impl.la;
import com.applovin.impl.oe;
import com.applovin.impl.p6;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.tm;
import com.applovin.impl.ue;
import com.applovin.impl.uj;
import com.applovin.mediation.adapter.MaxAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private final j a;
    private final n b;
    private final AtomicBoolean c = new AtomicBoolean();
    private final Set d = new HashSet();
    private final Object e = new Object();
    private final JSONArray f = new JSONArray();
    private final LinkedHashMap g = new LinkedHashMap();
    private final Object h = new Object();
    private final Map i = new HashMap();
    private final Map j = new HashMap();
    private final Object k = new Object();
    private List l;

    public e(j jVar) {
        this.a = jVar;
        this.b = jVar.I();
    }

    public void b(oe oeVar, Activity activity) {
        List list;
        if (((Boolean) this.a.a(ue.J7)).booleanValue()) {
            a(oeVar, activity);
            return;
        }
        if (((Boolean) this.a.a(ue.I7)).booleanValue()) {
            oe oeVar2 = (oe) this.i.get(oeVar.b());
            if (oeVar2 != null) {
                oeVar = oeVar2;
            }
        } else {
            if (this.a.k0().c() && (list = this.l) != null) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        oeVar = null;
                        break;
                    }
                    oe oeVar3 = (oe) it.next();
                    if (oeVar3.b().equals(oeVar.b())) {
                        oeVar = oeVar3;
                        break;
                    }
                }
            }
            if (oeVar == null) {
                return;
            }
        }
        g gVarA = this.a.L().a(oeVar);
        if (gVarA != null) {
            if (n.a()) {
                this.b.d("MediationAdapterInitializationManager", "Initializing adapter " + oeVar);
            }
            c(oeVar);
            gVarA.a(MaxAdapterParametersImpl.a(oeVar), activity, (MaxAdapter.OnCompletionListener) null);
            return;
        }
        n.h("MediationAdapterInitializationManager", "Mediation adapter could not be initialized, double check that the adapter is included in your build. Adapter spec: " + oeVar);
    }

    void a(oe oeVar, long j, MaxAdapter.InitializationStatus initializationStatus, String str) {
        boolean z;
        if (initializationStatus == null || initializationStatus == MaxAdapter.InitializationStatus.INITIALIZING) {
            return;
        }
        synchronized (this.h) {
            z = !b(oeVar);
            if (z) {
                this.g.put(oeVar.b(), Integer.valueOf(initializationStatus.getCode()));
                JSONObject jSONObject = new JSONObject();
                JsonUtils.putString(jSONObject, "class", oeVar.b());
                JsonUtils.putString(jSONObject, "init_status", String.valueOf(initializationStatus.getCode()));
                JsonUtils.putLong(jSONObject, "init_time_ms", j);
                JsonUtils.putString(jSONObject, "error_message", JSONObject.quote(str));
                this.f.put(jSONObject);
            }
        }
        if (z) {
            this.a.a(oeVar);
            this.a.P().processAdapterInitializationPostback(oeVar, j, initializationStatus, str);
            this.a.q().a(initializationStatus, oeVar.b());
        }
    }

    private void c(oe oeVar) {
        String strB = oeVar.b();
        synchronized (this.e) {
            if (this.d.contains(strB)) {
                return;
            }
            this.d.add(strB);
            this.a.D().a(ka.w, la.a(oeVar));
        }
    }

    public boolean c() {
        return this.c.get();
    }

    boolean b(oe oeVar) {
        boolean zContainsKey;
        synchronized (this.h) {
            zContainsKey = this.g.containsKey(oeVar.b());
        }
        return zContainsKey;
    }

    public JSONArray b() {
        JSONArray jSONArrayShallowCopy;
        synchronized (this.h) {
            jSONArrayShallowCopy = JsonUtils.shallowCopy(this.f);
        }
        return jSONArrayShallowCopy;
    }

    private oe a(oe oeVar) {
        List<oe> list;
        if (((Boolean) this.a.a(ue.I7)).booleanValue()) {
            oe oeVar2 = (oe) this.i.get(oeVar.b());
            return oeVar2 != null ? oeVar2 : oeVar;
        }
        if (!this.a.k0().c() || (list = this.l) == null) {
            return oeVar;
        }
        for (oe oeVar3 : list) {
            if (oeVar3.b().equals(oeVar.b())) {
                return oeVar3;
            }
        }
        return null;
    }

    public fi a(oe oeVar, Activity activity) {
        oe oeVarA = a(oeVar);
        if (oeVarA == null) {
            return fi.a("AdapterInitialization:" + oeVar.c(), MaxAdapter.InitializationStatus.DOES_NOT_APPLY);
        }
        String strB = oeVar.b();
        synchronized (this.k) {
            fi fiVar = (fi) this.j.get(strB);
            if (fiVar != null && (!fiVar.d() || !oeVarA.q())) {
                return fiVar;
            }
            final fi fiVar2 = new fi("AdapterInitialization:" + oeVar.c());
            this.j.put(strB, fiVar2);
            g gVarA = this.a.L().a(oeVarA);
            if (gVarA == null) {
                fiVar2.a("Adapter implementation not found");
                return fiVar2;
            }
            if (n.a()) {
                this.b.d("MediationAdapterInitializationManager", "Initializing adapter " + oeVarA);
            }
            c(oeVarA);
            gVarA.a(MaxAdapterParametersImpl.a(oeVarA), activity, new MaxAdapter.OnCompletionListener() { // from class: com.applovin.impl.mediation.e$$ExternalSyntheticLambda0
                @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
                public final void onCompletion(MaxAdapter.InitializationStatus initializationStatus, String str) {
                    e.a(fiVar2, initializationStatus, str);
                }
            });
            an.a(oeVarA.m(), fiVar2, "The adapter (" + oeVar.c() + ") timed out initializing", "MediationAdapterInitializationManager", this.a);
            return fiVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(fi fiVar, MaxAdapter.InitializationStatus initializationStatus, String str) {
        if (initializationStatus != null && initializationStatus != MaxAdapter.InitializationStatus.INITIALIZING) {
            if (initializationStatus == MaxAdapter.InitializationStatus.INITIALIZED_FAILURE) {
                fiVar.a(str);
                return;
            } else {
                fiVar.b(initializationStatus);
                return;
            }
        }
        p6.a("Adapters should never report a null or INITIALIZING status.", new Object[0]);
        fiVar.a("Adapter reported INITIALIZING");
    }

    public void a(Activity activity) {
        if (this.c.compareAndSet(false, true)) {
            String str = (String) this.a.a(uj.G);
            if (StringUtils.isValidString(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    List<oe> listA = a(JsonUtils.getJSONArray(jSONObject, this.a.k0().c() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray()), jSONObject);
                    this.l = listA;
                    for (oe oeVar : listA) {
                        this.i.put(oeVar.b(), oeVar);
                    }
                    long j = StringUtils.parseLong(this.a.f0().getExtraParameters().get("adapter_initialization_delay_ms"), -1L);
                    am amVar = new am(listA, activity, this.a);
                    if (j > 0) {
                        this.a.i0().a(amVar, tm.b.MEDIATION, j);
                    } else {
                        this.a.i0().a(amVar);
                    }
                } catch (JSONException e) {
                    if (n.a()) {
                        this.b.a("MediationAdapterInitializationManager", "Failed to parse auto-init adapters JSON", e);
                    }
                    p6.a((Throwable) e);
                }
            }
        }
    }

    public Integer a(String str) {
        Integer num;
        synchronized (this.h) {
            num = (Integer) this.g.get(str);
        }
        return num;
    }

    public Set a() {
        HashSet hashSet;
        synchronized (this.h) {
            hashSet = new HashSet(this.g.keySet());
        }
        return hashSet;
    }

    private List a(JSONArray jSONArray, JSONObject jSONObject) {
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new oe(Collections.EMPTY_MAP, JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), jSONObject, this.a));
        }
        return arrayList;
    }

    public void a(MaxAdapter.InitializationStatus initializationStatus) {
        synchronized (this.h) {
            this.g.put("com.applovin.mediation.adapters.AppLovinMediationAdapter", Integer.valueOf(initializationStatus.getCode()));
        }
        this.a.q().a(initializationStatus, "com.applovin.mediation.adapters.AppLovinMediationAdapter");
    }
}
