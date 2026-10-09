package org.json;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.ConcurrentHashMap;
import org.json.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class kc extends Handler {
    private final ConcurrentHashMap<String, mn> a;

    public kc(Looper looper) {
        super(looper);
        this.a = new ConcurrentHashMap<>();
    }

    private boolean a(int i) {
        return i == 1016 || i == 1015;
    }

    void a(String str, mn mnVar) {
        if (str == null || mnVar == null) {
            return;
        }
        this.a.put(str, mnVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            mg mgVar = (mg) message.obj;
            String path = mgVar.getPath();
            mn mnVar = this.a.get(path);
            if (mnVar == null) {
                return;
            }
            if (a(message.what)) {
                mnVar.a(mgVar);
            } else {
                int i = message.what;
                mnVar.a(mgVar, new eg(i, du.a(i)));
            }
            this.a.remove(path);
        } catch (Throwable th) {
            l9.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }
}
