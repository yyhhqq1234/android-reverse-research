package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class pf extends ek {
    private final ah o;

    public pf() {
        super("Mp4WebvttDecoder");
        this.o = new ah();
    }

    @Override // com.applovin.impl.ek
    protected nl a(byte[] bArr, int i, boolean z) throws pl {
        this.o.a(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.o.a() > 0) {
            if (this.o.a() >= 8) {
                int iJ = this.o.j();
                if (this.o.j() == 1987343459) {
                    arrayList.add(a(this.o, iJ - 8));
                } else {
                    this.o.g(iJ - 8);
                }
            } else {
                throw new pl("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new qf(arrayList);
    }

    private static a5 a(ah ahVar, int i) throws pl {
        CharSequence charSequenceA = null;
        a5.b bVarC = null;
        while (i > 0) {
            if (i >= 8) {
                int iJ = ahVar.j();
                int iJ2 = ahVar.j();
                int i2 = iJ - 8;
                String strA = xp.a(ahVar.c(), ahVar.d(), i2);
                ahVar.g(i2);
                i = (i - 8) - i2;
                if (iJ2 == 1937011815) {
                    bVarC = xr.c(strA);
                } else if (iJ2 == 1885436268) {
                    charSequenceA = xr.a((String) null, strA.trim(), Collections.emptyList());
                }
            } else {
                throw new pl("Incomplete vtt cue box header found.");
            }
        }
        if (charSequenceA == null) {
            charSequenceA = "";
        }
        if (bVarC != null) {
            return bVarC.a(charSequenceA).a();
        }
        return xr.a(charSequenceA);
    }
}
