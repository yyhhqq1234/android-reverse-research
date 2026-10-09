package org.json;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: loaded from: classes3.dex */
public class ml {
    private String a;

    public ml(String str) {
        this.a = str;
    }

    private mg a() throws Exception {
        mg mgVar = new mg(this.a, "metadata.json");
        if (!mgVar.exists()) {
            a(mgVar);
        }
        return mgVar;
    }

    private void a(mg mgVar) throws Exception {
        IronSourceStorageUtils.saveFile(new JSONObject().toString().getBytes(), mgVar.getPath());
    }

    private boolean a(JSONObject jSONObject) throws Exception {
        return IronSourceStorageUtils.saveFile(jSONObject.toString().getBytes(), a().getPath()) != 0;
    }

    synchronized boolean a(String str) throws Exception {
        JSONObject jSONObjectB = b();
        if (!jSONObjectB.has(str)) {
            return true;
        }
        jSONObjectB.remove(str);
        return a(jSONObjectB);
    }

    synchronized boolean a(String str, JSONObject jSONObject) throws Exception {
        JSONObject jSONObjectB;
        jSONObjectB = b();
        jSONObjectB.put(str, jSONObject);
        return a(jSONObjectB);
    }

    boolean a(ArrayList<mg> arrayList) throws Exception {
        Iterator<mg> it = arrayList.iterator();
        boolean z = true;
        while (it.hasNext()) {
            if (!a(it.next().getName())) {
                z = false;
            }
        }
        return z;
    }

    synchronized JSONObject b() throws Exception {
        return new JSONObject(IronSourceStorageUtils.readFile(a()));
    }

    synchronized boolean b(String str, JSONObject jSONObject) throws Exception {
        JSONObject jSONObjectB;
        jSONObjectB = b();
        JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectOptJSONObject.putOpt(next, jSONObject.opt(next));
            }
        } else {
            jSONObjectB.putOpt(str, jSONObject);
        }
        return a(jSONObjectB);
    }
}
