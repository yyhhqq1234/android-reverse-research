package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
class dm extends bm {
    private final aq r;

    public dm(aq aqVar, com.applovin.impl.sdk.j jVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", aqVar, jVar, appLovinAdLoadListener);
        this.r = aqVar;
    }

    @Override // com.applovin.impl.bm, java.lang.Runnable
    public void run() {
        super.run();
        boolean zK0 = this.r.K0();
        if (com.applovin.impl.sdk.n.a()) {
            com.applovin.impl.sdk.n nVar = this.c;
            String str = this.b;
            StringBuilder sb = new StringBuilder("Begin caching for VAST ");
            sb.append(zK0 ? "streaming " : "");
            sb.append("ad #");
            sb.append(this.h.getAdIdNumber());
            sb.append("...");
            nVar.a(str, sb.toString());
        }
        if (zK0) {
            if (((Boolean) this.a.a(sj.I0)).booleanValue()) {
                if (!z3.f()) {
                    a(e());
                }
                if (this.r.y1()) {
                    f();
                    ArrayList arrayList = new ArrayList();
                    d1 d1VarP = p();
                    if (d1VarP != null) {
                        arrayList.add(d1VarP);
                    }
                    e1 e1VarQ = q();
                    if (e1VarQ != null) {
                        arrayList.add(e1VarQ);
                    }
                    f1 f1VarR = r();
                    if (f1VarR != null) {
                        arrayList.add(f1VarR);
                    }
                    a(arrayList);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    if (this.r.p1() == aq.c.COMPANION_AD) {
                        d1 d1VarP2 = p();
                        if (d1VarP2 != null) {
                            arrayList2.add(d1VarP2);
                        }
                        e1 e1VarQ2 = q();
                        if (e1VarQ2 != null) {
                            arrayList2.add(e1VarQ2);
                        }
                        a(arrayList2);
                        f();
                        f1 f1VarR2 = r();
                        if (f1VarR2 != null) {
                            arrayList3.add(f1VarR2);
                        }
                        a(arrayList3);
                    } else {
                        f1 f1VarR3 = r();
                        if (f1VarR3 != null) {
                            arrayList2.add(f1VarR3);
                        }
                        a(arrayList2);
                        f();
                        d1 d1VarP3 = p();
                        if (d1VarP3 != null) {
                            arrayList3.add(d1VarP3);
                        }
                        e1 e1VarQ3 = q();
                        if (e1VarQ3 != null) {
                            arrayList3.add(e1VarQ3);
                        }
                        a(arrayList3);
                    }
                }
            } else {
                j();
                if (this.r.y1()) {
                    f();
                }
                aq.c cVarP1 = this.r.p1();
                aq.c cVar = aq.c.COMPANION_AD;
                if (cVarP1 == cVar) {
                    m();
                    n();
                    a(this.r);
                } else {
                    o();
                }
                if (!this.r.y1()) {
                    f();
                }
                if (this.r.p1() == cVar) {
                    o();
                } else {
                    m();
                    n();
                    a(this.r);
                }
            }
        } else if (((Boolean) this.a.a(sj.I0)).booleanValue()) {
            ArrayList arrayList4 = new ArrayList();
            if (!z3.f()) {
                arrayList4.addAll(e());
            }
            d1 d1VarP4 = p();
            if (d1VarP4 != null) {
                arrayList4.add(d1VarP4);
            }
            f1 f1VarR4 = r();
            if (f1VarR4 != null) {
                arrayList4.add(f1VarR4);
            }
            e1 e1VarQ4 = q();
            if (e1VarQ4 != null) {
                arrayList4.add(e1VarQ4);
            }
            a(arrayList4);
            f();
        } else {
            j();
            m();
            o();
            n();
            a(this.r);
            f();
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Finished caching VAST ad #" + this.r.getAdIdNumber());
        }
        this.r.z1();
        k();
    }

    private void m() {
        if (l()) {
            return;
        }
        if (this.r.A1()) {
            dq dqVarL1 = this.r.l1();
            if (dqVarL1 != null) {
                iq iqVarE = dqVarL1.e();
                if (iqVarE != null) {
                    Uri uriC = iqVarE.c();
                    String string = uriC != null ? uriC.toString() : "";
                    String strB = iqVarE.b();
                    if (!URLUtil.isValidUrl(string) && !StringUtils.isValidString(strB)) {
                        if (com.applovin.impl.sdk.n.a()) {
                            this.c.k(this.b, "Companion ad does not have any resources attached. Skipping...");
                            return;
                        }
                        return;
                    }
                    if (iqVarE.d() == iq.a.STATIC) {
                        if (com.applovin.impl.sdk.n.a()) {
                            this.c.a(this.b, "Caching static companion ad at " + string + "...");
                        }
                        Uri uriA = a(string, Collections.emptyList(), false);
                        if (uriA != null) {
                            iqVarE.a(uriA);
                            this.r.b(true);
                            return;
                        } else {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.c.b(this.b, "Failed to cache static companion ad");
                                return;
                            }
                            return;
                        }
                    }
                    if (iqVarE.d() == iq.a.HTML) {
                        if (StringUtils.isValidString(string)) {
                            if (com.applovin.impl.sdk.n.a()) {
                                this.c.a(this.b, "Begin caching HTML companion ad. Fetching from " + string + "...");
                            }
                            String strD = d(string, null, false);
                            if (StringUtils.isValidString(strD)) {
                                if (com.applovin.impl.sdk.n.a()) {
                                    this.c.a(this.b, "HTML fetched. Caching HTML now...");
                                }
                                iqVarE.a(a(strD, Collections.emptyList(), this.r));
                                this.r.b(true);
                                return;
                            }
                            if (com.applovin.impl.sdk.n.a()) {
                                this.c.b(this.b, "Unable to load companion ad resources from " + string);
                                return;
                            }
                            return;
                        }
                        if (com.applovin.impl.sdk.n.a()) {
                            this.c.a(this.b, "Caching provided HTML for companion ad. No fetch required. HTML: " + strB);
                        }
                        if (((Boolean) this.a.a(sj.W4)).booleanValue()) {
                            strB = d(strB);
                        }
                        iqVarE.a(a(strB, Collections.emptyList(), this.r));
                        this.r.b(true);
                        return;
                    }
                    if (iqVarE.d() == iq.a.IFRAME && com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Skip caching of iFrame resource...");
                        return;
                    }
                    return;
                }
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.b(this.b, "Failed to retrieve non-video resources from companion ad. Skipping...");
                    return;
                }
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "No companion ad provided. Skipping...");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Companion ad caching disabled. Skipping...");
        }
    }

    private void o() {
        oq oqVarW1;
        Uri uriE;
        if (l()) {
            return;
        }
        if (this.r.B1()) {
            if (this.r.v1() == null || (oqVarW1 = this.r.w1()) == null || (uriE = oqVarW1.e()) == null) {
                return;
            }
            Uri uriC = c(uriE.toString(), Collections.emptyList(), false);
            if (uriC != null) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Video file successfully cached into: " + uriC);
                }
                oqVarW1.a(uriC);
                return;
            }
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Failed to cache video file: " + oqVarW1);
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Video caching disabled. Skipping...");
        }
    }

    private void n() {
        String strN1;
        if (l() || !mq.a(this.r)) {
            return;
        }
        if (this.r.o1() != null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Begin caching HTML template. Fetching from " + this.r.o1() + "...");
            }
            strN1 = b(this.r.o1().toString(), this.r.Y(), true);
        } else {
            strN1 = this.r.n1();
        }
        if (StringUtils.isValidString(strN1)) {
            String strA = a(strN1, this.r.Y(), this.h);
            if (this.r.isOpenMeasurementEnabled()) {
                strA = this.a.V().a(strA);
            }
            this.r.b(strA);
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Finish caching HTML template " + this.r.n1() + " for ad #" + this.r.getAdIdNumber());
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Unable to load HTML template");
        }
    }

    private String d(String str) {
        for (String str2 : StringUtils.getRegexMatches(StringUtils.match(str, (String) this.a.a(sj.Y4)), 1)) {
            if (!TextUtils.isEmpty(str2)) {
                Uri uriA = a(str2, Collections.emptyList(), false);
                if (uriA != null) {
                    str = str.replace(str2, uriA.toString());
                    this.h.a(uriA);
                    this.i.d();
                } else {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.b(this.b, "Failed to cache JavaScript resource: " + str2);
                    }
                    this.i.c();
                }
            }
        }
        return str;
    }

    private d1 p() {
        if (!this.r.A1()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Companion ad caching disabled. Skipping...");
            }
            return null;
        }
        dq dqVarL1 = this.r.l1();
        if (dqVarL1 == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "No companion ad provided. Skipping...");
            }
            return null;
        }
        iq iqVarE = dqVarL1.e();
        if (iqVarE == null) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Failed to retrieve non-video resources from companion ad. Skipping...");
            }
            return null;
        }
        Uri uriC = iqVarE.c();
        String string = uriC != null ? uriC.toString() : "";
        String strB = iqVarE.b();
        if (!URLUtil.isValidUrl(string) && !StringUtils.isValidString(strB)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.k(this.b, "Companion ad does not have any resources attached. Skipping...");
            }
        } else {
            if (iqVarE.d() == iq.a.STATIC) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Caching static companion ad at " + string + "...");
                }
                return new f1(string, this.r, Collections.emptyList(), false, this.i, this.a, new a(iqVarE));
            }
            if (iqVarE.d() == iq.a.HTML) {
                if (StringUtils.isValidString(string)) {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Begin caching HTML companion ad. Fetching from " + string + "...");
                    }
                    String strD = d(string, null, false);
                    if (StringUtils.isValidString(strD)) {
                        if (com.applovin.impl.sdk.n.a()) {
                            this.c.a(this.b, "HTML fetched. Caching HTML now...");
                        }
                        return a(strD, Collections.emptyList(), new b(iqVarE));
                    }
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.b(this.b, "Unable to load companion ad resources from " + string);
                    }
                } else {
                    if (com.applovin.impl.sdk.n.a()) {
                        this.c.a(this.b, "Caching provided HTML for companion ad. No fetch required. HTML: " + strB);
                    }
                    return a(strB, Collections.emptyList(), new c(iqVarE));
                }
            } else if (iqVarE.d() == iq.a.IFRAME && com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Skip caching of iFrame resource...");
            }
        }
        return null;
    }

    class a implements f1.a {
        final /* synthetic */ iq a;

        a(iq iqVar) {
            this.a = iqVar;
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            if (uri != null) {
                this.a.a(uri);
                dm.this.r.b(true);
                return;
            }
            com.applovin.impl.sdk.n nVar = dm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                dm dmVar = dm.this;
                dmVar.c.b(dmVar.b, "Failed to cache static companion ad");
            }
        }
    }

    class b implements bm.e {
        final /* synthetic */ iq a;

        b(iq iqVar) {
            this.a = iqVar;
        }

        @Override // com.applovin.impl.bm.e
        public void a(String str) {
            this.a.a(str);
            dm.this.r.b(true);
        }
    }

    class c implements bm.e {
        final /* synthetic */ iq a;

        c(iq iqVar) {
            this.a = iqVar;
        }

        @Override // com.applovin.impl.bm.e
        public void a(String str) {
            this.a.a(str);
            dm.this.r.b(true);
        }
    }

    protected f1 r() {
        oq oqVarW1;
        Uri uriE;
        if (!this.r.B1()) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Video caching disabled. Skipping...");
            }
            return null;
        }
        if (this.r.v1() == null || (oqVarW1 = this.r.w1()) == null || (uriE = oqVarW1.e()) == null) {
            return null;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Caching video file " + oqVarW1 + " creative...");
        }
        return a(uriE.toString(), Collections.emptyList(), false, (f1.a) new d(oqVarW1));
    }

    class d implements f1.a {
        final /* synthetic */ oq a;

        d(oq oqVar) {
            this.a = oqVar;
        }

        @Override // com.applovin.impl.f1.a
        public void a(Uri uri) {
            if (uri != null) {
                com.applovin.impl.sdk.n nVar = dm.this.c;
                if (com.applovin.impl.sdk.n.a()) {
                    dm dmVar = dm.this;
                    dmVar.c.a(dmVar.b, "Video file successfully cached into: " + uri);
                }
                this.a.a(uri);
                return;
            }
            com.applovin.impl.sdk.n nVar2 = dm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                dm dmVar2 = dm.this;
                dmVar2.c.b(dmVar2.b, "Failed to cache video file: " + this.a);
            }
        }
    }

    protected e1 q() {
        if (TextUtils.isEmpty(this.r.n1())) {
            if (!com.applovin.impl.sdk.n.a()) {
                return null;
            }
            this.c.a(this.b, "Unable to load HTML template");
            return null;
        }
        return a(this.r.n1(), this.r.Y(), new e());
    }

    class e implements bm.e {
        e() {
        }

        @Override // com.applovin.impl.bm.e
        public void a(String str) {
            if (dm.this.r.isOpenMeasurementEnabled()) {
                str = dm.this.a.V().a(str);
            }
            dm.this.r.b(str);
            com.applovin.impl.sdk.n nVar = dm.this.c;
            if (com.applovin.impl.sdk.n.a()) {
                dm dmVar = dm.this;
                dmVar.c.a(dmVar.b, "Finish caching HTML template " + dm.this.r.n1() + " for ad #" + dm.this.r.getAdIdNumber());
            }
        }
    }

    @Override // com.applovin.impl.bm
    void f() {
        this.r.getAdEventTracker().h();
        super.f();
    }

    @Override // com.applovin.impl.bm
    void a(int i) {
        this.r.getAdEventTracker().f();
        super.a(i);
    }
}
