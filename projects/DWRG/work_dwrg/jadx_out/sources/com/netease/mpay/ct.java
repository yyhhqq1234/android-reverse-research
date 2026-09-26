package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.forum.ForumApiCallback;

/* loaded from: classes.dex */
class ct implements ForumApiCallback {
    final /* synthetic */ cr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ct(cr crVar) {
        this.a = crVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public void onRequestTicket(ForumApiCallback.OnTicketGotCallback onTicketGotCallback) {
        onTicketGotCallback.onFail();
    }
}
