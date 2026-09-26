package com.netease.mpay;

import android.widget.ScrollView;
import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class ep implements Runnable {
    final /* synthetic */ ScrollView a;
    final /* synthetic */ ed b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ep(ed edVar, ScrollView scrollView) {
        this.b = edVar;
        this.a = scrollView;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.fullScroll(33);
    }
}
