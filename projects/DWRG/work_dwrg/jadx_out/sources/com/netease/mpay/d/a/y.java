package com.netease.mpay.d.a;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.Cdo;
import com.netease.mpay.d.a.a.q;
import com.netease.mpay.ew;
import com.netease.mpay.fh;
import com.netease.mpay.server.response.w;
import com.netease.mpay.widget.RIdentifier;
import java.io.Serializable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class y extends ew {
    private static com.netease.mpay.widget.al g = new com.netease.mpay.widget.al();
    q.a b = new ad(this);
    private Activity c;
    private b d;
    private c e;
    private com.netease.mpay.d.a.a.q f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum a {
        RELATED_LOGIN_FRAGMENT_PARAMS,
        ON_RELATED_LOGIN_CALLBACK;

        a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface b extends fh {
        void a(String str, com.netease.mpay.server.response.m mVar);

        void a(String str, String str2);
    }

    /* loaded from: classes.dex */
    public static class c implements Serializable {
        public String a;
        public String b;
        public String c;
        public boolean d;
        public String e;
        public String f;
        public ArrayList g;

        public c(String str, String str2, String str3, boolean z, String str4, String str5, ArrayList arrayList) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = z;
            this.e = str4;
            this.f = str5;
            this.g = arrayList;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public y() {
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    public static y a(c cVar, b bVar) {
        y yVar = new y();
        yVar.b(cVar, bVar);
        return yVar;
    }

    private void a(View view) {
        com.netease.mpay.server.response.u.a(this.a, this.e.a).b(7).a(this.c, this.e.a, (ImageView) view.findViewById(RIdentifier.f.aE));
        ((TextView) view.findViewById(RIdentifier.f.aF)).setText(this.e.c);
        view.findViewById(RIdentifier.f.bH).setVisibility(this.e.d ? 8 : 0);
        view.setOnClickListener(new ac(this));
    }

    @Override // com.netease.mpay.ew
    public void a(boolean z) {
    }

    @Override // com.netease.mpay.ew
    public boolean a() {
        this.d.c();
        return true;
    }

    public void b(c cVar, b bVar) {
        this.e = cVar;
        this.d = bVar;
        Bundle bundle = new Bundle();
        bundle.putSerializable(a.RELATED_LOGIN_FRAGMENT_PARAMS.name(), cVar);
        bundle.putLong(a.ON_RELATED_LOGIN_CALLBACK.name(), g != null ? g.a(bVar) : -1L);
        setArguments(bundle);
    }

    @Override // com.netease.mpay.ew, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.c = getActivity();
        try {
            Bundle arguments = getArguments();
            this.d = (b) g.b(arguments.getLong(a.ON_RELATED_LOGIN_CALLBACK.name()));
            this.e = (c) arguments.getSerializable(a.RELATED_LOGIN_FRAGMENT_PARAMS.name());
            if (this.e == null) {
                throw new NullPointerException("");
            }
        } catch (Exception e) {
            Cdo.a((Throwable) e);
            if (this.d != null) {
                this.d.d();
            }
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.c = getActivity();
        if (this.c == null || this.c.isFinishing() || this.d == null) {
            return null;
        }
        View inflate = layoutInflater.inflate(RIdentifier.g.J, viewGroup, false);
        View findViewById = inflate.findViewById(RIdentifier.f.bu);
        ((TextView) findViewById.findViewById(RIdentifier.f.bQ)).setText(this.e.d ? RIdentifier.h.X : RIdentifier.h.be);
        View findViewById2 = findViewById.findViewById(RIdentifier.f.bd);
        findViewById2.setVisibility(TextUtils.isEmpty(this.e.f) ? 8 : 0);
        findViewById2.setOnClickListener(new z(this));
        a(findViewById.findViewById(RIdentifier.f.bV));
        View findViewById3 = inflate.findViewById(RIdentifier.f.bv);
        if (this.e.g == null) {
            this.d.d();
        } else {
            this.f = this.e.g.size() > 1 ? new com.netease.mpay.d.a.a.n(this.e.c, this.e.g, this.b) : new com.netease.mpay.d.a.a.l(this.e.c, (w.a) this.e.g.get(0), this.b);
            this.f.a(this.c, this.e.a, findViewById3);
        }
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.c.findViewById(RIdentifier.f.ar).setOnClickListener(new aa(this));
        this.c.findViewById(RIdentifier.f.at).setOnClickListener(new ab(this));
    }
}
