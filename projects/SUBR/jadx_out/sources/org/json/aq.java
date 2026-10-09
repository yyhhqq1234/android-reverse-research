package org.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class aq {
    private JSONObject a;

    public aq() {
        this.a = new JSONObject();
    }

    public aq(String str) {
        f(str);
    }

    private Object a(Object obj) throws JSONException {
        if (obj == JSONObject.NULL) {
            return null;
        }
        if (obj instanceof JSONObject) {
            return b((JSONObject) obj);
        }
        return obj instanceof JSONArray ? a((JSONArray) obj) : obj;
    }

    public static boolean a(JSONObject jSONObject) {
        return jSONObject.names() == null;
    }

    public static Object b(Object obj) throws JSONException {
        if (!(obj instanceof Map)) {
            if (!(obj instanceof Iterable)) {
                return obj;
            }
            JSONArray jSONArray = new JSONArray();
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
            return jSONArray;
        }
        JSONObject jSONObject = new JSONObject();
        Map map = (Map) obj;
        for (Object obj2 : map.keySet()) {
            if (obj2 != null) {
                jSONObject.put(obj2.toString(), b(map.get(obj2)));
            }
        }
        return jSONObject;
    }

    private Map<String, Object> b(JSONObject jSONObject) throws JSONException {
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, a(jSONObject.get(next)));
        }
        return map;
    }

    private void f(String str) {
        try {
            this.a = new JSONObject(str);
        } catch (Exception e) {
            l9.d().a(e);
            this.a = new JSONObject();
        }
    }

    public int a(String str, int i) {
        return this.a.optInt(str, i);
    }

    public String a(String str, String str2) {
        return this.a.optString(str, str2);
    }

    public List a(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(a(jSONArray.get(i)));
        }
        return arrayList;
    }

    public JSONObject a() {
        return this.a;
    }

    public void a(String str, JSONObject jSONObject) {
        try {
            this.a.put(str, jSONObject);
        } catch (Exception e) {
            l9.d().a(e);
        }
    }

    public boolean a(String str) {
        return a().has(str);
    }

    public Object b(String str) {
        try {
            return a().get(str);
        } catch (JSONException e) {
            l9.d().a(e);
            return null;
        }
    }

    public void b(String str, String str2) {
        try {
            this.a.put(str, str2);
        } catch (Exception e) {
            l9.d().a(e);
        }
    }

    public boolean c(String str) {
        return this.a.optBoolean(str);
    }

    public String d(String str) {
        return this.a.optString(str, null);
    }

    public boolean e(String str) {
        return a().isNull(str);
    }

    public String toString() {
        JSONObject jSONObject = this.a;
        return jSONObject == null ? "" : jSONObject.toString();
    }
}
