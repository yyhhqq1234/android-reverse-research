package com.netease.mpay.server.a.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.v;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class c extends a {
    String a;
    String b;
    String c;
    String d;
    ArrayList e;

    public c(String str, String str2, String str3, String str4, ArrayList arrayList) {
        super(1, "/update_messages_status");
        this.a = str2;
        this.b = str;
        this.c = str3;
        this.d = str4;
        this.e = arrayList;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("user_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.c));
        arrayList.add(new com.netease.mpay.widget.a.a("cursors", this.d));
        JSONArray jSONArray = new JSONArray();
        if (this.e != null && this.e.size() > 0) {
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                v vVar = (v) it.next();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(ResIdReader.RES_TYPE_ID, vVar.a);
                    jSONObject.put("type", vVar.b);
                } catch (JSONException e) {
                    Cdo.a((Throwable) e);
                }
                jSONArray.put(jSONObject);
            }
        }
        arrayList.add(new com.netease.mpay.widget.a.a("operations", jSONArray.toString()));
        return arrayList;
    }
}
