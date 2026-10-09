package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class tj {
    protected final com.applovin.impl.sdk.j a;
    protected final Context b;
    protected final SharedPreferences c;
    private final Map d = new HashMap();
    private final Object e = new Object();

    public tj(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
        Context contextM = com.applovin.impl.sdk.j.m();
        this.b = contextM;
        this.c = contextM.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(sj.class.getName());
            Class.forName(ue.class.getName());
        } catch (Throwable unused) {
        }
        d();
    }

    public List c(sj sjVar) {
        return CollectionUtils.explode((String) a(sjVar));
    }

    public List b(sj sjVar) {
        ArrayList arrayList = new ArrayList(6);
        Iterator it = c(sjVar).iterator();
        while (it.hasNext()) {
            arrayList.add(MaxAdFormat.formatFromString((String) it.next()));
        }
        return arrayList;
    }

    private String b() {
        return "com.applovin.sdk." + yp.e(this.a.a0()) + ".";
    }

    public void e() {
        String strB = b();
        synchronized (this.e) {
            SharedPreferences.Editor editorEdit = this.c.edit();
            for (sj sjVar : sj.c()) {
                Object obj = this.d.get(sjVar.b());
                if (obj != null) {
                    this.a.a(strB + sjVar.b(), obj, editorEdit);
                }
            }
            editorEdit.apply();
        }
    }

    public void d() {
        String strB = b();
        synchronized (this.e) {
            for (sj sjVar : sj.c()) {
                try {
                    Object objA = this.a.a(strB + sjVar.b(), null, sjVar.a().getClass(), this.c);
                    if (objA != null) {
                        this.d.put(sjVar.b(), objA);
                    }
                } catch (Throwable th) {
                    com.applovin.impl.sdk.n.c("SettingsManager", "Unable to load \"" + sjVar.b() + "\"", th);
                    this.a.D().a("SettingsManager", "initSettings", th);
                }
            }
        }
    }

    public void a() {
        synchronized (this.e) {
            this.d.clear();
        }
        this.a.a(this.c);
    }

    public Object a(sj sjVar) {
        if (sjVar != null) {
            synchronized (this.e) {
                Object obj = this.d.get(sjVar.b());
                if (obj == null) {
                    return sjVar.a();
                }
                return sjVar.a(obj);
            }
        }
        throw new IllegalArgumentException("No setting type specified");
    }

    public boolean c() {
        return this.a.f0().isVerboseLoggingEnabled() || ((Boolean) a(sj.l)).booleanValue();
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Double) {
            return Double.valueOf(jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }

    public void a(JSONObject jSONObject) {
        synchronized (this.e) {
            try {
                boolean zBooleanValue = JsonUtils.getBoolean(jSONObject, sj.x.b(), Boolean.FALSE).booleanValue();
                HashMap map = zBooleanValue ? new HashMap() : null;
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (next != null && next.length() > 0) {
                        try {
                            try {
                                sj sjVarA = a(next, (sj) null);
                                if (sjVarA != null) {
                                    Object objA = zBooleanValue ? a(sjVarA) : null;
                                    Object objA2 = a(next, jSONObject, sjVarA.a());
                                    this.d.put(sjVarA.b(), objA2);
                                    if (sjVarA == sj.v5) {
                                        this.d.put(sj.w5.b(), Long.valueOf(System.currentTimeMillis()));
                                    }
                                    if (zBooleanValue && !objA2.equals(objA)) {
                                        map.put(sjVarA, objA);
                                    }
                                }
                            } catch (Throwable th) {
                                com.applovin.impl.sdk.n.c("SettingsManager", "Unable to convert setting object ", th);
                                this.a.D().a("SettingsManager", "loadSettingsThrowable", th);
                            }
                        } catch (JSONException e) {
                            com.applovin.impl.sdk.n.c("SettingsManager", "Unable to parse JSON settingsValues array", e);
                            this.a.D().a("SettingsManager", "loadSettingsException", e);
                        }
                    }
                }
                if (zBooleanValue && map.size() > 0) {
                    pc pcVar = new pc();
                    pcVar.a("========== UPDATED SETTINGS ==========");
                    for (sj sjVar : map.keySet()) {
                        pcVar.a(sjVar.b(), a(sjVar) + " (" + map.get(sjVar) + ")");
                    }
                    pcVar.a("========== END ==========");
                    this.a.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.a.I().a("SettingsManager", pcVar.toString());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public sj a(String str, sj sjVar) {
        synchronized (this.e) {
            for (sj sjVar2 : sj.c()) {
                if (sjVar2.b().equals(str)) {
                    return sjVar2;
                }
            }
            return sjVar;
        }
    }

    public void a(sj sjVar, Object obj) {
        if (sjVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj != null) {
            synchronized (this.e) {
                this.d.put(sjVar.b(), obj);
            }
            return;
        }
        throw new IllegalArgumentException("No new value specified");
    }
}
