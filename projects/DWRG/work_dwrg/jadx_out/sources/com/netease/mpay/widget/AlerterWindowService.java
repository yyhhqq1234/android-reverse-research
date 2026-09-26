package com.netease.mpay.widget;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class AlerterWindowService extends IntentService {
    private int a;
    private be b;
    private Handler c;

    public AlerterWindowService() {
        super("AlerterWindowService");
        this.c = new Handler();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4) {
        if (n.a()) {
            this.c.postDelayed(new o(this, str, str2, str3, str4), 100L);
        } else {
            this.c.post(new p(this, str, str2, str3, str4));
        }
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("0");
        String string2 = extras.getString("1");
        String string3 = extras.getString("2");
        String string4 = extras.getString("3");
        String string5 = extras.getString("4");
        if (string5 != null) {
            this.a = Integer.valueOf(string5).intValue();
        } else {
            this.a = RpcException.ErrorCode.SERVER_SESSIONSTATUS;
        }
        long longExtra = intent.getLongExtra("5", -1L);
        if (longExtra == -1) {
            this.b = null;
        } else {
            this.b = (be) m.a.b(longExtra);
        }
        a(string, string2, string3, string4);
    }
}
