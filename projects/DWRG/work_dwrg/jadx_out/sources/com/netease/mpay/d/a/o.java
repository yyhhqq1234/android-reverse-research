package com.netease.mpay.d.a;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.ew;
import com.netease.mpay.f.am;
import com.netease.mpay.f.an;
import com.netease.mpay.f.bd;
import com.netease.mpay.fh;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.io.Serializable;

/* loaded from: classes.dex */
public class o extends ew {
    private static com.netease.mpay.widget.al n = new com.netease.mpay.widget.al();
    private Activity b;
    private b c;
    private d d;
    private com.netease.mpay.e.b e;
    private com.netease.mpay.e.b.af f;
    private EditText g;
    private TextView h;
    private TextView i;
    private bf.a j;
    private CheckBox k;
    private Button l;
    private boolean m;
    private bd.a o = new x(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        REGIST_FRAGMENT_PARAMS,
        ON_VERIFY_SMS_CALLBACK;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b extends fh {
        void a(an.a aVar);

        void a(com.netease.mpay.server.response.w wVar);

        void a(String str, com.netease.mpay.server.response.m mVar);
    }

    /* loaded from: classes.dex */
    private class c extends bf.c {
        private c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ c(o oVar, p pVar) {
            this();
        }

        @Override // com.netease.mpay.widget.bf.c
        protected void a(View view) {
            bf.a(o.this.b, view.getWindowToken());
            o.this.d();
        }
    }

    /* loaded from: classes.dex */
    public static class d implements Serializable {
        public String a;
        public String b;
        public String c;
        public boolean d;

        public d(String str, String str2, String str3, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = z;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public o() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static o a(d dVar, b bVar) {
        o oVar = new o();
        oVar.b(dVar, bVar);
        return oVar;
    }

    private void a(View view) {
        com.netease.mpay.widget.aa.a((TextView) view.findViewById(RIdentifier.f.bw), this.b.getString(RIdentifier.h.aO), this.b.getString(RIdentifier.h.aQ), new r(this), this.b.getString(RIdentifier.h.aP), new s(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3) {
        this.h.setVisibility(0);
        this.i.setVisibility(8);
        this.j.b();
        new com.netease.mpay.d.a.a.an(this.b, str2, str3).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.h.setVisibility(0);
        this.i.setVisibility(8);
        this.j.b();
        this.h.setText(RIdentifier.h.C);
        this.h.setOnClickListener(new v(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        c();
        new com.netease.mpay.f.am(this.b, this.d.a, this.d.b, new am.b(this.d.c), !z, new w(this, z)).h();
    }

    private void c() {
        this.h.setVisibility(8);
        this.i.setVisibility(0);
        this.j.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        String trim = this.g.getText().toString().trim();
        if (trim.equals("")) {
            this.c.a(this.b.getString(RIdentifier.h.ak));
        } else if (this.k.isChecked()) {
            new bd(this.b, this.d.a, this.d.b, this.d.c, trim, this.d.d, this.o).h();
        } else {
            this.c.a(this.b.getString(RIdentifier.h.aF));
        }
    }

    @Override // com.netease.mpay.ew
    public void a(boolean z) {
    }

    @Override // com.netease.mpay.ew
    public boolean a() {
        return false;
    }

    public void b(d dVar, b bVar) {
        this.d = dVar;
        this.c = bVar;
        Bundle bundle = new Bundle();
        bundle.putSerializable(a.REGIST_FRAGMENT_PARAMS.name(), dVar);
        bundle.putLong(a.ON_VERIFY_SMS_CALLBACK.name(), n != null ? n.a(bVar) : -1L);
        setArguments(bundle);
    }

    @Override // com.netease.mpay.ew, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.b = getActivity();
        try {
            Bundle arguments = getArguments();
            this.c = (b) n.b(arguments.getLong(a.ON_VERIFY_SMS_CALLBACK.name()));
            this.d = (d) arguments.getSerializable(a.REGIST_FRAGMENT_PARAMS.name());
            if (this.d == null) {
                throw new NullPointerException("");
            }
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            if (this.c != null) {
                this.c.d();
            }
        }
        this.e = new com.netease.mpay.e.b(this.b, this.d.a);
        this.f = this.e.e().a();
        this.m = false;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p pVar = null;
        View inflate = layoutInflater.inflate(RIdentifier.g.I, viewGroup, false);
        this.b = getActivity();
        if (this.b == null || this.b.isFinishing() || this.c == null) {
            return null;
        }
        this.g = (EditText) inflate.findViewById(RIdentifier.f.au);
        this.h = (TextView) inflate.findViewById(RIdentifier.f.aX);
        this.i = (TextView) inflate.findViewById(RIdentifier.f.av);
        this.l = (Button) inflate.findViewById(RIdentifier.f.bg);
        inflate.findViewById(RIdentifier.f.bt).setVisibility(0);
        this.k = (CheckBox) inflate.findViewById(RIdentifier.f.aK);
        this.k.setChecked(true);
        a(inflate);
        bf.a(this.l, false);
        this.g.addTextChangedListener(new p(this));
        this.j = new bf.a(this.i, 60, 1, new q(this));
        ((TextView) inflate.findViewById(RIdentifier.f.br)).setText(String.format(this.b.getString(RIdentifier.h.aS), this.d.c));
        b();
        b(true);
        c cVar = new c(this, pVar);
        this.l.setOnClickListener(cVar);
        this.g.setOnEditorActionListener(new bf.b(cVar));
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.b.findViewById(RIdentifier.f.ar).setOnClickListener(new t(this));
        this.b.findViewById(RIdentifier.f.at).setOnClickListener(new u(this));
    }
}
