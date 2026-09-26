package com.netease.mpay;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.f.am;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.view.LoginTabView;
import com.netease.mpay.view.TintIconView;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public class mk extends a {
    private ImageView A;
    private View B;
    private boolean C;
    private boolean D;
    private View.OnClickListener E;
    private com.netease.mpay.b.af d;
    private com.netease.mpay.widget.s e;
    private Resources f;
    private bf.a g;
    private LoginTabView h;
    private LoginTabView i;
    private View j;
    private TextView k;
    private EditText l;
    private ImageView m;
    private Button n;
    private View o;
    private TextView p;
    private View q;
    private TextView r;
    private TextView s;
    private View t;
    private Button u;
    private View v;
    private BottomLinkButtons w;
    private LinearLayout x;
    private TintIconView y;
    private TextView z;

    public mk(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.C = false;
        this.E = new my(this);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        this.g.b();
        this.t.setVisibility(0);
        this.s.setVisibility(4);
        this.t.setOnClickListener(new mr(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        this.t.setVisibility(4);
        this.s.setVisibility(0);
        this.g.a();
        new com.netease.mpay.f.am(this.a, this.d.a(), this.d.b(), new am.c(this.d.c.a, this.d.a), true, new ms(this)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        this.h.setSelected(this.D);
        this.j.setVisibility(this.D ? 0 : 8);
        this.i.setSelected(!this.D);
        this.o.setVisibility(this.D ? 8 : 0);
        if (this.v != null) {
            this.v.setVisibility(this.D ? 0 : 4);
        }
        if (this.w != null) {
            this.w.setVisibility(this.D ? 0 : 4);
        }
        if (this.x != null) {
            this.x.setVisibility(this.D ? 0 : 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        if (this.l.getText().toString().length() != 0) {
            E();
        } else {
            a(this.f.getString(RIdentifier.h.an), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
            this.l.requestFocus();
        }
    }

    private void E() {
        new com.netease.mpay.f.br(this.a, this.d.a(), this.d.b(), this.d.a, this.l.getText().toString(), false, new mt(this)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EditText editText, ImageView imageView) {
        if (editText.getText().toString().equals("") || !editText.isFocused()) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i) {
        this.e.a(str);
    }

    private void s() {
        this.C = this.a.getResources().getConfiguration().orientation == 2;
        this.a.setContentView(RIdentifier.g.U);
        this.h = (LoginTabView) this.a.findViewById(RIdentifier.f.cB);
        this.i = (LoginTabView) this.a.findViewById(RIdentifier.f.db);
        this.j = this.a.findViewById(RIdentifier.f.cA);
        this.k = (TextView) this.a.findViewById(RIdentifier.f.dg);
        this.l = (EditText) this.a.findViewById(RIdentifier.f.bI);
        this.m = (ImageView) this.a.findViewById(RIdentifier.f.bJ);
        this.n = (Button) this.a.findViewById(RIdentifier.f.cz);
        this.o = this.a.findViewById(RIdentifier.f.cZ);
        this.p = (TextView) this.a.findViewById(RIdentifier.f.br);
        this.q = this.a.findViewById(RIdentifier.f.da);
        this.r = (TextView) this.a.findViewById(RIdentifier.f.bW);
        this.s = (TextView) this.a.findViewById(RIdentifier.f.aY);
        this.t = this.a.findViewById(RIdentifier.f.aZ);
        this.u = (Button) this.a.findViewById(RIdentifier.f.cY);
        this.v = this.a.findViewById(RIdentifier.f.aM);
        this.w = (BottomLinkButtons) this.a.findViewById(RIdentifier.f.aQ);
        this.x = (LinearLayout) this.a.findViewById(RIdentifier.f.ah);
        this.y = (TintIconView) this.a.findViewById(RIdentifier.f.ai);
        this.z = (TextView) this.a.findViewById(RIdentifier.f.aj);
        this.A = (ImageView) this.a.findViewById(RIdentifier.f.ar);
        this.B = this.a.findViewById(RIdentifier.f.at);
        this.f = this.a.getResources();
        this.e = new com.netease.mpay.widget.s(this.a);
        this.g = new bf.a(this.s, 60, 1, new ml(this));
    }

    private void t() {
        if (m()) {
            return;
        }
        this.h.setLabel(this.f.getString(RIdentifier.h.bs));
        this.i.setLabel(this.f.getString(RIdentifier.h.br));
        this.h.setOnClickListener(new mu(this));
        this.i.setOnClickListener(new mv(this));
        u();
        w();
        if (this.w != null) {
            this.w.a(RIdentifier.h.ax, RIdentifier.e.n, this.E);
            this.w.a();
        }
        if (this.x != null) {
            this.x.setOnClickListener(this.E);
            this.y.a(RIdentifier.e.n, RIdentifier.e.g);
            this.z.setText(this.a.getResources().getString(RIdentifier.h.ax));
        }
        this.A.setOnClickListener(new mw(this));
        this.B.setOnClickListener(new mx(this));
        this.D = true;
        C();
    }

    private void u() {
        this.k.setText(String.format(this.a.getString(RIdentifier.h.bo), this.d.a));
        mz mzVar = new mz(this);
        this.n.setOnClickListener(mzVar);
        this.l.addTextChangedListener(new na(this));
        this.l.setOnFocusChangeListener(new nb(this));
        this.l.setOnEditorActionListener(new bf.b(mzVar));
        this.m.setOnClickListener(new mm(this));
        com.netease.mpay.widget.bf.a(this.n, v());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v() {
        return !this.l.getText().toString().trim().equals("");
    }

    private void w() {
        this.p.setText(String.format(this.f.getString(RIdentifier.h.bp), this.d.c.b));
        this.q.setOnClickListener(new mn(this));
        A();
        this.r.addTextChangedListener(new mo(this));
        mp mpVar = new mp(this);
        this.r.setOnEditorActionListener(new bf.b(mpVar));
        com.netease.mpay.widget.bf.a(this.u, z());
        this.u.setOnClickListener(mpVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (this.r.getText().toString().length() != 0) {
            y();
        } else {
            a(this.f.getString(RIdentifier.h.aB), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
            this.r.requestFocus();
        }
    }

    private void y() {
        new com.netease.mpay.f.m(this.a, this.d.a(), this.d.b(), this.d.c.a, this.r.getText().toString(), this.d.a, true, new mq(this)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean z() {
        return !this.r.getText().toString().trim().equals("");
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.af(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (1 == i && (alVar instanceof com.netease.mpay.b.au)) {
            alVar.a(this.a);
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.C != (this.a.getResources().getConfiguration().orientation == 2)) {
            s();
            t();
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        s();
        t();
    }

    @Override // com.netease.mpay.a
    public void j() {
        super.j();
        if (this.g != null) {
            this.g.b();
        }
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        return super.l();
    }
}
