package com.applovin.impl;

import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
class cn extends yl {
    private final eq h;
    private final AppLovinAdLoadListener i;

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Rendering VAST ad...");
        }
        int size = this.h.a().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String strA = "";
        jq jqVarA = null;
        nq nqVarA = null;
        dq dqVarA = null;
        cq cqVarA = null;
        String strA2 = "";
        for (es esVar : this.h.a()) {
            es esVarB = esVar.b(mq.b(esVar) ? "Wrapper" : "InLine");
            if (esVarB != null) {
                es esVarB2 = esVarB.b("AdSystem");
                if (esVarB2 != null) {
                    jqVarA = jq.a(esVarB2, jqVarA, this.a);
                }
                strA = mq.a(esVarB, "AdTitle", strA);
                strA2 = mq.a(esVarB, "Description", strA2);
                mq.a(esVarB.a("Impression"), hashSet, this.h, this.a);
                es esVarC = esVarB.c("ViewableImpression");
                if (esVarC != null) {
                    mq.a(esVarC.a("Viewable"), hashSet, this.h, this.a);
                }
                es esVarB3 = esVarB.b("AdVerifications");
                if (esVarB3 != null) {
                    cqVarA = cq.a(esVarB3, cqVarA, this.h, this.a);
                }
                mq.a(esVarB.a("Error"), hashSet2, this.h, this.a);
                es esVarC2 = esVarB.c("Creatives");
                if (esVarC2 != null) {
                    for (es esVar2 : esVarC2.b()) {
                        es esVarC3 = esVar2.c("Linear");
                        if (esVarC3 != null) {
                            nqVarA = nq.a(esVarC3, nqVarA, this.h, this.a);
                        } else {
                            es esVarB4 = esVar2.b("CompanionAds");
                            if (esVarB4 != null) {
                                es esVarB5 = esVarB4.b("Companion");
                                if (esVarB5 != null) {
                                    dqVarA = dq.a(esVarB5, dqVarA, this.h, this.a);
                                }
                            } else if (com.applovin.impl.sdk.n.a()) {
                                this.c.b(this.b, "Received and will skip rendering for an unidentified creative: " + esVar2);
                            }
                        }
                    }
                }
            } else if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Did not find wrapper or inline response for node: " + esVar);
            }
        }
        aq aqVarA = new aq.b().a(this.a).a(this.h.b()).b(this.h.e()).a(this.h.c()).b(strA).a(strA2).a(jqVarA).a(nqVarA).a(dqVarA).a(cqVarA).b(hashSet).a(cqVarA).a(hashSet2).a();
        fq fqVarC = mq.c(aqVarA);
        if (fqVarC != null) {
            mq.a(this.h, this.i, fqVarC, -6, this.a);
            return;
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.a(this.b, "Finished rendering VAST ad: " + aqVarA);
        }
        aqVarA.getAdEventTracker().e();
        this.a.i0().a((yl) new dm(aqVarA, this.a, this.i), tm.b.CACHING);
    }

    cn(eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskRenderVastAd", jVar);
        this.i = appLovinAdLoadListener;
        this.h = eqVar;
    }
}
