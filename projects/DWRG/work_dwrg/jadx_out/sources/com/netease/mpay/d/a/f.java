package com.netease.mpay.d.a;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.ew;
import com.netease.mpay.f.am;
import com.netease.mpay.f.au;
import com.netease.mpay.f.bc;
import com.netease.mpay.f.bd;
import com.netease.mpay.f.bs;
import com.netease.mpay.fh;
import com.netease.mpay.widget.RIdentifier;
import java.io.Serializable;

/* loaded from: classes.dex */
public class f extends ew {
    private static com.netease.mpay.widget.al g = new com.netease.mpay.widget.al();
    private Activity b;
    private b c;
    private d d;
    private com.netease.mpay.d.a.a.k e;
    private com.netease.mpay.e.b.o f;
    private bd.a h = new m(this);
    private au.a i = new n(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        MOBILE_LOGIN_PARAMS,
        ON_MOBILE_LOGIN_CALLBACK;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b implements Serializable {
        public String a;
        public String b;
        public boolean c;

        private b(String str, String str2) {
            this.a = str;
            this.b = str2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ b(String str, String str2, g gVar) {
            this(str, str2);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends b {
        public String d;
        public boolean e;
        public boolean f;
        public boolean g;

        public c(String str, String str2, String str3, boolean z, boolean z2, boolean z3) {
            super(str, str2, null);
            this.c = true;
            this.d = str3;
            this.e = z;
            this.f = z2;
            this.g = z3;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface d extends fh {
        void a();

        void a(com.netease.mpay.server.response.w wVar);

        void a(String str, com.netease.mpay.server.response.m mVar);

        void a(String str, String str2);

        void b();
    }

    /* loaded from: classes.dex */
    public static class e extends b {
        public String d;
        public boolean e;

        public e(String str, String str2, String str3, boolean z) {
            super(str, str2, null);
            this.c = false;
            this.d = str3;
            this.e = z;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public f() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static f a(b bVar, d dVar) {
        f fVar = new f();
        fVar.b(bVar, dVar);
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            this.d.a(this.b.getString(RIdentifier.h.an));
        } else {
            new bc(this.b, this.c.a, this.c.b, ((c) this.c).d, str, ((c) this.c).g, this.i).h();
        }
    }

    @Override // com.netease.mpay.ew
    public void a(boolean z) {
    }

    @Override // com.netease.mpay.ew
    public boolean a() {
        this.d.c();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        new com.netease.mpay.f.am(this.b, this.c.a, this.c.b, this.c.c ? new am.b(((c) this.c).d) : new k(this, ((e) this.c).d), true, new l(this)).h();
    }

    public void b(b bVar, d dVar) {
        this.c = bVar;
        this.d = dVar;
        Bundle bundle = new Bundle();
        bundle.putSerializable(a.MOBILE_LOGIN_PARAMS.name(), bVar);
        bundle.putLong(a.ON_MOBILE_LOGIN_CALLBACK.name(), g != null ? g.a(dVar) : -1L);
        setArguments(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            this.d.a(this.b.getString(RIdentifier.h.ak));
        } else if (this.c.c) {
            new bd(this.b, this.c.a, this.c.b, ((c) this.c).d, str, ((c) this.c).g, this.h).h();
        } else {
            new bs(this.b, this.c.a, this.c.b, ((e) this.c).d, str, ((e) this.c).e, this.i).h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.d.b();
    }

    @Override // com.netease.mpay.ew, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = getActivity();
        try {
            Bundle arguments = getArguments();
            this.d = (d) g.b(arguments.getLong(a.ON_MOBILE_LOGIN_CALLBACK.name()));
            this.c = (b) arguments.getSerializable(a.MOBILE_LOGIN_PARAMS.name());
            if (this.c == null) {
                throw new NullPointerException("");
            }
            if (this.c.c || this.b == null) {
                return;
            }
            this.f = new com.netease.mpay.e.b(this.b, this.c.a).c().a(((e) this.c).d);
        } catch (Exception e2) {
            Cdo.a((Throwable) e2);
            if (this.d != null) {
                this.d.d();
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.b = getActivity();
        if (this.b == null || this.b.isFinishing() || this.d == null) {
            return null;
        }
        if (this.c.c && ((c) this.c).e) {
            this.e = new g(this, ((c) this.c).d, ((c) this.c).f);
        } else {
            this.e = new h(this, this.c.c ? ((c) this.c).d : this.f != null ? this.f.c() : "");
            if (this.c.c) {
                ((com.netease.mpay.d.a.a.r) this.e).g();
            } else {
                ((com.netease.mpay.d.a.a.r) this.e).a(((e) this.c).e, this.f != null && 1 == this.f.f);
            }
        }
        return this.e.a(this.a, layoutInflater, viewGroup);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        View findViewById = this.a.findViewById(RIdentifier.f.ar);
        findViewById.setVisibility(this.c.c ? 0 : 8);
        findViewById.setOnClickListener(new i(this));
        this.b.findViewById(RIdentifier.f.at).setOnClickListener(new j(this));
    }
}
