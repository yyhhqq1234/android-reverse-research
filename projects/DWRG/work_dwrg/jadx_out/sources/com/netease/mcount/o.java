package com.netease.mcount;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class o {
    private Context a;
    private String b;
    private String c;

    public o(Context context) {
        this.a = context;
        this.b = new q(context).a();
        this.c = j.d(context);
    }

    private String a(JSONArray jSONArray) {
        char[] charArray = b.a(jSONArray.toString().getBytes(), 0).toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            charArray[i] = (char) ((i % 2 == 0 ? (char) 65535 : (char) 1) + charArray[i]);
        }
        return new String(charArray);
    }

    private static boolean a(f fVar) {
        return (fVar == null || fVar.a == null || fVar.a.trim().equals("") || fVar.b == null || fVar.b.trim().equals("")) ? false : true;
    }

    private HashMap b() {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-type", "application/json");
        return hashMap;
    }

    private JSONArray b(List list) {
        if (list == null || list.size() < 1) {
            return new JSONArray();
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            f fVar = (f) it.next();
            if (a(fVar)) {
                jSONArray.put(b(fVar));
            }
        }
        return jSONArray;
    }

    private JSONObject b(f fVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("key", fVar.a);
            jSONObject.put("timestamp", Long.valueOf(fVar.b));
            if (fVar.c != null) {
                jSONObject.put("segmentation", fVar.c);
            }
        } catch (Exception e) {
            r.a(e);
        }
        return jSONObject;
    }

    public void a() {
        String str = h.a + "/init";
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("_os", j.c());
            jSONObject2.put("_os_version", j.a());
            jSONObject2.put("_device", j.b());
            jSONObject2.put("_resolution", j.a(this.a));
            jSONObject2.put("_carrier", j.c(this.a));
            jSONObject2.put("_app_version", j.b(this.a));
            jSONObject.put(com.alipay.sdk.cons.b.h, this.b);
            jSONObject.put("device_id", this.c);
            jSONObject.put("sdk_version", "0.9.8");
            jSONObject.put("begin_session", 1);
            jSONObject.put("timestamp", r.a());
            jSONObject.put("metrics", jSONObject2);
            try {
                com.netease.mcount.a.c a = com.netease.mcount.a.a.a(str, b(), jSONObject, 30000, 30000);
                if (a.a != 200 && a.a != 201) {
                    throw new p();
                }
                JSONObject jSONObject3 = new JSONObject(new String(a.b));
                if (jSONObject3.getInt("code") != 0) {
                    throw new p(jSONObject3.optString("description"));
                }
            } catch (com.netease.mcount.a.b e) {
                throw new p(e.getMessage());
            } catch (JSONException e2) {
                throw new p(e2.getMessage());
            }
        } catch (JSONException e3) {
            r.a(e3);
        }
    }

    public void a(List list) {
        String str = h.a + "/record";
        JSONArray b = b(list);
        if (b.length() < 1) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(com.alipay.sdk.cons.b.h, this.b);
            jSONObject.put("device_id", this.c);
            jSONObject.put("sdk_version", "0.9.8");
            jSONObject.put("events", a(b));
            try {
                com.netease.mcount.a.c a = com.netease.mcount.a.a.a(str, b(), jSONObject, 30000, 30000);
                if (a.a != 200 && a.a != 201) {
                    throw new p();
                }
                JSONObject jSONObject2 = new JSONObject(new String(a.b));
                if (jSONObject2.getInt("code") != 0) {
                    throw new p(jSONObject2.optString("description"));
                }
            } catch (com.netease.mcount.a.b e) {
                throw new p();
            } catch (JSONException e2) {
                throw new p(e2.getMessage());
            }
        } catch (JSONException e3) {
            r.a(e3);
        }
    }
}
