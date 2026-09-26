package com.netease.mpay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.alipay.android.phone.mrpc.core.RpcException;
import com.dodola.rocoo.Hack;
import com.netease.mpay.server.response.s;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.bf;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ah extends com.netease.mpay.a {
    private com.netease.mpay.b.c d;
    private Resources e;
    private com.netease.mpay.e.b f;
    private ImageView g;
    private com.netease.mpay.e.b.o h;
    private GridView i;
    private int j;
    private com.netease.mpay.widget.s k;
    private boolean l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends BaseAdapter {
        private ArrayList b;

        /* renamed from: com.netease.mpay.ah$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private class C0032a extends bf.c {
            b a;

            C0032a(b bVar) {
                this.a = bVar;
                if (Boolean.FALSE.booleanValue()) {
                    System.out.println(Hack.class);
                }
            }

            @Override // com.netease.mpay.widget.bf.c
            protected void a(View view) {
                switch (this.a.a) {
                    case 1:
                        ah.this.w();
                        return;
                    case 2:
                    case 3:
                    case 6:
                    default:
                        return;
                    case 4:
                        ah.this.u();
                        return;
                    case 5:
                        ah.this.v();
                        return;
                    case 7:
                        ah.this.x();
                        return;
                }
            }
        }

        public a(ArrayList arrayList) {
            this.b = arrayList;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        @Override // android.widget.Adapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public b getItem(int i) {
            return (b) this.b.get(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.b == null) {
                return 0;
            }
            return this.b.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(ah.this.a).inflate(RIdentifier.g.C, viewGroup, false);
            }
            b item = getItem(i);
            com.netease.mpay.server.response.s a = com.netease.mpay.server.response.u.a(ah.this.a, ah.this.d.a()).a(item.a);
            ImageView imageView = (ImageView) view.findViewById(RIdentifier.f.aA);
            a.a(ah.this.a, ah.this.d.a(), imageView);
            imageView.setOnClickListener(new C0032a(item));
            ((TextView) view.findViewById(RIdentifier.f.aC)).setText(a.a(ah.this.a));
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {
        int a;

        b(int i) {
            this.a = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public ah(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.l = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(com.netease.mpay.b.ao aoVar) {
        if (aoVar.b) {
            aoVar.a(this.a);
            return;
        }
        if (this.d.e != null) {
            this.d.e.onGuestBindSuccess(new User(aoVar));
        }
        aoVar.a().a(this.a);
    }

    private void a(String str, int i) {
        if (this.k == null) {
            this.k = new com.netease.mpay.widget.s(this.a);
        }
        this.k.a(str);
    }

    private void s() {
        this.j = this.a.getResources().getConfiguration().orientation;
        this.l = this.j == 2;
        this.a.setContentView(RIdentifier.g.x);
        this.g = (ImageView) this.a.findViewById(RIdentifier.f.ar);
        this.e = this.a.getResources();
        this.i = (GridView) this.a.findViewById(RIdentifier.f.E);
        if (this.d.a == 1 && this.d.e == null) {
            new com.netease.mpay.b.am().a(this.a);
        } else {
            this.f = new com.netease.mpay.e.b(this.a, this.d.a());
            this.h = this.f.c().b(this.d.b());
        }
    }

    private void t() {
        this.g.setOnClickListener(new ai(this));
        if (this.d.a == 1) {
            this.g.setVisibility(8);
        } else {
            this.g.setVisibility(0);
        }
        this.a.findViewById(RIdentifier.f.at).setOnClickListener(new aj(this));
        ArrayList arrayList = new ArrayList();
        Iterator it = com.netease.mpay.server.response.u.a(this.a, this.d.a()).b(this.a, this.d.a()).iterator();
        while (it.hasNext()) {
            s.a aVar = (s.a) it.next();
            if (aVar != null && aVar.a != null) {
                Iterator it2 = aVar.a.iterator();
                while (it2.hasNext()) {
                    switch (((com.netease.mpay.server.response.s) it2.next()).a) {
                        case 1:
                            if (3 == this.d.a) {
                                break;
                            } else {
                                arrayList.add(new b(1));
                                break;
                            }
                        case 4:
                            arrayList.add(new b(4));
                            break;
                        case 5:
                            arrayList.add(new b(5));
                            break;
                        case 7:
                            if (2 == this.d.a) {
                                break;
                            } else {
                                arrayList.add(new b(7));
                                break;
                            }
                    }
                }
            }
        }
        this.i.setAdapter((ListAdapter) new a(arrayList));
        int size = arrayList.size();
        if (this.j == 2 || size < 4) {
            this.i.setNumColumns(size);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        Cdo.a("on Facebook binding");
        if (com.netease.mpay.widget.aq.d(this.a)) {
            hi.a().a((Activity) this.a, this.d.d(), (Integer) 4);
        } else {
            a(this.e.getString(RIdentifier.h.cj), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        Cdo.a("on Google binding");
        if (com.netease.mpay.widget.aq.d(this.a)) {
            hi.a().b(this.a, this.d.d(), 5);
        } else {
            a(this.e.getString(RIdentifier.h.cj), RpcException.ErrorCode.SERVER_SESSIONSTATUS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        hi.a().b(this.a, this.d.d(), 4, this.d.e, 6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        hi.a().c(this.a, this.d.d(), 4, this.d.e, 7);
    }

    private void y() {
        new com.netease.mpay.widget.s(this.a).b(this.e.getString(RIdentifier.h.u), this.e.getString(RIdentifier.h.K), new ak(this));
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.d = new com.netease.mpay.b.c(intent);
        return this.d;
    }

    @Override // com.netease.mpay.a
    public void a(int i, int i2, Intent intent, com.netease.mpay.b.al alVar) {
        super.a(i, i2, intent, alVar);
        if (i == 4 || i == 5 || i == 6 || i == 7) {
            if (alVar instanceof com.netease.mpay.b.ao) {
                a((com.netease.mpay.b.ao) alVar);
                return;
            }
            if ((alVar instanceof com.netease.mpay.b.ap) || (alVar instanceof com.netease.mpay.b.au)) {
                if (this.d.e != null) {
                    this.d.e.onDialogFinish();
                }
                alVar.a(this.a);
            } else if (alVar instanceof com.netease.mpay.b.an) {
                if (((com.netease.mpay.b.an) alVar).c) {
                    y();
                } else {
                    a(((com.netease.mpay.b.an) alVar).b, RpcException.ErrorCode.SERVER_SESSIONSTATUS);
                }
            }
        }
    }

    @Override // com.netease.mpay.a
    public void a(Configuration configuration) {
        super.a(configuration);
        if (this.l != (this.a.getResources().getConfiguration().orientation == 2)) {
            s();
            t();
        }
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (m()) {
            return;
        }
        s();
        t();
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        if (this.d.a == 1 && this.d.e != null) {
            this.d.e.onDialogFinish();
        }
        return super.l();
    }
}
