package com.netease.mpay.e.b;

import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class al {
    public HashMap a = new HashMap();

    /* loaded from: classes.dex */
    public static class a {
        public boolean a;
        public boolean b;
        public long c;

        public a() {
            this.a = false;
            this.b = true;
            this.c = -1L;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.a = true;
                this.b = jSONObject.optBoolean("enabled");
                this.c = jSONObject.optLong("version");
            }
        }

        public static a a(byte[] bArr) {
            try {
                HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
                a aVar = new a();
                String str = (String) a.remove("1");
                aVar.a = str != null ? str.equals("1") : false;
                String str2 = (String) a.remove("2");
                aVar.b = str2 != null ? str2.equals("1") : false;
                String str3 = (String) a.remove("3");
                if (str3 == null) {
                    str3 = "0";
                }
                aVar.c = Long.valueOf(str3).longValue();
                return aVar;
            } catch (ClassCastException e) {
                return null;
            }
        }

        public byte[] a() {
            HashMap hashMap = new HashMap();
            hashMap.put("1", this.a ? "1" : "0");
            hashMap.put("2", this.b ? "1" : "0");
            hashMap.put("3", String.valueOf(this.c));
            return com.netease.mpay.e.a.a(hashMap);
        }
    }

    public al() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static al a(byte[] bArr) {
        try {
            HashMap a2 = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a2 == null) {
                return null;
            }
            al alVar = new al();
            for (Map.Entry entry : a2.entrySet()) {
                alVar.a.put(entry.getKey(), a.a(bd.a((String) entry.getValue())));
            }
            return alVar;
        } catch (ClassCastException e) {
            return null;
        }
    }

    private void a(String str, a aVar) {
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        a aVar2 = (a) this.a.get(str);
        if (aVar2 != null && aVar2.c >= aVar.c) {
            aVar.a = aVar2.a;
        }
        this.a.put(str, aVar);
    }

    public a a(String str) {
        if (this.a != null) {
            return (a) this.a.get(str);
        }
        return null;
    }

    public void a(al alVar) {
        if (this.a == null || alVar == null || alVar.a == null) {
            return;
        }
        for (Map.Entry entry : alVar.a.entrySet()) {
            a((String) entry.getKey(), (a) entry.getValue());
        }
    }

    public byte[] a() {
        HashMap hashMap = new HashMap();
        if (this.a != null) {
            for (Map.Entry entry : this.a.entrySet()) {
                a aVar = (a) entry.getValue();
                if (aVar != null) {
                    hashMap.put(entry.getKey(), bd.b(aVar.a()));
                }
            }
        }
        return com.netease.mpay.e.a.a(hashMap);
    }

    public void b(String str) {
        a a2 = a(str);
        if (a2 != null) {
            a2.a = false;
        }
    }
}
