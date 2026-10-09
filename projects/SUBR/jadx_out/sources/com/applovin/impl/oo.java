package com.applovin.impl;

import android.os.Bundle;
import java.util.Arrays;
import org.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class oo implements o2 {
    public static final o2.a d = new o2.a() { // from class: com.applovin.impl.oo$$ExternalSyntheticLambda0
        @Override // com.applovin.impl.o2.a
        public final o2 a(Bundle bundle) {
            return oo.a(bundle);
        }
    };
    public final int a;
    private final e9[] b;
    private int c;

    private static int c(int i) {
        return i | 16384;
    }

    public oo(e9... e9VarArr) {
        b1.a(e9VarArr.length > 0);
        this.b = e9VarArr;
        this.a = e9VarArr.length;
        a();
    }

    public e9 a(int i) {
        return this.b[i];
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        }
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || oo.class != obj.getClass()) {
            return false;
        }
        oo ooVar = (oo) obj;
        return this.a == ooVar.a && Arrays.equals(this.b, ooVar.b);
    }

    private static String b(int i) {
        return Integer.toString(i, 36);
    }

    public int a(e9 e9Var) {
        int i = 0;
        while (true) {
            e9[] e9VarArr = this.b;
            if (i >= e9VarArr.length) {
                return -1;
            }
            if (e9Var == e9VarArr[i]) {
                return i;
            }
            i++;
        }
    }

    private static String a(String str) {
        return (str == null || str.equals("und")) ? "" : str;
    }

    private void a() {
        String strA = a(this.b[0].c);
        int iC = c(this.b[0].f);
        int i = 1;
        while (true) {
            e9[] e9VarArr = this.b;
            if (i >= e9VarArr.length) {
                return;
            }
            if (!strA.equals(a(e9VarArr[i].c))) {
                e9[] e9VarArr2 = this.b;
                a("languages", e9VarArr2[0].c, e9VarArr2[i].c, i);
                return;
            } else {
                if (iC != c(this.b[i].f)) {
                    a("role flags", Integer.toBinaryString(this.b[0].f), Integer.toBinaryString(this.b[i].f), i);
                    return;
                }
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ oo a(Bundle bundle) {
        return new oo((e9[]) p2.a(e9.I, bundle.getParcelableArrayList(b(0)), db.h()).toArray(new e9[0]));
    }

    private static void a(String str, String str2, String str3, int i) {
        oc.a("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }
}
