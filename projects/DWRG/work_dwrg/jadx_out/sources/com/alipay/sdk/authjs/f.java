package com.alipay.sdk.authjs;

import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class f extends TimerTask {
    final /* synthetic */ a a;
    final /* synthetic */ d b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, a aVar) {
        this.b = dVar;
        this.a = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("toastCallBack", "true");
        } catch (JSONException e) {
        }
        a aVar = new a("callback");
        aVar.i = this.a.i;
        aVar.m = jSONObject;
        this.b.a.a(aVar);
    }
}
