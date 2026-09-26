package com.netease.mpay;

import android.os.Handler;
import android.os.Message;
import com.alipay.sdk.app.PayTask;
import com.dodola.rocoo.Hack;
import java.util.Map;

/* loaded from: classes.dex */
class h implements Runnable {
    final /* synthetic */ com.netease.mpay.server.response.ae a;
    final /* synthetic */ f b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar, com.netease.mpay.server.response.ae aeVar) {
        this.b = fVar;
        this.a = aeVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler handler;
        Handler handler2;
        Map<String, String> payV2 = new PayTask(this.b.a.a).payV2(this.a.a, true);
        String str = payV2 != null ? payV2.get(com.alipay.sdk.util.k.a) : null;
        Message message = new Message();
        message.what = 101;
        message.obj = str;
        handler = e.j;
        if (handler != null) {
            handler2 = e.j;
            handler2.sendMessage(message);
        }
    }
}
