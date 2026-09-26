package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class q {
    public boolean e;
    public ArrayList a = new ArrayList();
    public String d = null;
    public String b = null;
    public int c = 1;
    public String f = null;
    public String g = null;
    public int h = 1;
    public String i = null;
    public String j = null;
    public int k = 1;
    public HashMap l = new HashMap();

    public q() {
        this.e = false;
        this.e = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static q a(byte[] bArr) {
        ArrayList arrayList;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            q qVar = new q();
            qVar.d = (String) a.remove("1");
            qVar.b = (String) a.remove("11");
            String str = (String) a.remove("2");
            qVar.c = str == null ? 1 : Integer.valueOf(str).intValue();
            qVar.f = (String) a.remove("4");
            qVar.g = (String) a.remove("5");
            String str2 = (String) a.remove(Constants.VIA_SHARE_TYPE_INFO);
            qVar.h = str2 == null ? 1 : Integer.valueOf(str2).intValue();
            qVar.i = (String) a.remove(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
            qVar.j = (String) a.remove("9");
            String str3 = (String) a.remove(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
            qVar.k = str3 == null ? 1 : Integer.valueOf(str3).intValue();
            String str4 = (String) a.remove(Constants.VIA_REPORT_TYPE_SET_AVATAR);
            qVar.e = str4 != null && str4.equals("1");
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("0"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = null;
            }
            qVar.a = new ArrayList();
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    o a2 = o.a((byte[]) it.next());
                    if (a2 != null) {
                        qVar.a.add(a2);
                    }
                }
            }
            qVar.l = a;
            return qVar;
        } catch (ClassCastException e2) {
            return null;
        }
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        if (this.a != null) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.add(((o) it.next()).b());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.putAll(this.l);
        hashMap.put("0", bd.b(com.netease.mpay.e.a.a(arrayList)));
        hashMap.put("1", this.d);
        hashMap.put("2", String.valueOf(this.c));
        hashMap.put("4", this.f);
        hashMap.put("5", this.g);
        hashMap.put(Constants.VIA_SHARE_TYPE_INFO, String.valueOf(this.h));
        hashMap.put(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, this.i);
        hashMap.put("9", this.j);
        hashMap.put(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, String.valueOf(this.k));
        hashMap.put(Constants.VIA_REPORT_TYPE_SET_AVATAR, this.e ? "1" : "0");
        hashMap.put("11", this.b);
        return com.netease.mpay.e.a.a(hashMap);
    }
}
