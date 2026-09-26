package com.netease.mpay.auth;

import android.content.Context;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class a {
    public static final String a = null;
    private static String b;

    /* renamed from: com.netease.mpay.auth.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0033a {
        public String a;
        public String b;
        public long c;

        public C0033a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    static {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static C0033a a(Object obj) {
        try {
            C0033a c0033a = new C0033a();
            JSONObject jSONObject = (JSONObject) obj;
            c0033a.a = jSONObject.getString("openid");
            c0033a.b = jSONObject.getString("access_token");
            c0033a.c = System.currentTimeMillis() + (Long.valueOf(jSONObject.getString("expires_in")).longValue() * 1000);
            return c0033a;
        } catch (ClassCastException e) {
            Cdo.a((Throwable) e);
            return null;
        } catch (JSONException e2) {
            Cdo.a((Throwable) e2);
            return null;
        }
    }

    public static String a() {
        return b;
    }

    public static void a(String str) {
        b = str;
    }

    public static boolean a(Context context) {
        return b != null && com.netease.mpay.sharer.a.a(context);
    }
}
