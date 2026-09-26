package com.netease.mcount;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes.dex */
public class MCountService extends IntentService {
    public static final String ACTION = "com.netease.mcount.MCountService";

    public MCountService() {
        super("MCountService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Context applicationContext = getApplicationContext();
        boolean booleanExtra = intent != null ? intent.getBooleanExtra("0", h.c) : h.c;
        if (k.a(applicationContext)) {
            a.a(applicationContext, MCountService.class, ACTION);
        } else {
            k.a(applicationContext, booleanExtra);
        }
    }
}
