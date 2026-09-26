package com.netease.mpay.widget;

import android.view.View;
import android.view.animation.Animation;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.MessageBar;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements Animation.AnimationListener {
    final /* synthetic */ MessageBar a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(MessageBar messageBar) {
        this.a = messageBar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        LinkedList linkedList;
        View view;
        linkedList = this.a.c;
        MessageBar.Message message = (MessageBar.Message) linkedList.poll();
        if (message != null) {
            this.a.a(message);
            return;
        }
        this.a.e = null;
        view = this.a.a;
        view.setVisibility(8);
        this.a.f = false;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
