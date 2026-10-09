package org.json.sdk.service.Connectivity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import org.json.JSONObject;
import org.json.ke;
import org.json.l9;
import org.json.le;
import org.json.mediationsdk.logger.IronLog;
import org.json.v8;

/* JADX INFO: loaded from: classes3.dex */
public class BroadcastReceiverStrategy implements ke {
    private final le a;
    private BroadcastReceiver b = new BroadcastReceiver() { // from class: com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String strB = v8.b(context);
            if (strB.equals("none")) {
                BroadcastReceiverStrategy.this.a.a();
            } else {
                BroadcastReceiverStrategy.this.a.a(strB, new JSONObject());
            }
        }
    };

    public BroadcastReceiverStrategy(le leVar) {
        this.a = leVar;
    }

    @Override // org.json.ke
    public void a() {
        this.b = null;
    }

    @Override // org.json.ke
    public void a(Context context) {
        try {
            context.unregisterReceiver(this.b);
        } catch (IllegalArgumentException e) {
            l9.d().a(e);
        } catch (Exception e2) {
            l9.d().a(e2);
            Log.e("ContentValues", "unregisterConnectionReceiver - " + e2);
        }
    }

    @Override // org.json.ke
    public void b(Context context) {
        try {
            context.registerReceiver(this.b, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e) {
            l9.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    @Override // org.json.ke
    public JSONObject c(Context context) {
        return new JSONObject();
    }
}
