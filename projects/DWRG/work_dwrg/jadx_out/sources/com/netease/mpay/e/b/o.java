package com.netease.mpay.e.b;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cq;
import com.tencent.connect.common.Constants;
import java.util.HashMap;

/* loaded from: classes.dex */
public class o {
    public String a;
    protected boolean b;
    public String c;
    public String d;
    public String e;
    public int f;
    public int g;
    public String h;
    public String i;
    public boolean j;
    public int k;
    public boolean l;
    public boolean m;
    public HashMap n;
    private String o;

    /* loaded from: classes.dex */
    public static abstract class a {
        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static boolean a(o oVar, int i) {
            return (oVar == null || oVar.n == null || i != oVar.f) ? false : true;
        }

        abstract HashMap a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public o(com.netease.mpay.server.response.m mVar, boolean z, boolean z2) {
        this(null, mVar.i, mVar.j, mVar.b, mVar.a, mVar.d, mVar.o, mVar.c, mVar.e, mVar.f, mVar.g, mVar.h, z, z2);
        switch (mVar.c) {
            case 1:
                this.n = ah.a(mVar);
                break;
            case 2:
            case 3:
            case 5:
            default:
                this.n = new HashMap();
                break;
            case 4:
                this.n = k.a(mVar);
                break;
            case 6:
                this.n = j.a(mVar);
                this.n = new HashMap();
                break;
            case 7:
                this.n = x.a(mVar);
                break;
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private o(String str, String str2, boolean z, String str3, String str4, String str5, int i, int i2, String str6, String str7, boolean z2, int i3, boolean z3, boolean z4) {
        this.g = -1;
        this.o = str;
        this.a = str2;
        this.b = z;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.g = i;
        this.f = i2;
        this.h = str6;
        this.i = str7;
        this.j = z2;
        this.k = i3;
        this.l = z3;
        this.m = z4;
    }

    public static o a(byte[] bArr) {
        try {
            HashMap a2 = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            String str = (String) a2.remove("need_bind");
            String str2 = (String) a2.remove("5");
            String str3 = (String) a2.remove("realname_set");
            String str4 = (String) a2.remove("mobile_bind_status");
            String str5 = (String) a2.remove("3");
            String str6 = (String) a2.remove("4");
            o oVar = new o((String) a2.remove("0"), (String) a2.remove("7"), !TextUtils.equals("0", (CharSequence) a2.remove("need_mask")), (String) a2.remove("1"), (String) a2.remove("2"), (String) a2.remove(Constants.VIA_SHARE_TYPE_INFO), str == null ? 0 : Integer.valueOf(str).intValue(), str2 == null ? 1 : Integer.valueOf(str2).intValue(), (String) a2.remove("nickname"), (String) a2.remove("avatar_url"), str3 != null && str3.equals("1"), str4 != null ? Integer.valueOf(str4).intValue() : 0, str5 != null && str5.equals("1"), str6 != null && str6.equals("1"));
            oVar.n = a2;
            return oVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    public static String a(String str, int i) {
        switch (i) {
            case 4:
            case 5:
                if (str.length() < 3) {
                    return str;
                }
                try {
                    return str.substring(0, (r0 - Integer.valueOf(str.substring(r0 - 3)).intValue()) - 3);
                } catch (NumberFormatException e) {
                    return str;
                }
            case 6:
            default:
                return str;
            case 7:
                return cq.e(str);
        }
    }

    public String a() {
        return this.o;
    }

    public String a(boolean z) {
        switch (this.f) {
            case 1:
                if (z || !this.b) {
                    return ah.a(this);
                }
                return null;
            case 7:
                if (z || !this.b) {
                    return x.a(this);
                }
                return null;
            default:
                return null;
        }
    }

    public void a(a aVar) {
        if (this.n == null) {
            this.n = new HashMap();
        }
        HashMap a2 = aVar != null ? aVar.a() : null;
        if (a2 == null || a2.size() <= 0) {
            return;
        }
        this.n.putAll(a2);
    }

    public void a(String str) {
        switch (this.f) {
            case 1:
                ah.a(this, str);
                return;
            case 7:
                x.a(this, str);
                return;
            default:
                return;
        }
    }

    public byte[] b() {
        HashMap hashMap = new HashMap();
        if (this.n != null) {
            hashMap.putAll(this.n);
        }
        hashMap.put("0", this.o);
        hashMap.put("7", this.a);
        hashMap.put("need_mask", this.b ? "1" : "0");
        hashMap.put("1", this.c);
        hashMap.put("2", this.d);
        hashMap.put("need_bind", String.valueOf(this.g));
        hashMap.put("nickname", this.h);
        hashMap.put("avatar_url", this.i);
        hashMap.put("realname_set", this.j ? "1" : "0");
        hashMap.put("mobile_bind_status", String.valueOf(this.k));
        hashMap.put("3", this.l ? "1" : "0");
        hashMap.put("4", this.m ? "1" : "0");
        hashMap.put("5", String.valueOf(this.f));
        if (this.e != null) {
            hashMap.put(Constants.VIA_SHARE_TYPE_INFO, this.e);
        }
        return com.netease.mpay.e.a.a(hashMap);
    }

    @NonNull
    public String c() {
        String a2;
        switch (this.f) {
            case 1:
                a2 = ah.b(this);
                break;
            case 7:
                a2 = x.a(this);
                break;
            default:
                a2 = null;
                break;
        }
        return a2 != null ? a2 : "";
    }
}
