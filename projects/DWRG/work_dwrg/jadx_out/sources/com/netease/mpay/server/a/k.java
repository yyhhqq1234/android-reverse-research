package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class k extends ax {
    com.netease.mpay.e.b.f a;

    public k(com.netease.mpay.e.b.f fVar) {
        super(1, "/api/devices/ticket");
        this.a = fVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ae b(Context context, JSONObject jSONObject) {
        return new com.netease.mpay.server.response.ae(e(jSONObject, "ticket"));
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a.j));
        arrayList.add(new com.netease.mpay.widget.a.a("ts", String.valueOf(new Date().getTime() / 1000)));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.netease.mpay.widget.a.f fVar = (com.netease.mpay.widget.a.f) it.next();
            try {
                arrayList2.add(new String((fVar.a() + "=" + fVar.b()).getBytes(), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        Collections.sort(arrayList2);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList2.size()) {
                arrayList.add(new com.netease.mpay.widget.a.a("sign", com.netease.mpay.widget.bd.b(com.netease.mpay.widget.bd.a((sb.toString() + com.netease.mpay.widget.bd.b(this.a.i)).getBytes()))));
                return arrayList;
            }
            String str = (String) arrayList2.get(i2);
            if (i2 != 0) {
                sb.append(com.alipay.sdk.sys.a.b);
            }
            sb.append(str);
            i = i2 + 1;
        }
    }
}
