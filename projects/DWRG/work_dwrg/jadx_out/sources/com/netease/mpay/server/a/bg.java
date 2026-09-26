package com.netease.mpay.server.a;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.b;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class bg extends ax {
    private c a;
    private String b;

    /* loaded from: classes.dex */
    public static class a extends c {
        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.server.a.bg.c
        String a() {
            return com.netease.mpay.server.b.a(b.c.ECARD_BALANCE);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends c {
        public b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.server.a.bg.c
        String a() {
            return com.netease.mpay.server.b.a(b.c.NICKNAME, b.c.AVATAR);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class c {
        public c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        abstract String a();
    }

    public bg(String str, String str2, String str3, String str4, c cVar) {
        super(0, "/games/" + str + "/devices/" + str2 + "/users/" + str3 + "/info");
        this.a = cVar;
        this.b = str4;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ah b(Context context, JSONObject jSONObject) {
        com.netease.mpay.server.response.ah ahVar = new com.netease.mpay.server.response.ah();
        JSONObject a2 = a(jSONObject, "user");
        ahVar.a = f(a2, "nickname");
        ahVar.b = f(a2, "avatar");
        try {
            ahVar.c = Integer.valueOf(g(a2, "ecard_balance"));
        } catch (JSONException e) {
            ahVar.c = null;
        }
        return ahVar;
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("token", this.b));
        arrayList.add(new com.netease.mpay.widget.a.a("opt_fields", this.a.a()));
        return arrayList;
    }
}
