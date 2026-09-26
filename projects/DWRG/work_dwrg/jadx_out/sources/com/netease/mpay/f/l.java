package com.netease.mpay.f;

import android.os.AsyncTask;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
public class l extends AsyncTask {
    private Runnable a;

    public l(Runnable runnable) {
        this.a = runnable;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(Void... voidArr) {
        this.a.run();
        return null;
    }
}
