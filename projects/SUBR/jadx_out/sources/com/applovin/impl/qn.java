package com.applovin.impl;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class qn implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final com.applovin.impl.sdk.j a;
    private final SharedPreferences b;
    private Integer c;
    private Integer d;
    private Integer e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private final List k;

    public String j() {
        return a("CMP Name", d()) + a("CMP SDK ID", this.c) + a("CMP SDK Version", this.d) + a(uj.r.a(), this.e) + a(uj.s.a(), this.f) + a(uj.t.a(), this.g);
    }

    public Integer e() {
        return this.c;
    }

    public Integer f() {
        return this.d;
    }

    public Integer g() {
        return this.e;
    }

    public String k() {
        return this.f;
    }

    public String c() {
        return this.g;
    }

    public List i() {
        return this.k;
    }

    public qn(com.applovin.impl.sdk.j jVar) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.applovin.impl.sdk.j.m());
        this.b = defaultSharedPreferences;
        this.k = new ArrayList();
        this.a = jVar;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        this.c = a(uj.p.a());
        this.d = a(uj.q.a());
        this.e = h();
        this.f = (String) vj.a(uj.s, (Object) null, defaultSharedPreferences, false);
        this.g = (String) vj.a(uj.t, (Object) null, defaultSharedPreferences, false);
        this.h = (String) vj.a(uj.u, (Object) null, defaultSharedPreferences, false);
        this.i = (String) vj.a(uj.w, (Object) null, defaultSharedPreferences, false);
        this.j = (String) vj.a(uj.y, (Object) null, defaultSharedPreferences, false);
        c(this.g);
    }

    public String d() {
        return on.a(this.c);
    }

    public boolean b() {
        return tn.a(this.g);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str == null) {
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences are cleared - setting all stored TC data to null");
            }
            a();
            return;
        }
        if (str.equals(uj.p.a())) {
            this.c = a(str);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.c);
            }
            this.a.L0();
            return;
        }
        if (str.equals(uj.q.a())) {
            this.d = a(str);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.d);
                return;
            }
            return;
        }
        if (str.equals(uj.r.a())) {
            this.e = h();
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.e);
                return;
            }
            return;
        }
        if (str.equals(uj.s.a())) {
            this.f = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f);
            }
            this.a.L0();
            return;
        }
        if (str.equals(uj.t.a())) {
            this.g = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.g);
            }
            c(this.g);
            b(this.g);
            return;
        }
        if (str.equals(uj.u.a())) {
            this.h = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.h);
            }
            d(this.h);
            return;
        }
        if (str.equals(uj.v.a())) {
            String str2 = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str2);
                return;
            }
            return;
        }
        if (str.equals(uj.w.a())) {
            this.i = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.i);
                return;
            }
            return;
        }
        if (str.equals(uj.x.a())) {
            String str3 = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str3);
                return;
            }
            return;
        }
        if (str.equals(uj.y.a())) {
            this.j = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.j);
                return;
            }
            return;
        }
        if (str.contains("IABTCF_PublisherRestrictions")) {
            String str4 = (String) vj.a(str, (Object) null, String.class, sharedPreferences);
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str4);
            }
        }
    }

    public Boolean c(int i) {
        String str = this.j;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(tn.a(str, i - 1));
    }

    public Boolean d(int i) {
        String str = this.h;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(tn.a(str, i - 1));
    }

    public Boolean b(int i) {
        String str = this.i;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(tn.a(str, i - 1));
    }

    private Integer h() {
        String strA = uj.r.a();
        if (this.b.contains(strA)) {
            Integer num = (Integer) vj.a(strA, null, Integer.class, this.b, false);
            if (num != null) {
                if (num.intValue() == 1 || num.intValue() == 0) {
                    return num;
                }
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().b("TcfManager", "Integer value (" + num + ") for " + strA + " is invalid - setting GDPR Applies to null");
                }
                return null;
            }
            Long l = (Long) vj.a(strA, null, Long.class, this.b, false);
            if (l != null) {
                if (l.longValue() != 1 && l.longValue() != 0) {
                    this.a.I();
                    if (com.applovin.impl.sdk.n.a()) {
                        this.a.I().b("TcfManager", "Long value (" + l + ") for " + strA + " is invalid - setting GDPR Applies to null");
                    }
                    return null;
                }
                return Integer.valueOf(l.intValue());
            }
            Boolean bool = (Boolean) vj.a(strA, null, Boolean.class, this.b, false);
            if (bool != null) {
                return Integer.valueOf(bool.booleanValue() ? 1 : 0);
            }
            String str = (String) vj.a(strA, null, String.class, this.b, false);
            if (str != null) {
                if (!"1".equals(str) && !org.json.mediationsdk.metadata.a.g.equals(str)) {
                    if (!"0".equals(str) && !"false".equals(str)) {
                        this.a.I();
                        if (com.applovin.impl.sdk.n.a()) {
                            this.a.I().b("TcfManager", "String value (" + str + ") for " + strA + " is invalid - setting GDPR Applies to null");
                        }
                        return null;
                    }
                    return 0;
                }
                return 1;
            }
        }
        return null;
    }

    private void a() {
        this.c = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((rn) it.next()).a(null);
        }
    }

    public Boolean a(int i) {
        return tn.a(i, this.g);
    }

    private void c(String str) {
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("TcfManager", "Attempting to update consent from Additional Consent string: " + str);
        }
        Boolean boolA = tn.a(1301, str);
        if (boolA != null) {
            if (boolA.booleanValue()) {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().a("TcfManager", "Found AppLovin ID in the list of consented ATP IDs - setting user consent to true");
                }
                a4.b(true, com.applovin.impl.sdk.j.m());
            } else {
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().a("TcfManager", "Could not find AppLovin ID in the list of consented ATP IDs - setting user consent to false");
                }
                a4.b(false, com.applovin.impl.sdk.j.m());
            }
            this.a.L0();
            return;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("TcfManager", "AC string is not valid or AppLovin was not listed on the CMP flow - no consent update");
        }
    }

    private void d(String str) {
        if (str != null) {
            for (rn rnVar : this.k) {
                if (rnVar.f() == rn.a.TCF_VENDOR && rnVar.d() != null) {
                    rnVar.a(Boolean.valueOf(tn.a(str, rnVar.d().intValue() - 1)));
                }
            }
            return;
        }
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((rn) it.next()).a(null);
        }
    }

    private void b(String str) {
        for (rn rnVar : this.k) {
            if (rnVar.f() == rn.a.ATP_NETWORK && rnVar.d() != null) {
                rnVar.a(tn.a(rnVar.d().intValue(), str));
            }
        }
    }

    private String a(String str, Object obj) {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(str);
        sb.append(" - ");
        sb.append(obj != null ? obj.toString() : "No value set");
        return sb.toString();
    }

    private Integer a(String str) {
        if (this.b.contains(str)) {
            Integer num = (Integer) vj.a(str, null, Integer.class, this.b, false);
            if (num != null) {
                return num;
            }
            Long l = (Long) vj.a(str, null, Long.class, this.b, false);
            if (l != null && l.longValue() >= -2147483648L && l.longValue() <= 2147483647L) {
                return Integer.valueOf(l.intValue());
            }
            String str2 = (String) vj.a(str, null, String.class, this.b, false);
            if (str2 != null) {
                if (StringUtils.isNumeric(str2)) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                this.a.I();
                if (com.applovin.impl.sdk.n.a()) {
                    this.a.I().b("TcfManager", "String value (" + str2 + ") for " + str + " is not numeric - storing value as null");
                }
            }
        }
        return null;
    }

    public void a(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.k.add(((je) it.next()).t());
        }
        d(this.h);
        b(this.g);
    }
}
