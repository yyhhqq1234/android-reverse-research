package com.netease.mpay.widget.b;

import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.bk;
import com.netease.mpay.e.b.af;
import com.netease.mpay.widget.ay;
import com.netease.mpay.widget.b.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ c.b.a b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(c.b.a aVar, String str) {
        this.b = aVar;
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        c.e eVar;
        c.e eVar2;
        c.e eVar3;
        FragmentActivity fragmentActivity = c.this.a;
        eVar = c.this.e;
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(fragmentActivity, eVar.a);
        af a = bVar.e().a();
        if (a.v) {
            com.netease.mpay.e.c.k c = bVar.c();
            eVar2 = c.this.e;
            com.netease.mpay.e.b.o b = c.b(eVar2.b);
            if (b != null) {
                c.b.a aVar = this.b;
                eVar3 = c.this.e;
                String a2 = aVar.a(eVar3.d.a);
                if (!TextUtils.isEmpty(this.a)) {
                    ay.a(c.this.a, bk.k).a(c.this.a, a.b, b.c, b.e, b.f, a2, this.a, this.b.b, true);
                    return;
                }
                String a3 = TextUtils.isEmpty(this.b.b) ? a2 : ay.a(this.b.b, a2);
                this.b.b = a3;
                ay.a(c.this.a, bk.k).a(c.this.a, a.b, b.c, b.e, b.f, a2, a3);
            }
        }
    }
}
