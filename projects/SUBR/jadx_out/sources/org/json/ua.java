package org.json;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.json.mediationsdk.logger.IronLog;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public class ua extends Handler {
    private static final String b = "DownloadHandler";
    mn a;

    public ua(Looper looper) {
        super(looper);
    }

    public void a() {
        this.a = null;
    }

    public void a(mn mnVar) {
        if (mnVar == null) {
            throw new IllegalArgumentException();
        }
        this.a = mnVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        mn mnVar = this.a;
        if (mnVar == null) {
            Logger.i(b, "OnPreCacheCompletion listener is null, msg: " + message.toString());
            return;
        }
        try {
            int i = message.what;
            if (i == 1016) {
                mnVar.a((mg) message.obj);
            } else {
                this.a.a((mg) message.obj, new eg(i, du.a(i)));
            }
        } catch (Throwable th) {
            l9.d().a(th);
            Logger.i(b, "handleMessage | Got exception: " + th.getMessage());
            IronLog.INTERNAL.error(th.toString());
        }
    }
}
