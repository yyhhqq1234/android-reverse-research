package org.json.mediationsdk.logger;

import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.l9;

/* JADX INFO: loaded from: classes3.dex */
class c {
    private IronSourceLogger.IronSourceTag a;
    private String b;
    private String c;
    private int d;

    public c(IronSourceLogger.IronSourceTag ironSourceTag, String str, String str2, int i) {
        this.a = ironSourceTag;
        this.b = str;
        this.c = str2;
        this.d = i;
    }

    public int a() {
        return this.d;
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timestamp", this.b);
            jSONObject.put("tag", this.a);
            jSONObject.put("level", this.d);
            jSONObject.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, this.c);
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return jSONObject;
    }
}
