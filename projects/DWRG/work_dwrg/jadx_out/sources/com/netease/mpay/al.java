package com.netease.mpay;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public class al extends com.netease.mpay.a {
    private com.netease.mpay.b.d d;
    private com.netease.mpay.widget.s e;
    private Resources f;
    private com.netease.mpay.e.b g;
    private AutoCompleteTextView h;
    private ImageView i;
    private EditText j;
    private ImageView k;
    private Button l;
    private BottomLinkButtons m;
    private ImageView n;
    private com.netease.mpay.e.b.o o;
    private TextWatcher p;
    private boolean q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends bf.c {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(al alVar, am amVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            com.netease.mpay.widget.bf.a(al.this.a, view.getWindowToken());
            al.this.w();
        }
    }

    public al(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.q = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(long j) {
        new as(this, SystemClock.elapsedRealtime(), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EditText editText, ImageView imageView) {
        if (editText.getText().toString().equals("") || !editText.isFocused()) {
            imageView.setVisibility(8);
        } else {
            imageView.setVisibility(0);
        }
    }

    private void a(a aVar) {
        this.j.addTextChangedListener(new ao(this));
        this.j.setOnFocusChangeListener(new ap(this));
        this.j.setOnEditorActionListener(new bf.b(aVar));
        this.k.setOnClickListener(new aq(this));
    }

    private void a(com.netease.mpay.b.ao aoVar) {
        if (this.d.e != null) {
            this.d.e.onGuestBindSuccess(new User(aoVar));
        }
        aoVar.a().a(this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.server.response.m mVar, String str) {
        new oy(this.a, this.d.a(), mVar.i, mVar.c, this.d.b()).a(mVar.e, mVar.f);
        a(new com.netease.mpay.b.ao(str, mVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i) {
        this.e.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z) {
        if (str == null) {
            this.h.setText("");
        } else if (!this.h.getText().toString().equals(str)) {
            this.h.setText(str);
        }
        y();
        if (z) {
            x();
        }
    }

    private void s() {
        this.q = this.a.getResources().getConfiguration().orientation == 2;
        this.a.setContentView(RIdentifier.g.s);
        this.h = (AutoCompleteTextView) this.a.findViewById(RIdentifier.f.ca);
        this.j = (EditText) this.a.findViewById(RIdentifier.f.bI);
        this.i = (ImageView) this.a.findViewById(RIdentifier.f.cc);
        this.k = (ImageView) this.a.findViewById(RIdentifier.f.bJ);
        this.l = (Button) this.a.findViewById(RIdentifier.f.as);
        this.m = (BottomLinkButtons) this.a.findViewById(RIdentifier.f.F);
        this.n = (ImageView) this.a.findViewById(RIdentifier.f.ar);
        this.f = this.a.getResources();
        this.e = new com.netease.mpay.widget.s(this.a);
        if (this.h != null) {
            this.h.setHint(cq.b(this.a, this.d.a(), RIdentifier.h.aC, 1));
        }
        if (this.d.e == null) {
            new com.netease.mpay.b.am().a(this.a);
        } else {
            this.g = new com.netease.mpay.e.b(this.a, this.d.a());
            this.o = this.g.c().b(this.d.b());
        }
    }

    private void t() {
        if (m()) {
            return;
        }
        a aVar = new a(this, null);
        v();
        a(aVar);
        com.netease.mpay.widget.bf.a(this.l, u());
        this.l.setOnClickListener(aVar);
        this.m.a(RIdentifier.h.ax, RIdentifier.e.n, new am(this));
        this.m.a(RIdentifier.h.bc, RIdentifier.e.m, new au(this));
        com.netease.mpay.server.response.u a2 = com.netease.mpay.server.response.u.a(this.a, this.d.a());
        if (1 == this.d.a && a2.a(this.a)) {
            this.m.a(RIdentifier.h.N, RIdentifier.e.h, new av(this));
        }
        this.m.a();
        this.n.setOnClickListener(new aw(this));
        if (1 == this.d.a || 3 == this.d.a) {
            this.n.setVisibility(8);
        } else {
            this.n.setVisibility(0);
        }
        y();
        a(this.j, this.k);
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new ax(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u() {
        return ((this.h == null ? "" : this.h.getText().toString().trim()).equals("") || (this.j == null ? "" : this.j.getText().toString().trim()).equals("")) ? false : true;
    }

    private void v() {
        this.p = com.netease.mpay.widget.ba.a(this.a, this.h, RIdentifier.g.v, Integer.valueOf(RIdentifier.f.bb), com.netease.mpay.server.response.u.a(this.a, this.d.a()).b(1).b(this.a, this.d.a()), Integer.valueOf(RIdentifier.f.ce), null, null);
        if (!com.netease.mpay.widget.ba.a(this.a)) {
            this.h.removeTextChangedListener(this.p);
        }
        this.h.setOnItemClickListener(new ay(this));
        this.h.setOnFocusChangeListener(new az(this));
        this.i.setOnClickListener(new ba(this));
        this.h.setOnClickListener(new bb(this));
        this.h.addTextChangedListener(new an(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        com.netease.mpay.widget.ba.a(this.h);
        String obj = this.h.getText().toString();
        if (obj.equals("")) {
            a(this.f.getString(RIdentifier.h.aj), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
            return;
        }
        if (!cq.b(obj)) {
            if (cq.a(obj)) {
                a(this.f.getString(RIdentifier.h.ab) + "\n" + obj + "@163.com", RpcException.ErrorCode.SERVER_SESSIONSTATUS);
                return;
            } else {
                a(cq.b(this.a, this.d.a(), RIdentifier.h.ac, 1), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
                return;
            }
        }
        if (this.j.getText().toString().length() != 0) {
            new com.netease.mpay.f.br(this.a, this.d.a(), this.d.b(), this.h.getText().toString(), this.j.getText().toString(), true, new ar(this)).h();
        } else {
            a(this.f.getString(RIdentifier.h.an), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
            this.j.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        a(700L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        String obj = this.h.getText().toString();
        if (!this.h.isFocused() || obj == null || obj.equals("")) {
            this.i.setVisibility(8);
        } else {
            this.i.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        new com.netease.mpay.widget.s(this.a).b(this.f.getString(RIdentifier.h.u), this.f.getString(RIdentifier.h.K), new at(this));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.d(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 1 || i == 3 || i == 2) {
            if (alVar instanceof com.netease.mpay.b.ao) {
                if (((com.netease.mpay.b.ao) alVar).b) {
                    alVar.a(this.a);
                    return;
                } else {
                    a((com.netease.mpay.b.ao) alVar);
                    return;
                }
            }
            if (alVar instanceof com.netease.mpay.b.ap) {
                z();
            } else if (alVar instanceof com.netease.mpay.b.au) {
                alVar.a(this.a);
            }
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        this.h.removeTextChangedListener(this.p);
        if (com.netease.mpay.widget.ba.a(this.a)) {
            this.h.addTextChangedListener(this.p);
        } else {
            this.h.dismissDropDown();
        }
        if (this.q != (this.a.getResources().getConfiguration().orientation == 2)) {
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
    public boolean l() {
        if (this.d.e != null) {
            this.d.e.onDialogFinish();
        }
        return super.l();
    }
}
