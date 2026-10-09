package org.json;

import android.os.Handler;
import android.os.Message;
import org.json.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: loaded from: classes3.dex */
class js implements Runnable {
    private final Handler a;
    private final sa b;

    js(sa saVar, Handler handler) {
        this.b = saVar;
        this.a = handler;
    }

    Message a() {
        return new Message();
    }

    nc a(sa saVar, String str, long j) {
        return new nc(saVar, str, j);
    }

    String a(String str) {
        return IronSourceStorageUtils.makeDir(str);
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        int iB;
        mg mgVar = new mg(this.b.b().getParent(), this.b.b().getName());
        Message messageA = a();
        messageA.obj = mgVar;
        String strA = a(mgVar.getParent());
        if (strA == null) {
            iB = 1020;
        } else {
            ta taVarCall = a(new sa(mgVar, this.b.e(), this.b.a(), this.b.c(), this.b.f(), this.b.d()), strA, 3L).call();
            iB = taVarCall.b() == 200 ? 1016 : taVarCall.b();
        }
        messageA.what = iB;
        this.a.sendMessage(messageA);
    }
}
