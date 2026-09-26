package com.netease.mpay.server.a.b;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class b extends n {
    String a;
    String b;

    public b(String str, String str2, String str3, String str4) {
        super("/games/" + str + "/orders/" + str4 + "/payments");
        this.a = str2;
        this.b = str3;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(ResIdReader.RES_TYPE_ID, this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("pay_method", "ecard"));
        arrayList.add(new com.netease.mpay.widget.a.a("no_commit", "1"));
        return arrayList;
    }
}
