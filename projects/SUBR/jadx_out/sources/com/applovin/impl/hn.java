package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;

/* JADX INFO: loaded from: classes.dex */
class hn extends yl {
    private final eq h;
    private final AppLovinAdLoadListener i;

    hn(eq eqVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.j jVar) {
        super("TaskResolveVastWrapper", jVar);
        this.i = appLovinAdLoadListener;
        this.h = eqVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strA = mq.a(this.h);
        if (StringUtils.isValidString(strA)) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.a(this.b, "Resolving VAST ad with depth " + this.h.d() + " at " + strA);
            }
            try {
                this.a.i0().a(new a(com.applovin.impl.sdk.network.a.a(this.a).b(strA).c("GET").a(es.f).a(((Integer) this.a.a(sj.K4)).intValue()).c(((Integer) this.a.a(sj.L4)).intValue()).a(false).a(), this.a));
                return;
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.n.a()) {
                    this.c.a(this.b, "Unable to resolve VAST wrapper", th);
                }
                a(-1);
                return;
            }
        }
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Resolving VAST failed. Could not find resolution URL");
        }
        a(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        if (com.applovin.impl.sdk.n.a()) {
            this.c.b(this.b, "Failed to resolve VAST wrapper due to error code " + i);
        }
        if (i == -1009) {
            AppLovinAdLoadListener appLovinAdLoadListener = this.i;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(i);
                return;
            }
            return;
        }
        mq.a(this.h, this.i, i == -1001 ? fq.TIMED_OUT : fq.GENERAL_WRAPPER_ERROR, i, this.a);
    }

    class a extends dn {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.j jVar) {
            super(aVar, jVar);
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, es esVar, int i) {
            this.a.i0().a(zm.a(esVar, hn.this.h, hn.this.i, hn.this.a));
        }

        @Override // com.applovin.impl.dn, com.applovin.impl.d4.e
        public void a(String str, int i, String str2, es esVar) {
            if (com.applovin.impl.sdk.n.a()) {
                this.c.b(this.b, "Unable to resolve VAST wrapper. Server returned " + i);
            }
            hn.this.a(i);
        }
    }
}
