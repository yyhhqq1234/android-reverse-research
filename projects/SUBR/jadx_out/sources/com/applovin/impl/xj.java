package com.applovin.impl;

import android.os.SystemClock;
import com.applovin.mediation.MaxAdFormat;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class xj {
    private final com.applovin.impl.sdk.j a;
    private final Map b = new HashMap();
    private final Object c = new Object();

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[b.values().length];
            a = iArr;
            try {
                iArr[b.AD_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[b.AD_UNIT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[b.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum b {
        AD_FORMAT,
        AD_UNIT_ID,
        ALL
    }

    public xj(com.applovin.impl.sdk.j jVar) {
        this.a = jVar;
    }

    private static class c {
        private final yj a;
        private final long b;
        private final long c;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d() {
            return SystemClock.elapsedRealtime() - this.c > this.b;
        }

        public String toString() {
            return "SignalCacheManager.SignalWrapper(signal=" + c() + ", expirationTimeMillis=" + b() + ", cacheTimestampMillis=" + a() + ")";
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a((Object) this) || b() != cVar.b() || a() != cVar.a()) {
                return false;
            }
            yj yjVarC = c();
            yj yjVarC2 = cVar.c();
            return yjVarC != null ? yjVarC.equals(yjVarC2) : yjVarC2 == null;
        }

        public int hashCode() {
            long jB = b();
            long jA = a();
            int i = ((((int) (jB ^ (jB >>> 32))) + 59) * 59) + ((int) ((jA >>> 32) ^ jA));
            yj yjVarC = c();
            return (i * 59) + (yjVarC == null ? 43 : yjVarC.hashCode());
        }

        public yj c() {
            return this.a;
        }

        private c(yj yjVar, long j) {
            this.a = yjVar;
            this.b = j;
            this.c = SystemClock.elapsedRealtime();
        }

        protected boolean a(Object obj) {
            return obj instanceof c;
        }

        public long b() {
            return this.b;
        }

        /* synthetic */ c(yj yjVar, long j, a aVar) {
            this(yjVar, j);
        }

        public long a() {
            return this.c;
        }
    }

    public yj b(zj zjVar, String str, MaxAdFormat maxAdFormat) {
        String strA = a(zjVar, str, maxAdFormat);
        synchronized (this.c) {
            c cVar = (c) this.b.get(strA);
            if (cVar == null) {
                return null;
            }
            if (cVar.d()) {
                this.b.remove(strA);
                return null;
            }
            this.a.I();
            if (com.applovin.impl.sdk.n.a()) {
                this.a.I().a("SignalCacheManager", "Returning cached signal for: " + zjVar);
            }
            return cVar.a;
        }
    }

    private String a(zj zjVar, String str, MaxAdFormat maxAdFormat) {
        String strC = zjVar.c();
        int i = a.a[zjVar.t().ordinal()];
        if (i == 1) {
            return strC + "_" + maxAdFormat.getLabel();
        }
        if (i != 2) {
            return strC;
        }
        return strC + "_" + str;
    }

    public void a(yj yjVar, zj zjVar, String str, MaxAdFormat maxAdFormat) {
        if (yjVar == null) {
            return;
        }
        long jU = zjVar.u();
        if (jU <= 0) {
            return;
        }
        this.a.I();
        if (com.applovin.impl.sdk.n.a()) {
            this.a.I().a("SignalCacheManager", "Caching signal for: " + zjVar);
        }
        String strA = a(zjVar, str, maxAdFormat);
        c cVar = new c(yjVar, jU, null);
        synchronized (this.c) {
            this.b.put(strA, cVar);
        }
    }
}
