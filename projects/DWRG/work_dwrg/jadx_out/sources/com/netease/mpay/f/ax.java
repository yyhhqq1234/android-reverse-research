package com.netease.mpay.f;

import android.app.Activity;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.d;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ax extends com.netease.mpay.f.a.d {
    private com.netease.mpay.e.b.o a;
    private ArrayList b;

    public ax(Activity activity, String str, String str2, com.netease.mpay.e.b.o oVar, boolean z) {
        super(activity, str, str2, null);
        super.f();
        this.a = oVar;
        this.b = new ArrayList();
        if (oVar != null && !TextUtils.isEmpty(oVar.c)) {
            com.netease.mpay.e.c.k c = new com.netease.mpay.e.b(this.c, this.d).c();
            if (z) {
                c.b(oVar.c, oVar.d);
            } else {
                this.b = c.a(oVar.c, oVar.d);
            }
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        boolean z;
        Iterator it = this.b.iterator();
        while (true) {
            if (it.hasNext()) {
                com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
                if (!TextUtils.isEmpty(oVar.c) && !TextUtils.isEmpty(oVar.d)) {
                    if (oVar.f == 4) {
                        com.netease.mpay.a.a.b(this.c, oVar);
                    }
                    if (1 == oVar.f) {
                        Iterator it2 = c0045d.a.c().a(1).iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z = false;
                                break;
                            }
                            if (TextUtils.equals(oVar.c, ((com.netease.mpay.e.b.o) it2.next()).c)) {
                                z = true;
                                break;
                            }
                        }
                        if (z) {
                            break;
                        }
                    }
                    c0045d.a.a().b(oVar.c);
                    c0045d.a.b().b(oVar.c);
                }
            } else if (this.a != null && !TextUtils.isEmpty(this.a.c) && !TextUtils.isEmpty(this.a.d)) {
                new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ad(this.d, c0045d.b().j, c0045d.b().i, this.a.d, this.a.c));
            }
        }
        return null;
    }
}
