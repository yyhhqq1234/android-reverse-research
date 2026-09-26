package com.netease.mpay.f;

import android.app.Activity;
import android.graphics.Bitmap;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cq;
import com.netease.mpay.e.c.j;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.a.d;
import com.netease.mpay.server.a.bg;

/* loaded from: classes.dex */
public class af extends n {
    private a a;
    private b j;
    private Bitmap k;

    /* loaded from: classes.dex */
    public enum a {
        USER_INFO,
        USER_BALANCE;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(b.a aVar, String str);

        void a(com.netease.mpay.server.response.ah ahVar, Bitmap bitmap);
    }

    public af(Activity activity, String str, String str2, a aVar, b bVar) {
        super(activity, str, str2, null);
        this.a = aVar;
        this.j = bVar;
        this.k = null;
        if (this.j == null || a.USER_BALANCE == this.a) {
            super.f();
            super.g();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        super.a(bVar, new ag(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.netease.mpay.server.response.ah a(d.C0045d c0045d) {
        bg.c cVar = null;
        switch (this.a) {
            case USER_INFO:
                cVar = new bg.b();
                break;
            case USER_BALANCE:
                cVar = new bg.a();
                break;
        }
        com.netease.mpay.server.response.ah ahVar = (com.netease.mpay.server.response.ah) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.bg(this.d, c0045d.a().j, this.b.c, this.b.d, cVar));
        if (cq.c(ahVar.b)) {
            this.k = com.netease.mpay.widget.bd.a(j.a.c(this.c, this.d, ahVar.b));
        }
        com.netease.mpay.e.b.o a2 = c0045d.a.c().a(this.b.c);
        if (a2 != null) {
            a2.h = ahVar.a;
            a2.i = ahVar.b;
            c0045d.a.c().a(a2, this.e, true);
        }
        return ahVar;
    }
}
