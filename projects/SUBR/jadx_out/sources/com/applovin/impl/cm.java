package com.applovin.impl;

import android.net.Uri;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class cm extends bm {
    private final com.applovin.impl.sdk.ad.a r;
    private boolean s;
    private boolean t;

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        if (yp.h(com.applovin.impl.sdk.j.m())) {
            str = yp.c(str);
        }
        return this.r.isOpenMeasurementEnabled() ? this.a.V().a(str) : str;
    }

    private void m() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching HTML resources...");
        }
        this.r.b(d(a(a(this.r.l1(), this.r.m1(), this.r.t1(), this.r.Y(), this.r.u1()), this.r.Y(), this.r)));
        this.r.b(true);
        a(this.r);
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Finish caching non-video resources for ad #" + this.r.getAdIdNumber());
        }
        this.c.f(this.b, "Ad updated with cachedHTML = " + this.r.l1());
    }

    private e1 o() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching HTML resources...");
        }
        return a(this.r.l1(), this.r.Y(), new b());
    }

    public cm(com.applovin.impl.sdk.ad.a aVar, com.applovin.impl.sdk.j jVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", aVar, jVar, appLovinAdLoadListener);
        this.r = aVar;
    }

    public void c(boolean z) {
        this.s = z;
    }

    public void b(boolean z) {
        this.t = z;
    }

    @Override // com.applovin.impl.bm, java.lang.Runnable
    public void run() {
        super.run();
        boolean zK0 = this.r.K0();
        boolean z = this.t;
        if (!zK0 && !z) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Begin processing for non-streaming ad #" + this.r.getAdIdNumber() + "...");
            }
            if (((Boolean) this.a.a(sj.I0)).booleanValue()) {
                ArrayList arrayList = new ArrayList();
                if (!z3.f()) {
                    arrayList.addAll(e());
                }
                e1 e1VarO = o();
                if (e1VarO != null) {
                    arrayList.add(e1VarO);
                }
                f1 f1VarP = p();
                if (f1VarP != null) {
                    arrayList.add(f1VarP);
                }
                a(arrayList);
                f();
            } else {
                j();
                m();
                n();
                f();
            }
        } else {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Begin caching for streaming ad #" + this.r.getAdIdNumber() + "...");
            }
            if (((Boolean) this.a.a(sj.I0)).booleanValue()) {
                if (!z3.f()) {
                    a(e());
                }
                ArrayList arrayList2 = new ArrayList();
                if (zK0) {
                    if (this.s) {
                        f();
                        e1 e1VarO2 = o();
                        if (e1VarO2 != null) {
                            arrayList2.add(e1VarO2);
                        }
                        f1 f1VarP2 = p();
                        if (f1VarP2 != null) {
                            arrayList2.add(f1VarP2);
                        }
                    } else {
                        e1 e1VarO3 = o();
                        if (e1VarO3 != null) {
                            a(Arrays.asList(e1VarO3));
                        }
                        f();
                        f1 f1VarP3 = p();
                        if (f1VarP3 != null) {
                            arrayList2.add(f1VarP3);
                        }
                    }
                } else {
                    f();
                    e1 e1VarO4 = o();
                    if (e1VarO4 != null) {
                        arrayList2.add(e1VarO4);
                    }
                }
                a(arrayList2);
                f();
            } else {
                j();
                if (zK0) {
                    if (this.s) {
                        f();
                    }
                    m();
                    if (!this.s) {
                        f();
                    }
                    n();
                } else {
                    f();
                    m();
                }
            }
        }
        k();
    }

    private void n() {
        Uri uriC;
        if (l() || (uriC = c(this.r.q1())) == null) {
            return;
        }
        if (this.r.M0()) {
            this.r.b(this.r.l1().replaceFirst(this.r.o1(), uriC.toString()));
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Replaced video URL with cached video URI in HTML for web video ad");
            }
        }
        this.r.s1();
        this.r.d(uriC);
    }

    class a implements f1.a {
        a() {
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            if (uri != null) {
                if (cm.this.r.M0()) {
                    cm.this.r.b(cm.this.r.l1().replaceFirst(cm.this.r.o1(), uri.toString()));
                    com.applovin.impl.sdk.n nVar = cm.this.c;
                    if (com.applovin.impl.sdk.n.a()) {
                        cm cmVar = cm.this;
                        cmVar.c.a(cmVar.b, "Replaced video URL with cached video URI in HTML for web video ad");
                    }
                }
                cm.this.r.s1();
                cm.this.r.d(uri);
            }
        }
    }

    private f1 p() {
        return b(this.r.q1(), new a());
    }

    class b implements bm.e {
        b() {
        }

        @Override // com.applovin.impl.bm.e
        public void a(String str) {
            cm.this.r.b(cm.this.d(str));
            cm.this.r.b(true);
            com.applovin.impl.sdk.n nVar = cm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                cm cmVar = cm.this;
                cmVar.c.a(cmVar.b, "Finish caching non-video resources for ad #" + cm.this.r.getAdIdNumber());
            }
            cm cmVar2 = cm.this;
            cmVar2.c.f(cmVar2.b, "Ad updated with cachedHTML = " + cm.this.r.l1());
        }
    }
}
