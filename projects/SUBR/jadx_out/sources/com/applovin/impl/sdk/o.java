package com.applovin.impl.sdk;

import com.applovin.impl.fe;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o {
    private final n a;
    private final Map b = new HashMap(5);
    private final Object c = new Object();
    private final Map d = Collections.synchronizedMap(new HashMap(5));
    private final Map e = Collections.synchronizedMap(new HashMap(5));

    public static class a {
        private final String a;
        private final String b;
        private final String c;
        private String d;
        private String e;

        public a(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public String c() {
            return this.c;
        }

        public String d() {
            return this.d;
        }

        public String e() {
            return this.e;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String strB = b();
            String strB2 = aVar.b();
            if (strB != null ? !strB.equals(strB2) : strB2 != null) {
                return false;
            }
            String strA = a();
            String strA2 = aVar.a();
            if (strA != null ? !strA.equals(strA2) : strA2 != null) {
                return false;
            }
            String strC = c();
            String strC2 = aVar.c();
            if (strC != null ? !strC.equals(strC2) : strC2 != null) {
                return false;
            }
            String strD = d();
            String strD2 = aVar.d();
            if (strD != null ? !strD.equals(strD2) : strD2 != null) {
                return false;
            }
            String strE = e();
            String strE2 = aVar.e();
            return strE != null ? strE.equals(strE2) : strE2 == null;
        }

        public int hashCode() {
            String strB = b();
            int iHashCode = strB == null ? 43 : strB.hashCode();
            String strA = a();
            int iHashCode2 = ((iHashCode + 59) * 59) + (strA == null ? 43 : strA.hashCode());
            String strC = c();
            int iHashCode3 = (iHashCode2 * 59) + (strC == null ? 43 : strC.hashCode());
            String strD = d();
            int iHashCode4 = (iHashCode3 * 59) + (strD == null ? 43 : strD.hashCode());
            String strE = e();
            return (iHashCode4 * 59) + (strE != null ? strE.hashCode() : 43);
        }

        public String toString() {
            return "MediationWaterfallWinnerTracker.WinningAd(bCode=" + b() + ", adapterName=" + a() + ", networkName=" + c() + ", secondWinnerAdapterName=" + d() + ", secondWinnerNetworkName=" + e() + ")";
        }

        public String b() {
            return this.a;
        }

        public String a() {
            return this.b;
        }
    }

    o(j jVar) {
        this.a = jVar.I();
    }

    public void c(fe feVar) {
        a(feVar, null);
    }

    public a c(String str) {
        a aVar;
        synchronized (this.c) {
            aVar = (a) this.b.get(str);
        }
        return aVar;
    }

    public void b(fe feVar) {
        this.d.put(feVar.getAdUnitId(), feVar.R());
    }

    public String b(String str) {
        return (String) this.d.get(str);
    }

    public void a(fe feVar) {
        synchronized (this.c) {
            String adUnitId = feVar.getAdUnitId();
            a aVar = (a) this.b.get(adUnitId);
            if (aVar == null) {
                if (n.a()) {
                    this.a.a("MediationWaterfallWinnerTracker", "No previous winner to clear.");
                }
                return;
            }
            if (feVar.B().equals(aVar.b())) {
                if (n.a()) {
                    this.a.a("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + aVar);
                }
                this.b.remove(adUnitId);
            } else if (n.a()) {
                this.a.a("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + feVar + " , since it could have already been updated with a new ad: " + aVar);
            }
        }
    }

    public void a(fe feVar, fe feVar2) {
        synchronized (this.c) {
            if (n.a()) {
                this.a.a("MediationWaterfallWinnerTracker", "Tracking winning ad: " + feVar);
            }
            a aVar = new a(feVar.B(), feVar.c(), feVar.getNetworkName());
            if (feVar2 != null) {
                aVar.d = feVar2.c();
                aVar.e = feVar2.getNetworkName();
            }
            this.b.put(feVar.getAdUnitId(), aVar);
        }
        this.e.put(feVar.getAdUnitId(), feVar.R());
    }

    public String a(String str) {
        return (String) this.e.get(str);
    }
}
