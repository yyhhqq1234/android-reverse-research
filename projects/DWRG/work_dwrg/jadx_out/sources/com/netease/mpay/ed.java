package com.netease.mpay;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ScrollView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ar;
import com.netease.mpay.widget.GridViewNoScroll;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class ed extends com.netease.mpay.a {
    private com.netease.mpay.b.s d;
    private Resources e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.af g;
    private ii h;
    private com.netease.mpay.widget.s i;
    private EditText j;
    private EditText k;
    private GridViewNoScroll l;
    private Button m;
    private eu n;
    private String o;
    private ArrayList p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean t;
    private boolean u;
    private d v;

    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private final ArrayList b = new ArrayList(Arrays.asList(10, 20, 30, 50, 100, 200, 300, 500));
        private Context c;
        private ArrayList d;

        /* renamed from: com.netease.mpay.ed$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class C0042a extends bf.c {
            private int b;

            public C0042a(int i) {
                this.b = i;
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }

            @Override // com.netease.mpay.widget.bf.c
            protected void a(View view) {
                ed.this.b(0);
                if (com.netease.mpay.widget.bd.a(String.valueOf(this.b), ed.this.o) >= 0) {
                    ed.this.t = true;
                    ed.this.b(String.valueOf(this.b));
                }
            }
        }

        public a(Context context, ArrayList arrayList) {
            this.c = context;
            if (arrayList == null) {
                this.d = this.b;
            } else {
                this.d = arrayList;
            }
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.d.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.d.get(i);
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
            TextView textView = (TextView) view.findViewById(RIdentifier.f.cr);
            textView.setText(String.valueOf(this.d.get(i)));
            view.setOnClickListener(new C0042a(((Integer) this.d.get(i)).intValue()));
            boolean z = com.netease.mpay.widget.bd.a(ed.this.o, String.valueOf(this.d.get(i))) <= 0;
            view.setEnabled(z);
            textView.setTextColor(ed.this.a.getResources().getColor(z ? RIdentifier.c.j : RIdentifier.c.i));
            view.findViewById(RIdentifier.f.cv).setVisibility(i % 4 != 0 ? 8 : 0);
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

        /* synthetic */ b(ed edVar, ee eeVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            ed.this.u();
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

        /* synthetic */ c(ed edVar, ee eeVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ed.this.l == null) {
                ed.this.n.a();
                return;
            }
            ed.this.l.setVisibility(ed.this.q ? 8 : 0);
            ed.this.q = ed.this.q ? false : true;
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

    public ed(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.q = true;
        this.r = false;
        this.t = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(String str, String str2, String str3) {
        if (this.a.isFinishing()) {
            return;
        }
        com.netease.mpay.widget.s sVar = new com.netease.mpay.widget.s(this.a);
        com.netease.mpay.e.b.o b2 = this.f.c().b(this.d.b());
        sVar.a((this.f.e().a().u && (b2.f == 1 || b2.f == 7)) ? this.e.getString(RIdentifier.h.bu) : cq.a(this.a, this.d.a(), RIdentifier.h.bt), this.e.getString(RIdentifier.h.k), new es(this, b2, str, str2, str3), this.e.getString(RIdentifier.h.g), new ef(this), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        if (this.v == null || !this.g.v) {
            return;
        }
        switch (i) {
            case 0:
                if (this.v.a) {
                    return;
                }
                this.v.a = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.g.b, this.d.c.b, this.d.c.c, this.d.c.e, "zf_sjcz", "zf_sjcz_mz", com.netease.mpay.widget.ay.a(this.d.b.d, "zf_sjcz"), true);
                return;
            case 1:
                if (this.v.b) {
                    return;
                }
                this.v.b = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a((Context) this.a, this.g.b, this.d.c.b, this.d.c.c, this.d.c.e, "zf_sjcz", "zf_sjcz_kh", true);
                return;
            case 2:
                if (this.v.c) {
                    return;
                }
                this.v.c = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a((Context) this.a, this.g.b, this.d.c.b, this.d.c.c, this.d.c.e, "zf_sjcz", "zf_sjcz_mm", true);
                return;
            case 3:
                if (this.v.d) {
                    return;
                }
                this.v.d = true;
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.g.b, this.d.c.b, this.d.c.c, this.d.c.e, "zf_sjcz", "zf_sjcz_zf", com.netease.mpay.widget.ay.a(this.d.b.d, "zf_sjcz"), true);
                return;
            case 4:
                com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.g.b, this.d.c.b, this.d.c.c, this.d.c.e, "zf_sjcz", "zf_sjcz_zf", com.netease.mpay.widget.ay.a(this.d.b.d, "zf_sjcz"), false);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (this.l != null) {
            this.l.setVisibility(8);
            this.q = false;
        }
        this.a.findViewById(RIdentifier.f.cs).setVisibility(8);
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.cq);
        textView.setVisibility(0);
        textView.setText(str + this.e.getString(RIdentifier.h.cx));
        this.s = Integer.valueOf(str).intValue();
        this.r = true;
        com.netease.mpay.widget.bf.a(this.m, t());
    }

    private void s() {
        ee eeVar = null;
        if (m()) {
            return;
        }
        this.a.setContentView(RIdentifier.g.g);
        this.j = (EditText) this.a.findViewById(RIdentifier.f.cj);
        this.k = (EditText) this.a.findViewById(RIdentifier.f.ck);
        this.l = (GridViewNoScroll) this.a.findViewById(RIdentifier.f.cU);
        this.m = (Button) this.a.findViewById(RIdentifier.f.cn);
        com.netease.mpay.widget.bf.a(this.m, t());
        x();
        w();
        if (this.l != null) {
            this.l.setAdapter((ListAdapter) new a(this.a.getApplicationContext(), this.p));
        }
        this.a.findViewById(RIdentifier.f.cp).setOnClickListener(new c(this, eeVar));
        b bVar = new b(this, eeVar);
        this.m.setOnClickListener(bVar);
        this.m.setText(this.a.getString((this.d.c.e == 1 || this.d.c.e == 7) ? RIdentifier.h.cs : RIdentifier.h.co));
        this.j.setOnFocusChangeListener(new eh(this));
        this.j.addTextChangedListener(new ej(this));
        this.k.setOnFocusChangeListener(new el(this));
        this.k.addTextChangedListener(new en(this));
        this.k.setOnEditorActionListener(new bf.b(bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t() {
        return (!this.r || (this.j == null ? "" : this.j.getText().toString().trim()).equals("") || (this.k == null ? "" : this.k.getText().toString().trim()).equals("")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        String valueOf = String.valueOf(this.s);
        String trim = this.j.getText().toString().trim();
        String trim2 = this.k.getText().toString().trim();
        if (!this.r) {
            b(4);
            this.i.a(this.e.getString(RIdentifier.h.bv));
        } else if (trim.equals("")) {
            b(4);
            this.i.a(this.e.getString(RIdentifier.h.G));
        } else if (!trim2.equals("")) {
            a(valueOf, trim, trim2);
        } else {
            b(4);
            this.i.a(this.e.getString(RIdentifier.h.H));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        new ar.a(null, null, com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(this.d.b.d, "zf_sjcz"), "zf_sjcz_zf")).a(this.a);
    }

    private void w() {
        com.netease.mpay.e.b.s a2 = this.f.f().a(this.d.c.b, this.d.c.c);
        if (a2.d == null || a2.a == null || a2.b == null || a2.c == null) {
            return;
        }
        if (com.netease.mpay.widget.bd.a(this.o, a2.c) <= 0) {
            this.j.setText(a2.a);
            this.k.setText(a2.b);
            b(a2.c);
            com.netease.mpay.widget.bf.a(this.m, true);
            b(0);
        }
        b(1);
        b(2);
    }

    private void x() {
        ImageView imageView = (ImageView) this.a.findViewById(RIdentifier.f.ad);
        try {
            imageView.setImageDrawable(this.a.getResources().getDrawable(this.a.getApplicationInfo().icon));
        } catch (Exception e) {
            imageView.setVisibility(8);
        }
        ((TextView) this.a.findViewById(RIdentifier.f.ae)).setText(this.d.b.a);
        ((TextView) this.a.findViewById(RIdentifier.f.cQ)).setText(this.d.b.b);
        ((TextView) this.a.findViewById(RIdentifier.f.cw)).setText(String.format(Locale.getDefault(), "%s%s", this.e.getString(RIdentifier.h.cw), this.o));
        if (this.f.c().b(this.d.b()).f != 1) {
            ((TextView) this.a.findViewById(RIdentifier.f.co)).setText(RIdentifier.h.bw);
        }
        ScrollView scrollView = (ScrollView) this.a.findViewById(RIdentifier.f.cT);
        scrollView.post(new ep(this, scrollView));
    }

    private void y() {
        super.a(this.d.n());
    }

    private void z() {
        if (this.a.isFinishing()) {
            return;
        }
        com.netease.mpay.widget.bf.a(this.a, this.k);
        com.netease.mpay.widget.bf.a(this.a, this.j);
        new com.netease.mpay.widget.s(this.a).a(this.e.getString(RIdentifier.h.by), this.e.getString(RIdentifier.h.l), new eq(this), this.e.getString(RIdentifier.h.cJ), new er(this), true);
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
        this.a.getWindow().setSoftInputMode(3);
        this.e = this.a.getResources();
        this.h = new ii(this.a);
        this.i = new com.netease.mpay.widget.s(this.a);
        this.u = this.e.getBoolean(RIdentifier.b.a);
        this.o = this.d.b.e.h;
        if (this.d.c.a == null || this.d.c.d == null) {
            this.h.c();
            return;
        }
        if (this.d.l() == null) {
            this.h.c();
            return;
        }
        this.f = new com.netease.mpay.e.b(this.a, this.d.a());
        this.g = this.f.e().a();
        if (this.g.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.g.b, this.d.c.b, this.d.c.c, this.d.c.e, "zf_sjcz", com.netease.mpay.widget.ay.a(this.d.b.d, "zf_sjcz"));
        }
        this.p = null;
        try {
            JSONArray jSONArray = new JSONArray(this.d.b.e.m);
            if (jSONArray != null && jSONArray.length() > 0) {
                this.p = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.p.add(Integer.valueOf(jSONArray.getString(i)));
                }
            }
        } catch (JSONException e) {
            this.p = null;
        }
        this.v = new d();
        this.n = new eu(this.a, this.e.getString(RIdentifier.h.bx), this.o, this.p, new ee(this));
        y();
        s();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        z();
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        z();
        return true;
    }
}
