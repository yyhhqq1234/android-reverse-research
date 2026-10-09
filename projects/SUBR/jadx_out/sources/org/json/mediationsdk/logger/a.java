package org.json.mediationsdk.logger;

import android.os.Looper;
import android.util.Log;
import org.json.environment.ContextProvider;
import org.json.y8;

/* JADX INFO: loaded from: classes3.dex */
public class a extends IronSourceLogger {
    public static final String c = "console";
    public static final String d = "ironSourceSDK: ";

    private a() {
        super("console");
    }

    public a(int i) {
        super("console", i);
    }

    @Override // org.json.mediationsdk.logger.IronSourceLogger
    public void log(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        StringBuilder sb = new StringBuilder("UIThread: ");
        sb.append(Looper.getMainLooper() == Looper.myLooper());
        sb.append(" ");
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder("Activity: ");
        sb2.append(ContextProvider.getInstance().getCurrentActiveActivity() != null ? Integer.valueOf(ContextProvider.getInstance().getCurrentActiveActivity().hashCode()) : Boolean.FALSE);
        sb2.append(" ");
        String string2 = sb2.toString();
        if (i == 0) {
            Log.v(d + ironSourceTag, string + string2 + str);
            return;
        }
        if (i == 1) {
            Log.i(d + ironSourceTag, str);
        } else if (i == 2) {
            Log.w(d + ironSourceTag, str);
        } else {
            if (i != 3) {
                return;
            }
            Log.e(d + ironSourceTag, str);
        }
    }

    @Override // org.json.mediationsdk.logger.IronSourceLogger
    public void logException(IronSourceLogger.IronSourceTag ironSourceTag, String str, Throwable th) {
        log(ironSourceTag, str + ":stacktrace[" + Log.getStackTraceString(th) + y8.i.e, 3);
    }
}
