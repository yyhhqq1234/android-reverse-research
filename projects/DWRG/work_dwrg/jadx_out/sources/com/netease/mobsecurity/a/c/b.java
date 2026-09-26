package com.netease.mobsecurity.a.c;

import android.content.Context;
import com.netease.mobsecurity.SecException;
import com.netease.mobsecurity.a.d;

/* loaded from: classes.dex */
public class b implements a {
    com.netease.mobsecurity.factory.b a;
    Context b;

    public b(Context context) {
        this.b = context;
        this.a = new com.netease.mobsecurity.factory.b(context);
    }

    @Override // com.netease.mobsecurity.a.c.a
    public String a(d dVar) throws SecException {
        String[] strArr;
        int i;
        if (dVar != null && dVar.b != null) {
            if (dVar.c == 10) {
                i = 1;
                strArr = new String[]{(String) dVar.b.get("input")};
            } else if (dVar.c == 11) {
                int i2 = dVar.d;
                strArr = new String[]{(String) dVar.b.get("input")};
                i = i2;
            }
            return (strArr != null || i == 0) ? "" : a(strArr, dVar.a, dVar.c, i);
        }
        strArr = null;
        i = 0;
        if (strArr != null) {
        }
    }

    public String a(String[] strArr, String str, int i, int i2) throws SecException {
        return this.a.a(strArr, str, i, i2);
    }
}
