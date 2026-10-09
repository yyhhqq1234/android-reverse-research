package com.applovin.impl;

import com.google.android.gms.nearby.connection.ConnectionsStatusCodes;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
final class s1 extends xl {
    private static final int[] e = {5512, 11025, 22050, 44100};
    private boolean b;
    private boolean c;
    private int d;

    public s1(qo qoVar) {
        super(qoVar);
    }

    @Override // com.applovin.impl.xl
    protected boolean a(ah ahVar) throws xl.a {
        if (!this.b) {
            int iW = ahVar.w();
            int i = (iW >> 4) & 15;
            this.d = i;
            if (i == 2) {
                this.a.a(new e9.b().f("audio/mpeg").c(1).n(e[(iW >> 2) & 3]).a());
                this.c = true;
            } else if (i == 7 || i == 8) {
                this.a.a(new e9.b().f(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw").c(1).n(ConnectionsStatusCodes.STATUS_NETWORK_NOT_CONNECTED).a());
                this.c = true;
            } else if (i != 10) {
                throw new xl.a("Audio format not supported: " + this.d);
            }
            this.b = true;
        } else {
            ahVar.g(1);
        }
        return true;
    }

    @Override // com.applovin.impl.xl
    protected boolean b(ah ahVar, long j) {
        if (this.d == 2) {
            int iA = ahVar.a();
            this.a.a(ahVar, iA);
            this.a.a(j, 1, iA, 0, null);
            return true;
        }
        int iW = ahVar.w();
        if (iW == 0 && !this.c) {
            int iA2 = ahVar.a();
            byte[] bArr = new byte[iA2];
            ahVar.a(bArr, 0, iA2);
            a.b bVarA = a.a(bArr);
            this.a.a(new e9.b().f("audio/mp4a-latm").a(bVarA.c).c(bVarA.b).n(bVarA.a).a(Collections.singletonList(bArr)).a());
            this.c = true;
            return false;
        }
        if (this.d == 10 && iW != 1) {
            return false;
        }
        int iA3 = ahVar.a();
        this.a.a(ahVar, iA3);
        this.a.a(j, 1, iA3, 0, null);
        return true;
    }
}
