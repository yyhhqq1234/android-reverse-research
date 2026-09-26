package com.netease.mpay;

import com.dodola.rocoo.Hack;
import com.netease.forum.ForumApi;
import com.netease.mpay.f.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cs implements com.netease.mpay.f.a.b {
    final /* synthetic */ cr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cs(cr crVar) {
        this.a = crVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        ForumApi forumApi;
        forumApi = this.a.c;
        forumApi.openGameForum((String) null);
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ae aeVar) {
        ForumApi forumApi;
        forumApi = this.a.c;
        forumApi.openGameForum(aeVar.a);
    }
}
