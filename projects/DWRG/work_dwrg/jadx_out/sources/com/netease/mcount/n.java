package com.netease.mcount;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ HashMap b;
    final /* synthetic */ Context c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(String str, HashMap hashMap, Context context) {
        this.a = str;
        this.b = hashMap;
        this.c = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        JSONObject b;
        handler = MCountAgent.b;
        if (handler == null) {
            HandlerThread handlerThread = new HandlerThread("MCountAgent");
            handlerThread.start();
            Handler unused = MCountAgent.b = new Handler(handlerThread.getLooper());
        }
        f fVar = new f();
        fVar.a = this.a;
        fVar.b = r.a() + "";
        if (this.b != null) {
            b = MCountAgent.b(this.b);
            fVar.c = b;
        } else {
            fVar.c = null;
        }
        k.a(this.c, fVar);
    }
}
