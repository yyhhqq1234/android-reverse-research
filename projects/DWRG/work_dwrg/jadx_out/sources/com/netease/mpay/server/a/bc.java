package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.lp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class bc extends ax {
    String a;
    String b;
    byte[] c;
    String d;
    Map e;

    public bc(String str, String str2, byte[] bArr, String str3, Map map) {
        super(1, "/api/data/upload");
        this.a = str;
        this.b = str2;
        this.c = bArr;
        this.d = str3;
        this.e = map;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.af b(Context context, JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        JSONObject a = a((JSONObject) new JSONTokener(new String(lp.b(com.netease.mpay.widget.bd.a(e(jSONObject, com.alipay.sdk.util.k.c)), this.c))).nextValue(), "role_info");
        Iterator<String> keys = a.keys();
        while (keys.hasNext()) {
            String obj = keys.next().toString();
            hashMap.put(obj, f(a, obj));
        }
        return new com.netease.mpay.server.response.af(hashMap);
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.d));
        if (this.e != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                for (String str : this.e.keySet()) {
                    if (this.e.get(str) != null) {
                        jSONObject.put(str, this.e.get(str));
                    }
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("type", "role_info");
                jSONObject2.put("role_info", jSONObject);
                arrayList.add(new com.netease.mpay.widget.a.a("params", com.netease.mpay.widget.bd.b(lp.a(jSONObject2.toString().getBytes(), this.c))));
            } catch (JSONException e) {
                Cdo.a((Throwable) e);
            }
        }
        return arrayList;
    }
}
