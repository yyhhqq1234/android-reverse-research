package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.forum.ForumApiCallback;
import com.netease.mpay.f.a.b;

/* loaded from: classes.dex */
class cv implements com.netease.mpay.f.a.b {
    final /* synthetic */ ForumApiCallback.OnTicketGotCallback a;
    final /* synthetic */ cu b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(cu cuVar, ForumApiCallback.OnTicketGotCallback onTicketGotCallback) {
        this.b = cuVar;
        this.a = onTicketGotCallback;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        this.a.onFail();
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        this.a.onSuccess(aeVar.a);
    }
}
