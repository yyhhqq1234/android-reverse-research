package im.yixin.sdk.util;

import android.util.Log;

/* loaded from: classes.dex */
public final class SDKLogger {
    private SDKLogger() {
    }

    public static void i(Class cls, String msg) {
        Log.i("Yixin.SDK." + cls.getSimpleName(), msg);
    }

    public static void e(Class cls, String msg) {
        Log.e("Yixin.SDK." + cls.getSimpleName(), msg);
    }

    public static void e(Class cls, String msg, Throwable e) {
        if (e != null) {
            Log.e("Yixin.SDK." + cls.getSimpleName(), msg, e);
        } else {
            Log.e("Yixin.SDK." + cls.getSimpleName(), msg);
        }
    }
}
