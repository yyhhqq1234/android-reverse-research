package com.netease.mpay.d.a.a;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.q;
import com.netease.mpay.server.response.w;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
class m extends bf.c {
    final /* synthetic */ l a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar) {
        this.a = lVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        w.a aVar;
        if (this.a.b != null) {
            q.a aVar2 = this.a.b;
            aVar = this.a.c;
            aVar2.a(aVar.b);
        }
    }
}
