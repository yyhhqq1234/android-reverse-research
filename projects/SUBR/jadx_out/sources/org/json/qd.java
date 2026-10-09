package org.json;

import android.content.Context;
import java.util.Map;
import org.json.environment.ContextProvider;

/* JADX INFO: loaded from: classes3.dex */
public class qd {
    private static final String a = "adunit_data";

    public void a(Context context) {
        nd.a().c(context);
    }

    public void a(String str, md.a aVar) {
        JSONObject jSONObjectOptJSONObject;
        try {
            String strName = aVar.name();
            nd ndVarA = nd.a();
            JSONObject jSONObjectOptJSONObject2 = ndVarA.b(ContextProvider.getInstance().getApplicationContext()).optJSONObject(a);
            if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(strName)) == null || jSONObjectOptJSONObject.remove(str) == null) {
                return;
            }
            ndVarA.b(a, jSONObjectOptJSONObject2.put(strName, jSONObjectOptJSONObject));
        } catch (JSONException e) {
            l9.d().a(e);
        }
    }

    public void a(String str, Object obj) {
        nd.a().b(str, obj);
    }

    public void a(String str, Object obj, md.a aVar) {
        try {
            String strName = aVar.name();
            nd ndVarA = nd.a();
            JSONObject jSONObjectOptJSONObject = ndVarA.b(ContextProvider.getInstance().getApplicationContext()).optJSONObject(a);
            if (jSONObjectOptJSONObject == null) {
                ndVarA.b(a, new JSONObject().put(strName, new JSONObject().put(str, obj)));
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(strName);
            if (jSONObjectOptJSONObject2 == null) {
                ndVarA.b(a, jSONObjectOptJSONObject.put(strName, new JSONObject().put(str, obj)));
            } else {
                ndVarA.b(a, jSONObjectOptJSONObject.put(strName, jSONObjectOptJSONObject2.put(str, obj)));
            }
        } catch (JSONException e) {
            l9.d().a(e);
        }
    }

    public void a(String str, JSONObject jSONObject) {
        nd.a().a(str, jSONObject);
    }

    public void a(Map<String, Object> map) {
        nd.a().a(map);
    }
}
