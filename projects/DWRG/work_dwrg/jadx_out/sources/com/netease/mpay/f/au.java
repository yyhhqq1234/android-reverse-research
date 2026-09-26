package com.netease.mpay.f;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.o;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.a.d;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public abstract class au extends com.netease.mpay.f.a.d {
    protected a a;
    protected boolean b;
    private b j;
    private com.netease.mpay.e.b.o k;

    /* loaded from: classes.dex */
    public interface a {
        void a(b.a aVar, String str);

        void a(String str, com.netease.mpay.server.response.m mVar);
    }

    /* loaded from: classes.dex */
    public class b {
        protected com.netease.mpay.e.b a;
        protected com.netease.mpay.server.d b;
        protected com.netease.mpay.e.b.f c;
        protected com.netease.mpay.e.b.o d;
        private d.C0045d f;

        b(d.C0045d c0045d) {
            this.f = c0045d;
            this.a = c0045d.a;
            this.b = new com.netease.mpay.server.d(au.this.c, au.this.d, au.this.e);
            this.c = c0045d.b();
            if (au.this.b) {
                this.d = this.a.c().b(au.this.e);
                if (this.d == null || 2 != this.d.f || TextUtils.isEmpty(this.d.c) || TextUtils.isEmpty(this.d.d)) {
                    throw new a.f(au.this.c.getString(RIdentifier.h.ap));
                }
            } else {
                this.d = null;
            }
            c0045d.b(au.this.b ? this.d : null);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void a(com.netease.mpay.e.b.o oVar) {
            this.f.b(oVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public au(Activity activity, String str, String str2, boolean z, boolean z2, a aVar) {
        super(activity, str, str2, null);
        this.b = z;
        this.a = aVar;
        this.k = null;
        if (z2) {
            super.c();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private static String a(String str, String str2, boolean z) {
        return (z || !TextUtils.isEmpty(str2)) ? str2 : str;
    }

    public static void a(@NonNull Activity activity, @NonNull String str, @NonNull com.netease.mpay.e.b bVar, @NonNull String str2, @NonNull com.netease.mpay.server.response.m mVar, @Nullable com.netease.mpay.e.b.o oVar, @Nullable o.a aVar, @NonNull boolean z) {
        com.netease.mpay.e.b.o a2;
        com.netease.mpay.e.b.o a3;
        com.netease.mpay.server.response.u.a(activity, str).b(mVar.c).c(activity, str);
        if (oVar == null) {
            oVar = new com.netease.mpay.e.b.o(mVar, true, true);
        } else {
            oVar.a = a(oVar.a, mVar.i, false);
            oVar.d = a(oVar.d, mVar.a, false);
            oVar.e = a(oVar.e, mVar.d, false);
            oVar.h = a(oVar.h, mVar.e, true);
            oVar.i = a(oVar.i, mVar.f, true);
            oVar.j = mVar.g;
            oVar.k = mVar.h;
            oVar.g = mVar.o != -1 ? mVar.o : oVar.g;
            oVar.a(a(oVar.a(true), mVar.k, false));
            oVar.m = true;
            oVar.l = true;
        }
        oVar.a(aVar);
        bVar.c().a(oVar, str2, z);
        if (mVar.w != null && mVar.w.size() > 0) {
            com.netease.mpay.e.b.i iVar = new com.netease.mpay.e.b.i();
            iVar.a = mVar.b;
            iVar.b = mVar.w;
            bVar.g().a(iVar);
        }
        if (!TextUtils.isEmpty(mVar.l) && !TextUtils.equals(mVar.l, mVar.b) && !TextUtils.isEmpty(mVar.m) && (a3 = bVar.c().a(mVar.l)) != null && !TextUtils.isEmpty(a3.d)) {
            a3.d = mVar.m;
            bVar.c().a(a3, str2, false);
        }
        if (!TextUtils.isEmpty(mVar.p)) {
            bVar.k().a(mVar.p);
        }
        if (TextUtils.isEmpty(mVar.d) || TextUtils.equals(mVar.b, mVar.d) || (a2 = bVar.c().a(mVar.d)) == null) {
            return;
        }
        bVar.c().a(a2.c, a2.d);
        bVar.k().a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final com.netease.mpay.server.response.m b(d.C0045d c0045d) {
        this.j = new b(c0045d);
        com.netease.mpay.e.b.q a2 = this.j.a.c().a();
        com.netease.mpay.server.response.m a3 = a(this.j);
        if (this.b && this.j.d != null) {
            this.j.a.c().a(this.j.d.c, this.j.d.d);
            this.j.a.k().a();
        }
        this.k = this.j.a.c().a(a3.b, a2);
        if (this.k != null && (TextUtils.isEmpty(a3.a) || TextUtils.isEmpty(this.k.d) || TextUtils.equals(this.k.d, a3.a))) {
            this.k = null;
        }
        return a3;
    }

    protected abstract com.netease.mpay.server.response.m a(b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public final void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        a(bVar, this.a);
        if (bVar == null || !bVar.a || bVar.b == null || !new com.netease.mpay.e.b(this.c, this.d).e().a().j) {
            return;
        }
        new l(new av(this, bVar)).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(a.b bVar, a aVar) {
        if (this.k != null) {
            new ax(this.c, this.d, this.e, this.k, true).h();
        }
        super.a(bVar, new aw(this, aVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@NonNull b bVar, @NonNull com.netease.mpay.server.response.m mVar, @Nullable o.a aVar, @NonNull boolean z) {
        a(this.c, this.d, bVar.a, this.e, mVar, null, aVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@NonNull b bVar, @NonNull com.netease.mpay.server.response.m mVar, @Nullable com.netease.mpay.e.b.o oVar, @Nullable o.a aVar, @NonNull boolean z) {
        a(this.c, this.d, bVar.a, this.e, mVar, oVar, aVar, z);
    }
}
