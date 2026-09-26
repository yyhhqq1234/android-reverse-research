package com.netease.mpay;

import android.app.Activity;
import android.os.Build;
import com.dodola.rocoo.Hack;
import com.netease.mpay.cz;
import com.netease.mpay.f.t;
import com.netease.mpay.widget.aw;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class db implements t.b {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ cz.a c;
    final /* synthetic */ cz d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public db(cz czVar, Activity activity, String str, cz.a aVar) {
        this.d = czVar;
        this.a = activity;
        this.b = str;
        this.c = aVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private ArrayList a(String str, t.a aVar) {
        cz.b b;
        cz.b b2;
        cz.b b3;
        boolean z;
        boolean z2;
        com.netease.mpay.widget.av avVar;
        cz.b b4;
        cz.b b5;
        com.netease.mpay.widget.av avVar2;
        com.netease.mpay.widget.av avVar3;
        cz.b b6;
        cz.b b7;
        if (aVar != null && aVar.a != null) {
            b7 = this.d.b(this.a, str);
            b7.d = aVar.a;
        }
        if (aVar != null && aVar.b != null) {
            b6 = this.d.b(this.a, str);
            b6.e = aVar.b;
        }
        b = this.d.b(this.a, str);
        synchronized (b.b) {
            b2 = this.d.b(this.a, str);
            b2.b = false;
        }
        b3 = this.d.b(this.a, str);
        com.netease.mpay.e.b.af afVar = b3.d;
        z = this.d.d;
        if (!z && afVar != null) {
            if (afVar.v) {
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(afVar.w);
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(afVar.z);
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(aw.b.a());
            }
            this.d.d = true;
        }
        z2 = this.d.e;
        if (!z2 && afVar != null) {
            if (afVar.x && Build.VERSION.SDK_INT >= 14) {
                com.netease.mpay.e.b.f a = new com.netease.mpay.e.b(this.a, str).d().a();
                hy.a(this.a.getApplication(), str, a == null ? null : a.j, afVar.A);
            }
            this.d.e = true;
        }
        avVar = this.d.c;
        if (avVar != null) {
            avVar2 = this.d.c;
            if (avVar2.isShowing()) {
                avVar3 = this.d.c;
                avVar3.dismiss();
                this.d.c = null;
            }
        }
        b4 = this.d.b(this.a, str);
        ArrayList arrayList = b4.a;
        b5 = this.d.b(this.a, str);
        b5.a = new ArrayList();
        return arrayList;
    }

    @Override // com.netease.mpay.f.t.b
    public void a(t.a aVar) {
        new com.netease.mpay.e.b(this.a, this.b).h().a();
        Iterator it = a(this.b, aVar).iterator();
        while (it.hasNext()) {
            cz.a aVar2 = (cz.a) it.next();
            if (aVar2 != null) {
                aVar2.a();
            }
        }
    }

    @Override // com.netease.mpay.f.t.b
    public void a(t.c cVar, String str, t.a aVar) {
        Iterator it = a(this.b, aVar).iterator();
        while (it.hasNext()) {
            if (((cz.a) it.next()) != null) {
                this.c.a(cVar, str);
            }
        }
    }
}
