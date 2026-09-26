package com.netease.mcount;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MCountAgent {
    private static MCountAgent a = new MCountAgent();
    private static Handler b;

    private MCountAgent() {
        HandlerThread handlerThread = new HandlerThread("MCountAgent");
        handlerThread.start();
        b = new Handler(handlerThread.getLooper());
    }

    private static void a(Context context) {
        m mVar = new m(context);
        if (b != null) {
            b.post(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject b(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            try {
                jSONObject.put(((String) entry.getKey()).trim(), entry.getValue());
            } catch (JSONException e) {
                r.a(e);
            }
        }
        return jSONObject;
    }

    public static void init(Context context, CharSequence charSequence) {
        new q(context).a(charSequence.toString());
    }

    public static void logEvent(Context context, String str) {
        logEvent(context, str, null);
    }

    public static void logEvent(Context context, String str, HashMap hashMap) {
        n nVar = new n(str, hashMap, context);
        if (b != null) {
            b.post(nVar);
        }
        if (k.a(context)) {
            return;
        }
        a.a(context, h.b, MCountService.class, MCountService.ACTION);
    }

    public static void onStart(Context context) {
        a(context);
    }

    public static void onStop(Context context) {
    }

    public static void setTimeOffsetSec(long j) {
        h.d = j;
    }

    public static void setUploadInterval(int i) {
        if (i > 0) {
            h.b = i * 1000;
        }
    }

    public static void setUploadOnlyWifi(boolean z) {
        h.c = z;
    }

    public static void uploadLog(Context context) {
        k.a(b, context, h.c);
    }
}
