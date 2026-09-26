package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class z extends be {
    String b;
    String c;

    public z(String str, String str2, byte[] bArr, String str3, String str4, String str5, int i, String str6, String str7) {
        super(str, str2, bArr, str3, str4, str5, i);
        this.b = str6;
        this.c = str7;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.netease.mpay.server.a.be, com.netease.mpay.server.a.o
    public JSONObject b() {
        JSONObject b = super.b();
        try {
            b.put("bind_user_id", this.b);
            b.put("bind_token", this.c);
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
        }
        return b;
    }
}
