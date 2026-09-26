package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class e {
    public long a = 0;
    public ArrayList b = new ArrayList();
    public ArrayList c = new ArrayList();
    public int d = 3;
    public long e = 600000;
    public String f = null;
    public int g = 1;
    public int h = 1;

    public e() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static e a(byte[] bArr) {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a == null) {
                return null;
            }
            e eVar = new e();
            String str = (String) a.remove("version");
            if (str == null) {
                str = "0";
            }
            eVar.a = Long.valueOf(str).longValue();
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("email_web_url"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = null;
            } catch (NullPointerException e2) {
                arrayList = null;
            }
            eVar.b = new ArrayList();
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    h a2 = h.a((byte[]) it.next());
                    if (a2 != null) {
                        eVar.b.add(a2);
                    }
                }
            }
            try {
                arrayList2 = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a.remove("uppay_package"))), byte[].class);
            } catch (ClassCastException e3) {
            } catch (NullPointerException e4) {
            }
            eVar.c = new ArrayList();
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    eVar.c.add(new String((byte[]) it2.next()));
                }
            }
            String str2 = (String) a.remove("net_test_limit_time");
            if (str2 == null) {
                str2 = "3";
            }
            eVar.d = Integer.valueOf(str2).intValue();
            String str3 = (String) a.remove("net_test_limit_interval");
            if (str3 == null) {
                str3 = "600000";
            }
            eVar.e = Long.valueOf(str3).longValue();
            eVar.f = (String) a.remove("weixinpay_download_url");
            String str4 = (String) a.remove("weixinpay_min_pv");
            if (str4 == null) {
                str4 = "0";
            }
            eVar.g = Integer.valueOf(str4).intValue();
            String str5 = (String) a.remove("weixinpay_new_pv");
            if (str5 == null) {
                str5 = "0";
            }
            eVar.h = Integer.valueOf(str5).intValue();
            return eVar;
        } catch (ClassCastException e5) {
            return null;
        }
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        if (this.b != null) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                arrayList.add(((h) it.next()).a());
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (arrayList2 != null) {
            Iterator it2 = this.c.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((String) it2.next()).getBytes());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("version", String.valueOf(this.a));
        hashMap.put("email_web_url", bd.b(com.netease.mpay.e.a.a(arrayList)));
        hashMap.put("uppay_package", bd.b(com.netease.mpay.e.a.a(arrayList2)));
        hashMap.put("net_test_limit_time", String.valueOf(this.d));
        hashMap.put("net_test_limit_interval", String.valueOf(this.e));
        hashMap.put("weixinpay_download_url", this.f);
        hashMap.put("weixinpay_min_pv", String.valueOf(this.g));
        hashMap.put("weixinpay_new_pv", String.valueOf(this.h));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
