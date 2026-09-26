package com.netease.mpay.f;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.d;
import com.netease.mpay.server.a;
import com.netease.mpay.skin.SkinManager;
import com.netease.mpay.widget.aw;
import java.util.Date;
import java.util.Iterator;

/* loaded from: classes.dex */
public class t extends com.netease.mpay.f.a.d {
    static final Boolean a = true;
    private boolean b;
    private com.netease.mpay.e.b.af j;
    private com.netease.mpay.server.response.u k;
    private b l;
    private a m;

    /* loaded from: classes.dex */
    public static class a {
        public com.netease.mpay.e.b.af a;
        public com.netease.mpay.server.response.u b;

        public a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(a aVar);

        void a(c cVar, String str, a aVar);
    }

    /* loaded from: classes.dex */
    public enum c {
        ReadServerError,
        Unknown;

        c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public t(@NonNull Activity activity, @NonNull String str, @Nullable com.netease.mpay.e.b.af afVar, @Nullable com.netease.mpay.server.response.u uVar, @Nullable b bVar) {
        super(activity, str, null, null);
        this.b = false;
        this.j = afVar;
        this.k = uVar;
        this.l = bVar;
        super.f();
        super.g();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.af a(d.C0045d c0045d, com.netease.mpay.server.response.d dVar) {
        a(c0045d.a, dVar.m);
        com.netease.mpay.e.b.af afVar = new com.netease.mpay.e.b.af();
        afVar.a(dVar);
        c0045d.a.e().a(afVar);
        com.netease.mpay.e.b.ak a2 = a(dVar, c0045d.a);
        if (a2 != null) {
            c0045d.a.e().a(a2);
        }
        if (afVar != null && afVar.k != null) {
            new Thread(new u(this, afVar)).start();
        }
        return afVar;
    }

    private com.netease.mpay.e.b.ak a(com.netease.mpay.server.response.d dVar, com.netease.mpay.e.b bVar) {
        boolean z = false;
        com.netease.mpay.e.b.ak d = bVar.e().d();
        if (!dVar.y || dVar.z > d.b) {
            d.a = dVar.y;
            d.b = dVar.z;
            d.c = dVar.A > 0 ? new Date().getTime() + (dVar.A * 1000) : 0L;
            z = true;
        }
        if (z) {
            return d;
        }
        return null;
    }

    private void a(com.netease.mpay.e.b bVar, long j) {
        com.netease.mpay.e.b.af a2 = bVar.e().a();
        if (a2.l == j) {
            return;
        }
        Iterator it = bVar.c().a().a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (a2.f && com.netease.mpay.e.a.a.d(oVar.f) && oVar.c != null) {
                com.netease.mpay.e.b.r a3 = bVar.a().a(oVar.c);
                a3.a(j);
                bVar.a().a(oVar.c, a3);
            }
        }
    }

    private void a(d.C0045d c0045d, com.netease.mpay.server.response.c cVar) {
        com.netease.mpay.e.b.e eVar = new com.netease.mpay.e.b.e();
        eVar.a = cVar.a;
        eVar.b = cVar.b;
        eVar.c = cVar.c;
        eVar.d = cVar.d > 0 ? cVar.d : 3;
        eVar.e = cVar.e > 0 ? cVar.e * 1000 : 600000L;
        eVar.f = cVar.f;
        eVar.g = cVar.g;
        eVar.h = cVar.h;
        c0045d.a.e().a(eVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        synchronized (a) {
            this.m = new a();
            SkinManager.getInstance().loadSkin(this.c, com.netease.mpay.bk.l);
            com.netease.mpay.e.b.f a2 = c0045d.a.d().a();
            if (this.j == null || this.j.a < new Date().getTime()) {
                try {
                    aw.b.a(new com.netease.mpay.server.d(this.c, this.d, this.e).a());
                } catch (com.netease.mpay.server.a e) {
                    Cdo.a((Throwable) e);
                }
                try {
                    com.netease.mpay.server.response.d dVar = (com.netease.mpay.server.response.d) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.g(this.d, a2 != null ? a2.j : null));
                    this.m.a = a(c0045d, dVar);
                    com.netease.mpay.server.d.a(this.c, this.d, dVar.b);
                } catch (com.netease.mpay.server.a e2) {
                    com.netease.mpay.server.d.a(this.c, this.d);
                    this.b = (e2 instanceof a.i) && ((a.i) e2).b() && com.netease.mpay.widget.aq.d(this.c);
                    throw e2;
                }
            }
            if (this.k == null || (this.k.a != -1 && this.k.a < new Date().getTime())) {
                try {
                    this.m.b = (com.netease.mpay.server.response.u) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.ac(this.d, a2 != null ? a2.j : null, com.netease.mpay.bj.c(this.c)));
                } catch (com.netease.mpay.server.a e3) {
                    this.b = (e3 instanceof a.i) && ((a.i) e3).b() && com.netease.mpay.widget.aq.d(this.c);
                    throw e3;
                }
            }
            if (c0045d.a.e().a().d > c0045d.a.e().b().a) {
                try {
                    a(c0045d, (com.netease.mpay.server.response.c) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.f()));
                } catch (com.netease.mpay.server.a e4) {
                    Cdo.a((Throwable) e4);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        super.a(bVar, bVar2);
        if (this.l != null) {
            if (bVar.a) {
                this.l.a(this.m);
            } else {
                this.l.a(this.b ? c.ReadServerError : c.Unknown, bVar.d, this.m);
            }
        }
    }
}
