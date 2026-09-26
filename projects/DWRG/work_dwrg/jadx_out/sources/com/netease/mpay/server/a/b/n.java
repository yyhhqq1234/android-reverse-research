package com.netease.mpay.server.a.b;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.lp;
import com.netease.mpay.server.a.ax;
import com.netease.mpay.widget.bd;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class n extends ax {
    /* JADX INFO: Access modifiers changed from: package-private */
    public n(String str) {
        super(0, str);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", str));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList a(String str, byte[] bArr, int i) {
        ArrayList b = b(str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("login_type", i);
            b.add(new com.netease.mpay.widget.a.a("params", bd.b(lp.a(jSONObject.toString().getBytes(), bArr))));
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList b(String str) {
        ArrayList a = a(str);
        a.add(new com.netease.mpay.widget.a.a("opt_fields", com.netease.mpay.server.a.d.a()));
        return a;
    }
}
