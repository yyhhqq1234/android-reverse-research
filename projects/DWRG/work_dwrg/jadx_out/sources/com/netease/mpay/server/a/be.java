package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class be extends o {
    String d;
    String e;
    String f;
    int g;

    public be(String str, String str2, byte[] bArr, String str3, String str4, String str5, int i) {
        super("/games/" + str + "/devices/" + str2 + "/users", str3, bArr);
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.netease.mpay.server.a.o
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("username", this.d);
            jSONObject.put("password", this.e);
            jSONObject.put("unique_id", this.f);
            if (this.g >= 0) {
                jSONObject.put("password_level", this.g);
            }
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
        }
        return jSONObject;
    }
}
