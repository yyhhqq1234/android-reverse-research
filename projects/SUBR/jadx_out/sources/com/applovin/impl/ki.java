package com.applovin.impl;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class ki implements o2 {
    public static final o2.a a = new o2.a() { // from class: com.applovin.impl.ki$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return ki.a(bundle);
        }
    };

    ki() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ki a(Bundle bundle) {
        int i = bundle.getInt(a(0), -1);
        if (i == 0) {
            return (ki) ma.d.a(bundle);
        }
        if (i == 1) {
            return (ki) fh.c.a(bundle);
        }
        if (i == 2) {
            return (ki) cl.d.a(bundle);
        }
        if (i != 3) {
            throw new IllegalArgumentException("Encountered unknown rating type: " + i);
        }
        return (ki) co.d.a(bundle);
    }

    private static String a(int i) {
        return Integer.toString(i, 36);
    }
}
