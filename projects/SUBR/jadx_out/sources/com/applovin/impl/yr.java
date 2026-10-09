package com.applovin.impl;

import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class yr extends ek {
    private final ah o;
    private final ur p;

    public yr() {
        super("WebvttDecoder");
        this.o = new ah();
        this.p = new ur();
    }

    @Override // com.applovin.impl.ek
    protected nl a(byte[] bArr, int i, boolean z) throws pl {
        wr wrVarA;
        this.o.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        try {
            zr.b(this.o);
            while (!TextUtils.isEmpty(this.o.l())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iA = a(this.o);
                if (iA == 0) {
                    return new as(arrayList2);
                }
                if (iA == 1) {
                    b(this.o);
                } else if (iA == 2) {
                    if (arrayList2.isEmpty()) {
                        this.o.l();
                        arrayList.addAll(this.p.c(this.o));
                    } else {
                        throw new pl("A style block was found after the first cue.");
                    }
                } else if (iA == 3 && (wrVarA = xr.a(this.o, arrayList)) != null) {
                    arrayList2.add(wrVarA);
                }
            }
        } catch (ch e) {
            throw new pl(e);
        }
    }

    private static void b(ah ahVar) {
        while (!TextUtils.isEmpty(ahVar.l())) {
        }
    }

    private static int a(ah ahVar) {
        int i = -1;
        int iD = 0;
        while (i == -1) {
            iD = ahVar.d();
            String strL = ahVar.l();
            if (strL == null) {
                i = 0;
            } else if ("STYLE".equals(strL)) {
                i = 2;
            } else {
                i = strL.startsWith("NOTE") ? 1 : 3;
            }
        }
        ahVar.f(iD);
        return i;
    }
}
