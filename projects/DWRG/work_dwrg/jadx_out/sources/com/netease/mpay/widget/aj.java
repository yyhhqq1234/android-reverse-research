package com.netease.mpay.widget;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.dodola.rocoo.Hack;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aj implements Runnable {
    final /* synthetic */ MessageBar a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(MessageBar messageBar) {
        this.a = messageBar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        AlphaAnimation alphaAnimation;
        view = this.a.a;
        alphaAnimation = this.a.i;
        view.startAnimation(alphaAnimation);
    }
}
