package com.netease.mpay;

import com.dodola.rocoo.Hack;

/* loaded from: classes.dex */
class gb implements SetRealnameCallback {
    final /* synthetic */ ga a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(ga gaVar) {
        this.a = gaVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.SetRealnameCallback
    public void onFinish(User user) {
        this.a.a.post(new gc(this, user));
    }
}
