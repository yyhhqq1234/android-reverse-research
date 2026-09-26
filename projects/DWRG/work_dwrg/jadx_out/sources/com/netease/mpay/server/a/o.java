package com.netease.mpay.server.a;

import com.dodola.rocoo.Hack;
import com.netease.mpay.lp;
import java.util.ArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class o extends d {
    byte[] a;

    /* JADX INFO: Access modifiers changed from: protected */
    public o(String str, String str2, byte[] bArr) {
        super(str, str2);
        this.a = bArr;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.d
    void a(ArrayList arrayList) {
        arrayList.add(new com.netease.mpay.widget.a.a("params", com.netease.mpay.widget.bd.b(lp.a(b().toString().getBytes(), this.a))));
    }

    abstract JSONObject b();
}
