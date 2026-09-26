package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class r {
    public boolean a = false;
    public boolean b = false;
    public boolean c = false;
    public long d = 0;
    public long e = 0;
    public String f = null;
    public ArrayList g = new ArrayList();

    public r() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static r a(byte[] bArr) {
        ArrayList arrayList;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            r rVar = new r();
            rVar.f = (String) a.remove("1");
            String str = (String) a.remove("0");
            rVar.a = str != null && str.equals("1");
            String str2 = (String) a.remove("3");
            rVar.b = str2 != null && str2.equals("1");
            String str3 = (String) a.remove("4");
            rVar.c = str3 != null && str3.equals("1");
            String str4 = (String) a.remove("5");
            if (str4 == null) {
                str4 = "0";
            }
            rVar.d = Long.valueOf(str4).longValue();
            String str5 = (String) a.remove(Constants.VIA_SHARE_TYPE_INFO);
            if (str5 == null) {
                str5 = String.valueOf(-1L);
            }
            rVar.e = Long.valueOf(str5).longValue();
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("2"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = null;
            }
            rVar.g = new ArrayList();
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    v a2 = v.a((byte[]) it.next());
                    if (a2 != null) {
                        rVar.g.add(a2);
                    }
                }
            }
            return rVar;
        } catch (ClassCastException e2) {
            return null;
        }
    }

    public void a(long j) {
        this.e = -1 != j ? new Date().getTime() + (1000 * j) : -1L;
    }

    public boolean a() {
        return this.b;
    }

    public boolean b() {
        return this.a;
    }

    public String c() {
        return this.f;
    }

    public boolean d() {
        return this.e != -1 && this.e < new Date().getTime();
    }

    public byte[] e() {
        ArrayList arrayList = new ArrayList();
        if (this.g != null) {
            Iterator it = this.g.iterator();
            while (it.hasNext()) {
                arrayList.add(((v) it.next()).a());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("2", bd.b(com.netease.mpay.e.a.a(arrayList)));
        hashMap.put("0", this.a ? "1" : "0");
        hashMap.put("1", this.f);
        hashMap.put("3", this.b ? "1" : "0");
        hashMap.put("4", this.c ? "1" : "0");
        hashMap.put("5", String.valueOf(this.d));
        hashMap.put(Constants.VIA_SHARE_TYPE_INFO, String.valueOf(this.e));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
