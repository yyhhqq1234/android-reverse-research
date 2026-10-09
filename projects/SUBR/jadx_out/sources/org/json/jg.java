package org.json;

import android.util.Base64;
import java.util.Map;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class jg implements we {
    @Override // org.json.we
    public String a(Map<String, Object> map) {
        try {
            return String.format("%s=%s", "data", Base64.encodeToString(new JSONObject().put(rb.Q, rb.R).put("data", new JSONObject(map)).toString().getBytes(), 2));
        } catch (JSONException e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return "";
        }
    }
}
