package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class aa extends o {
    String b;

    public aa(String str, String str2, byte[] bArr, String str3) {
        super("/games/" + str + "/devices/" + str2 + "/users/by_guest", str3, bArr);
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.o
    JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("udid", this.b);
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
        }
        return jSONObject;
    }
}
