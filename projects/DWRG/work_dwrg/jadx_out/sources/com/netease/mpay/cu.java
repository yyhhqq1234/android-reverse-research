package com.netease.mpay;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.forum.ForumApiCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cu implements ForumApiCallback {
    final /* synthetic */ cr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(cr crVar) {
        this.a = crVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void onRequestTicket(ForumApiCallback.OnTicketGotCallback onTicketGotCallback) {
        Activity activity;
        String str;
        String str2;
        activity = this.a.d;
        str = this.a.e;
        str2 = this.a.f;
        new com.netease.mpay.f.ad(activity, str, str2, new cv(this, onTicketGotCallback)).h();
    }
}
