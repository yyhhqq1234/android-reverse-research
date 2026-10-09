package com.applovin.impl.mediation;

import android.text.TextUtils;
import com.applovin.impl.fe;
import com.applovin.impl.oe;
import com.applovin.impl.sdk.j;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private final j b;
    private final n c;
    private final Map a = Collections.synchronizedMap(new HashMap(16));
    private final Object d = new Object();
    private final Map e = new HashMap();
    private final Set f = new HashSet();
    private final Object g = new Object();
    private final Set h = new HashSet();

    public f(j jVar) {
        if (jVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.b = jVar;
        this.c = jVar.I();
    }

    public Collection b() {
        Set setUnmodifiableSet;
        synchronized (this.d) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.f);
        }
        return setUnmodifiableSet;
    }

    public Collection c() {
        Set setUnmodifiableSet;
        synchronized (this.d) {
            HashSet hashSet = new HashSet(this.e.size());
            Iterator it = this.e.values().iterator();
            while (it.hasNext()) {
                hashSet.add(((Class) it.next()).getName());
            }
            setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        }
        return setUnmodifiableSet;
    }

    public void a(String str, String str2, fe feVar) {
        synchronized (this.g) {
            this.b.I();
            if (n.a()) {
                this.b.I().b("MediationAdapterManager", "Adding " + str + " to list of disabled adapters.");
            }
            this.h.add(new a(str, str2, feVar, this.b));
        }
    }

    private static class a {
        private final String a;
        private final String b;
        private final MaxAdFormat c;
        private final JSONObject d;

        JSONObject a() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.a.equals(aVar.a) || !this.b.equals(aVar.b)) {
                return false;
            }
            MaxAdFormat maxAdFormat = this.c;
            MaxAdFormat maxAdFormat2 = aVar.c;
            return maxAdFormat == null ? maxAdFormat2 == null : maxAdFormat.equals(maxAdFormat2);
        }

        public int hashCode() {
            int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
            MaxAdFormat maxAdFormat = this.c;
            return iHashCode + (maxAdFormat != null ? maxAdFormat.hashCode() : 0);
        }

        public String toString() {
            return "DisabledAdapterInfo{className='" + this.a + "', operationTag='" + this.b + "', format=" + this.c + '}';
        }

        a(String str, String str2, fe feVar, j jVar) {
            this.a = str;
            this.b = str2;
            JSONObject jSONObject = new JSONObject();
            this.d = jSONObject;
            JsonUtils.putString(jSONObject, "class", str);
            JsonUtils.putString(jSONObject, "operation", str2);
            if (feVar != null) {
                this.c = feVar.getFormat();
                JsonUtils.putString(jSONObject, "format", feVar.getFormat().getLabel());
            } else {
                this.c = null;
            }
        }
    }

    g a(oe oeVar) {
        return a(oeVar, false);
    }

    g a(oe oeVar, boolean z) {
        Class cls;
        g gVar;
        if (oeVar != null) {
            String strC = oeVar.c();
            String strB = oeVar.b();
            if (TextUtils.isEmpty(strC)) {
                if (n.a()) {
                    this.c.b("MediationAdapterManager", "No adapter name provided for " + strB + ", not loading the adapter ");
                }
                return null;
            }
            if (TextUtils.isEmpty(strB)) {
                if (n.a()) {
                    this.c.b("MediationAdapterManager", "Unable to find default className for '" + strC + "'");
                }
                return null;
            }
            if (z && (gVar = (g) this.a.get(strB)) != null) {
                return gVar;
            }
            synchronized (this.d) {
                if (!this.f.contains(strB)) {
                    if (this.e.containsKey(strB)) {
                        cls = (Class) this.e.get(strB);
                    } else {
                        Class clsA = a(strB);
                        if (clsA == null) {
                            if (n.a()) {
                                this.c.k("MediationAdapterManager", "Adapter " + strC + " could not be loaded, class " + strB + " not found");
                            }
                            this.f.add(strB);
                            return null;
                        }
                        cls = clsA;
                    }
                    g gVarA = a(oeVar, cls, z);
                    if (gVarA != null) {
                        if (n.a()) {
                            this.c.a("MediationAdapterManager", "Loaded " + strC);
                        }
                        this.e.put(strB, cls);
                        if (z) {
                            this.a.put(oeVar.b(), gVarA);
                        }
                        return gVarA;
                    }
                    if (n.a()) {
                        this.c.b("MediationAdapterManager", "Failed to load " + strC);
                    }
                    this.f.add(strB);
                    return null;
                }
                if (n.a()) {
                    this.c.a("MediationAdapterManager", "Not attempting to load " + strC + " due to prior errors");
                }
                return null;
            }
        }
        throw new IllegalArgumentException("No adapter spec specified");
    }

    private g a(oe oeVar, Class cls, boolean z) {
        try {
            return new g(oeVar, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.b.q0()), z, this.b);
        } catch (Throwable th) {
            n.c("MediationAdapterManager", "Failed to load adapter: " + oeVar, th);
            return null;
        }
    }

    public Collection a() {
        ArrayList arrayList;
        synchronized (this.g) {
            arrayList = new ArrayList(this.h.size());
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).a());
            }
        }
        return arrayList;
    }

    private Class a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            n.h("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
