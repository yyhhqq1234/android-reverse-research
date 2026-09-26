package com.netease.mcount;

import java.io.Serializable;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class f {
    public String a;
    public String b;
    public JSONObject c;

    public static f a(byte[] bArr) {
        Serializable b;
        HashMap b2;
        try {
            b = e.b(bArr);
            b2 = e.b((HashMap) b, String.class, String.class);
            f fVar = new f();
            fVar.a = (String) b2.remove("0");
            fVar.b = (String) b2.remove("1");
            try {
                fVar.c = new JSONObject((String) b2.remove("2"));
            } catch (NullPointerException e) {
                fVar.c = null;
            } catch (JSONException e2) {
                fVar.c = null;
            }
            return fVar;
        } catch (ClassCastException e3) {
            return null;
        }
    }

    public byte[] a() {
        byte[] b;
        HashMap hashMap = new HashMap();
        if (this.c != null) {
            hashMap.put("2", this.c.toString());
        }
        hashMap.put("0", this.a);
        hashMap.put("1", this.b);
        b = e.b(hashMap);
        return b;
    }
}
