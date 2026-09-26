package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.s;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ac extends ax {
    String a;
    boolean b;

    public ac(String str, String str2, boolean z) {
        super(0, "/games/" + str + "/login_methods");
        this.a = str2;
        this.b = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.u b(Context context, JSONObject jSONObject) {
        long j;
        com.netease.mpay.server.response.u uVar = new com.netease.mpay.server.response.u();
        JSONArray d = d(jSONObject, "entrance");
        JSONObject b = b(jSONObject, "config");
        long a = a(jSONObject, "expire_time", -1L);
        if (a >= 0) {
            j = (a * 1000) + new Date().getTime();
        } else {
            j = -1;
        }
        uVar.a = j;
        if (d != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= d.length()) {
                    break;
                }
                JSONArray b2 = b(d, i2);
                s.a aVar = new s.a();
                if (b2 != null) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 < b2.length()) {
                            JSONObject a2 = a(b2, i4);
                            aVar.a.add(new com.netease.mpay.server.response.s(h(a2, "type"), true, f(a2, "name"), l(a2, "hot"), f(a2, "login_url"), f(a2, "icon_url")));
                            i3 = i4 + 1;
                        }
                    }
                }
                uVar.b.add(aVar);
                i = i2 + 1;
            }
        }
        if (b != null) {
            Iterator<String> keys = b.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject b3 = b(b, next);
                if (b3 != null) {
                    uVar.c.put(Integer.valueOf(next), new com.netease.mpay.server.response.r(Integer.valueOf(next).intValue(), f(b3, "user_icon_url"), f(b3, "welcome_icon_url"), a(b3, "remind_from", 604800L), a(b3, "remind_interval", 604800L), a(b3, "remind_if_pay", true), a(b3, "bind_guest", true), f(b3, "guest_bind_tips")));
                }
            }
        }
        return uVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("oversea_user", this.b ? "0" : "1"));
        arrayList.add(new com.netease.mpay.widget.a.a("device_udid", com.netease.mpay.widget.az.c(context)));
        if (!TextUtils.isEmpty(this.a)) {
            arrayList.add(new com.netease.mpay.widget.a.a("device_id", this.a));
        }
        return arrayList;
    }
}
