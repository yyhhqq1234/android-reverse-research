package com.netease.mpay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.m;
import com.netease.mpay.d.a.a;
import com.netease.mpay.d.a.af;
import com.netease.mpay.d.a.f;
import com.netease.mpay.d.a.o;
import com.netease.mpay.d.a.y;
import com.netease.mpay.f.an;
import com.netease.mpay.server.response.ai;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.ae;

/* loaded from: classes.dex */
public class ex extends com.netease.mpay.a {
    private com.netease.mpay.widget.s d;
    private com.netease.mpay.e.b e;
    private Resources f;
    private FragmentManager g;
    private com.netease.mpay.widget.ae h;
    private ew i;
    private a j;
    private int k;
    private com.netease.mpay.b.m l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        c d;
        b f;
        C0043a h;
        boolean b = false;
        boolean a = false;
        boolean g = false;
        boolean c = false;
        boolean e = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.netease.mpay.ex$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0043a {
            int a;
            com.netease.mpay.b.al b;

            public C0043a(int i, com.netease.mpay.b.al alVar) {
                this.a = i;
                this.b = alVar;
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class b {
            Intent a;
            Integer b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class c {
            ew a;
            ae.a b;
            boolean c;
            boolean d;

            public c(ew ewVar, ae.a aVar, boolean z, boolean z2) {
                this.a = ewVar;
                this.b = aVar;
                this.c = z;
                this.d = z2;
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }
        }

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public void a() {
            this.g = false;
            this.h = null;
        }

        public void a(int i, com.netease.mpay.b.al alVar) {
            this.g = true;
            this.h = new C0043a(i, alVar);
        }

        public void a(ew ewVar, ae.a aVar, boolean z, boolean z2) {
            this.c = true;
            this.d = new c(ewVar, aVar, z, z2);
        }

        public void b() {
            this.c = false;
            this.d = null;
        }

        public void c() {
            this.e = false;
            this.f = null;
        }
    }

    public ex(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.g = this.a.getSupportFragmentManager();
        this.g.addOnBackStackChangedListener(new ey(this));
        this.j = new a();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.b.ao aoVar) {
        new oy(this.a, this.l.a(), aoVar.h, aoVar.f, this.l.b()).a(aoVar.i, aoVar.j);
        if (this.l.a != m.a.MOBILE_BIND || 7 != aoVar.f) {
            b(aoVar);
            return;
        }
        if (this.l.e != null) {
            this.l.e.onGuestBindSuccess(new User(aoVar));
        }
        x();
        aoVar.a().a(this.a);
    }

    private void a(a.c cVar) {
        this.h = new com.netease.mpay.widget.ae();
        this.i = com.netease.mpay.d.a.a.a(cVar, new ez(this));
        a(this.i, ae.a.ENTER_MOBILE, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(af.e eVar) {
        fc fcVar = new fc(this, eVar);
        ae.a aVar = ae.a.SET_PASSWORD;
        this.i = this.h.a(aVar);
        if (this.i == null) {
            this.i = com.netease.mpay.d.a.af.a(eVar, fcVar);
            this.h.a(aVar, this.i);
        } else {
            ((com.netease.mpay.d.a.af) this.i).b(eVar, fcVar);
        }
        a(this.i, aVar, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(f.b bVar, com.netease.mpay.server.response.ai aiVar) {
        fb fbVar = new fb(this, bVar, aiVar);
        ae.a aVar = bVar.c ? ae.a.MOBILE_LOGIN : ae.a.GUIDE_VERIFY_SMS;
        this.i = this.h.a(aVar);
        if (this.i == null) {
            this.i = com.netease.mpay.d.a.f.a(bVar, fbVar);
            this.h.a(aVar, this.i);
        } else {
            ((com.netease.mpay.d.a.f) this.i).b(bVar, fbVar);
        }
        a(this.i, aVar, !bVar.c, bVar.c ? false : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(o.d dVar) {
        fa faVar = new fa(this, dVar);
        ae.a aVar = ae.a.MOBILE_REGISTER;
        this.i = this.h.a(aVar);
        if (this.i == null) {
            this.i = com.netease.mpay.d.a.o.a(dVar, faVar);
            this.h.a(aVar, this.i);
        } else {
            ((com.netease.mpay.d.a.o) this.i).b(dVar, faVar);
        }
        a(this.i, aVar, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(y.c cVar) {
        fd fdVar = new fd(this);
        ae.a aVar = ae.a.RELATED_LOGIN;
        this.i = this.h.a(aVar);
        if (this.i == null) {
            this.i = com.netease.mpay.d.a.y.a(cVar, fdVar);
            this.h.a(aVar, this.i);
        } else {
            ((com.netease.mpay.d.a.y) this.i).b(cVar, fdVar);
        }
        a(this.i, aVar, false, true);
    }

    private void a(ew ewVar, ae.a aVar, boolean z, boolean z2) {
        if (this.j != null && this.j.b) {
            this.j.a(ewVar, aVar, z, z2);
            return;
        }
        if (z2 && this.g != null) {
            this.g.popBackStack((String) null, 1);
        }
        FragmentTransaction beginTransaction = this.g.beginTransaction();
        beginTransaction.replace(this.k, ewVar, aVar.a());
        if (z) {
            this.h.a(aVar, ewVar);
        } else {
            beginTransaction.addToBackStack(aVar.a());
        }
        beginTransaction.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(an.a aVar) {
        Integer num;
        switch (fg.c[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                num = 3;
                break;
            case 5:
                num = 5;
                break;
            case 6:
                num = 6;
                break;
            case 7:
                num = 2;
                break;
            case 8:
                num = 10;
                break;
            default:
                num = null;
                break;
        }
        b.a(this.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(this.l.d(), aVar), null, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        this.g.popBackStack((String) null, 1);
        this.i = null;
        if (this.l == null) {
            u();
        } else {
            this.l = new m.f(this.l.d(), str, str2, this.l.e);
            a(new a.c(this.l.a(), this.l.b(), str, str2, this.l.e));
        }
    }

    private void b(com.netease.mpay.b.ao aoVar) {
        if (this.l.e != null) {
            this.l.e.onLoginSuccess(new User(aoVar));
            y();
        } else {
            x();
            aoVar.a(this.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        com.netease.mpay.e.b.o a2 = this.e.c().a(str);
        String format = String.format(this.a.getString(RIdentifier.h.aK), a2 != null ? a2.c() : "");
        String string = this.a.getString(RIdentifier.h.dT);
        fe feVar = new fe(this);
        String string2 = this.a.getString(RIdentifier.h.Z);
        ff ffVar = new ff(this);
        if (this.d == null) {
            this.d = new com.netease.mpay.widget.s(this.a);
        }
        this.d.a(format, string2, ffVar, string, feVar, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.d == null) {
            this.d = new com.netease.mpay.widget.s(this.a);
        }
        this.d.a(str);
    }

    private void s() {
        this.j.a = this.f.getBoolean(RIdentifier.b.a);
        if (m.a.GUIDE_SET_SECURITY == this.l.a) {
            m.e eVar = (m.e) this.l;
            if (eVar.c != null && eVar.c.b() > 0 && !eVar.c.b(ai.a.VERIFY_SMS) && !eVar.c.a()) {
                b(eVar.b);
                return;
            }
        }
        this.a.setContentView(RIdentifier.g.D);
        this.k = RIdentifier.f.bs;
        this.h = new com.netease.mpay.widget.ae();
        this.g.popBackStack((String) null, 1);
        switch (fg.a[this.l.a.ordinal()]) {
            case 1:
                m.d dVar = (m.d) this.l;
                a(new f.e(dVar.a(), dVar.b(), dVar.b, true), (com.netease.mpay.server.response.ai) null);
                return;
            case 2:
                m.g gVar = (m.g) this.l;
                a(new af.e(gVar.a(), gVar.b(), gVar.c, gVar.b, true));
                return;
            case 3:
                m.e eVar2 = (m.e) this.l;
                if (eVar2.c != null && eVar2.c.b(ai.a.VERIFY_SMS)) {
                    a(new f.e(eVar2.a(), eVar2.b(), eVar2.b, false), eVar2.c.c(ai.a.VERIFY_SMS));
                    return;
                } else {
                    if (eVar2.c == null || eVar2.c.b() > 1 || !eVar2.c.b(ai.a.SET_PASSWORD)) {
                        return;
                    }
                    a(new af.e(eVar2.a(), eVar2.b(), m.b.LOGIN, eVar2.b, false));
                    return;
                }
            case 4:
                m.f fVar = (m.f) this.l;
                a(new a.c(this.l.a(), this.l.b(), fVar.b, fVar.c, this.l.e));
                return;
            case 5:
                a(new a.c(this.l.a(), this.l.b(), Integer.valueOf(((m.c) this.l).b), this.l.e));
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        com.netease.mpay.e.b.f a2 = this.e.d().a();
        com.netease.mpay.e.b.o b = this.e.c().b(this.l.b());
        if (a2 != null && b != null && !TextUtils.isEmpty(b.d) && b.m) {
            a(new com.netease.mpay.b.ao(a2.j, b));
        } else if (this.l.a.equals(m.a.GUIDE_SET_SECURITY)) {
            u();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (this.l.e != null) {
            this.l.e.onDialogFinish();
        }
        x();
        new com.netease.mpay.b.au().a(this.a);
    }

    private void v() {
        hi.a().a((Activity) this.a, this.l.d(), false, false, true, this.l.e, (Integer) 4);
        y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.l.e != null) {
            this.l.e.onDialogFinish();
        }
        x();
        new com.netease.mpay.b.am().a(this.a);
    }

    private void x() {
        if (m() || this.h == null) {
            return;
        }
        this.h.a();
    }

    private void y() {
        if (m()) {
            return;
        }
        if (this.h != null) {
            this.h.a();
        }
        this.a.finish();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.l = com.netease.mpay.b.m.a(intent);
        return this.l;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        this.j.a(i, alVar);
    }

    public void a(int i, com.netease.mpay.b.al alVar) {
        if (this.i == null || !this.i.a(i, alVar)) {
            if (i == 5 || i == 6) {
                v();
                return;
            }
            if (i != 2) {
                if (i == 10) {
                    t();
                    return;
                }
                if (i == 1 || i == 3 || i == 4 || i == 9 || i == 11 || i == 12 || i == 13) {
                    if ((alVar instanceof com.netease.mpay.b.ao) && !((com.netease.mpay.b.ao) alVar).b) {
                        if (11 == i) {
                            b((com.netease.mpay.b.ao) alVar);
                            return;
                        } else {
                            a((com.netease.mpay.b.ao) alVar);
                            return;
                        }
                    }
                    if ((alVar instanceof com.netease.mpay.b.ao) && 12 == i) {
                        x();
                        ((com.netease.mpay.b.ao) alVar).a().a(this.a);
                    } else if (alVar instanceof com.netease.mpay.b.au) {
                        u();
                    } else if (alVar instanceof com.netease.mpay.b.ap) {
                        v();
                    }
                }
            }
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.j.a != this.f.getBoolean(RIdentifier.b.a)) {
            s();
        }
    }

    @Override // com.netease.mpay.a
    public void a(boolean z) {
        super.a(z);
        if (this.i != null) {
            this.i.a(z);
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = this.a.getResources();
        this.e = new com.netease.mpay.e.b(this.a, this.l.a());
        s();
    }

    @Override // com.netease.mpay.a
    public void d(Bundle bundle) {
        super.d(bundle);
        this.j.b = true;
    }

    @Override // com.netease.mpay.a
    public void g() {
        super.g();
        this.j.b = false;
        if (this.j.g && this.j.h != null) {
            a(this.j.h.a, this.j.h.b);
            this.j.a();
        }
        if (this.j.c) {
            a(this.j.d.a, this.j.d.b, this.j.d.c, this.j.d.d);
            this.j.b();
        }
        if (this.j.e) {
            this.a.startActivityForResult(this.j.f.a, this.j.f.b.intValue());
            this.j.c();
        }
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        if (this.i == null || !this.i.a()) {
            return super.l();
        }
        return true;
    }
}
