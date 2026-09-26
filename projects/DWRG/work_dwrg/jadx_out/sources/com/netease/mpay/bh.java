package com.netease.mpay;

import android.widget.ScrollView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class bh implements Runnable {
    final /* synthetic */ ScrollView a;
    final /* synthetic */ int b;
    final /* synthetic */ bc c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(bc bcVar, ScrollView scrollView, int i) {
        this.c = bcVar;
        this.a = scrollView;
        this.b = i;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.smoothScrollTo(0, this.b > 0 ? this.b : this.a.getBottom());
    }
}
