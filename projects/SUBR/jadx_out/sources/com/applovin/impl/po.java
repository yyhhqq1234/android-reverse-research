package com.applovin.impl;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class po implements o2 {
    public static final po d = new po(new oo[0]);
    public static final o2.a f = new o2.a() { // from class: com.applovin.impl.po$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return po.a(bundle);
        }
    };
    public final int a;
    private final oo[] b;
    private int c;

    public po(oo... ooVarArr) {
        this.b = ooVarArr;
        this.a = ooVarArr.length;
    }

    public oo a(int i) {
        return this.b[i];
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b);
        }
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || po.class != obj.getClass()) {
            return false;
        }
        po poVar = (po) obj;
        return this.a == poVar.a && Arrays.equals(this.b, poVar.b);
    }

    public int a(oo ooVar) {
        for (int i = 0; i < this.a; i++) {
            if (this.b[i] == ooVar) {
                return i;
            }
        }
        return -1;
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    public boolean a() {
        return this.a == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ po a(Bundle bundle) {
        return new po((oo[]) p2.a(oo.d, bundle.getParcelableArrayList(b(0)), db.h()).toArray(new oo[0]));
    }
}
