package org.json;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class kg {
    private static kg b;
    private zb a;

    private kg() {
    }

    private static kg a() {
        if (b == null) {
            b = new kg();
        }
        return b;
    }

    public static void a(tb tbVar, ig igVar) {
        if (tbVar != null) {
            try {
                a().a = new zb(tbVar, igVar);
            } catch (Exception e) {
                l9.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }
    }

    public static void a(zp.a aVar) {
        a(aVar, new HashMap());
    }

    public static void a(zp.a aVar, Map<String, Object> map) {
        zb zbVar = a().a;
        if (zbVar == null) {
            Log.d(rb.a, rb.U);
            return;
        }
        if (map != null) {
            map.put("eventid", Integer.valueOf(aVar.b));
        }
        zbVar.a(aVar.a, map);
    }
}
