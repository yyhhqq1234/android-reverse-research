package com.netease.mpay.codescanner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.AuthenticationCallback;
import com.netease.mpay.User;
import com.netease.mpay.b.al;
import com.netease.mpay.b.am;
import com.netease.mpay.b.an;
import com.netease.mpay.b.ao;
import com.netease.mpay.b.au;
import com.netease.mpay.b.m;
import com.netease.mpay.cw;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.bh;
import com.netease.mpay.f.bm;
import com.netease.mpay.hi;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.af;
import com.netease.mpay.widget.bf;
import java.util.Iterator;

/* loaded from: classes.dex */
public class m extends com.netease.mpay.a {
    private com.netease.mpay.b.w d;
    private Resources e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.f g;
    private com.netease.mpay.e.b.o h;
    private com.netease.mpay.e.b.q i;
    private com.netease.mpay.e.b.o j;
    private boolean k;
    private LinearLayout l;
    private ImageView m;
    private TextView n;
    private PopupWindow o;
    private ListView p;
    private com.netease.mpay.widget.s q;
    private Button r;
    private TextView s;
    private boolean t;
    private AuthenticationCallback u;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends bf.c {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(m mVar, n nVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        public void a(View view) {
            if (!m.this.k) {
                hi.a().a((Activity) m.this.a, m.this.d.d(), false, m.this.u, (Integer) 0);
            } else if (TextUtils.isEmpty(m.this.h.d)) {
                m.this.a(m.this.h);
            } else {
                new bm(m.this.a, m.this.d.a(), m.this.d.b(), m.this.h, true, new x(this)).h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends bf.c {
        private b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ b(m mVar, n nVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        public void a(View view) {
            m.this.x();
        }
    }

    public m(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.k = true;
        this.t = false;
        this.u = new r(this);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(b.a aVar, String str) {
        switch (aVar) {
            case ERR_SMS_VERIFY:
                hi.a().a((Activity) this.a, (com.netease.mpay.b.m) new m.d(this.d.d(), this.h.c, null), (Integer) 4);
                return;
            case ERR_SET_PASS:
                hi.a().a((Activity) this.a, (com.netease.mpay.b.m) new m.g(this.d.d(), this.h.c, m.b.LOGIN, null), (Integer) 4);
                return;
            case ERR_LOGOUT:
                this.j = this.h;
                this.h.d = null;
                c(str);
                return;
            default:
                d(str);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.netease.mpay.server.response.aa aaVar) {
        new bh(this.a, this.d.a(), this.d.b(), str, aaVar, this.d.a, new t(this)).h();
    }

    private com.netease.mpay.e.b.o b(String str) {
        Iterator it = this.i.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.o oVar = (com.netease.mpay.e.b.o) it.next();
            if (!TextUtils.isEmpty(str) && TextUtils.equals(str, oVar.c)) {
                return oVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.netease.mpay.e.b.o oVar) {
        if (oVar != null || this.i.a.size() <= 0) {
            this.h = oVar;
        } else {
            this.h = (com.netease.mpay.e.b.o) this.i.a.get(0);
        }
        this.n.setText(this.h.a);
        com.netease.mpay.server.response.u.a(this.a, this.d.a()).b(this.h.f).a(this.a, this.d.a(), this.m);
    }

    private void c(String str) {
        this.q.a(str, this.e.getString(RIdentifier.h.cn), new u(this), this.e.getString(RIdentifier.h.g), new v(this), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        this.q.a(str);
    }

    private void s() {
        this.a.setContentView(RIdentifier.g.N);
        w();
        t();
        if (m()) {
            return;
        }
        this.i = this.f.c().b();
        if (this.i != null && this.i.a.size() >= 1) {
            v();
        } else {
            this.k = false;
            u();
        }
    }

    private void t() {
        this.m = (ImageView) this.a.findViewById(RIdentifier.f.aE);
        this.n = (TextView) this.a.findViewById(RIdentifier.f.aF);
        this.p = (ListView) this.a.findViewById(RIdentifier.f.bf);
        this.l = (LinearLayout) this.a.findViewById(RIdentifier.f.bP);
        this.a.findViewById(RIdentifier.f.ch).setOnClickListener(new n(this));
        this.r = (Button) this.a.findViewById(RIdentifier.f.bg);
        this.r.setOnClickListener(new a(this, null));
        this.s = (TextView) this.a.findViewById(RIdentifier.f.bS);
    }

    private void u() {
        this.l.setVisibility(8);
        this.r.setText(RIdentifier.h.aE);
        this.a.findViewById(RIdentifier.f.ci).setVisibility(8);
        this.a.findViewById(RIdentifier.f.ch).setVisibility(8);
        this.s.setText(this.e.getString(RIdentifier.h.da));
    }

    private void v() {
        this.a.findViewById(RIdentifier.f.ci).setVisibility(0);
        this.l.setVisibility(0);
        this.l.setOnClickListener(new b(this, null));
        this.i = this.f.c().b();
        this.s.setText(String.format(this.e.getString(RIdentifier.h.dd), this.d.b.c, this.d.b.f));
        if (this.h == null) {
            this.h = b(this.i.b);
        }
        b(this.h);
    }

    private void w() {
        super.a(this.e.getString(RIdentifier.h.aD));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InflateParams"})
    public void x() {
        if (this.a.isFinishing()) {
            return;
        }
        if (this.o == null || !this.o.isShowing()) {
            this.o = new PopupWindow(((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(RIdentifier.g.L, (ViewGroup) null), this.l.getWidth(), -2);
            this.o.setFocusable(true);
            this.o.setOutsideTouchable(false);
            this.o.setBackgroundDrawable(this.a.getResources().getDrawable(RIdentifier.e.f));
            this.o.showAsDropDown(this.l, 0, 5);
        }
        this.p = (ListView) this.o.getContentView().findViewById(RIdentifier.f.bf);
        new af.b(this.a, this.p, this.i.a, RIdentifier.g.O, new o(this));
        this.p.setOnItemClickListener(new p(this));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.w(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 2 || i == 3 || i == 4 || i == 5 || i == 7 || i == 8 || i == 6 || i == 9) {
            if (alVar instanceof ao) {
                if (((ao) alVar).b || this.u == null) {
                    return;
                }
                this.u.onLoginSuccess(new User((ao) alVar));
                return;
            }
            if (alVar instanceof au) {
                if (this.u != null) {
                    this.u.onDialogFinish();
                }
            } else if (alVar instanceof an) {
                d(((an) alVar).b);
            }
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        s();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, com.netease.mpay.e.b.o oVar) {
        ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.bc);
        TextView textView = (TextView) view.findViewById(RIdentifier.f.ce);
        TextView textView2 = (TextView) view.findViewById(RIdentifier.f.bZ);
        textView.setText(oVar.a);
        com.netease.mpay.server.response.u.a(this.a, this.d.a()).b(oVar.f).a(this.a, this.d.a(), imageView);
        textView2.setText(String.valueOf(oVar.f));
    }

    public void a(com.netease.mpay.e.b.o oVar) {
        switch (oVar.f) {
            case 1:
                hi.a().a(this.a, this.d.d(), false, oVar.a(false), null, oVar.c, null, 2);
                return;
            case 2:
                new cw(this.a, this.d.a(), this.d.b(), true, new s(this)).a();
                return;
            case 3:
                hi.a().a((Activity) this.a, this.d.d(), oVar.c, true, false, (Integer) 3);
                return;
            case 4:
                hi.a().b((Activity) this.a, this.d.d(), oVar, (Integer) 7);
                return;
            case 5:
                hi.a().a((Activity) this.a, this.d.d(), true, false, oVar.c, (Integer) 8);
                return;
            case 6:
            case 8:
            default:
                hi.a().a((Activity) this.a, this.d.d(), oVar.f, oVar.c, (Integer) 9);
                return;
            case 7:
                hi.a().a((Activity) this.a, (com.netease.mpay.b.m) new m.f(this.d.d(), oVar.a(false), null, null), oVar.c, (Integer) 4);
                return;
            case 9:
                hi.a().a((Activity) this.a, this.d.d(), oVar.c, (Integer) 5);
                return;
            case 10:
                hi.a().b((Activity) this.a, this.d.d(), oVar.c, (Integer) 6);
                return;
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.e = this.a.getResources();
        this.f = new com.netease.mpay.e.b(this.a, this.d.a());
        this.g = this.f.d().a();
        this.q = new com.netease.mpay.widget.s(this.a);
        s();
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.t && this.k) {
            if (this.h != null) {
                this.h = b(this.h.c);
            }
            if (this.h == null) {
                b(this.h);
            }
            this.t = false;
        }
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        new am().a(this.a);
        return super.o();
    }
}
