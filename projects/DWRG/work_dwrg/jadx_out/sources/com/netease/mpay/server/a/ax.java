package com.netease.mpay.server.a;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.e.c.a;
import com.netease.mpay.server.a;
import com.netease.mpay.server.b;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.a.b;
import com.sina.weibo.sdk.constant.WBConstants;
import io.netty.handler.codec.http.HttpHeaders;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public abstract class ax {
    protected int i;
    protected String j;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class a {
        static a a;
        String b;
        String c;
        String d;

        a(Context context) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                this.b = packageInfo.packageName;
                this.c = String.valueOf(packageInfo.versionCode);
                this.d = String.valueOf(packageInfo.versionName);
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            } catch (Exception e) {
                Cdo.a((Throwable) e);
                this.b = "";
                this.c = "";
                this.d = "";
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static a a(Context context) {
            synchronized (context) {
                if (a == null) {
                    a = new a(context);
                }
            }
            return a;
        }
    }

    public ax(int i, String str) {
        this.i = i;
        this.j = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int a(JSONObject jSONObject, String str, int i) {
        return jSONObject != null ? jSONObject.optInt(str, i) : i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long a(JSONObject jSONObject, String str, long j) {
        return jSONObject != null ? jSONObject.optLong(str, j) : j;
    }

    private String a() {
        Locale locale = Locale.getDefault();
        if (locale == null) {
            return "zh-cn";
        }
        String language = locale.getLanguage();
        String country = locale.getCountry();
        if (language == null || country == null) {
            return "zh-cn";
        }
        String lowerCase = language.trim().toLowerCase();
        String lowerCase2 = country.trim().toLowerCase();
        return (lowerCase.equals("") || lowerCase2.equals("")) ? "zh-cn" : lowerCase + "-" + lowerCase2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static String a(JSONObject jSONObject, String str, String str2) {
        if (jSONObject != null) {
            return jSONObject.optString(str, str2);
        }
        return null;
    }

    public static JSONObject a(JSONArray jSONArray, int i) {
        if (jSONArray == null) {
            throw new JSONException("json object is null");
        }
        return jSONArray.getJSONObject(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static JSONObject a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            throw new JSONException("json object is null");
        }
        return jSONObject.getJSONObject(str);
    }

    public static void a(Context context, int i) {
        b.C0055b c0055b = new b.C0055b();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", i);
            c0055b.b = jSONObject.toString().getBytes();
            a(context, c0055b);
        } catch (JSONException e) {
            throw new com.netease.mpay.server.a(context.getString(RIdentifier.h.bT));
        }
    }

    protected static void a(Context context, b.C0055b c0055b) {
        if (b.a.a(c0055b.a)) {
            return;
        }
        try {
            JSONObject jSONObject = (JSONObject) new JSONTokener(new String(c0055b.b)).nextValue();
            int intValue = Integer.valueOf(e(jSONObject, "code")).intValue();
            String f = f(jSONObject, "reason");
            switch (intValue) {
                case 1304:
                    throw new a.h(f);
                case 1306:
                    throw new a.f(f);
                case 1311:
                    throw new a.b(f);
                case 1312:
                    throw new a.m(f);
                case 1314:
                    throw new a.l(f);
                case 1315:
                    throw new a.C0047a(f);
                case 1340:
                    throw new a.d(f);
                case 1341:
                    throw new a.c(f);
                case 1343:
                    throw new a.g(f);
                case 1351:
                    throw new a.n(f, f(jSONObject, "verify_url"));
                case 1373:
                    JSONObject b = b(jSONObject, "reply_sms");
                    throw new a.p(f, new a.q(f(b, "number"), f(b, "content")));
                case 1395:
                    throw new a.e(f);
                case 1700:
                    throw new a.k(f);
                case 1817:
                    throw new a.j(f);
                default:
                    throw new com.netease.mpay.server.a(f);
            }
        } catch (ClassCastException e) {
            throw new com.netease.mpay.server.a(context.getString(RIdentifier.h.bT));
        } catch (NumberFormatException e2) {
            throw new com.netease.mpay.server.a(context.getString(RIdentifier.h.bT));
        } catch (JSONException e3) {
            throw new com.netease.mpay.server.a(context.getString(RIdentifier.h.bT));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean a(JSONObject jSONObject, String str, boolean z) {
        return jSONObject != null ? jSONObject.optBoolean(str, z) : z;
    }

    private ArrayList b(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.netease.mpay.widget.a.a(WBConstants.GAME_PARAMS_GAME_ID, str));
        arrayList.add(new com.netease.mpay.widget.a.a("gv", "" + a.a(context).c));
        arrayList.add(new com.netease.mpay.widget.a.a("gvn", "" + a.a(context).d));
        arrayList.add(new com.netease.mpay.widget.a.a("cv", "a2.14.1"));
        arrayList.add(new com.netease.mpay.widget.a.a("app_type", com.netease.mpay.bk.d.booleanValue() ? "tv" : "games"));
        arrayList.add(new com.netease.mpay.widget.a.a("app_mode", b.C0048b.a(com.netease.mpay.bk.b.booleanValue())));
        if (com.netease.mpay.bk.a != null) {
            String b = com.netease.mpay.bk.a.b();
            if (!TextUtils.isEmpty(b)) {
                arrayList.add(new com.netease.mpay.widget.a.a("lang", b));
            }
        }
        a.C0041a a2 = new com.netease.mpay.e.b(context, str).l().a();
        if (a2 != null && !TextUtils.isEmpty(a2.a)) {
            arrayList.add(new com.netease.mpay.widget.a.a("app_channel", a2.a));
        }
        return arrayList;
    }

    public static JSONArray b(JSONArray jSONArray, int i) {
        if (jSONArray == null) {
            throw new JSONException("json object is null");
        }
        return jSONArray.getJSONArray(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static JSONObject b(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONObject(str);
        }
        return null;
    }

    public static String c(JSONArray jSONArray, int i) {
        if (jSONArray == null) {
            throw new JSONException("json object is null");
        }
        return jSONArray.getString(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static JSONArray c(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            throw new JSONException("json object is null");
        }
        return jSONObject.getJSONArray(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static JSONArray d(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optJSONArray(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String e(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            throw new JSONException("json object is null");
        }
        return jSONObject.getString(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public static String f(JSONObject jSONObject, String str) {
        if (jSONObject != null) {
            return jSONObject.optString(str, null);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int g(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            throw new JSONException("json object is null");
        }
        return jSONObject.getInt(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int h(JSONObject jSONObject, String str) {
        return a(jSONObject, str, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long i(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            throw new JSONException("json object is null");
        }
        return jSONObject.getLong(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static long j(JSONObject jSONObject, String str) {
        return a(jSONObject, str, -1L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean k(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            throw new JSONException("json object is null");
        }
        return jSONObject.getBoolean(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean l(JSONObject jSONObject, String str) {
        return a(jSONObject, str, false);
    }

    public Object a(Activity activity, String str, String str2, b.C0055b c0055b) {
        String a2;
        String string = activity.getString(RIdentifier.h.bT);
        try {
            try {
                a(activity, c0055b);
                a2 = new String(c0055b.b);
            } catch (a.n e) {
                a2 = new com.netease.mpay.server.e(activity, str, str2).a(e.b());
            }
            return b(activity, (JSONObject) new JSONTokener(a2).nextValue());
        } catch (ClassCastException | JSONException e2) {
            throw new com.netease.mpay.server.a(string);
        }
    }

    public String a(Activity activity, String str) {
        return com.netease.mpay.bk.h + this.j;
    }

    protected abstract ArrayList a(Context context);

    public ArrayList a(Context context, String str) {
        return com.netease.mpay.widget.a.g.a(a(context), b(context, str));
    }

    protected Object b(Context context, JSONObject jSONObject) {
        return null;
    }

    public HashMap b(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("Content-type", "application/x-www-form-urlencoded");
        hashMap.put(HttpHeaders.Names.ACCEPT_LANGUAGE, a());
        try {
            String str = Build.MODEL;
            String valueOf = String.valueOf(Build.VERSION.SDK_INT);
            String str2 = a.a(context).b + "/" + a.a(context).c;
            String str3 = "NeteaseMobileGame/a2.14.1";
            StringBuilder append = new StringBuilder().append("(");
            if (str.length() > 50) {
                str = str.substring(0, 50);
            }
            hashMap.put("User-agent", str2 + " " + str3 + " " + append.append(str).append(com.alipay.sdk.util.i.b).append(valueOf).append(")").toString());
        } catch (Exception e) {
            hashMap.put("User-agent", "NeteaseMobileGame/a2.14.1");
        }
        return hashMap;
    }

    public int c() {
        return this.i;
    }
}
