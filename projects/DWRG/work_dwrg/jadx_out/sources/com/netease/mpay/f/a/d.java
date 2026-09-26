package com.netease.mpay.f.a;

import android.app.Activity;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.dodola.rocoo.Hack;
import com.netease.mpay.e.b.o;
import com.netease.mpay.f.a.a;
import com.netease.mpay.f.a.b;
import com.netease.mpay.f.an;
import com.netease.mpay.server.a;
import com.netease.mpay.server.a.j;
import com.netease.mpay.server.a.l;
import com.netease.mpay.widget.RIdentifier;
import com.netease.mpay.widget.av;
import com.netease.mpay.widget.s;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class d {
    protected Activity c;
    protected String d;
    protected String e;
    protected com.netease.mpay.f.a.b f;
    e g = null;
    boolean h = false;
    boolean i = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a extends AsyncTask {
        av a;

        private a() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ a(d dVar, com.netease.mpay.f.a.e eVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a.b doInBackground(Void... voidArr) {
            return d.this.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(a.b bVar) {
            super.onPostExecute(bVar);
            if (d.this.c == null || d.this.c.isFinishing()) {
                return;
            }
            if (this.a != null && this.a.isShowing()) {
                this.a.dismiss();
                this.a = null;
            }
            d.this.b(bVar, d.this.f);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            if (d.this.g != null && d.this.c != null && !d.this.c.isFinishing()) {
                switch (g.a[d.this.g.a.ordinal()]) {
                    case 1:
                        WebView webView = new WebView(d.this.c);
                        webView.getSettings().setDefaultTextEncodingName("UTF-8");
                        webView.setScrollBarStyle(0);
                        d.this.c.setContentView(webView, new ViewGroup.LayoutParams(-1, -1));
                        webView.loadUrl("file:///android_asset/netease_mpay/loading.html");
                        break;
                    case 2:
                        this.a = av.a(d.this.c, false);
                        this.a.show();
                        break;
                }
            }
            d.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        private b() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        /* synthetic */ b(d dVar, com.netease.mpay.f.a.e eVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            a.b b = d.this.b();
            if (d.this.c != null) {
                d.this.c.runOnUiThread(new h(this, b));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum c {
        LOGOUT_USER,
        LOGOUT_GUEST_UDID,
        LOGOUT_DEVICE;

        c() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* renamed from: com.netease.mpay.f.a.d$d, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0045d {
        public com.netease.mpay.e.b a;
        protected o b;
        private com.netease.mpay.e.b.f d;
        private final Boolean e = true;

        protected C0045d() {
            this.a = new com.netease.mpay.e.b(d.this.c, d.this.d);
            this.b = this.a.c().b(d.this.e);
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }

        public com.netease.mpay.e.b.f a() {
            synchronized (this.e) {
                if (this.d == null) {
                    this.d = this.a.d().a();
                }
            }
            if (this.d.i == null || TextUtils.isEmpty(this.d.j) || TextUtils.isEmpty(this.d.k)) {
                throw new a.b(d.this.c.getString(RIdentifier.h.u));
            }
            return this.d;
        }

        public void a(o oVar) {
            this.b = oVar;
        }

        public com.netease.mpay.e.b.f b() {
            synchronized (this.e) {
                String a = this.a.e().a(d.this.c);
                if (this.d == null) {
                    com.netease.mpay.e.b.f a2 = this.a.d().a();
                    if (a2.i == null || TextUtils.isEmpty(a2.j) || TextUtils.isEmpty(a2.k)) {
                        com.netease.mpay.server.response.f fVar = (com.netease.mpay.server.response.f) new com.netease.mpay.server.d(d.this.c, d.this.d, d.this.e).a(new j(d.this.d, a2, a));
                        a2.j = fVar.b;
                        a2.i = fVar.c;
                        a2.k = fVar.a;
                        this.a.d().a(a2);
                    }
                    this.d = a2;
                }
                if (this.d.a(d.this.c)) {
                    com.netease.mpay.server.response.g gVar = (com.netease.mpay.server.response.g) new com.netease.mpay.server.d(d.this.c, d.this.d, d.this.e).a(new l(this.d.j, this.d, a));
                    this.d.o = gVar.a;
                    this.a.d().a(this.d);
                }
            }
            return this.d;
        }

        public void b(o oVar) {
            this.b = oVar;
        }

        public o c() {
            return this.b;
        }
    }

    /* loaded from: classes.dex */
    private class e {
        f a;

        e(f fVar) {
            this.a = fVar;
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* loaded from: classes.dex */
    protected enum f {
        LOADING_PAGE,
        PROGRESS_DIALOG;

        f() {
            if (Boolean.FALSE.booleanValue()) {
                System.out.println(Hack.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Activity activity, String str, String str2, com.netease.mpay.f.a.b bVar) {
        this.c = activity;
        this.d = str;
        this.e = str2;
        this.f = bVar;
        if (Boolean.FALSE.booleanValue()) {
            System.out.println(Hack.class);
        }
    }

    private void a(C0045d c0045d, c cVar) {
        switch (g.b[cVar.ordinal()]) {
            case 1:
                c0045d.a.d().b();
                c0045d.a.c().c();
                return;
            case 2:
                c0045d.a.k().a();
                Iterator it = c0045d.a.c().a(2).iterator();
                while (it.hasNext()) {
                    o oVar = (o) it.next();
                    if (!TextUtils.isEmpty(oVar.d)) {
                        c0045d.a.c().b(oVar.c, oVar.d);
                    }
                }
                return;
            case 3:
                if (c0045d.b != null) {
                    c0045d.a.c().b(c0045d.b.c, c0045d.b.d);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.netease.mpay.f.a.a.b b() {
        /*
            r6 = this;
            r2 = 1
            com.netease.mpay.f.a.d$d r4 = new com.netease.mpay.f.a.d$d
            r4.<init>()
            java.lang.Object r0 = r6.b(r4)     // Catch: com.netease.mpay.server.a -> L14
            com.netease.mpay.f.a.a$b r1 = new com.netease.mpay.f.a.a$b     // Catch: com.netease.mpay.server.a -> L14
            r1.<init>()     // Catch: com.netease.mpay.server.a -> L14
            com.netease.mpay.f.a.a$b r0 = r1.a(r0)     // Catch: com.netease.mpay.server.a -> L14
        L13:
            return r0
        L14:
            r0 = move-exception
            r3 = 0
            com.netease.mpay.f.a.d$c r1 = com.netease.mpay.f.a.d.c.LOGOUT_USER
            boolean r5 = r0 instanceof com.netease.mpay.server.a.f
            if (r5 == 0) goto L4b
            com.netease.mpay.f.a.d$c r1 = com.netease.mpay.f.a.d.c.LOGOUT_USER
        L1e:
            if (r2 == 0) goto L60
            boolean r2 = r6.i
            if (r2 == 0) goto L5d
            com.netease.mpay.server.a r1 = new com.netease.mpay.server.a
            java.lang.String r0 = r0.a()
            r1.<init>(r0)
        L2d:
            r0 = 0
            boolean r2 = r1 instanceof com.netease.mpay.server.a.p
            if (r2 == 0) goto L37
            r0 = r1
            com.netease.mpay.server.a$p r0 = (com.netease.mpay.server.a.p) r0
            com.netease.mpay.server.a$q r0 = r0.a
        L37:
            com.netease.mpay.f.a.a$a r2 = com.netease.mpay.f.a.a.a(r1)
            if (r2 != 0) goto L62
            com.netease.mpay.f.a.a$b r2 = new com.netease.mpay.f.a.a$b
            r2.<init>()
            java.lang.String r1 = r1.a()
            com.netease.mpay.f.a.a$b r0 = r2.a(r1, r0)
            goto L13
        L4b:
            boolean r5 = r0 instanceof com.netease.mpay.server.a.b
            if (r5 == 0) goto L52
            com.netease.mpay.f.a.d$c r1 = com.netease.mpay.f.a.d.c.LOGOUT_DEVICE
            goto L1e
        L52:
            boolean r5 = r0 instanceof com.netease.mpay.server.a.l
            if (r5 != 0) goto L5a
            boolean r5 = r0 instanceof com.netease.mpay.server.a.m
            if (r5 == 0) goto L70
        L5a:
            com.netease.mpay.f.a.d$c r1 = com.netease.mpay.f.a.d.c.LOGOUT_GUEST_UDID
            goto L1e
        L5d:
            r6.a(r4, r1)
        L60:
            r1 = r0
            goto L2d
        L62:
            com.netease.mpay.f.a.a$b r3 = new com.netease.mpay.f.a.a$b
            r3.<init>()
            java.lang.String r1 = r1.a()
            com.netease.mpay.f.a.a$b r0 = r3.a(r2, r1, r0)
            goto L13
        L70:
            r2 = r3
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.mpay.f.a.d.b():com.netease.mpay.f.a.a$b");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        if (a.EnumC0044a.MOBILE_FROZEN == bVar.c || a.EnumC0044a.MOBILE_LOCKED == bVar.c) {
            an.a aVar = a.EnumC0044a.MOBILE_FROZEN == bVar.c ? an.a.OFFLINE_ACCOUNT_APPEAL : an.a.OFFLINE_ACCOUNT_UNLOCK;
            new s(this.c).a(bVar.d, aVar.a(this.c), new com.netease.mpay.f.a.e(this, aVar), this.c.getString(RIdentifier.h.g), new com.netease.mpay.f.a.f(this), false);
        }
        a(bVar, bVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(a.b bVar, com.netease.mpay.f.a.b bVar2) {
        if (bVar2 == null) {
            return;
        }
        if (bVar.a) {
            bVar2.a(bVar.b);
        } else {
            bVar2.a(b.a.a(bVar.c), bVar.d);
        }
    }

    protected abstract Object b(C0045d c0045d);

    /* JADX INFO: Access modifiers changed from: protected */
    public d c() {
        this.g = new e(f.PROGRESS_DIALOG);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d d() {
        this.g = new e(f.LOADING_PAGE);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        this.h = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        this.i = true;
    }

    public void h() {
        com.netease.mpay.f.a.e eVar = null;
        if (this.h) {
            new Thread(new b(this, eVar)).start();
        } else {
            new a(this, eVar).execute(new Void[0]);
        }
    }
}
