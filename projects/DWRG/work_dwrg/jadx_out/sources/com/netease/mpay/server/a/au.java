package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class au extends ax {
    String a;
    String b;
    int c;

    public au(String str, String str2, int i) {
        super(1, "/api/qrcode/external_pay_callback");
        this.a = str;
        this.b = str2;
        this.c = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 4:
                return 2;
            case 2:
            case 3:
            default:
                return 3;
        }
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("uid", this.a));
        arrayList.add(new com.netease.mpay.widget.a.a("order_id", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("status", String.valueOf(a(this.c))));
        return arrayList;
    }
}
