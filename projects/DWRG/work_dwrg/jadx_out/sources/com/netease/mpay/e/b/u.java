package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.sina.weibo.sdk.constant.WBConstants;
import java.util.HashMap;

/* loaded from: classes.dex */
public class u implements Comparable {
    public String a;
    public String b;
    public String c;
    public String d;
    public int e;
    public String f;
    public boolean g;
    public String h;
    public long i;
    public long j;
    public HashMap k;

    public u() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static u a(byte[] bArr) {
        boolean z = false;
        try {
            HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            u uVar = new u();
            uVar.a = (String) a.remove("mid");
            uVar.b = (String) a.remove("title");
            uVar.c = (String) a.remove("abstract");
            uVar.d = (String) a.remove(WBConstants.GAME_PARAMS_GAME_IMAGE_URL);
            String str = (String) a.remove("status");
            uVar.e = str == null ? 0 : Integer.valueOf(str).intValue();
            uVar.f = (String) a.remove("link");
            String str2 = (String) a.remove("needTicket");
            if (str2 != null && str2.equals("1")) {
                z = true;
            }
            uVar.g = z;
            uVar.h = (String) a.remove("sharedContent");
            String str3 = (String) a.remove("ctime");
            uVar.i = str3 == null ? 0L : Long.valueOf(str3).longValue();
            String str4 = (String) a.remove("utime");
            uVar.j = str4 != null ? Long.valueOf(str4).longValue() : 0L;
            uVar.k = a;
            return uVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        if (this.k != null) {
            hashMap.putAll(this.k);
        }
        hashMap.put("mid", this.a);
        hashMap.put("title", this.b);
        hashMap.put("abstract", this.c);
        hashMap.put(WBConstants.GAME_PARAMS_GAME_IMAGE_URL, this.d);
        hashMap.put("status", String.valueOf(this.e));
        hashMap.put("link", this.f);
        hashMap.put("needTicket", this.g ? "1" : "0");
        hashMap.put("sharedContent", this.h);
        hashMap.put("ctime", String.valueOf(this.i));
        hashMap.put("utime", String.valueOf(this.j));
        return com.netease.mpay.e.a.a(hashMap);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.i > ((u) obj).i ? -1 : 1;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        u uVar = (u) obj;
        if (this.a == null || uVar.a == null) {
            return false;
        }
        return this.a.equals(uVar.a);
    }
}
