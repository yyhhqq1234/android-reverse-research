package com.netease.mpay.sharer;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b.ab;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.aa;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class b extends com.netease.mpay.a implements AdapterView.OnItemClickListener {
    ab d;
    ArrayList e;
    GridView f;
    boolean g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {

        /* renamed from: com.netease.mpay.sharer.b$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class C0050a {
            ImageView a;
            TextView b;

            private C0050a() {
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }

            /* synthetic */ C0050a(a aVar, c cVar) {
                this();
            }
        }

        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(b bVar, c cVar) {
            this();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (b.this.e == null) {
                return 0;
            }
            return b.this.e.size();
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
            C0050a c0050a;
            if (view == null) {
                view = LayoutInflater.from(b.this.a).inflate(RIdentifier.g.ah, viewGroup, false);
                c0050a = new C0050a(this, null);
                c0050a.a = (ImageView) view.findViewById(RIdentifier.f.a);
                c0050a.b = (TextView) view.findViewById(RIdentifier.f.dp);
                view.setTag(c0050a);
            } else {
                c0050a = (C0050a) view.getTag();
            }
            C0051b c0051b = (C0051b) b.this.e.get(i);
            c0050a.a.setImageResource(c0051b.b);
            c0050a.b.setText(c0051b.c);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.netease.mpay.sharer.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0051b {
        int a;
        int b;
        int c;

        private C0051b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ C0051b(b bVar, c cVar) {
            this();
        }
    }

    public b(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.g = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void s() {
        c cVar = null;
        this.e = new ArrayList();
        boolean a2 = m.a(this.a);
        if (a2) {
            C0051b c0051b = new C0051b(this, cVar);
            c0051b.a = 103;
            c0051b.b = RIdentifier.e.Z;
            c0051b.c = RIdentifier.h.dN;
            this.e.add(c0051b);
        }
        if (a2 || (this.d.b instanceof UrlShareContent)) {
            C0051b c0051b2 = new C0051b(this, cVar);
            c0051b2.a = ShareChannel.SHARE_TYPE_YIXIN_TIMELINE;
            c0051b2.b = RIdentifier.e.aa;
            c0051b2.c = RIdentifier.h.dO;
            this.e.add(c0051b2);
        }
        if (l.b(this.a)) {
            C0051b c0051b3 = new C0051b(this, cVar);
            c0051b3.a = 101;
            c0051b3.b = RIdentifier.e.X;
            c0051b3.c = RIdentifier.h.dL;
            this.e.add(c0051b3);
            C0051b c0051b4 = new C0051b(this, cVar);
            c0051b4.a = 102;
            c0051b4.b = RIdentifier.e.Y;
            c0051b4.c = RIdentifier.h.dM;
            this.e.add(c0051b4);
        }
        if (k.a(this.a) || (this.d.b instanceof UrlShareContent)) {
            C0051b c0051b5 = new C0051b(this, cVar);
            c0051b5.a = 100;
            c0051b5.b = RIdentifier.e.W;
            c0051b5.c = RIdentifier.h.dJ;
            this.e.add(c0051b5);
        }
        boolean c = com.netease.mpay.sharer.a.c(this.a);
        if (c && this.d.b.contentType != 0) {
            C0051b c0051b6 = new C0051b(this, cVar);
            c0051b6.a = ShareChannel.SHARE_TYPE_QQ;
            c0051b6.b = RIdentifier.e.U;
            c0051b6.c = RIdentifier.h.dH;
            this.e.add(c0051b6);
        }
        if ((c || (this.d.b instanceof UrlShareContent)) && this.d.b.contentType == 2) {
            C0051b c0051b7 = new C0051b(this, cVar);
            c0051b7.a = ShareChannel.SHARE_TYPE_QZONE;
            c0051b7.b = RIdentifier.e.V;
            c0051b7.c = RIdentifier.h.dI;
            this.e.add(c0051b7);
        }
        if (this.d.c != null) {
            C0051b c0051b8 = new C0051b(this, cVar);
            c0051b8.a = 200;
            c0051b8.b = RIdentifier.e.T;
            c0051b8.c = RIdentifier.h.dG;
            this.e.add(c0051b8);
        }
    }

    private void t() {
        this.a.setTheme(this.d.a ? RIdentifier.i.f : RIdentifier.i.e);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new ab(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(Bundle bundle) {
        t();
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        t();
        if (this.d.b == null) {
            k();
            return;
        }
        s();
        this.a.setContentView(RIdentifier.g.ai);
        this.f = (GridView) this.a.findViewById(RIdentifier.f.cX);
        this.f.setAdapter((ListAdapter) new a(this, null));
        this.f.setOnItemClickListener(this);
        this.a.findViewById(RIdentifier.f.cW).setOnClickListener(new c(this));
    }

    @Override // com.netease.mpay.a
    public void f() {
        if (this.g) {
            this.a.setResult(200);
            this.a.finish();
        }
        super.f();
    }

    @Override // com.netease.mpay.a
    public void k() {
        super.k();
        this.a.overridePendingTransition(0, RIdentifier.a.g);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        int i2 = ((C0051b) this.e.get(i)).a;
        if (i2 != 200) {
            this.g = new d(this.a).a(this.d.b, i2);
            return;
        }
        aa.a(this.a, this.d.c != null ? this.d.c.trim() : "");
        this.a.setResult(100);
        this.a.finish();
    }
}
