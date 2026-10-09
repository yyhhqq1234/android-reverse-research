package com.applovin.impl;

import com.applovin.exoplayer2.common.base.Splitter;
import com.google.android.gms.nearby.messages.NearbyMessagesStatusCodes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class mj {
    private static final Splitter d = Splitter.on(':');
    private static final Splitter e = Splitter.on('*');
    private final List a = new ArrayList();
    private int b = 0;
    private int c;

    private void a(k8 k8Var, th thVar) {
        ah ahVar = new ah(8);
        k8Var.d(ahVar.c(), 0, 8);
        this.c = ahVar.m() + 8;
        if (ahVar.j() != 1397048916) {
            thVar.a = 0L;
        } else {
            thVar.a = k8Var.f() - ((long) (this.c - 12));
            this.b = 2;
        }
    }

    private void b(k8 k8Var, th thVar) {
        long jA = k8Var.a();
        int i = this.c - 20;
        ah ahVar = new ah(i);
        k8Var.d(ahVar.c(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            ahVar.g(2);
            short sO = ahVar.o();
            if (sO != 2192 && sO != 2816 && sO != 2817 && sO != 2819 && sO != 2820) {
                ahVar.g(8);
            } else {
                this.a.add(new a(sO, (jA - ((long) this.c)) - ((long) ahVar.m()), ahVar.m()));
            }
        }
        if (this.a.isEmpty()) {
            thVar.a = 0L;
        } else {
            this.b = 3;
            thVar.a = ((a) this.a.get(0)).b;
        }
    }

    private static final class a {
        public final int a;
        public final long b;
        public final int c;

        public a(int i, long j, int i2) {
            this.a = i;
            this.b = j;
            this.c = i2;
        }
    }

    private static int a(String str) throws ch {
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "SlowMotion_Data":
                return 2192;
            case "Super_SlowMotion_Edit_Data":
                return 2819;
            case "Super_SlowMotion_Data":
                return 2816;
            case "Super_SlowMotion_Deflickering_On":
                return NearbyMessagesStatusCodes.BLUETOOTH_OFF;
            case "Super_SlowMotion_BGM":
                return 2817;
            default:
                throw ch.a("Invalid SEF name", null);
        }
    }

    public int a(k8 k8Var, th thVar, List list) throws ch {
        int i = this.b;
        long j = 0;
        if (i == 0) {
            long jA = k8Var.a();
            if (jA != -1 && jA >= 8) {
                j = jA - 8;
            }
            thVar.a = j;
            this.b = 1;
        } else if (i == 1) {
            a(k8Var, thVar);
        } else if (i == 2) {
            b(k8Var, thVar);
        } else {
            if (i != 3) {
                throw new IllegalStateException();
            }
            a(k8Var, list);
            thVar.a = 0L;
        }
        return 1;
    }

    private void a(k8 k8Var, List list) throws ch {
        long jF = k8Var.f();
        int iA = (int) ((k8Var.a() - k8Var.f()) - ((long) this.c));
        ah ahVar = new ah(iA);
        k8Var.d(ahVar.c(), 0, iA);
        for (int i = 0; i < this.a.size(); i++) {
            a aVar = (a) this.a.get(i);
            ahVar.f((int) (aVar.b - jF));
            ahVar.g(4);
            int iM = ahVar.m();
            int iA2 = a(ahVar.c(iM));
            int i2 = aVar.c - (iM + 8);
            if (iA2 == 2192) {
                list.add(a(ahVar, i2));
            } else if (iA2 != 2816 && iA2 != 2817 && iA2 != 2819 && iA2 != 2820) {
                throw new IllegalStateException();
            }
        }
    }

    private static jk a(ah ahVar, int i) throws ch {
        ArrayList arrayList = new ArrayList();
        List<String> listSplitToList = e.splitToList(ahVar.c(i));
        for (int i2 = 0; i2 < listSplitToList.size(); i2++) {
            List<String> listSplitToList2 = d.splitToList(listSplitToList.get(i2));
            if (listSplitToList2.size() == 3) {
                try {
                    arrayList.add(new jk.b(Long.parseLong(listSplitToList2.get(0)), Long.parseLong(listSplitToList2.get(1)), 1 << (Integer.parseInt(listSplitToList2.get(2)) - 1)));
                } catch (NumberFormatException e2) {
                    throw ch.a(null, e2);
                }
            } else {
                throw ch.a(null, null);
            }
        }
        return new jk(arrayList);
    }

    public void a() {
        this.a.clear();
        this.b = 0;
    }
}
