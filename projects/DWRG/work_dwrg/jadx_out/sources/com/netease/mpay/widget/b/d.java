package com.netease.mpay.widget.b;

import android.content.Intent;
import android.net.Uri;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.b.m;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements m.a {
    final /* synthetic */ c a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(c cVar) {
        this.a = cVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void b() {
        if (this.a.d.canGoBack()) {
            this.a.d.goBack();
        }
    }

    @Override // com.netease.mpay.widget.b.m.a
    public void a() {
        b();
    }

    @Override // com.netease.mpay.widget.b.m.a
    public void a(String str) {
        this.a.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }
}
