package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.lp;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ad extends ax {
    String a;
    byte[] b;

    public ad(String str, String str2, byte[] bArr, String str3, String str4) {
        super(1, "/games/" + str + "/devices/" + str2 + "/users/" + str4 + "/logout");
        this.a = str3;
        this.b = bArr;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("token", this.a);
        String b = com.netease.mpay.widget.bd.b(lp.a(new JSONObject(hashMap).toString().getBytes(), this.b));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("params", b));
        return arrayList;
    }
}
