package com.applovin.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
final class ej extends xl {
    private long b;
    private long[] c;
    private long[] d;

    private static HashMap f(ah ahVar) {
        HashMap map = new HashMap();
        while (true) {
            String strH = h(ahVar);
            int i = i(ahVar);
            if (i == 9) {
                return map;
            }
            Object objA = a(ahVar, i);
            if (objA != null) {
                map.put(strH, objA);
            }
        }
    }

    @Override // com.applovin.impl.xl
    protected boolean a(ah ahVar) {
        return true;
    }

    public ej() {
        super(new h7());
        this.b = -9223372036854775807L;
        this.c = new long[0];
        this.d = new long[0];
    }

    public long a() {
        return this.b;
    }

    public long[] c() {
        return this.c;
    }

    private static Date c(ah ahVar) {
        Date date = new Date((long) d(ahVar).doubleValue());
        ahVar.g(2);
        return date;
    }

    public long[] b() {
        return this.d;
    }

    private static int i(ah ahVar) {
        return ahVar.w();
    }

    @Override // com.applovin.impl.xl
    protected boolean b(ah ahVar, long j) {
        if (i(ahVar) != 2 || !"onMetaData".equals(h(ahVar)) || i(ahVar) != 8) {
            return false;
        }
        HashMap mapE = e(ahVar);
        Object obj = mapE.get(IronSourceConstants.EVENTS_DURATION);
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapE.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.c = new long[size];
                this.d = new long[size];
                for (int i = 0; i < size; i++) {
                    Object obj5 = list.get(i);
                    Object obj6 = list2.get(i);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.c[i] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.d[i] = ((Double) obj5).longValue();
                    } else {
                        this.c = new long[0];
                        this.d = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }

    private static Double d(ah ahVar) {
        return Double.valueOf(Double.longBitsToDouble(ahVar.s()));
    }

    private static String h(ah ahVar) {
        int iC = ahVar.C();
        int iD = ahVar.d();
        ahVar.g(iC);
        return new String(ahVar.c(), iD, iC);
    }

    private static ArrayList g(ah ahVar) {
        int iA = ahVar.A();
        ArrayList arrayList = new ArrayList(iA);
        for (int i = 0; i < iA; i++) {
            Object objA = a(ahVar, i(ahVar));
            if (objA != null) {
                arrayList.add(objA);
            }
        }
        return arrayList;
    }

    private static HashMap e(ah ahVar) {
        int iA = ahVar.A();
        HashMap map = new HashMap(iA);
        for (int i = 0; i < iA; i++) {
            String strH = h(ahVar);
            Object objA = a(ahVar, i(ahVar));
            if (objA != null) {
                map.put(strH, objA);
            }
        }
        return map;
    }

    private static Object a(ah ahVar, int i) {
        if (i == 8) {
            return e(ahVar);
        }
        if (i == 10) {
            return g(ahVar);
        }
        if (i == 11) {
            return c(ahVar);
        }
        if (i == 0) {
            return d(ahVar);
        }
        if (i == 1) {
            return b(ahVar);
        }
        if (i == 2) {
            return h(ahVar);
        }
        if (i != 3) {
            return null;
        }
        return f(ahVar);
    }

    private static Boolean b(ah ahVar) {
        return Boolean.valueOf(ahVar.w() == 1);
    }
}
