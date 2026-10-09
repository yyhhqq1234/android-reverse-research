package org.json;

import android.content.Context;
import android.os.Build;
import org.json.sdk.service.Connectivity.BroadcastReceiverStrategy;
import org.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class s8 implements le {
    private ke a;

    protected s8(JSONObject jSONObject, Context context) {
        this.a = a(jSONObject, context);
        Logger.i("s8", "created ConnectivityAdapter with strategy " + this.a.getClass().getSimpleName());
    }

    private ke a(JSONObject jSONObject, Context context) {
        if (jSONObject.optInt(y8.i.g0) == 1) {
            return new BroadcastReceiverStrategy(this);
        }
        return (Build.VERSION.SDK_INT < 23 || !z3.c(context, "android.permission.ACCESS_NETWORK_STATE")) ? new BroadcastReceiverStrategy(this) : new gm(this);
    }

    public JSONObject a(Context context) {
        return this.a.c(context);
    }

    @Override // org.json.le
    public void a() {
    }

    @Override // org.json.le
    public void a(String str, JSONObject jSONObject) {
    }

    public void b() {
        this.a.a();
    }

    public void b(Context context) {
        this.a.b(context);
    }

    @Override // org.json.le
    public void b(String str, JSONObject jSONObject) {
    }

    public void c(Context context) {
        this.a.a(context);
    }
}
