package com.netease.mpay.e.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bd;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class aj {
    public String a;
    public ArrayList b = new ArrayList();

    /* loaded from: classes.dex */
    public static class a {
        public String a;
        public String b;
        public b c;
        public String d;
        public String e;
        public String f;
        public String g;

        public a(String str) {
            this.a = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public a(JSONObject jSONObject) {
            this.a = jSONObject.optString("key");
            this.b = jSONObject.optString("name");
            this.c = b.a(jSONObject.optInt("status"));
            this.d = jSONObject.optString("reason");
            this.e = jSONObject.optString("analysis_key");
            this.f = jSONObject.optString("icon_enabled");
            this.g = jSONObject.optString("icon_disabled");
        }

        protected static a a(byte[] bArr) {
            try {
                HashMap a = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
                a aVar = new a((String) a.remove("0"));
                aVar.b = (String) a.remove("1");
                String str = (String) a.remove("2");
                aVar.c = str != null ? b.a(Integer.valueOf(str).intValue()) : b.HIDDEN;
                aVar.d = (String) a.remove("3");
                aVar.e = (String) a.remove("4");
                aVar.f = (String) a.remove("5");
                aVar.g = (String) a.remove(Constants.VIA_SHARE_TYPE_INFO);
                return aVar;
            } catch (ClassCastException e) {
                return null;
            }
        }

        public byte[] a() {
            HashMap hashMap = new HashMap();
            hashMap.put("0", this.a);
            hashMap.put("1", this.b);
            hashMap.put("2", this.c != null ? "" + this.c.a() : null);
            hashMap.put("3", this.d);
            hashMap.put("4", this.e);
            hashMap.put("5", this.f);
            hashMap.put(Constants.VIA_SHARE_TYPE_INFO, this.g);
            return com.netease.mpay.e.a.a(hashMap);
        }
    }

    /* loaded from: classes.dex */
    public enum b {
        NORMAL(1),
        GREY(2),
        HIDDEN(3);

        private int d;

        b(int i) {
            this.d = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        protected static b a(int i) {
            switch (i) {
                case 1:
                    return NORMAL;
                case 2:
                    return GREY;
                default:
                    return HIDDEN;
            }
        }

        public int a() {
            return this.d;
        }
    }

    public aj() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static aj a(byte[] bArr) {
        ArrayList arrayList;
        try {
            HashMap a2 = com.netease.mpay.e.a.a((HashMap) com.netease.mpay.e.a.a(bArr), String.class, String.class);
            if (a2 == null) {
                return null;
            }
            aj ajVar = new aj();
            ajVar.a = (String) a2.remove("0");
            try {
                arrayList = com.netease.mpay.e.a.a((ArrayList) com.netease.mpay.e.a.a(bd.a((String) a2.remove("1"))), byte[].class);
            } catch (ClassCastException e) {
                arrayList = null;
            } catch (NullPointerException e2) {
                arrayList = null;
            }
            ajVar.b = new ArrayList();
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a a3 = a.a((byte[]) it.next());
                    if (a3 != null) {
                        ajVar.b.add(a3);
                    }
                }
            }
            return ajVar;
        } catch (ClassCastException e3) {
            return null;
        }
    }

    public byte[] a() {
        ArrayList arrayList = new ArrayList();
        if (this.b != null) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                arrayList.add(((a) it.next()).a());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("0", this.a);
        hashMap.put("1", bd.b(com.netease.mpay.e.a.a(arrayList)));
        return com.netease.mpay.e.a.a(hashMap);
    }
}
