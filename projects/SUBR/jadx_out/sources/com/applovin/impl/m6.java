package com.applovin.impl;

import android.util.SparseArray;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m6 implements dp.c {
    private final int a;
    private final List b;

    private vp b(dp.b bVar) {
        return new vp(c(bVar));
    }

    public m6(int i) {
        this(i, db.h());
    }

    private List c(dp.b bVar) {
        String str;
        int i;
        List listA;
        if (a(32)) {
            return this.b;
        }
        ah ahVar = new ah(bVar.d);
        List arrayList = this.b;
        while (ahVar.a() > 0) {
            int iW = ahVar.w();
            int iD = ahVar.d() + ahVar.w();
            if (iW == 134) {
                arrayList = new ArrayList();
                int iW2 = ahVar.w() & 31;
                for (int i2 = 0; i2 < iW2; i2++) {
                    String strC = ahVar.c(3);
                    int iW3 = ahVar.w();
                    boolean z = (iW3 & 128) != 0;
                    if (z) {
                        i = iW3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte bW = (byte) ahVar.w();
                    ahVar.g(1);
                    if (z) {
                        listA = o3.a((bW & SignedBytes.MAX_POWER_OF_TWO) != 0);
                    } else {
                        listA = null;
                    }
                    arrayList.add(new e9.b().f(str).e(strC).a(i).a(listA).a());
                }
            }
            ahVar.f(iD);
        }
        return arrayList;
    }

    public m6(int i, List list) {
        this.a = i;
        this.b = list;
    }

    @Override // com.applovin.impl.dp.c
    public dp a(int i, dp.b bVar) {
        if (i == 2) {
            return new ih(new ea(b(bVar)));
        }
        if (i == 3 || i == 4) {
            return new ih(new rf(bVar.b));
        }
        if (i == 21) {
            return new ih(new za());
        }
        if (i == 27) {
            if (a(4)) {
                return null;
            }
            return new ih(new ga(a(bVar), a(1), a(8)));
        }
        if (i == 36) {
            return new ih(new ha(a(bVar)));
        }
        if (i != 89) {
            if (i != 138) {
                if (i == 172) {
                    return new ih(new m(bVar.b));
                }
                if (i == 257) {
                    return new hj(new dh("application/vnd.dvb.ait"));
                }
                if (i != 129) {
                    if (i != 130) {
                        if (i == 134) {
                            if (a(16)) {
                                return null;
                            }
                            return new hj(new dh("application/x-scte35"));
                        }
                        if (i != 135) {
                            switch (i) {
                                case 15:
                                    if (a(2)) {
                                        return null;
                                    }
                                    return new ih(new k0(false, bVar.b));
                                case 16:
                                    return new ih(new fa(b(bVar)));
                                case 17:
                                    if (a(2)) {
                                        return null;
                                    }
                                    return new ih(new ac(bVar.b));
                                default:
                                    return null;
                            }
                        }
                    } else if (!a(64)) {
                        return null;
                    }
                }
                return new ih(new j(bVar.b));
            }
            return new ih(new d7(bVar.b));
        }
        return new ih(new l7(bVar.c));
    }

    private boolean a(int i) {
        return (i & this.a) != 0;
    }

    @Override // com.applovin.impl.dp.c
    public SparseArray a() {
        return new SparseArray();
    }

    private nj a(dp.b bVar) {
        return new nj(c(bVar));
    }
}
