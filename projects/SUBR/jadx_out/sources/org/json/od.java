package org.json;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import org.json.environment.ContextProvider;

/* JADX INFO: loaded from: classes3.dex */
public class od {
    private static final String a = "adunit_data";

    private JSONObject a(Context context, md.a aVar) throws JSONException {
        String strName = aVar.name();
        JSONObject jSONObjectB = nd.a().b(context);
        JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject(a);
        JSONObject jSONObjectA = a(jSONObjectB);
        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optJSONObject(strName) != null) {
            JSONObject jSONObject = jSONObjectOptJSONObject.getJSONObject(strName);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectA.putOpt(next, jSONObject.opt(next));
            }
        }
        return jSONObjectA;
    }

    private JSONObject a(Context context, List<String> list) throws JSONException {
        return a(a(nd.a().b(context)), (String[]) list.toArray(new String[list.size()]));
    }

    private JSONObject a(JSONObject jSONObject) {
        jSONObject.remove(a);
        return jSONObject;
    }

    private JSONObject a(JSONObject jSONObject, String[] strArr) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        for (String str : strArr) {
            if (jSONObject.has(str)) {
                jSONObject2.put(str, jSONObject.opt(str));
            }
        }
        return jSONObject2;
    }

    public JSONObject a(Context context, String[] strArr) throws JSONException {
        return a(a(nd.a().b(context)), strArr);
    }

    public JSONObject a(List<String> list) throws JSONException {
        return a(ContextProvider.getInstance().getApplicationContext(), list);
    }

    public JSONObject a(List<String> list, md.a aVar) throws JSONException {
        return a(a(ContextProvider.getInstance().getApplicationContext(), aVar), (String[]) list.toArray(new String[list.size()]));
    }

    public JSONObject a(String[] strArr) throws JSONException {
        return a(a(nd.a().b(ContextProvider.getInstance().getApplicationContext())), strArr);
    }
}
