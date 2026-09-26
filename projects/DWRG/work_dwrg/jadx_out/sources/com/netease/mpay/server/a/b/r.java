package com.netease.mpay.server.a.b;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class r extends n {
    String a;
    byte[] b;

    public r(String str, String str2, byte[] bArr) {
        super("/games/" + str + "/devices/" + str2 + "/users/by_oauth2");
        this.a = str2;
        this.b = bArr;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        return a(this.a, this.b, 3);
    }
}
