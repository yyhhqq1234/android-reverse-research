package com.netease.mpay;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.GridViewNoScroll;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.Locale;

/* loaded from: classes.dex */
public class kd extends com.netease.mpay.a {
    private com.netease.mpay.b.s d;
    private Resources e;
    private com.netease.mpay.widget.s f;
    private String g;
    private LinearLayout h;
    private Button i;
    private EditText j;
    private EditText k;
    private TextView l;
    private GridViewNoScroll m;
    private eu n;
    private TextView o;
    private TextView p;
    private TextView q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean u;
    private com.netease.mpay.e.b.af v;
    private com.netease.mpay.e.b.o w;
    private d x;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private final int[] b = {10, 20, 30, 50, 100, 200, 300, 500};
        private Context c;

        public a(Context context) {
            this.c = context;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.b.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(this.b[i]);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.c.getSystemService("layout_inflater")).inflate(RIdentifier.g.h, viewGroup, false);
            }
            ((TextView) view.findViewById(RIdentifier.f.cr)).setText(String.valueOf(this.b[i]));
            view.setOnClickListener(new kq(this, i));
            view.findViewById(RIdentifier.f.cv).setVisibility(i % 4 == 0 ? 0 : 8);
            return view;
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

        /* synthetic */ b(kd kdVar, ke keVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            kd.this.u();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c implements View.OnClickListener {
        private c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ c(kd kdVar, ke keVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (kd.this.m == null) {
                kd.this.n.a();
                return;
            }
            kd.this.m.setVisibility(kd.this.r ? 8 : 0);
            kd.this.r = kd.this.r ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d {
        public boolean a = false;
        public boolean b = false;
        public boolean c = false;
        public boolean d = false;

        public d() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public kd(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.r = true;
        this.s = false;
        this.x = new d();
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (this.m != null) {
            this.m.setVisibility(8);
            this.r = false;
        }
        this.a.findViewById(RIdentifier.f.cs).setVisibility(8);
        this.l = (TextView) this.a.findViewById(RIdentifier.f.cq);
        this.l.setVisibility(0);
        this.l.setText(i + this.e.getString(RIdentifier.h.cx));
        this.t = Integer.valueOf(i).intValue();
        this.s = true;
        com.netease.mpay.widget.bf.a(this.i, t());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        if (this.x == null || !this.v.v) {
            return;
        }
        switch (i) {
            case 0:
                if (this.x.a) {
                    return;
                }
                this.x.a = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.v.b, this.w.c, this.w.e, this.w.f, "cz_sjcz", "cz_sjcz_mz", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_sjcz"), true);
                return;
            case 1:
                if (this.x.b) {
                    return;
                }
                this.x.b = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a((Context) this.a, this.v.b, this.w.c, this.w.e, this.w.f, "cz_sjcz", "cz_sjcz_kh", true);
                return;
            case 2:
                if (this.x.c) {
                    return;
                }
                this.x.c = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a((Context) this.a, this.v.b, this.w.c, this.w.e, this.w.f, "cz_sjcz", "cz_sjcz_mm", true);
                return;
            case 3:
                if (this.x.d) {
                    return;
                }
                this.x.d = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.v.b, this.w.c, this.w.e, this.w.f, "cz_sjcz", "cz_sjcz_cz", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_sjcz"), true);
                return;
            case 4:
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.v.b, this.w.c, this.w.e, this.w.f, "cz_sjcz", "cz_sjcz_cz", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_sjcz"), false);
                return;
            default:
                return;
        }
    }

    private void s() {
        ke keVar = null;
        this.a.setContentView(RIdentifier.g.ab);
        this.f = new com.netease.mpay.widget.s(this.a);
        this.h = (LinearLayout) this.a.findViewById(RIdentifier.f.cp);
        this.j = (EditText) this.a.findViewById(RIdentifier.f.cj);
        this.k = (EditText) this.a.findViewById(RIdentifier.f.ck);
        this.i = (Button) this.a.findViewById(RIdentifier.f.cn);
        this.m = (GridViewNoScroll) this.a.findViewById(RIdentifier.f.cU);
        this.o = (TextView) this.a.findViewById(RIdentifier.f.k);
        this.p = (TextView) this.a.findViewById(RIdentifier.f.i);
        this.q = (TextView) this.a.findViewById(RIdentifier.f.cP);
        this.o.setText(this.w.a);
        TextView textView = this.p;
        Locale locale = Locale.getDefault();
        Object[] objArr = new Object[2];
        objArr[0] = this.d.e.a == null ? "0" : this.d.e.a;
        objArr[1] = this.e.getString(RIdentifier.h.cv);
        textView.setText(String.format(locale, "%s%s", objArr));
        OrderInit.a(this.a, this.q, this.d.j());
        if (this.m != null) {
            this.m.setAdapter((ListAdapter) new a(this.a.getApplicationContext()));
        }
        this.h.setOnClickListener(new c(this, keVar));
        com.netease.mpay.widget.bf.a(this.i, t());
        b bVar = new b(this, keVar);
        this.i.setOnClickListener(bVar);
        this.j.setOnFocusChangeListener(new kf(this));
        this.j.addTextChangedListener(new kh(this));
        this.k.setOnFocusChangeListener(new kj(this));
        this.k.addTextChangedListener(new kl(this));
        this.k.setOnEditorActionListener(new bf.b(bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t() {
        return (!this.s || (this.j == null ? "" : this.j.getText().toString().trim()).equals("") || (this.k == null ? "" : this.k.getText().toString().trim()).equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        String valueOf = String.valueOf(this.t);
        String trim = this.j.getText().toString().trim();
        String trim2 = this.k.getText().toString().trim();
        if (!this.s) {
            c(4);
            this.f.a(this.e.getString(RIdentifier.h.bv));
        } else if (trim.equals("")) {
            c(4);
            this.f.a(this.e.getString(RIdentifier.h.G));
        } else if (!trim2.equals("")) {
            new com.netease.mpay.f.h(this.a, this.d.a(), this.d.b(), this.d.c.d, true, this.d.s(), this.d.k(), null, valueOf, trim, trim2, new kn(this)).h();
        } else {
            c(4);
            this.f.a(this.e.getString(RIdentifier.h.H));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        new ar.a(this.g, null, com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(this.d.e.b, "cz_sjcz"), "cz_sjcz_cz")).a(this.a);
    }

    private void w() {
        super.a(this.e.getString(RIdentifier.h.cE));
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
        if (this.n != null) {
            this.n.b();
        }
        boolean z = this.e.getBoolean(RIdentifier.b.a);
        if (this.u != z) {
            this.u = z;
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
        this.a.getWindow().setSoftInputMode(3);
        this.e = this.a.getResources();
        this.u = this.e.getBoolean(RIdentifier.b.a);
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.d.a());
        this.v = bVar.e().a();
        this.w = bVar.c().b(this.d.b());
        if (this.w == null || TextUtils.isEmpty(this.w.d)) {
            new ii(this.a).d();
            return;
        }
        if (this.v.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.v.b, this.w.c, this.w.e, this.w.f, "cz_sjcz", com.netease.mpay.widget.ay.a(this.d.e.b, "cz_sjcz"));
        }
        this.n = new eu(this.a, this.e.getString(RIdentifier.h.ct), new ke(this));
        w();
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
        com.netease.mpay.widget.bf.a(this.a, this.j);
        com.netease.mpay.widget.bf.a(this.a, this.k);
        new ar.g().a(this.a);
        return true;
    }
}
