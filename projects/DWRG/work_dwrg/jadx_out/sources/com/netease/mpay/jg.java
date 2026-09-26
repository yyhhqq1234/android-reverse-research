package com.netease.mpay;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.f.af;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.Locale;

/* loaded from: classes.dex */
public class jg extends com.netease.mpay.a {
    private com.netease.mpay.b.s d;
    private Resources e;
    private com.netease.mpay.widget.s f;
    private Button g;
    private EditText h;
    private View i;
    private EditText j;
    private View k;
    private TextView l;
    private TextView m;
    private View n;
    private TextView o;
    private TextView p;
    private com.netease.mpay.e.b.af q;
    private com.netease.mpay.e.b.o r;
    private b s;
    private boolean t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends bf.c {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(jg jgVar, jh jhVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            jg.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        public boolean a = false;
        public boolean b = false;
        public boolean c = false;

        public b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public jg(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.s = new b();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(EditText editText, EditText editText2) {
        return ((editText == null ? "" : editText.getText().toString().trim()).equals("") || (editText2 == null ? "" : editText2.getText().toString().trim()).equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (this.s == null || !this.q.v) {
            return;
        }
        switch (i) {
            case 0:
                if (this.s.a) {
                    return;
                }
                this.s.a = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a((Context) this.a, this.q.b, this.r.c, this.r.e, this.r.f, "cz_wydk", "cz_wydk_kh", true);
                return;
            case 1:
                if (this.s.b) {
                    return;
                }
                this.s.b = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a((Context) this.a, this.q.b, this.r.c, this.r.e, this.r.f, "cz_wydk", "cz_wydk_mm", true);
                return;
            case 2:
                if (this.s.c) {
                    return;
                }
                this.s.c = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.q.b, this.r.c, this.r.e, this.r.f, "cz_wydk", "cz_wydk_cz", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_wydk"), true);
                return;
            case 3:
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.q.b, this.r.c, this.r.e, this.r.f, "cz_wydk", "cz_wydk_cz", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_wydk"), false);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new com.netease.mpay.widget.s(this.a).b(str, this.a.getString(RIdentifier.h.cn), new js(this));
    }

    private void s() {
        this.a.setContentView(RIdentifier.g.aa);
        this.h = (EditText) this.a.findViewById(RIdentifier.f.U);
        this.i = this.a.findViewById(RIdentifier.f.W);
        this.j = (EditText) this.a.findViewById(RIdentifier.f.V);
        this.k = this.a.findViewById(RIdentifier.f.X);
        this.g = (Button) this.a.findViewById(RIdentifier.f.Y);
        this.l = (TextView) this.a.findViewById(RIdentifier.f.k);
        this.m = (TextView) this.a.findViewById(RIdentifier.f.cR);
        this.n = this.a.findViewById(RIdentifier.f.j);
        this.o = (TextView) this.a.findViewById(RIdentifier.f.i);
        this.p = (TextView) this.a.findViewById(RIdentifier.f.cP);
        this.l.setText(this.r.a);
        if (this.d.e.a != null) {
            this.o.setText(String.format(Locale.getDefault(), "%s%s", this.d.e.a, this.e.getString(RIdentifier.h.cv)));
            OrderInit.a(this.a, this.p, this.d.j());
        } else {
            new ji(this, this.a, this.d.a(), this.d.b(), af.a.USER_BALANCE, new jh(this)).h();
        }
        a aVar = new a(this, null);
        com.netease.mpay.widget.bf.a(this.g, a(this.h, this.j));
        this.g.setOnClickListener(aVar);
        this.h.setOnFocusChangeListener(new jj(this));
        this.h.addTextChangedListener(new jl(this));
        this.j.setOnFocusChangeListener(new jn(this));
        this.j.addTextChangedListener(new jp(this));
        this.j.setOnEditorActionListener(new bf.b(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        String trim = this.h.getText().toString().trim();
        String trim2 = this.j.getText().toString().trim();
        if (trim.equals("")) {
            b(3);
            this.f.a(this.e.getString(RIdentifier.h.E));
        } else if (!trim2.equals("")) {
            new com.netease.mpay.f.p(this.a, this.d.a(), this.d.b(), this.d.c.d, trim, trim2, this.d.s(), this.d.k(), new jr(this)).h();
        } else {
            b(3);
            this.f.a(this.e.getString(RIdentifier.h.F));
        }
    }

    private void u() {
        super.a(this.d.n());
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.s(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        if (this.a.isFinishing()) {
            return;
        }
        super.a(configuration);
        boolean z = this.e.getBoolean(RIdentifier.b.a);
        if (this.t != z) {
            this.t = z;
            s();
        }
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        this.e = this.a.getResources();
        super.a(bundle);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (m()) {
            return;
        }
        this.e = this.a.getResources();
        this.t = this.e.getBoolean(RIdentifier.b.a);
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.d.a());
        this.q = bVar.e().a();
        this.r = bVar.c().b(this.d.b());
        if (this.r == null || TextUtils.isEmpty(this.r.d)) {
            new ii(this.a).d();
            return;
        }
        if (this.q.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.q.b, this.r.c, this.r.e, this.r.f, "cz_wydk", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_wydk"));
        }
        this.f = new com.netease.mpay.widget.s(this.a);
        u();
        s();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        new ar.g().a(this.a);
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        com.netease.mpay.widget.bf.a(this.a, this.h);
        com.netease.mpay.widget.bf.a(this.a, this.j);
        new ar.g().a(this.a);
        return true;
    }
}
