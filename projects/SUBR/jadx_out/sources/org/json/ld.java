package org.json;

import android.util.Base64;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class ld {
    public static String a(String str) {
        try {
            return new String(Base64.decode(str, 0), "UTF-8");
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return "";
        }
    }

    static String b(String str) {
        return Base64.encodeToString(str.getBytes(), 10);
    }
}
