package com.netease.mpay.server.response;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class q implements Runnable {
    final /* synthetic */ Bitmap a;
    final /* synthetic */ p b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar, Bitmap bitmap) {
        this.b = pVar;
        this.a = bitmap;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b.d == null || TextUtils.isEmpty(this.b.c) || !TextUtils.equals(this.b.c, (String) this.b.d.getTag())) {
            return;
        }
        bf.a(this.b.d, new BitmapDrawable(this.b.a.getResources(), this.a), this.b.e);
    }
}
