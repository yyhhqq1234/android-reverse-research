package com.netease.mpay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.b.ar;
import com.netease.mpay.b.p;
import com.netease.mpay.e.b.aj;
import com.netease.mpay.e.b.r;
import com.netease.mpay.e.c.j;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.af;
import com.netease.mpay.f.an;
import com.netease.mpay.f.y;
import com.netease.mpay.nn;
import com.netease.mpay.widget.RIdentifier;
import java.util.Iterator;

/* loaded from: classes.dex */
public class nc extends com.netease.mpay.a implements com.netease.mpay.f.a.b {
    private com.netease.mpay.b.k d;
    private Resources e;
    private String f;
    private com.netease.mpay.e.b.o g;
    private com.netease.mpay.e.b h;
    private com.netease.mpay.e.b.af i;
    private com.netease.mpay.widget.s j;
    private boolean k;
    private String l;
    private Bitmap m;
    private View.OnClickListener n;
    private boolean o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements nn.a {
        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(nc ncVar, nd ndVar) {
            this();
        }

        @Override // com.netease.mpay.nn.a
        public void a(aj.a aVar) {
            if (nc.this.i.v && !TextUtils.isEmpty(aVar.e)) {
                com.netease.mpay.widget.ay.a(nc.this.a, bk.k).a((Context) nc.this.a, nc.this.i.b, nc.this.g.c, nc.this.g.e, nc.this.g.f, "user_index", aVar.e, true);
            }
            if ("forum".equals(aVar.a)) {
                if (nc.this.i.q && cr.a(nc.this.a)) {
                    new cr(nc.this.a, nc.this.d.a(), nc.this.d.b()).a(nc.this.i.r, nc.this.i.p);
                    return;
                } else {
                    b.a(nc.this.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(nc.this.d.d(), an.a.LINK_URL).a(nc.this.i.o), null, 10);
                    return;
                }
            }
            if ("deposit".equals(aVar.a)) {
                if (7 == nc.this.g.f) {
                    new com.netease.mpay.f.ay(nc.this.a, nc.this.d.c(), nc.this.d.a(), nc.this.d.b(), new nm(this), nc.this.g, 13).h();
                    return;
                } else {
                    nc.this.u();
                    return;
                }
            }
            if ("guest_bind".equals(aVar.a)) {
                hi.a().a((Activity) nc.this.a, nc.this.d.d(), nc.this.d.e, false, (Integer) 1);
                nc.this.c(false);
                return;
            }
            if ("mobile_manager".equals(aVar.a)) {
                b.a(nc.this.a, b.a.AlipayActivity, new com.netease.mpay.b.a(nc.this.d.d()), null, 12);
                return;
            }
            if ("mail".equals(aVar.a)) {
                b.a(nc.this.a, b.a.UserMessageCenterActivity, new com.netease.mpay.b.a(nc.this.d.d()), null, 8);
                return;
            }
            if ("feedback".equals(aVar.a)) {
                b.a(nc.this.a, b.a.FeedbackActivity, new com.netease.mpay.b.a(nc.this.d.d()), null, 14);
            } else if (!"logout".equals(aVar.a)) {
                b.a(nc.this.a, b.a.WebLinksActivity, new com.netease.mpay.b.ah(nc.this.d.d(), an.a.OUTGOING).b(aVar.a), null, 7);
            } else {
                hi.a().a((Activity) nc.this.a, nc.this.d.d(), false, true, false, nc.this.d.e, (Integer) 0);
                nc.this.c(false);
            }
        }
    }

    public nc(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.n = new nd(this);
        this.o = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(com.netease.mpay.b.al alVar, boolean z) {
        v();
        if (z && this.d.e != null) {
            this.d.e.onDialogFinish();
        }
        if (alVar != null) {
            alVar.a(this.a);
        } else {
            this.a.finish();
        }
    }

    private void a(com.netease.mpay.e.b.aj ajVar, com.netease.mpay.e.b.al alVar) {
        int i = 1;
        this.a.findViewById(RIdentifier.f.dl).setVisibility(8);
        this.a.findViewById(RIdentifier.f.dk).setVisibility(0);
        GridView gridView = (GridView) this.a.findViewById(RIdentifier.f.Z);
        Iterator it = ajVar.b.iterator();
        while (it.hasNext()) {
            if ("logout".equals(((aj.a) it.next()).a)) {
                it.remove();
            }
        }
        if (ajVar.b.size() > 0) {
            if (ajVar.b.size() > 1 && bj.a(this.d.c().mScreenOrientation)) {
                i = 2;
            }
            gridView.setVisibility(0);
            gridView.setNumColumns(i);
            gridView.setAdapter((ListAdapter) new nn(this.a, this.d.a(), this.g.c, ajVar, alVar, i, new a(this, null)).a());
        } else {
            gridView.setVisibility(8);
        }
        if (2 == this.g.f) {
            return;
        }
        if (this.i.s && (this.m == null || this.l == null)) {
            s();
        }
        if (this.i.f && com.netease.mpay.e.a.a.d(this.g.f) && this.h.a().a(this.g.c).d()) {
            new com.netease.mpay.f.y(this.a, this.d.a(), this.d.b(), y.a.PREFETCH_HISTORY, new nf(this)).h();
        }
    }

    private void b(boolean z) {
        com.netease.mpay.e.b.aj b = this.h.e().b(this.g.c);
        if (b == null || z) {
            new com.netease.mpay.f.ae(this.a, this.d.a(), this.d.b(), this).h();
        } else {
            a(b, this.h.e().c(this.g.c));
        }
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        a((com.netease.mpay.b.al) null, z);
    }

    private void s() {
        new com.netease.mpay.f.af(this.a, this.d.a(), this.d.b(), af.a.USER_INFO, new nh(this)).h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        ((TextView) this.a.findViewById(RIdentifier.f.ay)).setText(this.g.a);
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.aw);
        String str = this.l != null ? this.l : this.g.h;
        if (this.k && cq.c(str)) {
            textView.setVisibility(0);
            textView.setText(str);
        } else {
            textView.setVisibility(8);
        }
        ImageView imageView = (ImageView) this.a.findViewById(RIdentifier.f.cb);
        if (cq.c(this.i.t)) {
            imageView.setOnClickListener(new ni(this));
        }
        if (this.m == null && cq.c(this.g.i)) {
            int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(RIdentifier.d.i);
            this.m = com.netease.mpay.widget.bd.a(j.a.a(this.a, this.d.a(), this.g.i, dimensionPixelSize, dimensionPixelSize));
        }
        if (this.m != null) {
            imageView.setImageBitmap(this.m);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        this.h.c().a(this.g.c, this.g.f, this.g.a(true));
        b.a(this.a, b.a.PrepayChannelSelectorActivity, new com.netease.mpay.b.t(this.d.d(), new p.a(this.f, this.g.c, this.g.e, this.g.d, this.g.f, this.g.a), "manage"), null, 11);
    }

    private void v() {
        com.netease.mpay.e.b.ak d = this.h.e().d();
        if (d.a) {
            d.a = false;
            this.h.e().a(d);
        }
        r a2 = this.h.a().a(this.g.c);
        if (a2.c) {
            a2.c = false;
            this.h.a().a(this.g.c, a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (this.o) {
            return;
        }
        this.o = true;
        this.j.b(this.e.getString(RIdentifier.h.u), this.e.getString(RIdentifier.h.K), new nk(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (this.d.e != null) {
            this.d.e.onLogout(this.g.c);
        }
        hi.a().a((Activity) this.a, this.d.d(), false, false, false, this.d.e, (Integer) 0);
        c(false);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.k(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        switch (i) {
            case 0:
            case 1:
                a(alVar, false);
                return;
            case 8:
                if (alVar instanceof com.netease.mpay.b.ap) {
                    w();
                    return;
                } else {
                    new com.netease.mpay.f.y(this.a, this.d.a(), this.d.b(), y.a.UPLOAD_STATE, new nj(this)).h();
                    return;
                }
            case 11:
                if (alVar instanceof ar.c) {
                    x();
                    return;
                }
                return;
            default:
                if (alVar instanceof com.netease.mpay.b.ap) {
                    w();
                    return;
                }
                return;
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        boolean z = this.e.getBoolean(RIdentifier.b.a);
        if (this.k != z) {
            this.k = z;
            b(false);
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(b.a aVar, String str) {
        if (aVar.a()) {
            w();
            return;
        }
        com.netease.mpay.e.b.aj b = this.h.e().b(this.g.c);
        if (b != null) {
            a(b, this.h.e().c(this.g.c));
        } else {
            this.a.findViewById(RIdentifier.f.dl).setVisibility(8);
            this.j.b(str, this.a.getString(RIdentifier.h.cn), new ng(this));
        }
    }

    @Override // com.netease.mpay.f.a.b
    public void a(com.netease.mpay.server.response.ag agVar) {
        if (agVar == null) {
            return;
        }
        a(agVar.a, agVar.b);
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.j = new com.netease.mpay.widget.s(this.a);
        this.e = this.a.getResources();
        super.a(this.e.getString(RIdentifier.h.dA));
        if (this.d.a() == null || this.d.e == null) {
            a((com.netease.mpay.b.al) new com.netease.mpay.b.am(), true);
            return;
        }
        this.k = this.e.getBoolean(RIdentifier.b.a);
        this.h = new com.netease.mpay.e.b(this.a, this.d.a());
        this.f = this.h.d().a().j;
        this.g = this.h.c().b(this.d.b());
        if (this.g == null || !this.g.m || !this.g.l) {
            a((com.netease.mpay.b.al) new com.netease.mpay.b.am(), true);
            return;
        }
        this.i = this.h.e().a();
        this.a.setContentView(RIdentifier.g.t);
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.ay);
        textView.setText(this.g.a);
        textView.setOnClickListener(this.n);
        ((TextView) this.a.findViewById(RIdentifier.f.aw)).setOnClickListener(this.n);
        Button button = (Button) this.a.findViewById(RIdentifier.f.dc);
        if (button != null) {
            button.setOnClickListener(new ne(this));
        }
        View findViewById = this.a.findViewById(RIdentifier.f.dh);
        String str = 2 == this.g.f ? com.netease.mpay.server.response.u.a(this.a, this.d.a()).b(2).h : null;
        if (TextUtils.isEmpty(str)) {
            findViewById.setVisibility(8);
        } else {
            findViewById.setVisibility(0);
            TextView textView2 = (TextView) findViewById.findViewById(RIdentifier.f.dj);
            ImageView imageView = (ImageView) findViewById.findViewById(RIdentifier.f.di);
            textView2.setText(str);
            int lineHeight = textView2.getLineHeight();
            int dimensionPixelSize = this.a.getResources().getDimensionPixelSize(RIdentifier.d.s);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            if (lineHeight >= dimensionPixelSize) {
                layoutParams.topMargin = (lineHeight - dimensionPixelSize) / 2;
                layoutParams.width = dimensionPixelSize;
                layoutParams.height = dimensionPixelSize;
            } else {
                layoutParams.topMargin = 0;
                layoutParams.height = lineHeight;
                layoutParams.width = lineHeight;
            }
            imageView.setLayoutParams(layoutParams);
        }
        ((TextView) this.a.findViewById(RIdentifier.f.ax)).setText("2.14.1");
        this.a.findViewById(RIdentifier.f.dl).setVisibility(0);
        this.a.findViewById(RIdentifier.f.dk).setVisibility(8);
        b(true);
    }

    @Override // com.netease.mpay.a
    public void e() {
        super.e();
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.i.v) {
            com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.i.b, this.g.c, this.g.e, this.g.f, "user_index");
        }
    }

    @Override // com.netease.mpay.a
    public void h() {
        super.h();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        c(true);
        return true;
    }

    @Override // com.netease.mpay.a
    public boolean o() {
        super.o();
        c(true);
        return true;
    }
}
