package com.netease.mpay.f;

import android.app.Activity;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.f.a.d;
import com.netease.mpay.widget.RIdentifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class y extends n {
    private a a;
    private boolean j;

    /* loaded from: classes.dex */
    public enum a {
        PREFETCH_HISTORY,
        FETCH_NEW,
        FETCH_MORE_HISTORY_REMOTE,
        FETCH_HISTORY_REMOTE,
        FETCH_HISTORY_LOCAL,
        UPLOAD_STATE;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public y(Activity activity, String str, String str2, a aVar, com.netease.mpay.f.a.b bVar) {
        super(activity, str, str2, bVar);
        this.a = aVar;
        if (bVar == null) {
            super.g();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private com.netease.mpay.e.b.w a(com.netease.mpay.e.b.w wVar, ArrayList arrayList) {
        if (wVar.a == null || wVar.a.isEmpty()) {
            wVar.a = arrayList;
        } else {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                com.netease.mpay.e.b.u uVar = (com.netease.mpay.e.b.u) it.next();
                int indexOf = wVar.a.indexOf(uVar);
                if (indexOf < 0) {
                    arrayList2.add(uVar);
                } else if (a((com.netease.mpay.e.b.u) wVar.a.get(indexOf), uVar)) {
                    wVar.a.set(indexOf, uVar);
                }
            }
            if (arrayList2.size() > 0) {
                wVar.a.addAll(0, arrayList2);
            }
        }
        return wVar;
    }

    private void a(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (2 == ((com.netease.mpay.e.b.u) it.next()).e) {
                it.remove();
            }
        }
    }

    private boolean a(com.netease.mpay.e.b.u uVar, com.netease.mpay.e.b.u uVar2) {
        switch (uVar.e) {
            case 0:
                return uVar2.e != 0;
            case 1:
                return uVar2.e == 2;
            case 2:
                return false;
            default:
                return false;
        }
    }

    private void b(com.netease.mpay.e.b.w wVar, ArrayList arrayList) {
        com.netease.mpay.e.b.u uVar = (com.netease.mpay.e.b.u) wVar.a.get(wVar.a.size() - 1);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.u uVar2 = (com.netease.mpay.e.b.u) it.next();
            if (2 == uVar2.e || uVar2.i >= uVar.i) {
                it.remove();
            }
        }
    }

    private ArrayList d(d.C0045d c0045d) {
        this.j = true;
        try {
            j(c0045d);
        } catch (com.netease.mpay.server.a e) {
            Cdo.a((Throwable) e);
        }
        com.netease.mpay.server.response.a.a aVar = (com.netease.mpay.server.response.a.a) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.a.b(this.d, this.b.c, c0045d.a().j, this.b.d, 0, null));
        a(aVar.c);
        com.netease.mpay.e.b.r a2 = c0045d.a.a().a(this.b.c);
        a2.a = aVar.a;
        a2.f = aVar.b;
        a2.a(c0045d.a.e().a().l);
        if (aVar.c.size() > 0) {
            com.netease.mpay.e.b.u uVar = (com.netease.mpay.e.b.u) aVar.c.get(0);
            a2.c = (!aVar.a || uVar.i <= a2.d) ? a2.c : true;
            a2.d = uVar.i;
        }
        c0045d.a.a().a(this.b.c, a2);
        c0045d.a.b().a(this.b.c, new com.netease.mpay.e.b.w(aVar.c));
        this.j = false;
        return aVar.c;
    }

    private ArrayList e(d.C0045d c0045d) {
        this.j = true;
        c0045d.a.a().d(this.b.c);
        try {
            try {
                j(c0045d);
            } catch (com.netease.mpay.server.a e) {
                Cdo.a((Throwable) e);
            }
            com.netease.mpay.server.response.a.a aVar = (com.netease.mpay.server.response.a.a) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.a.b(this.d, this.b.c, c0045d.a().j, this.b.d, 0, null));
            a(aVar.c);
            com.netease.mpay.e.b.r a2 = c0045d.a.a().a(this.b.c);
            a2.a = false;
            a2.f = aVar.b;
            a2.a(c0045d.a.e().a().l);
            if (aVar.c.size() > 0) {
                a2.d = ((com.netease.mpay.e.b.u) aVar.c.get(0)).i;
            }
            c0045d.a.a().a(this.b.c, a2);
            c0045d.a.b().a(this.b.c, new com.netease.mpay.e.b.w(aVar.c));
            this.j = false;
            return aVar.c;
        } catch (com.netease.mpay.server.a e2) {
            this.j = false;
            com.netease.mpay.e.b.w a3 = c0045d.a.b().a(this.b.c);
            if (a3.a == null || a3.a.isEmpty()) {
                throw e2;
            }
            return a3.a;
        }
    }

    private ArrayList f(d.C0045d c0045d) {
        if (this.j) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.dz));
        }
        this.j = true;
        com.netease.mpay.server.response.a.a aVar = (com.netease.mpay.server.response.a.a) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.a.b(this.d, this.b.c, c0045d.a().j, this.b.d, 0, c0045d.a.a().a(this.b.c).c()));
        c0045d.a.a().a(this.b.c, false, aVar.b);
        com.netease.mpay.e.b.w a2 = c0045d.a.b().a(this.b.c);
        b(a2, aVar.c);
        if (aVar.c.size() < 1) {
            this.j = false;
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.f1do));
        }
        a2.a.addAll(aVar.c);
        c0045d.a.b().a(this.b.c, new com.netease.mpay.e.b.w(a2.a));
        this.j = false;
        return aVar.c;
    }

    private ArrayList g(d.C0045d c0045d) {
        if (this.j) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.dz));
        }
        this.j = true;
        com.netease.mpay.server.response.a.a aVar = (com.netease.mpay.server.response.a.a) new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.a.b(this.d, this.b.c, c0045d.a().j, this.b.d, 1, c0045d.a.a().a(this.b.c).c()));
        c0045d.a.a().a(this.b.c, false, aVar.b);
        if (aVar.c.size() < 1) {
            this.j = false;
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.dh));
        }
        com.netease.mpay.e.b.w a2 = a(c0045d.a.b().a(this.b.c), aVar.c);
        a(a2.a);
        c0045d.a.b().a(this.b.c, a2);
        this.j = false;
        return a2.a;
    }

    private ArrayList h(d.C0045d c0045d) {
        c0045d.a.a().d(this.b.c);
        com.netease.mpay.e.b.w a2 = c0045d.a.b().a(this.b.c);
        if (a2.a.size() < 1) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.dp));
        }
        return a2.a;
    }

    private ArrayList i(d.C0045d c0045d) {
        if (this.j) {
            throw new com.netease.mpay.server.a(this.c.getString(RIdentifier.h.dz));
        }
        this.j = true;
        j(c0045d);
        this.j = false;
        return null;
    }

    private void j(d.C0045d c0045d) {
        com.netease.mpay.e.b.r a2 = c0045d.a.a().a(this.b.c);
        if (!a2.a() || a2.f == null) {
            return;
        }
        new com.netease.mpay.server.d(this.c, this.d, this.e).a(new com.netease.mpay.server.a.a.c(this.b.c, c0045d.a().j, this.b.d, a2.c(), a2.g));
        c0045d.a.a().c(this.b.c);
    }

    @Override // com.netease.mpay.f.a.d
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public y d() {
        super.d();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.n
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ArrayList a(d.C0045d c0045d) {
        switch (this.a) {
            case PREFETCH_HISTORY:
                return d(c0045d);
            case FETCH_NEW:
                return g(c0045d);
            case FETCH_MORE_HISTORY_REMOTE:
                return f(c0045d);
            case FETCH_HISTORY_REMOTE:
                return e(c0045d);
            case FETCH_HISTORY_LOCAL:
                return h(c0045d);
            case UPLOAD_STATE:
                return i(c0045d);
            default:
                return null;
        }
    }
}
