package com.netease.mpay.widget.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.widget.a.b;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class e {
    public e() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private boolean a() {
        try {
            return Math.abs(b.a() - Calendar.getInstance().getTimeInMillis()) < 21600000;
        } catch (Exception e) {
            return true;
        }
    }

    private byte[] a(ArrayList arrayList, String str) {
        return g.a(arrayList, str).getBytes(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b.a a(Exception exc) {
        return new b.a(a() ? 6 : 8, exc.getMessage());
    }

    public b.C0055b a(int i, String str, HashMap hashMap, ArrayList arrayList, int i2, int i3) {
        String a;
        byte[] bArr = null;
        if (i == 1) {
            if (arrayList == null || arrayList.size() <= 0) {
                a = str;
            } else {
                try {
                    bArr = a(arrayList, "UTF-8");
                    a = str;
                } catch (UnsupportedEncodingException e) {
                    throw new b.a(1, e.getMessage());
                }
            }
        } else {
            if (i != 0) {
                throw new b.a(5, "" + i + " is not a valid request method");
            }
            a = a(str, arrayList);
        }
        b.C0055b a2 = a(i, a, hashMap, bArr, i2, i3);
        StringBuilder sb = new StringBuilder("\n\n\n");
        sb.append(a);
        sb.append(bArr == null ? "" : "?" + new String(bArr));
        sb.append("\n");
        sb.append(a2.a);
        sb.append(" : ");
        sb.append(new String(a2.b));
        sb.append("\n\n\n");
        Cdo.a(sb.toString());
        return a2;
    }

    protected abstract b.C0055b a(int i, String str, HashMap hashMap, byte[] bArr, int i2, int i3);

    public String a(String str, ArrayList arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            str = str.contains("?") ? str + com.alipay.sdk.sys.a.b + g.a(arrayList) : str + "?" + g.a(arrayList);
        }
        Cdo.a("requestGetBody: " + str);
        return str;
    }
}
