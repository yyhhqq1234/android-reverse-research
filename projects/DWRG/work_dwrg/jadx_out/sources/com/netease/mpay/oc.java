package com.netease.mpay;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.dodola.rocoo.Hack;
import com.netease.mpay.b;
import com.netease.mpay.f.an;
import com.netease.mpay.sharer.ShareContent;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.b.c;
import java.util.Iterator;

/* loaded from: classes.dex */
public class oc extends com.netease.mpay.widget.b.c {
    private com.netease.mpay.b.ag e;
    private Resources f;
    private com.netease.mpay.widget.s g;
    private View h;
    private com.netease.mpay.e.b.u i;
    private boolean j;
    private boolean k;
    private final String l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface a {
        void a();

        void a(com.netease.mpay.e.b.u uVar, String str);

        void a(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b extends AsyncTask {
        com.netease.mpay.widget.av a;
        com.netease.mpay.c.a b;
        String c;
        String d;
        String e;
        String f;
        String g;

        public b(String str, String str2, String str3, String str4, String str5) {
            this.c = str;
            this.d = str2;
            this.e = str3;
            this.f = str4;
            this.g = str5;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Bitmap doInBackground(Void... voidArr) {
            return this.b.a(this.c);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Bitmap bitmap) {
            super.onPostExecute(bitmap);
            if (oc.this.a == null || oc.this.a.isFinishing()) {
                return;
            }
            this.a.dismiss();
            ShareContent shareContent = new ShareContent();
            shareContent.setType(2).setText(this.e).setTitle(this.d).setDesc(this.f).setWebUrl(this.g);
            shareContent.setThumb(bitmap).setImage(bitmap);
            com.netease.mpay.b.a(oc.this.a, b.a.ShareActivity, new com.netease.mpay.b.ab(oc.this.e.d(), com.netease.mpay.widget.bf.a(oc.this.a), shareContent, null), null, 1081);
            oc.this.a.overridePendingTransition(RIdentifier.a.f, 0);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            this.a = com.netease.mpay.widget.av.a(oc.this.a, false);
            this.a.show();
            this.b = new com.netease.mpay.c.a(oc.this.a, oc.this.e.a(), RIdentifier.e.A);
        }
    }

    public oc(FragmentActivity fragmentActivity) {
        super(fragmentActivity);
        this.l = "ticket";
        this.j = false;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.netease.mpay.f.an a(String str, String str2) {
        if (str == null) {
            return null;
        }
        String str3 = str + (str.contains("?") ? com.alipay.sdk.sys.a.b : "?") + (str2 != null ? "inner=1" + com.alipay.sdk.sys.a.b + "ticket=" + str2 : "inner=1");
        Cdo.a("loadURL: " + str3);
        return new com.netease.mpay.f.an(this.a, this.e.a(), this.e.b(), an.a.LINK_URL).d(str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.netease.mpay.e.b bVar, com.netease.mpay.e.b.w wVar, com.netease.mpay.e.b.o oVar, String str, com.netease.mpay.e.b.u uVar, a aVar) {
        if (uVar.e == 0) {
            uVar.e = 1;
            bVar.b().a(oVar.c, wVar);
            com.netease.mpay.e.b.v vVar = new com.netease.mpay.e.b.v();
            vVar.a = uVar.a;
            vVar.b = uVar.e;
            bVar.a().a(oVar.c, vVar);
        }
        if (aVar != null) {
            aVar.a(uVar, str);
        }
    }

    private void a(a aVar) {
        com.netease.mpay.e.b bVar = new com.netease.mpay.e.b(this.a, this.e.a());
        com.netease.mpay.e.b.o b2 = bVar.c().b(this.e.b());
        com.netease.mpay.e.b.w a2 = bVar.b().a(b2.c);
        Iterator it = a2.a.iterator();
        while (it.hasNext()) {
            com.netease.mpay.e.b.u uVar = (com.netease.mpay.e.b.u) it.next();
            if (uVar.a.equals(this.e.a)) {
                if (uVar.g) {
                    new com.netease.mpay.f.ad(this.a, this.e.a(), this.e.b(), new og(this, bVar, a2, b2, uVar, aVar)).d().h();
                } else {
                    a(bVar, a2, b2, null, uVar, aVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if (this.a.isFinishing()) {
            return;
        }
        new com.netease.mpay.b.ap().a(this.a);
    }

    @Override // com.netease.mpay.a
    protected com.netease.mpay.b.a a(Intent intent) {
        this.e = new com.netease.mpay.b.ag(intent);
        return this.e;
    }

    @Override // com.netease.mpay.widget.b.c, com.netease.mpay.a
    public void b(Bundle bundle) {
        super.b(bundle);
        this.f = this.a.getResources();
        super.a(this.f.getString(RIdentifier.h.dm));
        this.g = new com.netease.mpay.widget.s(this.a);
        this.k = false;
    }

    @Override // com.netease.mpay.a
    public void f() {
        super.f();
        if (this.k) {
            return;
        }
        this.k = true;
        a(new od(this));
    }

    @Override // com.netease.mpay.a
    public boolean n() {
        super.n();
        if (!a(RIdentifier.g.c)) {
            return false;
        }
        this.h = this.a.findViewById(RIdentifier.f.p);
        this.h.setVisibility(this.j ? 0 : 8);
        this.h.setOnClickListener(new of(this));
        return true;
    }

    @Override // com.netease.mpay.widget.b.c
    protected c.e s() {
        return new c.e(this.e.d());
    }
}
