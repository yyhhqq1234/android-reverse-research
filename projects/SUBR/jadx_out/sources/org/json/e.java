package org.json;

import android.text.TextUtils;
import java.util.ArrayList;
import org.json.mediationsdk.logger.IronLog;
import org.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes3.dex */
abstract class e {
    private final String a = "eventId";
    private final String b = "timestamp";
    private final String c = "InterstitialEvents";
    private final String d = "events";
    private final String e = "events";
    JSONObject f;
    int g;
    private String h;

    e() {
    }

    private String a(int i) {
        return i != 2 ? "events" : "InterstitialEvents";
    }

    protected abstract String a();

    public abstract String a(ArrayList<ob> arrayList, JSONObject jSONObject);

    String a(JSONArray jSONArray) {
        try {
            if (this.f != null) {
                JSONObject jSONObject = new JSONObject(this.f.toString());
                jSONObject.put("timestamp", IronSourceUtils.getTimestamp());
                jSONObject.put(a(this.g), jSONArray);
                return jSONObject.toString();
            }
        } catch (Exception e) {
            l9.d().a(e);
        }
        return "";
    }

    JSONObject a(ob obVar) {
        try {
            String strA = obVar.a();
            JSONObject jSONObject = !TextUtils.isEmpty(strA) ? new JSONObject(strA) : new JSONObject();
            jSONObject.put("eventId", obVar.c());
            jSONObject.put("timestamp", obVar.d());
            return jSONObject;
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return null;
        }
    }

    void a(String str) {
        this.h = str;
    }

    String b() {
        return TextUtils.isEmpty(this.h) ? a() : this.h;
    }

    public abstract String c();
}
