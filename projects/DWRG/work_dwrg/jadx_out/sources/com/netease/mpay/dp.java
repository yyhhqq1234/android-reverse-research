package com.netease.mpay;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.m;
import com.netease.mpay.server.response.s;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.af;
import com.netease.mpay.widget.bf;
import com.tencent.tauth.Tencent;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class dp extends com.netease.mpay.a {
    private com.netease.mpay.b.i d;
    private com.netease.mpay.widget.s e;
    private com.netease.mpay.e.b f;
    private com.netease.mpay.e.b.q g;
    private com.netease.mpay.e.b.o h;
    private com.netease.mpay.e.b.o i;
    private LinearLayout j;
    private LinearLayout k;
    private LinearLayout l;
    private ImageView m;
    private TextView n;
    private PopupWindow o;
    private ListView p;
    private GridView q;
    private ImageView r;
    private int s;
    private boolean t;
    private com.netease.mpay.server.response.u u;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private s.a b;

        public a(s.a aVar) {
            this.b = aVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.netease.mpay.server.response.s getItem(int i) {
            return (com.netease.mpay.server.response.s) this.b.a.get(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.b == null) {
                return 0;
            }
            return this.b.a.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(dp.this.a).inflate(RIdentifier.g.C, viewGroup, false);
            }
            com.netease.mpay.server.response.s item = getItem(i);
            ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.aA);
            item.a(dp.this.a, dp.this.d.a(), imageView);
            imageView.setOnClickListener(new b(item.a));
            view.findViewById(RIdentifier.f.az).setVisibility(item.e ? 0 : 4);
            ((TextView) view.findViewById(RIdentifier.f.aC)).setText(item.a(dp.this.a));
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    private class b extends bf.c {
        int a;

        b(int i) {
            this.a = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            try {
                switch (this.a) {
                    case 1:
                        dp.this.a((com.netease.mpay.e.b.o) null, (String) null);
                        break;
                    case 2:
                        dp.this.y();
                        break;
                    case 3:
                        dp.this.c((com.netease.mpay.e.b.o) null);
                        break;
                    case 4:
                        dp.this.b((com.netease.mpay.e.b.o) null);
                        break;
                    case 5:
                        dp.this.a(true, false, (com.netease.mpay.e.b.o) null);
                        break;
                    case 7:
                        dp.this.b((com.netease.mpay.e.b.o) null, (String) null);
                        break;
                    case 9:
                        dp.this.d((com.netease.mpay.e.b.o) null);
                        break;
                    case 10:
                        dp.this.e((com.netease.mpay.e.b.o) null);
                        break;
                    case Tencent.REQUEST_LOGIN /* 10001 */:
                        dp.this.x();
                        a();
                        break;
                    default:
                        dp.this.a((com.netease.mpay.e.b.o) null, this.a);
                        break;
                }
            } catch (NullPointerException e) {
                Cdo.a((Throwable) e);
            } catch (NumberFormatException e2) {
                Cdo.a((Throwable) e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends bf.c {
        private c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ c(dp dpVar, dq dqVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        public void a(View view) {
            dp.this.z();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends bf.c {
        private d() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ d(dp dpVar, dq dqVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        public void a(View view) {
            dp.this.w();
        }
    }

    public dp(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.s = 0;
        this.t = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void A() {
        new com.netease.mpay.f.bm(this.a, this.d.a(), this.d.b(), this.h, true, new ea(this)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        if (this.d.e != null) {
            if (C()) {
                this.d.e.onLogout(this.i.c);
            }
            this.d.e.onDialogFinish();
        }
        new com.netease.mpay.b.au().a(this.a);
    }

    private boolean C() {
        if (this.i == null || !this.i.m || !this.i.l || this.i.c == null || this.i.d == null || this.f == null) {
            return false;
        }
        com.netease.mpay.e.b.o b2 = this.f.c().b(this.d.b());
        if (b2 == null || !b2.m || !b2.l || b2.c == null || b2.d == null) {
            return true;
        }
        return (this.i.c.equals(b2.c) && this.i.d.equals(b2.d)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.b.ao aoVar, boolean z) {
        if (this.d.e != null && C()) {
            this.d.e.onLogout(this.i.c);
        }
        if (z) {
            new oy(this.a, this.d.a(), aoVar.h, aoVar.f, this.d.b()).a(aoVar.i, aoVar.j);
        }
        if (this.d.e != null) {
            this.d.e.onLoginSuccess(new User(aoVar));
        }
        if (z) {
            this.a.finish();
        } else {
            aoVar.a(this.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.e.b.o oVar) {
        if (oVar == null) {
            this.h = (com.netease.mpay.e.b.o) this.g.a.get(0);
        } else {
            this.h = oVar;
        }
        this.n.setText(this.h.a);
        this.u.b(this.h.f).a(this.a, this.d.a(), this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.e.b.o oVar, int i) {
        hi.a().a((Activity) this.a, this.d.d(), i, oVar != null ? oVar.c : null, (Integer) 9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.e.b.o oVar, String str) {
        hi.a().a(this.a, this.d.d(), false, oVar != null ? oVar.a(false) : null, str, oVar != null ? oVar.c : null, null, 1);
    }

    private void a(s.a aVar) {
        this.q.clearDisappearingChildren();
        this.q.setAdapter((ListAdapter) new a(aVar));
        if (this.t || aVar.a.size() < 4) {
            this.q.setNumColumns(aVar.a.size());
        } else {
            this.q.setNumColumns((aVar.a.size() + 1) / 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i) {
        this.e.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, boolean z2, com.netease.mpay.e.b.o oVar) {
        hi.a().a((Activity) this.a, this.d.d(), z, z2, oVar != null ? oVar.c : null, (Integer) 7);
    }

    private void b(int i) {
        ((ViewGroup) ((ViewGroup) this.a.getWindow().getDecorView()).findViewById(android.R.id.content)).getChildAt(0).setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.netease.mpay.e.b.o oVar) {
        hi.a().b((Activity) this.a, this.d.d(), oVar, (Integer) 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.netease.mpay.e.b.o oVar, String str) {
        hi.a().a((Activity) this.a, (com.netease.mpay.b.m) new m.f(this.d.d(), oVar != null ? oVar.a(false) : null, str, null), oVar != null ? oVar.c : null, (Integer) 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.netease.mpay.e.b.o oVar) {
        hi.a().a((Activity) this.a, this.d.d(), oVar != null ? oVar.c : null, true, false, (Integer) 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(com.netease.mpay.e.b.o oVar) {
        hi.a().a((Activity) this.a, this.d.d(), oVar != null ? oVar.c : null, (Integer) 5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(com.netease.mpay.e.b.o oVar) {
        hi.a().b((Activity) this.a, this.d.d(), oVar != null ? oVar.c : null, (Integer) 6);
    }

    private void s() {
        this.t = this.a.getResources().getConfiguration().orientation == 2;
        this.a.setContentView(RIdentifier.g.B);
        this.j = (LinearLayout) this.a.findViewById(RIdentifier.f.aN);
        this.k = (LinearLayout) this.a.findViewById(RIdentifier.f.be);
        this.m = (ImageView) this.a.findViewById(RIdentifier.f.aE);
        this.n = (TextView) this.a.findViewById(RIdentifier.f.aF);
        this.p = (ListView) this.a.findViewById(RIdentifier.f.bf);
        this.q = (GridView) this.a.findViewById(RIdentifier.f.aD);
        this.r = (ImageView) this.a.findViewById(RIdentifier.f.ar);
        this.r.setOnClickListener(new dq(this));
        this.a.findViewById(RIdentifier.f.ch).setOnClickListener(new ds(this));
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new dt(this));
        this.e = new com.netease.mpay.widget.s(this.a);
    }

    private void t() {
        if (m()) {
            return;
        }
        this.g = this.f.c().b();
        if (this.g == null || this.g.a.size() < 1 || this.d.b) {
            u();
        } else {
            v();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        ArrayList b2 = this.u.b(this.a, this.d.a());
        if (this.u.a(b2) < 1) {
            this.e.b(this.a.getString(RIdentifier.h.ag), this.a.getString(RIdentifier.h.cn), new du(this));
            return;
        }
        if (!this.u.a(b2, 1)) {
            this.r.setVisibility(this.s <= 0 ? 8 : 0);
            this.j.setVisibility(0);
            this.k.setVisibility(8);
            a((s.a) b2.get(0));
            return;
        }
        hi.a().a(this.a, this.d.d(), true, null, null, null, this.d.e, null);
        if (m()) {
            return;
        }
        if (C() && this.d.e != null) {
            this.d.e.onLogout(this.i.c);
        }
        this.a.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        dq dqVar = null;
        this.r.setVisibility(this.s <= 0 ? 8 : 0);
        this.j.setVisibility(8);
        this.k.setVisibility(0);
        this.l = (LinearLayout) this.a.findViewById(RIdentifier.f.bP);
        this.l.setOnClickListener(new d(this, dqVar));
        this.g = this.f.c().b();
        a(this.f.c().a(this.g.b, this.g));
        ((Button) this.a.findViewById(RIdentifier.f.bg)).setOnClickListener(new c(this, dqVar));
        View findViewById = this.a.findViewById(RIdentifier.f.ch);
        if (findViewById != null) {
            findViewById.setVisibility(this.u.a(this.u.b(this.a, this.d.a())) > 0 ? 0 : 8);
        }
        if (this.d.a) {
            b(4);
            z();
            this.d.a = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"InflateParams"})
    public void w() {
        if (this.a.isFinishing()) {
            return;
        }
        if (this.o == null || !this.o.isShowing()) {
            View inflate = ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(RIdentifier.g.L, (ViewGroup) null);
            int min = Math.min(this.g.a.size() == 0 ? 0 : (this.g.a.size() * this.a.getResources().getDimensionPixelSize(RIdentifier.d.n)) + ((this.g.a.size() - 1) * this.a.getResources().getDimensionPixelSize(RIdentifier.d.b)) + (this.a.getResources().getDimensionPixelSize(RIdentifier.d.b) * 2), this.a.getResources().getDimensionPixelOffset(RIdentifier.d.m));
            ListView listView = (ListView) inflate.findViewById(RIdentifier.f.bf);
            ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
            layoutParams.height = min;
            listView.setLayoutParams(layoutParams);
            this.o = new PopupWindow(inflate, this.l.getWidth(), -2);
            this.o.setFocusable(true);
            this.o.setOutsideTouchable(false);
            this.o.setBackgroundDrawable(new ColorDrawable(0));
            this.o.showAsDropDown(this.l, 0, 5);
        }
        this.p = (ListView) this.o.getContentView().findViewById(RIdentifier.f.bf);
        new af.b(this.a, this.p, this.g.a, RIdentifier.g.u, new dv(this));
        this.p.setOnItemClickListener(new dw(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        ArrayList b2 = this.u.b(this.a, this.d.a());
        if (b2.size() > 1) {
            a((s.a) b2.get(1));
            this.r.setVisibility(0);
            this.s |= 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        new cw(this.a, this.d.a(), this.d.b(), true, new dz(this)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        com.netease.mpay.e.b.o b2 = this.f.c().b(this.d.b());
        if (b2 != null) {
            this.f.c().c(b2.c, this.d.b());
        }
        if (this.h.d != null) {
            A();
            return;
        }
        switch (this.h.f) {
            case 1:
                a(this.h, (String) null);
                return;
            case 2:
                y();
                return;
            case 3:
                c(this.h);
                return;
            case 4:
                b(this.h);
                return;
            case 5:
                a(false, this.h.d != null, this.h);
                return;
            case 6:
            case 8:
            default:
                a(this.h, this.h.f);
                return;
            case 7:
                b(this.h, (String) null);
                return;
            case 9:
                d(this.h);
                return;
            case 10:
                e(this.h);
                return;
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.i(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i != 1 && i != 3 && i != 4 && i != 5 && i != 6 && i != 7 && i != 8 && i != 9) {
            b(0);
            return;
        }
        if (alVar instanceof com.netease.mpay.b.ao) {
            if (!((com.netease.mpay.b.ao) alVar).b) {
                a((com.netease.mpay.b.ao) alVar, false);
                return;
            }
        } else if (alVar instanceof com.netease.mpay.b.au) {
            B();
            return;
        } else if (alVar instanceof com.netease.mpay.b.an) {
            a(((com.netease.mpay.b.an) alVar).b, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        } else if (alVar instanceof com.netease.mpay.b.an) {
            t();
        }
        b(0);
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.o != null && this.o.isShowing()) {
            this.o.dismiss();
        }
        if (this.t != (this.a.getResources().getConfiguration().orientation == 2)) {
            boolean z = this.j.getVisibility() == 0;
            boolean z2 = this.r.getVisibility() == 0;
            s();
            if (z) {
                u();
            } else {
                v();
            }
            this.r.setVisibility(z2 ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, com.netease.mpay.e.b.o oVar) {
        ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.bc);
        TextView textView = (TextView) view.findViewById(RIdentifier.f.ce);
        TextView textView2 = (TextView) view.findViewById(RIdentifier.f.bZ);
        ImageView imageView2 = (ImageView) view.findViewById(RIdentifier.f.aL);
        textView.setText(oVar.a);
        this.u.b(oVar.f).a(this.a, this.d.a(), imageView);
        textView2.setText(String.valueOf(oVar.f));
        imageView2.setOnClickListener(new dy(this, oVar));
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        this.a.setTheme(RIdentifier.i.b);
        super.b(bundle);
        if (this.d.e == null || this.d.a() == null) {
            new com.netease.mpay.b.am().a(this.a);
            return;
        }
        this.f = new com.netease.mpay.e.b(this.a, this.d.a());
        this.i = this.f.c().b(this.d.b());
        if (this.d.c && this.i != null && this.d.e != null) {
            this.f.c().c(this.i.c, this.d.b());
            this.d.e.onLogout(this.i.c);
            this.i.m = false;
        }
        this.u = com.netease.mpay.server.response.u.a(this.a, this.d.a());
        s();
        t();
    }

    @Override // com.netease.mpay.a
    public void j() {
        if (this.d.e != null && hi.a().b != null) {
            hi.a().b.a(this.d.d);
        }
        super.j();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        B();
        return true;
    }
}
