package org.json;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.unity3d.ads.core.domain.CommonGetHeaderBiddingToken;
import java.util.ArrayList;
import java.util.List;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class fj {
    private static final String b = "fj";
    private static final String c = "supersonic_shared_preferen";
    private static final String d = "version";
    private static final String e = "back_button_state";
    private static final String f = "search_keys";
    private static final String g = "^\\d+_\\d+$";
    private static fj h;
    private SharedPreferences a;

    private fj(Context context) {
        this.a = context.getSharedPreferences("supersonic_shared_preferen", 0);
    }

    public static synchronized fj a(Context context) {
        if (h == null) {
            h = new fj(context);
        }
        return h;
    }

    private boolean b(String str) {
        return str.matches(g);
    }

    public static synchronized fj e() {
        return h;
    }

    public String a(String str) {
        String string = this.a.getString(str, null);
        return string != null ? string : JsonUtils.EMPTY_JSON;
    }

    public ArrayList<String> a() {
        ArrayList<String> arrayList = new ArrayList<>();
        String[] strArr = (String[]) this.a.getAll().keySet().toArray(new String[0]);
        SharedPreferences.Editor editorEdit = this.a.edit();
        for (String str : strArr) {
            if (b(str)) {
                arrayList.add(str);
                editorEdit.remove(str);
            }
        }
        editorEdit.apply();
        return arrayList;
    }

    public void a(String str, String str2) {
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public boolean a(String str, String str2, String str3) {
        String string = this.a.getString("ssaUserData", null);
        if (TextUtils.isEmpty(string)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            if (jSONObject.isNull(str2)) {
                return false;
            }
            JSONObject jSONObject2 = jSONObject.getJSONObject(str2);
            if (jSONObject2.isNull(str3)) {
                return false;
            }
            jSONObject2.getJSONObject(str3).put("timestamp", str);
            SharedPreferences.Editor editorEdit = this.a.edit();
            editorEdit.putString("ssaUserData", jSONObject.toString());
            editorEdit.apply();
            return true;
        } catch (JSONException e2) {
            l9.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return false;
        }
    }

    public dg.a b() {
        int i = Integer.parseInt(this.a.getString(e, CommonGetHeaderBiddingToken.HB_TOKEN_VERSION));
        if (i == 0) {
            return dg.a.None;
        }
        if (i == 1) {
            return dg.a.Device;
        }
        return i == 2 ? dg.a.Controller : dg.a.Controller;
    }

    public String c() {
        return this.a.getString("version", "-1");
    }

    public void c(String str) {
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.putString(e, str);
        editorEdit.apply();
    }

    public List<String> d() {
        String string = this.a.getString(f, null);
        ArrayList arrayList = new ArrayList();
        if (string != null) {
            aq aqVar = new aq(string);
            if (aqVar.a(y8.h.R)) {
                try {
                    arrayList.addAll(aqVar.a((JSONArray) aqVar.b(y8.h.R)));
                } catch (JSONException e2) {
                    l9.d().a(e2);
                    IronLog.INTERNAL.error(e2.toString());
                }
            }
        }
        return arrayList;
    }

    public void d(String str) {
        if (c().equalsIgnoreCase(str)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.putString("version", str);
        editorEdit.apply();
    }

    public void e(String str) {
        SharedPreferences.Editor editorEdit = this.a.edit();
        editorEdit.putString(f, str);
        editorEdit.apply();
    }
}
