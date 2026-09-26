package com.netease.mpay.server.a;

import android.content.Context;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.b.i;
import com.netease.mpay.server.b;
import com.netease.mpay.server.response.ai;
import com.netease.unisdk.gmbridge.utils.ResIdReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public abstract class d extends ax {
    /* JADX INFO: Access modifiers changed from: protected */
    public d(int i, String str) {
        super(i, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(String str, String str2) {
        super(1, a(str, str2));
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static com.netease.mpay.server.response.m a(String str) {
        try {
            return a((JSONObject) new JSONTokener(str).nextValue());
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
            return null;
        }
    }

    private static com.netease.mpay.server.response.m a(JSONObject jSONObject) {
        JSONArray d;
        JSONObject a = a(jSONObject, "user");
        com.netease.mpay.server.response.m mVar = new com.netease.mpay.server.response.m();
        mVar.i = f(a, "client_username");
        mVar.j = l(a, "need_mask");
        mVar.k = f(a, "display_username");
        mVar.b = f(a, ResIdReader.RES_TYPE_ID);
        mVar.a = f(a, "token");
        mVar.c = a(a, "login_type", 1);
        mVar.d = f(a, "bind_user_id");
        mVar.e = f(a, "nickname");
        mVar.f = f(a, "avatar");
        mVar.g = 1 == h(a, "realname_status");
        mVar.h = a(a, "mobile_bind_status", 0);
        mVar.n = f(a, "mask_related_mobile");
        mVar.w = new ArrayList();
        JSONObject b = b(a, "exit_popup_info");
        if (b != null && (d = d(b, "ad")) != null) {
            for (int i = 0; i < d.length() && i < 2; i++) {
                JSONObject a2 = a(d, i);
                i.a aVar = new i.a();
                aVar.a = f(a2, "game_url");
                aVar.b = f(a2, "pic_url");
                aVar.c = f(a2, "product");
                aVar.d = j(a2, "expire_time") * 1000;
                mVar.w.add(aVar);
            }
        }
        mVar.p = f(a, "udid");
        mVar.o = h(a, "need_bind");
        mVar.q = f(jSONObject, "ext_user_id");
        mVar.r = f(jSONObject, "ext_access_token");
        mVar.s = f(jSONObject, "ext_refresh_token");
        mVar.t = j(jSONObject, "next_refresh");
        JSONObject b2 = b(jSONObject, "refresh_info");
        if (b2 != null) {
            mVar.l = f(b2, "user_id");
            mVar.m = f(b2, "token");
        }
        mVar.u = Boolean.valueOf(l(jSONObject, "force_pwd"));
        mVar.v = new com.netease.mpay.server.response.ai();
        JSONObject b3 = b(jSONObject, "verify_status");
        if (b3 != null) {
            if (1 == h(b3, "need_passwd")) {
                mVar.v.a(ai.a.SET_PASSWORD);
            }
            if (1 == h(b3, "need_email")) {
                mVar.v.a(ai.a.SET_EMAIL);
            }
            if (1 == h(b3, "need_real_name")) {
                mVar.v.a(ai.a.SET_REAL_NAME);
            }
            if (1 == h(b3, "need_sms")) {
                mVar.v.a(ai.a.VERIFY_SMS);
            }
        }
        return mVar;
    }

    public static String a() {
        return com.netease.mpay.server.b.a(b.c.NICKNAME, b.c.AVATAR, b.c.REALNAME_STATUS, b.c.MOBILE_BIND_STATUS, b.c.EXIT_POPUP_INFO);
    }

    private static String a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        StringBuilder append = new StringBuilder(str).append(str.contains("?") ? com.alipay.sdk.sys.a.b : "?");
        append.append("un").append("=").append(com.netease.mpay.widget.bd.b(str2));
        return append.toString();
    }

    public static String b(String str) {
        try {
            return f((JSONObject) new JSONTokener(str).nextValue(), "token");
        } catch (JSONException e) {
            Cdo.a((Throwable) e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.server.a.ax
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.m b(Context context, JSONObject jSONObject) {
        return a(jSONObject);
    }

    @Override // com.netease.mpay.server.a.ax
    protected ArrayList a(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a("opt_fields", a()));
        a(arrayList);
        return arrayList;
    }

    abstract void a(ArrayList arrayList);
}
