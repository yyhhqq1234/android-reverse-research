package com.netease.mpay.server.response;

import android.app.Activity;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.c.j;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ ImageView d;
    final /* synthetic */ boolean e;
    final /* synthetic */ n f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(n nVar, Activity activity, String str, String str2, ImageView imageView, boolean z) {
        this.f = nVar;
        this.a = activity;
        this.b = str;
        this.c = str2;
        this.d = imageView;
        this.e = z;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        Bitmap c = j.a.c(this.a, this.b, this.c);
        if (c == null || this.a == null || this.a.isFinishing()) {
            return;
        }
        this.a.runOnUiThread(new q(this, c));
    }
}
