package com.netease.mpay.d.a.a;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.d.a.a.k;
import com.netease.mpay.view.BottomLinkButtons;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;

/* loaded from: classes.dex */
public abstract class r extends k {
    private String a;
    private a b;
    private c c;

    /* loaded from: classes.dex */
    private abstract class a {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        abstract String a(Activity activity, String str);

        abstract void a(View view);
    }

    /* loaded from: classes.dex */
    public class b extends a {
        public b() {
            super();
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.d.a.a.r.a
        public String a(Activity activity, String str) {
            return String.format(activity.getString(RIdentifier.h.aL), str);
        }

        @Override // com.netease.mpay.d.a.a.r.a
        public void a(View view) {
            t tVar = new t(this);
            BottomLinkButtons bottomLinkButtons = (BottomLinkButtons) view.findViewById(RIdentifier.f.F);
            bottomLinkButtons.a(RIdentifier.h.aa, RIdentifier.e.i, tVar);
            bottomLinkButtons.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends k.a {
        private final String b;
        private final String c;
        private EditText d;
        private TextView e;
        private TextView f;
        private Button g;
        private bf.a h;

        c(Activity activity, View view) {
            this.b = activity.getString(RIdentifier.h.ay);
            this.c = activity.getString(RIdentifier.h.C);
            this.d = (EditText) view.findViewById(RIdentifier.f.au);
            this.e = (TextView) view.findViewById(RIdentifier.f.aX);
            this.f = (TextView) view.findViewById(RIdentifier.f.av);
            this.g = (Button) view.findViewById(RIdentifier.f.bg);
            bf.a(this.g, false);
            this.d.addTextChangedListener(new u(this, r.this));
            this.h = new bf.a(this.f, 60, 1, new v(this, r.this));
            w wVar = new w(this, r.this, activity);
            this.g.setOnClickListener(wVar);
            this.d.setOnEditorActionListener(new bf.b(wVar));
            b(true);
            b();
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.d != null) {
                this.d.setText("");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.e.setVisibility(8);
            this.f.setVisibility(0);
            this.h.a();
            r.this.a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(boolean z) {
            this.e.setVisibility(0);
            this.f.setVisibility(8);
            this.h.b();
            this.e.setText(z ? this.c : this.b);
            this.e.setOnClickListener(new x(this));
        }

        @Override // com.netease.mpay.d.a.a.k.a
        void a(boolean z) {
        }
    }

    /* loaded from: classes.dex */
    public class d extends a {
        boolean b;
        boolean c;

        public d(boolean z, boolean z2) {
            super();
            this.b = z;
            this.c = z2;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // com.netease.mpay.d.a.a.r.a
        public String a(Activity activity, String str) {
            return String.format(activity.getString(this.c ? RIdentifier.h.aN : RIdentifier.h.aM), str);
        }

        @Override // com.netease.mpay.d.a.a.r.a
        public void a(View view) {
            y yVar = new y(this);
            BottomLinkButtons bottomLinkButtons = (BottomLinkButtons) view.findViewById(RIdentifier.f.F);
            bottomLinkButtons.a(RIdentifier.h.aa, RIdentifier.e.i, yVar);
            if (!this.b) {
                bottomLinkButtons.a(RIdentifier.h.dP, RIdentifier.e.j, new z(this));
            }
            bottomLinkButtons.a();
        }
    }

    public r(String str) {
        this.a = str;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    @Override // com.netease.mpay.d.a.a.k
    public View a(Activity activity, LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(RIdentifier.g.G, viewGroup, false);
        ((TextView) inflate.findViewById(RIdentifier.f.ba)).setText(this.b.a(activity, this.a));
        this.b.a(inflate);
        this.c = new c(activity, inflate);
        return inflate;
    }

    public r a(boolean z, boolean z2) {
        this.b = new d(z, z2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.netease.mpay.d.a.a.k
    public void b(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void c();

    @Override // com.netease.mpay.d.a.a.k
    public void d() {
        if (this.c != null) {
            this.c.b(true);
        }
    }

    @Override // com.netease.mpay.d.a.a.k
    public void e() {
        if (this.c != null) {
            this.c.a();
        }
    }

    @Override // com.netease.mpay.d.a.a.k
    public void f() {
    }

    public r g() {
        this.b = new b();
        return this;
    }
}
