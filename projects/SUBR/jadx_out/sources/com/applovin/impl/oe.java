package com.applovin.impl;

import android.os.Bundle;
import androidx.arch.core.util.Function;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class oe {
    protected final com.applovin.impl.sdk.j a;
    private final JSONObject b;
    protected final JSONObject d;
    private final Map g;
    private final tl h;
    protected final tl i;
    private String j;
    private String k;
    private final Object c = new Object();
    protected final Object f = new Object();

    public String toString() {
        return "MediationAdapterSpec{adapterClass='" + b() + "', adapterName='" + c() + "', isTesting=" + p() + '}';
    }

    public oe(Map map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.j jVar) {
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (jSONObject2 == null) {
            throw new IllegalArgumentException("No full response specified");
        }
        if (jSONObject != null) {
            this.a = jVar;
            if (((Boolean) jVar.a(sj.i6)).booleanValue()) {
                this.h = new tl(jSONObject2);
                this.i = new tl(jSONObject);
                this.b = null;
                this.d = null;
            } else {
                this.b = jSONObject2;
                this.d = jSONObject;
                this.h = null;
                this.i = null;
            }
            this.g = map;
            return;
        }
        throw new IllegalArgumentException("No ad object specified");
    }

    public JSONObject g() {
        JSONObject jSONObject;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a();
        }
        synchronized (this.c) {
            jSONObject = this.b;
        }
        return jSONObject;
    }

    protected JSONObject a() {
        JSONObject jSONObject;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a();
        }
        synchronized (this.f) {
            jSONObject = this.d;
        }
        return jSONObject;
    }

    public String getAdUnitId() {
        return b("ad_unit_id", "");
    }

    public String b() {
        return a("class", (String) null);
    }

    protected Boolean a(String str, Boolean bool) {
        Boolean bool2;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, bool);
        }
        synchronized (this.f) {
            bool2 = JsonUtils.getBoolean(this.d, str, bool);
        }
        return bool2;
    }

    public String c() {
        return a("name", (String) null);
    }

    public String k() {
        return c().split("_")[0];
    }

    public boolean p() {
        return a("is_testing", Boolean.FALSE).booleanValue();
    }

    public Boolean n() {
        String str = this.a.f0().getExtraParameters().get("huc");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        if (c("huc")) {
            return a("huc", Boolean.FALSE);
        }
        return b("huc", (Boolean) null);
    }

    public Boolean o() {
        String str = this.a.f0().getExtraParameters().get("dns");
        if (StringUtils.isValidString(str)) {
            return Boolean.valueOf(str);
        }
        if (c("dns")) {
            return a("dns", Boolean.FALSE);
        }
        return b("dns", (Boolean) null);
    }

    public String d() {
        if (c("consent_string")) {
            return a("consent_string", (String) null);
        }
        if (d("consent_string")) {
            return b("consent_string", (String) null);
        }
        return this.a.j0().k();
    }

    public boolean r() {
        return a("run_on_ui_thread", Boolean.TRUE).booleanValue();
    }

    public Map i() {
        return this.g;
    }

    public Bundle l() {
        Bundle bundle;
        if (e("server_parameters") instanceof JSONObject) {
            tl tlVar = this.i;
            if (tlVar != null) {
                bundle = (Bundle) tlVar.a(new Function() { // from class: com.applovin.impl.oe$$ExternalSyntheticLambda0
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        return oe.a((tl) obj);
                    }
                });
            } else {
                bundle = JsonUtils.toBundle(a("server_parameters", (JSONObject) null));
            }
        } else {
            bundle = new Bundle();
        }
        int iJ = j();
        if (iJ != -1) {
            if (iJ == 2) {
                bundle.putBoolean("is_muted", this.a.f0().isMuted());
            } else {
                bundle.putBoolean("is_muted", iJ == 0);
            }
        }
        if (!bundle.containsKey("amount")) {
            bundle.putLong("amount", b("amount", 0L));
        }
        if (!bundle.containsKey("currency")) {
            bundle.putString("currency", b("currency", ""));
        }
        return bundle;
    }

    protected Boolean b(String str, Boolean bool) {
        Boolean bool2;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a(str, bool);
        }
        synchronized (this.c) {
            bool2 = JsonUtils.getBoolean(this.b, str, bool);
        }
        return bool2;
    }

    public Bundle f() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), l());
    }

    private int j() {
        return a("mute_state", b("mute_state", ((Integer) this.a.a(ue.q7)).intValue()));
    }

    public long m() {
        return a("adapter_timeout_ms", ((Long) this.a.a(ue.N6)).longValue());
    }

    public long h() {
        return a("init_completion_delay_ms", -1L);
    }

    public boolean s() {
        return a("eagerly_initialize", Boolean.TRUE).booleanValue();
    }

    protected boolean d(String str) {
        boolean zHas;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a(str);
        }
        synchronized (this.c) {
            zHas = this.b.has(str);
        }
        return zHas;
    }

    public String getPlacement() {
        return this.j;
    }

    public String e() {
        return this.k;
    }

    public boolean q() {
        return a("reinitialize_if_init_fails", Boolean.FALSE).booleanValue();
    }

    protected boolean c(String str) {
        boolean zHas;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str);
        }
        synchronized (this.f) {
            zHas = this.d.has(str);
        }
        return zHas;
    }

    protected double a(String str, float f) {
        double d;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, f);
        }
        synchronized (this.f) {
            d = JsonUtils.getDouble(this.d, str, f);
        }
        return d;
    }

    public void g(String str) {
        this.j = str;
    }

    protected float b(String str, float f) {
        float f2;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, f);
        }
        synchronized (this.f) {
            f2 = JsonUtils.getFloat(this.d, str, f);
        }
        return f2;
    }

    protected int b(String str, int i) {
        int i2;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a(str, i);
        }
        synchronized (this.c) {
            i2 = JsonUtils.getInt(this.b, str, i);
        }
        return i2;
    }

    protected Object e(String str) {
        Object objOpt;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.b(str);
        }
        synchronized (this.f) {
            objOpt = this.d.opt(str);
        }
        return objOpt;
    }

    protected int a(String str, int i) {
        int i2;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, i);
        }
        synchronized (this.f) {
            i2 = JsonUtils.getInt(this.d, str, i);
        }
        return i2;
    }

    protected void c(String str, int i) {
        tl tlVar = this.i;
        if (tlVar != null) {
            tlVar.b(str, i);
            return;
        }
        synchronized (this.f) {
            JsonUtils.putInt(this.d, str, i);
        }
    }

    protected JSONArray b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a(str, jSONArray);
        }
        synchronized (this.c) {
            jSONArray2 = JsonUtils.getJSONArray(this.b, str, jSONArray);
        }
        return jSONArray2;
    }

    public void f(String str) {
        this.k = str;
    }

    protected JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, jSONArray);
        }
        synchronized (this.f) {
            jSONArray2 = JsonUtils.getJSONArray(this.d, str, jSONArray);
        }
        return jSONArray2;
    }

    protected long b(String str, long j) {
        long j2;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a(str, j);
        }
        synchronized (this.c) {
            j2 = JsonUtils.getLong(this.b, str, j);
        }
        return j2;
    }

    protected void c(String str, long j) {
        tl tlVar = this.i;
        if (tlVar != null) {
            tlVar.b(str, j);
            return;
        }
        synchronized (this.f) {
            JsonUtils.putLong(this.d, str, j);
        }
    }

    protected JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, jSONObject);
        }
        synchronized (this.f) {
            jSONObject2 = JsonUtils.getJSONObject(this.d, str, jSONObject);
        }
        return jSONObject2;
    }

    protected void c(String str, String str2) {
        tl tlVar = this.i;
        if (tlVar != null) {
            tlVar.b(str, str2);
            return;
        }
        synchronized (this.f) {
            JsonUtils.putString(this.d, str, str2);
        }
    }

    protected long a(String str, long j) {
        long j2;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, j);
        }
        synchronized (this.f) {
            j2 = JsonUtils.getLong(this.d, str, j);
        }
        return j2;
    }

    public List b(String str) {
        List listOptList;
        List listOptList2;
        if (str != null) {
            tl tlVar = this.h;
            if (tlVar != null) {
                listOptList = tlVar.b(str, Collections.emptyList());
            } else {
                listOptList = JsonUtils.optList(b(str, new JSONArray()), Collections.emptyList());
            }
            tl tlVar2 = this.i;
            if (tlVar2 != null) {
                listOptList2 = tlVar2.b(str, Collections.emptyList());
            } else {
                listOptList2 = JsonUtils.optList(a(str, new JSONArray()), Collections.emptyList());
            }
            ArrayList arrayList = new ArrayList(listOptList.size() + listOptList2.size());
            arrayList.addAll(listOptList);
            arrayList.addAll(listOptList2);
            return arrayList;
        }
        throw new IllegalArgumentException("No key specified");
    }

    protected String b(String str, String str2) {
        String string;
        tl tlVar = this.h;
        if (tlVar != null) {
            return tlVar.a(str, str2);
        }
        synchronized (this.c) {
            string = JsonUtils.getString(this.b, str, str2);
        }
        return string;
    }

    public String a(String str) {
        String strA = a(str, "");
        return StringUtils.isValidString(strA) ? strA : b(str, "");
    }

    protected String a(String str, String str2) {
        String string;
        tl tlVar = this.i;
        if (tlVar != null) {
            return tlVar.a(str, str2);
        }
        synchronized (this.f) {
            string = JsonUtils.getString(this.d, str, str2);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bundle a(tl tlVar) {
        return JsonUtils.toBundle(tlVar.a("server_parameters", (JSONObject) null));
    }

    protected void a(String str, Object obj) {
        tl tlVar = this.i;
        if (tlVar != null) {
            tlVar.a(str, obj);
            return;
        }
        synchronized (this.f) {
            JsonUtils.putObject(this.d, str, obj);
        }
    }
}
