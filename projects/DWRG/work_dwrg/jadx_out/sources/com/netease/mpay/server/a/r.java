package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class r extends o {
    String b;
    String c;
    String d;

    public r(String str, String str2, byte[] bArr, String str3, String str4, String str5) {
        super("/games/" + str + "/devices/" + str2 + "/users/by_thirdparty", str3, bArr);
        this.b = str3;
        this.d = str4;
        this.c = str5;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.o
    JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uid", this.b);
            jSONObject.put("channelid", this.c);
            jSONObject.put("display_username", this.d);
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
        }
        return jSONObject;
    }
}
