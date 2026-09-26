package com.netease.mpay;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;
import com.dodola.rocoo.Hack;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ck extends com.netease.mpay.a {
    private final int d;
    private com.netease.mpay.b.a e;
    private com.netease.mpay.widget.s f;
    private com.netease.mpay.e.b g;
    private com.netease.mpay.e.b.o h;
    private Resources i;
    private EditText j;
    private EditText k;
    private Button l;
    private TextWatcher m;

    /* loaded from: classes.dex */
    public static class a {
        private static a b;
        private HashMap a = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.netease.mpay.ck$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class C0038a {
            public String a;
            public String b;

            private C0038a() {
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }

            /* synthetic */ C0038a(a aVar, cl clVar) {
                this();
            }
        }

        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public static synchronized a a() {
            a aVar;
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
                aVar = b;
            }
            return aVar;
        }

        public String a(String str) {
            if (str == null || str.trim().length() == 0) {
                return null;
            }
            C0038a c0038a = (C0038a) this.a.get(str);
            if (c0038a == null) {
                return null;
            }
            return c0038a.a;
        }

        public void a(String str, String str2, String str3) {
            C0038a c0038a = new C0038a(this, null);
            c0038a.b = str3;
            c0038a.a = str2;
            this.a.put(str, c0038a);
        }

        public String b(String str) {
            if (str == null || str.trim().length() == 0) {
                return null;
            }
            C0038a c0038a = (C0038a) this.a.get(str);
            if (c0038a == null) {
                return null;
            }
            return c0038a.b;
        }

        public void c(String str) {
            if (str == null || str.trim().length() == 0) {
                return;
            }
            this.a.remove(str);
        }
    }

    public ck(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.d = 250;
        this.m = new cl(this);
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void s() {
        this.f = new com.netease.mpay.widget.s(this.a);
        this.a.setContentView(RIdentifier.g.k);
        this.j = (EditText) this.a.findViewById(RIdentifier.f.aa);
        this.j.addTextChangedListener(this.m);
        this.k = (EditText) this.a.findViewById(RIdentifier.f.ab);
        if (this.h.f == 7) {
            this.k.setText(com.netease.mpay.e.b.x.a(this.h));
        }
        cn cnVar = new cn(this);
        this.k.setOnEditorActionListener(new bf.b(cnVar));
        this.l = (Button) this.a.findViewById(RIdentifier.f.ac);
        v();
        this.l.setOnClickListener(cnVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (!u()) {
            new com.netease.mpay.f.s(this.a, this.e.a(), this.e.b(), this.j.getText().toString(), this.k.getText().toString(), a.a().b(this.e.a()), a.a().a(this.e.a()), new co(this)).h();
        } else {
            this.f.a(this.i.getString(RIdentifier.h.z));
            this.j.requestFocus();
        }
    }

    private boolean u() {
        return this.j.getText().toString().trim().length() <= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        boolean z = !u();
        com.netease.mpay.widget.bf.a(this.l, z);
        if (this.l.getTag() == null || !TextUtils.equals((String) this.l.getTag(), this.i.getString(RIdentifier.h.p))) {
            return;
        }
        this.l.setTextColor(this.i.getColor(z ? RIdentifier.c.j : RIdentifier.c.i));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.a(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.i = this.a.getResources();
        super.a(this.i.getString(RIdentifier.h.dj));
        if (this.e.a() == null) {
            new com.netease.mpay.b.am().a(this.a);
            return;
        }
        this.g = new com.netease.mpay.e.b(this.a, this.e.a());
        this.h = this.g.c().b(this.e.b());
        s();
    }

    @Override // com.netease.mpay.a
    public boolean n() {
        super.n();
        return this.i.getBoolean(RIdentifier.b.a) && a(RIdentifier.g.l);
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        com.netease.mpay.widget.bf.a(this.a, this.j);
        com.netease.mpay.widget.bf.a(this.a, this.k);
        this.a.finish();
        return true;
    }
}
