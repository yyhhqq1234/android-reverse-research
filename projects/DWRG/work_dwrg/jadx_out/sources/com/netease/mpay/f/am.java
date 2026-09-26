package com.netease.mpay.f;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.d;
import com.netease.mpay.server.a;
import com.netease.mpay.widget.RIdentifier;

/* loaded from: classes.dex */
public class am extends com.netease.mpay.f.a.d {
    private d a;
    private a b;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(String str, a.q qVar);
    }

    /* loaded from: classes.dex */
    public static class b extends d {
        String a;

        public b(@NonNull String str) {
            this.a = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c extends d {
        String a;
        String b;

        public c(@NonNull String str, @NonNull String str2) {
            this.a = str;
            this.b = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class d {
        public d() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e extends d {
        String b;

        public e(@NonNull String str) {
            this.b = str;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public abstract void a(String str);
    }

    public am(Activity activity, String str, String str2, d dVar, boolean z, a aVar) {
        super(activity, str, str2, null);
        this.a = dVar;
        this.b = aVar;
        if (z) {
            super.c();
        }
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void b(d.C0045d c0045d) {
        com.netease.mpay.server.d dVar = new com.netease.mpay.server.d(this.c, this.d, this.e);
        if (this.a instanceof b) {
            dVar.a(new com.netease.mpay.server.a.ah(c0045d.b().j, ((b) this.a).a, c0045d.a.e().a(this.c)));
            return null;
        }
        if (this.a instanceof c) {
            dVar.a(new com.netease.mpay.server.a.aw(c0045d.b().j, ((c) this.a).a, ((c) this.a).b, c0045d.a.e().a(this.c)));
            return null;
        }
        if (!(this.a instanceof e)) {
            throw new com.netease.mpay.server.a("");
        }
        com.netease.mpay.e.b.o a2 = c0045d.a.c().a(((e) this.a).b);
        if (a2 == null || TextUtils.isEmpty(a2.d)) {
            throw new a.f(this.c.getString(RIdentifier.h.u));
        }
        dVar.a(new com.netease.mpay.server.a.bi(c0045d.b().j, a2.c, a2.d, c0045d.a.e().a(this.c)));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.f.a.d
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        a.q qVar;
        super.a(bVar, bVar2);
        if (this.b == null) {
            return;
        }
        if (bVar.a) {
            this.b.a();
            return;
        }
        if (a.EnumC0044a.LOGIN_EXPIRED == bVar.c && (this.a instanceof e)) {
            ((e) this.a).a(bVar.d);
            return;
        }
        try {
            qVar = (a.q) bVar.e;
        } catch (ClassCastException e2) {
            qVar = null;
        } catch (NullPointerException e3) {
            qVar = null;
        }
        this.b.a(bVar.d, qVar);
    }
}
