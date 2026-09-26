package com.netease.mpay;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.widget.ImageView;
import android.widget.TextView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.i;
import com.netease.mpay.widget.RIdentifier;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ce extends com.netease.mpay.a {
    private static final Boolean d = false;
    private static ExitCallback j;
    private com.netease.mpay.b.k e;
    private com.netease.mpay.e.b.af f;
    private a g;
    private ArrayList h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {
        String a;
        String b;
        int c;

        public a(String str, String str2, int i) {
            this.a = str;
            this.b = str2;
            this.c = i;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    public ce(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.i = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(ImageView imageView, i.a aVar, int i) {
        imageView.setImageBitmap(com.netease.mpay.widget.z.a(this.a, new File(com.netease.mpay.e.c.j.a() + com.netease.mpay.widget.bd.b(com.netease.mpay.widget.bd.a(aVar.b.getBytes())))));
        imageView.setOnClickListener(new cj(this, i, aVar));
    }

    public static void a(ExitCallback exitCallback) {
        j = exitCallback;
    }

    private void s() {
        TextView textView = (TextView) this.a.findViewById(RIdentifier.f.h);
        ((TextView) this.a.findViewById(RIdentifier.f.g)).setText(cq.a(this.a, this.e.a(), RIdentifier.h.av));
        try {
            PackageManager packageManager = this.a.getApplicationContext().getPackageManager();
            textView.setText(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.a.getPackageName(), 0)));
        } catch (PackageManager.NameNotFoundException e) {
        }
        this.a.findViewById(RIdentifier.f.aP).setOnClickListener(new cf(this));
        this.a.findViewById(RIdentifier.f.aO).setOnClickListener(new ch(this));
        t();
    }

    private void t() {
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.e.a());
        this.f = bVar.e().a();
        com.netease.mpay.e.b.o b = bVar.c().b(this.e.b());
        this.g = (b == null || !b.m) ? new a("", "", 2) : new a(b.c, b.e, b.f);
        com.netease.mpay.e.b.i iVar = null;
        if (b != null && b.m) {
            iVar = bVar.g().a(b.c);
        }
        if (iVar == null || !com.netease.mpay.e.c.f.a(iVar, this.a, this.e.a())) {
            iVar = this.f.k;
        }
        if (iVar == null || iVar.b == null || iVar.b.size() <= 0 || !com.netease.mpay.e.c.f.a(iVar, this.a, this.e.a())) {
            u();
            return;
        }
        this.h = iVar.b;
        if (this.h.size() == 1) {
            this.a.findViewById(RIdentifier.f.b).setVisibility(0);
            this.a.findViewById(RIdentifier.f.c).setVisibility(8);
            a((ImageView) this.a.findViewById(RIdentifier.f.d), (i.a) this.h.get(0), 0);
        }
        if (this.h.size() == 2) {
            this.a.findViewById(RIdentifier.f.b).setVisibility(8);
            this.a.findViewById(RIdentifier.f.c).setVisibility(0);
            a((ImageView) this.a.findViewById(RIdentifier.f.e), (i.a) this.h.get(0), 1);
            a((ImageView) this.a.findViewById(RIdentifier.f.f), (i.a) this.h.get(1), 2);
        }
    }

    private void u() {
        this.h = v();
        this.a.findViewById(RIdentifier.f.b).setVisibility(0);
        this.a.findViewById(RIdentifier.f.c).setVisibility(8);
        ((ImageView) this.a.findViewById(RIdentifier.f.d)).setOnClickListener(new ci(this));
    }

    private ArrayList v() {
        ArrayList arrayList = new ArrayList();
        i.a aVar = new i.a();
        aVar.a = "";
        aVar.b = "";
        aVar.c = "yxzx";
        arrayList.add(aVar);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        synchronized (d) {
            if (this.i && j != null) {
                Cdo.c("ExitCallback : onExit");
                this.i = false;
                j.onExit();
                hi.a().a(this.a);
                j = null;
            }
        }
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.k(intent);
        return this.e;
    }

    @Override // com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.e.a() == null) {
            new com.netease.mpay.b.am().a(this.a);
        } else {
            this.a.setContentView(RIdentifier.g.w);
            s();
        }
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.f == null || !this.f.v || this.g == null || this.h == null) {
            return;
        }
        com.netease.mpay.widget.ay.a(this.a, bk.k).a(this.a, this.f.b, this.g.a, this.g.b, this.g.c, this.h.size() == 1 ? "tctc_1" : "tctc_2");
    }

    @Override // com.netease.mpay.a
    public boolean l() {
        new com.netease.mpay.b.am().a(this.a);
        if (this.e.e != null) {
            Cdo.c("AuthenticationCallback : onDialogFinish");
            this.e.e.onDialogFinish();
        }
        if (j == null) {
            return true;
        }
        Cdo.c("ExitCallback : onCancel");
        j.onCancel();
        j = null;
        return true;
    }

    @Override // com.netease.mpay.a
    public void r() {
        Cdo.c("ExitDialogActivity : onDetachedFromWindow");
        super.r();
        w();
    }
}
