package org.json;

import android.util.Log;
import org.json.mediationsdk.logger.IronSourceLogger;
import org.json.mediationsdk.logger.IronSourceLoggerManager;
import org.json.mediationsdk.logger.d;
import org.json.mediationsdk.server.HttpFunctions;
import org.json.mediationsdk.server.ServerURL;

/* JADX INFO: loaded from: classes3.dex */
public class dr {

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ boolean b;
        final /* synthetic */ int c;

        a(String str, boolean z, int i) {
            this.a = str;
            this.b = z;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            dr.c(this.a, this.b, this.c);
        }
    }

    public static void b(String str, boolean z, int i) {
        Thread thread = new Thread(new a(str, z, i), "callAsyncRequestURL");
        thread.setUncaughtExceptionHandler(new d());
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, boolean z, int i) {
        try {
            new JSONObject(HttpFunctions.getStringFromURL(ServerURL.getRequestURL(str, z, i)));
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NETWORK, "callRequestURL(reqUrl:" + str + ", hit:" + z + ")", 1);
        } catch (Throwable th) {
            l9.d().a(th);
            StringBuilder sb = new StringBuilder("callRequestURL(reqUrl:");
            if (str == null) {
                str = "null";
            }
            sb.append(str);
            sb.append(", hit:");
            sb.append(z);
            sb.append(")");
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NETWORK, sb.toString() + ", e:" + Log.getStackTraceString(th), 0);
        }
    }
}
