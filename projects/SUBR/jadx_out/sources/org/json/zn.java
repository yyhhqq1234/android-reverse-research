package org.json;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class zn {
    public static final String a = "com.google.market";
    public static final String b = "com.android.vending";
    public static final String c = "isInstalled";
    private static final String d = "zn";
    private static final ArrayList<String> e = new a();

    class a extends ArrayList<String> {
        a() {
            add(zn.a);
            add("com.android.vending");
        }
    }

    class b extends JSONObject {
        final /* synthetic */ boolean a;

        b(boolean z) throws JSONException {
            this.a = z;
            put("isInstalled", z);
        }
    }

    private enum c {
        GOOGLE_PLAY(2, new String[]{"com.android.vending"}),
        GOOGLE_MARKET(4, new String[]{zn.a}),
        SAMSUNG(5, new String[]{"com.sec.android.app.samsungapps"}),
        AMAZON(6, new String[]{"com.amazon.venezia"}),
        HUAWEI(7, new String[]{"com.huawei.appmarket"});

        private static final Map<String, c> h = new HashMap();
        private final int a;
        private final String[] b;

        static {
            for (c cVar : values()) {
                for (String str : cVar.d()) {
                    h.put(str, cVar);
                }
            }
        }

        c(int i2, String[] strArr) {
            this.a = i2;
            this.b = strArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ArrayList<String> b() {
            return new ArrayList<>(h.keySet());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int c() {
            return this.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String[] d() {
            return this.b;
        }
    }

    private static JSONObject a(Context context) {
        return a(context, e);
    }

    private static JSONObject a(Context context, ArrayList<String> arrayList) {
        JSONObject jSONObject = new JSONObject();
        try {
            ArrayList<String> arrayListB = b(context);
            for (String str : arrayList) {
                jSONObject.put(str, a(arrayListB.contains(str.trim().toLowerCase(Locale.getDefault()))));
            }
        } catch (Exception e2) {
            l9.d().a(e2);
            Log.d(d, "Error while extracting packages installation data");
        }
        return jSONObject;
    }

    private static JSONObject a(boolean z) throws JSONException {
        return new b(z);
    }

    private static ArrayList<String> b(Context context) {
        List<ApplicationInfo> listO = jl.P().f().o(context);
        ArrayList<String> arrayList = new ArrayList<>();
        for (ApplicationInfo applicationInfo : listO) {
            if (applicationInfo != null) {
                arrayList.add(applicationInfo.packageName.toLowerCase(Locale.getDefault()));
            }
        }
        return arrayList;
    }

    public static Integer c(Context context) {
        JSONObject jSONObjectA = a(context, c.b());
        int iPow = 0;
        for (c cVar : c.values()) {
            for (String str : cVar.d()) {
                JSONObject jSONObjectOptJSONObject = jSONObjectA.optJSONObject(str);
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean("isInstalled")) {
                    iPow = (int) (((double) iPow) + Math.pow(2.0d, cVar.c() - 1));
                    break;
                }
            }
        }
        return Integer.valueOf(iPow);
    }

    public static boolean d(Context context) {
        JSONObject jSONObjectA = a(context);
        Iterator<String> itKeys = jSONObjectA.keys();
        while (itKeys.hasNext()) {
            JSONObject jSONObjectOptJSONObject = jSONObjectA.optJSONObject(itKeys.next());
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean("isInstalled")) {
                return true;
            }
        }
        return false;
    }
}
