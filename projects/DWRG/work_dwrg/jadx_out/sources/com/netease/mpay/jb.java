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
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.ar;
import com.netease.mpay.b.r;
import com.netease.mpay.f.af;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.server.response.e;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class jb extends com.netease.mpay.a {
    private Resources d;
    private com.netease.mpay.b.t e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.af g;
    private com.netease.mpay.e.b.o h;
    private View i;
    private TextView j;
    private TextView k;
    private TextView l;
    private boolean m;
    private String n;
    private com.netease.mpay.server.response.e o;
    private String p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private Context b;
        private ArrayList c;
        private String d;
        private int e;

        public a(Context context, ArrayList arrayList, String str) {
            this.b = context;
            this.c = arrayList;
            this.d = str;
            this.e = context.getResources().getDimensionPixelSize(RIdentifier.d.g) * 2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.c != null) {
                return this.c.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (i < this.c.size()) {
                return (e.b) this.c.get(i);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.b.getSystemService("layout_inflater")).inflate(RIdentifier.g.i, viewGroup, false);
            }
            ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.N);
            TextView textView = (TextView) view.findViewById(RIdentifier.f.O);
            View findViewById = view.findViewById(RIdentifier.f.M);
            TextView textView2 = (TextView) view.findViewById(RIdentifier.f.S);
            View findViewById2 = view.findViewById(RIdentifier.f.L);
            View findViewById3 = view.findViewById(RIdentifier.f.K);
            e.b bVar = (e.b) this.c.get(i);
            bc.a(this.b, this.d, bVar.j, this.e, bVar.g, imageView, true);
            textView.setText(bVar.h);
            if (TextUtils.isEmpty(bVar.i)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(bVar.i);
                textView2.setVisibility(0);
            }
            if (bVar.d) {
                view.setOnClickListener(new b(bVar));
            } else {
                view.setOnClickListener(null);
            }
            view.setEnabled(bVar.d);
            findViewById2.setVisibility(bVar.d ? 0 : 8);
            findViewById3.setVisibility(bVar.d ? 8 : 0);
            findViewById.setVisibility(bVar.e ? 0 : 8);
            return view;
        }
    }

    /* loaded from: classes.dex */
    private class b extends bf.c {
        e.b a;

        public b(e.b bVar) {
            this.a = bVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        private String a(String str) {
            return str.equals("epay") ? "cz_wyb" : str.equals("ecard") ? "cz_wydk" : str.equals("mcard") ? "cz_sjcz" : str.equals("uppay") ? "cz_yl" : str.equals("bankcard") ? "cz_yhk" : str.equals("alipay") ? "cz_zfb" : str.equals("weixinpay") ? "cz_wxzf" : str.equals("weixinpayqr") ? "cz_wxzfqr" : str.equals("alipayqr") ? "cz_zfbqr" : str.equals("tenpay") ? "cz_qqzf" : "";
        }

        private String b(String str) {
            return com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(jb.this.n, "zhcz"), a(str));
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            if (this.a.g.equals("weixinpay") && !m.a(jb.this.a)) {
                new com.netease.mpay.widget.s(jb.this.a).a(jb.this.a.getString(RIdentifier.h.ed), jb.this.a.getString(RIdentifier.h.cn), null, null, null, false);
            } else if (this.a.g.equals("tenpay") && !m.b(jb.this.a)) {
                new com.netease.mpay.widget.s(jb.this.a).a(jb.this.a.getString(RIdentifier.h.ec), jb.this.a.getString(RIdentifier.h.cn), null, null, null, false);
            } else {
                if (jb.this.g.v) {
                    com.netease.mpay.widget.ay.a(jb.this.a, bk.k).a(jb.this.a, jb.this.g.b, jb.this.h.c, jb.this.h.e, jb.this.h.f, "zhcz", a(this.a.g), com.netease.mpay.widget.ay.a(jb.this.n, "zhcz"), true);
                }
                com.netease.mpay.b.a(jb.this.a, b.a.PayLoaderActivity, new r(jb.this.e, new r.a(this.a, jb.this.p, b(this.a.g))), null, 1);
            }
        }
    }

    public jb(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(Integer num) {
        if (num != null) {
            this.a.setResult(num.intValue());
        }
        this.a.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        new com.netease.mpay.widget.s(this.a).b(str, this.a.getString(RIdentifier.h.cn), new jf(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        a((Integer) 4);
    }

    private void u() {
        if (this.o == null || this.o.b == null) {
            return;
        }
        GridView gridView = (GridView) this.a.findViewById(RIdentifier.f.Q);
        gridView.setNumColumns(this.d.getConfiguration().orientation == 2 ? 2 : 1);
        ArrayList arrayList = new ArrayList();
        Iterator it = this.o.b.iterator();
        while (it.hasNext()) {
            e.b bVar = (e.b) it.next();
            if (bVar.d || bVar.k == 2) {
                arrayList.add(bVar);
            }
        }
        gridView.setAdapter((ListAdapter) new a(this.a.getApplicationContext(), arrayList, this.e.a()));
    }

    private void v() {
        super.a(this.d.getString(RIdentifier.h.cE));
    }

    private void w() {
        ((TextView) this.a.findViewById(RIdentifier.f.k)).setText(this.h.a);
        this.i = this.a.findViewById(RIdentifier.f.j);
        this.j = (TextView) this.a.findViewById(RIdentifier.f.i);
        this.k = (TextView) this.a.findViewById(RIdentifier.f.cP);
        this.l = (TextView) this.a.findViewById(RIdentifier.f.cR);
        if (this.p != null) {
            this.j.setText(this.d.getString(RIdentifier.h.r, Integer.valueOf(Integer.parseInt(this.p))));
            this.i.setVisibility(0);
            this.j.setVisibility(0);
            OrderInit.a(this.a, this.k, this.e.j());
            this.l.setVisibility(8);
        }
    }

    private void x() {
        new je(this, this.a, this.e.a(), this.e.b(), af.a.USER_BALANCE, new jd(this)).h();
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.t(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (alVar instanceof ar.g) {
            return;
        }
        if (alVar instanceof ar.c) {
            new ii(this.a).d();
            return;
        }
        switch (i) {
            case 1:
                if (!(alVar instanceof ar.h)) {
                    new ar.i().a(this.a);
                    return;
                } else {
                    x();
                    new com.netease.mpay.widget.s(this.a).a(((ar.h) alVar).d);
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        boolean z;
        super.a(configuration);
        if (this.a.isFinishing() || this.m == (z = this.d.getBoolean(RIdentifier.b.a))) {
            return;
        }
        this.m = z;
        this.a.setContentView(RIdentifier.g.ac);
        s();
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        this.d = this.a.getResources();
        super.a(bundle);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.d = this.a.getResources();
        v();
        this.n = "";
        this.m = this.d.getBoolean(RIdentifier.b.a);
        this.f = new com.netease.mpay.e.b(this.a, this.e.a());
        this.h = this.f.c().b(this.e.b());
        if (this.h == null || this.h.d == null) {
            new ii(this.a).d();
            return;
        }
        this.g = this.f.e().a();
        if (this.g.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.g.b, this.h.c, this.h.e, this.h.f, "zhcz", com.netease.mpay.widget.ay.a(this.n, "zhcz"));
        }
        new com.netease.mpay.f.ar(this.a, this.e.a(), this.e.b(), this.h.d, new jc(this)).h();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        new com.netease.mpay.b.am().a(this.a);
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        new com.netease.mpay.b.am().a(this.a);
        return true;
    }

    public void s() {
        this.a.setContentView(RIdentifier.g.ac);
        u();
        w();
    }
}
