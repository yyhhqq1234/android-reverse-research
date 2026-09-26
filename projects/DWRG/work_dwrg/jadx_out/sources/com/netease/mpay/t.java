package com.netease.mpay;

import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.o;
import com.netease.mpay.widget.bf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t extends bf.c {
    final /* synthetic */ o a;
    final /* synthetic */ o.c b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(o.c cVar, o oVar) {
        this.b = cVar;
        this.a = oVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.widget.bf.c
    protected void a(View view) {
        new com.netease.mpay.f.w(o.this.a, o.this.d.a(), o.this.d.b(), new u(this)).c().h();
    }
}
