package com.applovin.impl.sdk;

import com.applovin.impl.fe;
import com.applovin.impl.p6;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.j5;
import org.json.z8;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private final j a;
    private final Map b = new HashMap();
    private final Object c = new Object();
    private final Map d = new HashMap();
    private final Object e = new Object();

    public static class b {
        private final String a;
        private final String b;
        private final String c;
        private final String d;
        private final String e;
        private final String f;
        private final String g;
        private final int h;
        private long i;
        private final ArrayDeque j;

        public String b() {
            return this.d;
        }

        public String c() {
            return this.c;
        }

        public String d() {
            return this.e;
        }

        public String e() {
            return this.f;
        }

        public String f() {
            return this.g;
        }

        public String g() {
            return this.b;
        }

        public int h() {
            return this.h;
        }

        public c i() {
            return (c) this.j.getLast();
        }

        public String toString() {
            return "AdInfo{state='" + i() + "', adUnitId='" + this.a + "', format='" + this.b + "', adapterName='" + this.c + "', adapterClass='" + this.d + "', adapterVersion='" + this.e + "', bCode='" + this.f + "', creativeId='" + this.g + "', updated=" + this.i + '}';
        }

        public String a() {
            return this.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(c cVar) {
            this.i = System.currentTimeMillis();
            this.j.add(cVar);
        }

        private b(fe feVar, c cVar) {
            this.j = new ArrayDeque();
            this.a = feVar.getAdUnitId();
            this.b = feVar.getFormat().getLabel();
            this.c = feVar.c();
            this.d = feVar.b();
            this.e = feVar.z();
            this.f = feVar.B();
            this.g = feVar.getCreativeId();
            this.h = feVar.hashCode();
            a(cVar);
        }
    }

    public enum c {
        LOAD("load"),
        SHOW(j5.v),
        HIDE("hide"),
        CLICK(z8.CLICK),
        DESTROY("destroy"),
        SHOW_ERROR("show_error");

        public static final Set i = new HashSet(Arrays.asList(values()));
        private final String a;

        c(String str) {
            this.a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.a;
        }
    }

    public interface d {
        void a(b bVar);
    }

    g(j jVar) {
        this.a = jVar;
        a();
    }

    public void a(fe feVar, c cVar) {
        synchronized (this.e) {
            int iHashCode = feVar.hashCode();
            b bVar = (b) this.d.get(Integer.valueOf(iHashCode));
            if (bVar == null) {
                if (cVar == c.DESTROY) {
                    return;
                }
                bVar = new b(feVar, cVar);
                this.d.put(Integer.valueOf(iHashCode), bVar);
            } else if (bVar.i() == cVar) {
                return;
            } else {
                bVar.a(cVar);
            }
            if (cVar == c.DESTROY) {
                this.d.remove(Integer.valueOf(iHashCode));
            }
            a(bVar, cVar);
        }
    }

    public void a() {
        synchronized (this.c) {
            for (c cVar : c.values()) {
                this.b.put(cVar, new HashSet());
            }
        }
    }

    public void a(d dVar, Set set) {
        synchronized (this.c) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                a((c) it.next()).add(dVar);
            }
        }
    }

    public void a(d dVar) {
        synchronized (this.c) {
            Iterator it = this.b.keySet().iterator();
            while (it.hasNext()) {
                a((c) it.next()).remove(dVar);
            }
        }
    }

    private Set a(c cVar) {
        synchronized (this.c) {
            Set set = (Set) this.b.get(cVar);
            if (p6.a(set)) {
                return set;
            }
            return new HashSet();
        }
    }

    private void a(b bVar, c cVar) {
        synchronized (this.c) {
            Iterator it = a(cVar).iterator();
            while (it.hasNext()) {
                ((d) it.next()).a(bVar);
            }
        }
    }
}
