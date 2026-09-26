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
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.ar;
import com.netease.mpay.b.r;
import com.netease.mpay.b.s;
import com.netease.mpay.server.response.OrderInit;
import com.netease.mpay.widget.RIdentifier;
import java.util.Locale;

/* loaded from: classes.dex */
public class jt extends com.netease.mpay.a {
    private r d;
    private Resources e;
    private com.netease.mpay.e.b.af f;
    private com.netease.mpay.e.b.o g;
    private String h;
    private String i;
    private com.netease.mpay.widget.s j;
    private boolean k;
    private final int[] l;
    private boolean[] m;
    private int n;

    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private Context b;

        public a(Context context) {
            this.b = context;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return jt.this.l.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = ((LayoutInflater) this.b.getSystemService("layout_inflater")).inflate(RIdentifier.g.ad, viewGroup, false);
            }
            TextView textView = (TextView) view.findViewById(RIdentifier.f.cO);
            TextView textView2 = (TextView) view.findViewById(RIdentifier.f.ct);
            textView.setText(String.format(Locale.getDefault(), "%d%s", Integer.valueOf(jt.this.l[i]), this.b.getString(RIdentifier.h.cv)));
            textView2.setText(String.format(Locale.getDefault(), "%.2f%s", Double.valueOf(jt.this.l[i] / 10), this.b.getString(RIdentifier.h.cx)));
            view.setEnabled(i != jt.this.n);
            textView.setTextColor(jt.this.a.getResources().getColor(i != jt.this.n ? RIdentifier.c.d : RIdentifier.c.f));
            textView2.setTextColor(jt.this.a.getResources().getColor(i != jt.this.n ? RIdentifier.c.b : RIdentifier.c.f));
            view.setOnClickListener(new kc(this, i));
            return view;
        }
    }

    public jt(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.l = new int[]{50, 100, 200, 500, 1000, RpcException.ErrorCode.SERVER_SESSIONSTATUS, RpcException.ErrorCode.SERVER_OPERATIONTYPEMISSED, 10000};
        this.m = new boolean[]{false, false, false, false, false, false, false, false};
        this.n = -1;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, com.netease.mpay.b.al alVar) {
        if (alVar instanceof com.netease.mpay.b.ap) {
            new ii(this.a).d();
        } else if (i != 1 || (alVar instanceof ar.a)) {
            y();
        } else {
            alVar.a(this.a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.b.s sVar) {
        new com.netease.mpay.f.e(this.a, this.d.a(), this.d.b(), this.d.c.d, this.i, new jy(this, sVar)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new com.netease.mpay.widget.s(this.a).b(str, this.e.getString(RIdentifier.h.cn), new jx(this));
    }

    private void s() {
        int i;
        this.a.setContentView(RIdentifier.g.ae);
        ((TextView) this.a.findViewById(RIdentifier.f.k)).setText(this.g.a);
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.i);
        try {
            i = Integer.parseInt(this.d.e.a);
        } catch (Exception e) {
            i = 0;
        }
        textView.setText(this.e.getString(RIdentifier.h.r, Integer.valueOf(i)));
        OrderInit.a(this.a, (TextView) this.a.findViewById(RIdentifier.f.cP), this.d.j());
        Button button = (Button) this.a.findViewById(RIdentifier.f.P);
        com.netease.mpay.widget.bf.a(button, t());
        button.setOnClickListener(new ju(this));
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t() {
        return this.n >= 0 && this.n < this.l.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (t()) {
            new com.netease.mpay.f.d(this.a, this.d.a(), this.d.b(), this.d.c.d, this.h, this.d.s(), this.d.k(), new jv(this)).h();
            return;
        }
        this.j.a(this.e.getString(RIdentifier.h.de));
        if (this.f.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.f.b, this.g.c, this.g.e, this.g.f, "czds", "cz_cz", com.netease.mpay.widget.ay.a(this.d.e.b, "czds"), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        b.a aVar;
        int i = -1;
        String o = this.d.o();
        String str = this.d.e.b;
        if (o.equals("epay")) {
            str = com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(str, "czds"), "cz_cz");
            aVar = null;
        } else if (o.equals("uppay")) {
            aVar = b.a.UppayActivity;
            i = 2;
        } else if (o.equals("bankcard")) {
            aVar = b.a.BankCardPayActivity;
            i = 5;
        } else if (o.equals("alipay")) {
            str = com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(str, "czds"), "cz_cz");
            aVar = b.a.AlipayActivity;
            i = 3;
        } else if (o.equals("weixinpay")) {
            aVar = b.a.WeixinPayActivity;
            i = 4;
        } else if (o.equals("tenpay")) {
            aVar = b.a.TenpayActivity;
            i = 6;
        } else {
            aVar = null;
        }
        r rVar = new r(this.d, this.d.e);
        rVar.e.b = str;
        com.netease.mpay.b.s sVar = new com.netease.mpay.b.s(rVar, new s.a(this.i, this.h));
        if (o.equals("epay")) {
            a(sVar);
            return;
        }
        if (o.equals("weixinpayqr") || o.equals("alipayqr")) {
            new kv(this.a, sVar, new jw(this)).a();
        } else if (aVar != null) {
            b.a(this.a, aVar, sVar, null, Integer.valueOf(i));
        } else {
            Cdo.a("Unknown channel: " + o);
        }
    }

    private void w() {
        GridView gridView = (GridView) this.a.findViewById(RIdentifier.f.H);
        gridView.setNumColumns(this.k ? 4 : 3);
        gridView.setAdapter((ListAdapter) new a(this.a.getApplicationContext()));
    }

    private void x() {
        super.a(this.e.getString(RIdentifier.h.cE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        new ar.a(this.i, null, com.netease.mpay.widget.ay.a(com.netease.mpay.widget.ay.a(this.d.e.b, "czds"), "cz_cz")).a(this.a);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new r(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        a(i, alVar);
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        boolean z = this.e.getBoolean(RIdentifier.b.a);
        if (this.k != z) {
            this.k = z;
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
        this.e = this.a.getResources();
        this.j = new com.netease.mpay.widget.s(this.a);
        x();
        this.k = this.e.getBoolean(RIdentifier.b.a);
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.d.a());
        this.g = bVar.c().b(this.d.b());
        if (this.g == null || TextUtils.isEmpty(this.g.d)) {
            new ii(this.a).d();
            return;
        }
        this.f = bVar.e().a();
        if (this.f.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.f.b, this.g.c, this.g.e, this.g.f, "czds", com.netease.mpay.widget.ay.a(this.d.e.b, "czds"));
        }
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
        new ar.g().a(this.a);
        return true;
    }
}
